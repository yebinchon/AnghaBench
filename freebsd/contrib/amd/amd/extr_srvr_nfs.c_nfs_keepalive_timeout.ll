; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_srvr_nfs.c_nfs_keepalive_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_srvr_nfs.c_nfs_keepalive_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i64 }
%struct.TYPE_12__ = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"not responding\00", align 1
@FSF_VALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"ttl has expired\00", align 1
@FSF_DOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"is down\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"starts down\00", align 1
@FSF_WANT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"%d pings to %s failed - at most %d allowed\00", align 1
@MAX_ALLOWED_PINGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @nfs_keepalive_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_keepalive_timeout(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  store %struct.TYPE_11__* %6, %struct.TYPE_11__** %3, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %10, %struct.TYPE_12__** %4, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %21 = call i32 @srvrlog(%struct.TYPE_11__* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %1
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %24 = call i64 @FSRV_ISUP(%struct.TYPE_11__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load i32, i32* @FSF_VALID, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %26, %22
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @clocktime(i32* null)
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %101

39:                                               ; preds = %33
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %5, align 4
  %43 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @FSF_DOWN, align 4
  %48 = and i32 %46, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %39
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = call i32 @srvrlog(%struct.TYPE_11__* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* @FSF_DOWN, align 4
  %54 = load i32, i32* @FSF_VALID, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %61 = call i32 @flush_nfs_fhandle_cache(%struct.TYPE_11__* %60)
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 2
  store i32 -1, i32* %63, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %65 = call i32 @check_fs_addr_change(%struct.TYPE_11__* %64)
  br label %82

66:                                               ; preds = %39
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @FSF_VALID, align 4
  %71 = and i32 %69, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %75 = call i32 @srvrlog(%struct.TYPE_11__* %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %76

76:                                               ; preds = %73, %66
  %77 = load i32, i32* @FSF_VALID, align 4
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %76, %50
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %83, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %82
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @FSF_WANT, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %97 = call i32 @wakeup_srvr(%struct.TYPE_11__* %96)
  br label %98

98:                                               ; preds = %95, %88, %82
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  store i32 0, i32* %100, align 8
  br label %116

101:                                              ; preds = %33
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp sgt i32 %104, 1
  br i1 %105, label %106, label %115

106:                                              ; preds = %101
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @MAX_ALLOWED_PINGS, align 4
  %114 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %109, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %106, %101
  br label %116

116:                                              ; preds = %115, %98
  %117 = call i32 (...) @XID_ALLOC()
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 4
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %121 = call i32 @nfs_keepalive(%struct.TYPE_11__* %120)
  ret void
}

declare dso_local i32 @srvrlog(%struct.TYPE_11__*, i8*) #1

declare dso_local i64 @FSRV_ISUP(%struct.TYPE_11__*) #1

declare dso_local i64 @clocktime(i32*) #1

declare dso_local i32 @dlog(i8*, ...) #1

declare dso_local i32 @flush_nfs_fhandle_cache(%struct.TYPE_11__*) #1

declare dso_local i32 @check_fs_addr_change(%struct.TYPE_11__*) #1

declare dso_local i32 @wakeup_srvr(%struct.TYPE_11__*) #1

declare dso_local i32 @XID_ALLOC(...) #1

declare dso_local i32 @nfs_keepalive(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
