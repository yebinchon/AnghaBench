; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_amfs_generic.c_amfs_retry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_amfs_generic.c_amfs_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.continuation = type { i64, i32, i64*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Commencing retry for mount of %s\00", align 1
@ALLOWED_MOUNT_TIME = common dso_local global i64 0, align 8
@XLOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"mount of \22%s\22 has timed out\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64)* @amfs_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amfs_retry(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.continuation*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = inttoptr i64 %10 to %struct.continuation*
  store %struct.continuation* %11, %struct.continuation** %7, align 8
  %12 = load %struct.continuation*, %struct.continuation** %7, align 8
  %13 = getelementptr inbounds %struct.continuation, %struct.continuation* %12, i32 0, i32 3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dlog(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %20 = call i32 @new_ttl(%struct.TYPE_3__* %19)
  %21 = load %struct.continuation*, %struct.continuation** %7, align 8
  %22 = getelementptr inbounds %struct.continuation, %struct.continuation* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ALLOWED_MOUNT_TIME, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i64 @clocktime(i32* null)
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %3
  %29 = load i32, i32* @XLOG_INFO, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @plog(i32 %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %41, %28
  %36 = load %struct.continuation*, %struct.continuation** %7, align 8
  %37 = getelementptr inbounds %struct.continuation, %struct.continuation* %36, i32 0, i32 2
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.continuation*, %struct.continuation** %7, align 8
  %43 = getelementptr inbounds %struct.continuation, %struct.continuation* %42, i32 0, i32 2
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i32 1
  store i64* %45, i64** %43, align 8
  br label %35

46:                                               ; preds = %35
  %47 = load i32, i32* @FALSE, align 4
  %48 = load %struct.continuation*, %struct.continuation** %7, align 8
  %49 = getelementptr inbounds %struct.continuation, %struct.continuation* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %46, %3
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = load %struct.continuation*, %struct.continuation** %7, align 8
  %55 = call i32 @IN_PROGRESS(%struct.continuation* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53, %50
  %58 = load %struct.continuation*, %struct.continuation** %7, align 8
  %59 = call i32 @amfs_bgmount(%struct.continuation* %58)
  store i32 %59, i32* %9, align 4
  br label %63

60:                                               ; preds = %53
  %61 = load %struct.continuation*, %struct.continuation** %7, align 8
  %62 = call i32 @free_continuation(%struct.continuation* %61)
  br label %63

63:                                               ; preds = %60, %57
  %64 = call i32 (...) @reschedule_timeout_mp()
  ret void
}

declare dso_local i32 @dlog(i8*, i32) #1

declare dso_local i32 @new_ttl(%struct.TYPE_3__*) #1

declare dso_local i64 @clocktime(i32*) #1

declare dso_local i32 @plog(i32, i8*, i32) #1

declare dso_local i32 @IN_PROGRESS(%struct.continuation*) #1

declare dso_local i32 @amfs_bgmount(%struct.continuation*) #1

declare dso_local i32 @free_continuation(%struct.continuation*) #1

declare dso_local i32 @reschedule_timeout_mp(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
