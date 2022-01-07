; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_svclock.c_nlmsvc_unlock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_svclock.c_nlmsvc_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_file = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.nlm_lock = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i64, i64, i32 }

@.str = private unnamed_addr constant [46 x i8] c"lockd: nlmsvc_unlock(%s/%ld, pi=%d, %Ld-%Ld)\0A\00", align 1
@F_UNLCK = common dso_local global i32 0, align 4
@F_SETLK = common dso_local global i32 0, align 4
@nlm_lck_denied_nolocks = common dso_local global i32 0, align 4
@nlm_granted = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlmsvc_unlock(%struct.nlm_file* %0, %struct.nlm_lock* %1) #0 {
  %3 = alloca %struct.nlm_file*, align 8
  %4 = alloca %struct.nlm_lock*, align 8
  %5 = alloca i32, align 4
  store %struct.nlm_file* %0, %struct.nlm_file** %3, align 8
  store %struct.nlm_lock* %1, %struct.nlm_lock** %4, align 8
  %6 = load %struct.nlm_file*, %struct.nlm_file** %3, align 8
  %7 = getelementptr inbounds %struct.nlm_file, %struct.nlm_file* %6, i32 0, i32 0
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.nlm_file*, %struct.nlm_file** %3, align 8
  %19 = getelementptr inbounds %struct.nlm_file, %struct.nlm_file* %18, i32 0, i32 0
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.nlm_lock*, %struct.nlm_lock** %4, align 8
  %29 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.nlm_lock*, %struct.nlm_lock** %4, align 8
  %33 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.nlm_lock*, %struct.nlm_lock** %4, align 8
  %37 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @dprintk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %27, i32 %31, i64 %35, i64 %39)
  %41 = load %struct.nlm_file*, %struct.nlm_file** %3, align 8
  %42 = load %struct.nlm_lock*, %struct.nlm_lock** %4, align 8
  %43 = call i32 @nlmsvc_cancel_blocked(%struct.nlm_file* %41, %struct.nlm_lock* %42)
  %44 = load i32, i32* @F_UNLCK, align 4
  %45 = load %struct.nlm_lock*, %struct.nlm_lock** %4, align 8
  %46 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load %struct.nlm_file*, %struct.nlm_file** %3, align 8
  %49 = getelementptr inbounds %struct.nlm_file, %struct.nlm_file* %48, i32 0, i32 0
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = load i32, i32* @F_SETLK, align 4
  %52 = load %struct.nlm_lock*, %struct.nlm_lock** %4, align 8
  %53 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %52, i32 0, i32 0
  %54 = call i32 @vfs_lock_file(%struct.TYPE_11__* %50, i32 %51, %struct.TYPE_12__* %53, i32* null)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %2
  %58 = load i32, i32* @nlm_lck_denied_nolocks, align 4
  br label %61

59:                                               ; preds = %2
  %60 = load i32, i32* @nlm_granted, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  ret i32 %62
}

declare dso_local i32 @dprintk(i8*, i32, i32, i32, i64, i64) #1

declare dso_local i32 @nlmsvc_cancel_blocked(%struct.nlm_file*, %struct.nlm_lock*) #1

declare dso_local i32 @vfs_lock_file(%struct.TYPE_11__*, i32, %struct.TYPE_12__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
