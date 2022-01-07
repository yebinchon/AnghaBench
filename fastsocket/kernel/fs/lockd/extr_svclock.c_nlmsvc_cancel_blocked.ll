; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_svclock.c_nlmsvc_cancel_blocked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_svclock.c_nlmsvc_cancel_blocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_file = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.nlm_lock = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i64, i32 }
%struct.nlm_block = type { %struct.TYPE_11__*, %struct.TYPE_18__* }
%struct.TYPE_11__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"lockd: nlmsvc_cancel(%s/%ld, pi=%d, %Ld-%Ld)\0A\00", align 1
@nlm_lck_denied_grace_period = common dso_local global i32 0, align 4
@nlm_lck_denied = common dso_local global i32 0, align 4
@nlm_granted = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlmsvc_cancel_blocked(%struct.nlm_file* %0, %struct.nlm_lock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlm_file*, align 8
  %5 = alloca %struct.nlm_lock*, align 8
  %6 = alloca %struct.nlm_block*, align 8
  %7 = alloca i32, align 4
  store %struct.nlm_file* %0, %struct.nlm_file** %4, align 8
  store %struct.nlm_lock* %1, %struct.nlm_lock** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.nlm_file*, %struct.nlm_file** %4, align 8
  %9 = getelementptr inbounds %struct.nlm_file, %struct.nlm_file* %8, i32 0, i32 1
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.nlm_file*, %struct.nlm_file** %4, align 8
  %21 = getelementptr inbounds %struct.nlm_file, %struct.nlm_file* %20, i32 0, i32 1
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.nlm_lock*, %struct.nlm_lock** %5, align 8
  %31 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.nlm_lock*, %struct.nlm_lock** %5, align 8
  %35 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.nlm_lock*, %struct.nlm_lock** %5, align 8
  %39 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @dprintk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %29, i32 %33, i64 %37, i64 %41)
  %43 = call i64 (...) @locks_in_grace()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %2
  %46 = load i32, i32* @nlm_lck_denied_grace_period, align 4
  store i32 %46, i32* %3, align 4
  br label %85

47:                                               ; preds = %2
  %48 = load %struct.nlm_file*, %struct.nlm_file** %4, align 8
  %49 = getelementptr inbounds %struct.nlm_file, %struct.nlm_file* %48, i32 0, i32 0
  %50 = call i32 @mutex_lock(i32* %49)
  %51 = load %struct.nlm_file*, %struct.nlm_file** %4, align 8
  %52 = load %struct.nlm_lock*, %struct.nlm_lock** %5, align 8
  %53 = call %struct.nlm_block* @nlmsvc_lookup_block(%struct.nlm_file* %51, %struct.nlm_lock* %52)
  store %struct.nlm_block* %53, %struct.nlm_block** %6, align 8
  %54 = load %struct.nlm_file*, %struct.nlm_file** %4, align 8
  %55 = getelementptr inbounds %struct.nlm_file, %struct.nlm_file* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load %struct.nlm_block*, %struct.nlm_block** %6, align 8
  %58 = icmp ne %struct.nlm_block* %57, null
  br i1 %58, label %59, label %76

59:                                               ; preds = %47
  %60 = load %struct.nlm_block*, %struct.nlm_block** %6, align 8
  %61 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %60, i32 0, i32 1
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.nlm_block*, %struct.nlm_block** %6, align 8
  %66 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %65, i32 0, i32 0
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 0
  %71 = call i32 @vfs_cancel_lock(i32 %64, i32* %70)
  %72 = load %struct.nlm_block*, %struct.nlm_block** %6, align 8
  %73 = call i32 @nlmsvc_unlink_block(%struct.nlm_block* %72)
  store i32 %73, i32* %7, align 4
  %74 = load %struct.nlm_block*, %struct.nlm_block** %6, align 8
  %75 = call i32 @nlmsvc_release_block(%struct.nlm_block* %74)
  br label %76

76:                                               ; preds = %59, %47
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i32, i32* @nlm_lck_denied, align 4
  br label %83

81:                                               ; preds = %76
  %82 = load i32, i32* @nlm_granted, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %83, %45
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @dprintk(i8*, i32, i32, i32, i64, i64) #1

declare dso_local i64 @locks_in_grace(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.nlm_block* @nlmsvc_lookup_block(%struct.nlm_file*, %struct.nlm_lock*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @vfs_cancel_lock(i32, i32*) #1

declare dso_local i32 @nlmsvc_unlink_block(%struct.nlm_block*) #1

declare dso_local i32 @nlmsvc_release_block(%struct.nlm_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
