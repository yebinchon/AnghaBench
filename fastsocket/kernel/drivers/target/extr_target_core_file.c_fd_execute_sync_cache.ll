; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_file.c_fd_execute_sync_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_file.c_fd_execute_sync_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32*, i32, i64, %struct.se_device* }
%struct.se_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.fd_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@SAM_STAT_GOOD = common dso_local global i32 0, align 4
@LLONG_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"FILEIO: vfs_fsync_range() failed: %d\0A\00", align 1
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*)* @fd_execute_sync_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fd_execute_sync_cache(%struct.se_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca %struct.se_device*, align 8
  %5 = alloca %struct.fd_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  %10 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %11 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %10, i32 0, i32 3
  %12 = load %struct.se_device*, %struct.se_device** %11, align 8
  store %struct.se_device* %12, %struct.se_device** %4, align 8
  %13 = load %struct.se_device*, %struct.se_device** %4, align 8
  %14 = call %struct.fd_dev* @FD_DEV(%struct.se_device* %13)
  store %struct.fd_dev* %14, %struct.fd_dev** %5, align 8
  %15 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %16 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 2
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %25 = load i32, i32* @SAM_STAT_GOOD, align 4
  %26 = call i32 @target_complete_cmd(%struct.se_cmd* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %1
  %28 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %29 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %34 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  store i32 0, i32* %7, align 4
  %38 = load i32, i32* @LLONG_MAX, align 4
  store i32 %38, i32* %8, align 4
  br label %63

39:                                               ; preds = %32, %27
  %40 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %41 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.se_device*, %struct.se_device** %4, align 8
  %44 = getelementptr inbounds %struct.se_device, %struct.se_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %42, %46
  store i32 %47, i32* %7, align 4
  %48 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %49 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %39
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %56 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %54, %57
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %8, align 4
  br label %62

60:                                               ; preds = %39
  %61 = load i32, i32* @LLONG_MAX, align 4
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %60, %52
  br label %63

63:                                               ; preds = %62, %37
  %64 = load %struct.fd_dev*, %struct.fd_dev** %5, align 8
  %65 = getelementptr inbounds %struct.fd_dev, %struct.fd_dev* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load %struct.fd_dev*, %struct.fd_dev** %5, align 8
  %68 = getelementptr inbounds %struct.fd_dev, %struct.fd_dev* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @vfs_fsync_range(%struct.TYPE_6__* %66, i32 %72, i32 %73, i32 %74, i32 1)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %63
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %78, %63
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i32 0, i32* %2, align 4
  br label %97

85:                                               ; preds = %81
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %90 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %91 = call i32 @target_complete_cmd(%struct.se_cmd* %89, i32 %90)
  br label %96

92:                                               ; preds = %85
  %93 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %94 = load i32, i32* @SAM_STAT_GOOD, align 4
  %95 = call i32 @target_complete_cmd(%struct.se_cmd* %93, i32 %94)
  br label %96

96:                                               ; preds = %92, %88
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %96, %84
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.fd_dev* @FD_DEV(%struct.se_device*) #1

declare dso_local i32 @target_complete_cmd(%struct.se_cmd*, i32) #1

declare dso_local i32 @vfs_fsync_range(%struct.TYPE_6__*, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
