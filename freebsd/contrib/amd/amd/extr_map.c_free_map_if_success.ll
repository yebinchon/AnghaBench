; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_map.c_free_map_if_success.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_map.c_free_map_if_success.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32* }

@MFF_UNMOUNTING = common dso_local global i32 0, align 4
@MFF_WANTTIMO = common dso_local global i32 0, align 4
@AMQ_UMNT_SIGNAL = common dso_local global i32 0, align 4
@XLOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unmount for %s got signal %d\00", align 1
@amd_stats = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@AMQ_UMNT_FAILED = common dso_local global i32 0, align 4
@amfs_program_ops = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@XLOG_STATS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"\22%s\22 on %s still active\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%s: unmount: %s\00", align 1
@AMF_AUTOFS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@MFF_IS_AUTOFS = common dso_local global i32 0, align 4
@SIGTRAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64)* @free_map_if_success to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_map_if_success(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %7, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %8, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %18 = call i32 @get_mntfs_wchan(%struct.TYPE_11__* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* @MFF_UNMOUNTING, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @MFF_WANTTIMO, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %3
  %32 = load i32, i32* @MFF_WANTTIMO, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = call i32 (...) @reschedule_timeout_mp()
  br label %39

39:                                               ; preds = %31, %3
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %44 = load i32, i32* @AMQ_UMNT_SIGNAL, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @notify_child(%struct.TYPE_12__* %43, i32 %44, i32 0, i32 %45)
  %47 = load i32, i32* @XLOG_ERROR, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @plog(i32 %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @amd_stats, i32 0, i32 0), align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @amd_stats, i32 0, i32 0), align 4
  br label %95

55:                                               ; preds = %39
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %91

58:                                               ; preds = %55
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %60 = load i32, i32* @AMQ_UMNT_FAILED, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @notify_child(%struct.TYPE_12__* %59, i32 %60, i32 %61, i32 0)
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = icmp eq i32* %65, @amfs_program_ops
  br i1 %66, label %71, label %67

67:                                               ; preds = %58
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @EBUSY, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %67, %58
  %72 = load i32, i32* @XLOG_STATS, align 4
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @plog(i32 %72, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %78)
  br label %88

80:                                               ; preds = %67
  %81 = load i32, i32* @XLOG_ERROR, align 4
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @strerror(i32 %85)
  %87 = call i32 @plog(i32 %81, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %86)
  br label %88

88:                                               ; preds = %80, %71
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @amd_stats, i32 0, i32 0), align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @amd_stats, i32 0, i32 0), align 4
  br label %94

91:                                               ; preds = %55
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %93 = call i32 @am_unmounted(%struct.TYPE_12__* %92)
  br label %94

94:                                               ; preds = %91, %88
  br label %95

95:                                               ; preds = %94, %42
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @wakeup(i32 %96)
  ret void
}

declare dso_local i32 @get_mntfs_wchan(%struct.TYPE_11__*) #1

declare dso_local i32 @reschedule_timeout_mp(...) #1

declare dso_local i32 @notify_child(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @plog(i32, i8*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @am_unmounted(%struct.TYPE_12__*) #1

declare dso_local i32 @wakeup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
