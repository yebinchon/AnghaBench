; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_waitq.c_autofs4_wait_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_waitq.c_autofs4_wait_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.autofs_sb_info = type { i32, %struct.autofs_wait_queue* }
%struct.autofs_wait_queue = type { i64, i32, i32, i32, %struct.TYPE_2__, %struct.autofs_wait_queue* }
%struct.TYPE_2__ = type { %struct.autofs_wait_queue* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @autofs4_wait_release(%struct.autofs_sb_info* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.autofs_sb_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.autofs_wait_queue*, align 8
  %9 = alloca %struct.autofs_wait_queue**, align 8
  store %struct.autofs_sb_info* %0, %struct.autofs_sb_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %5, align 8
  %11 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %5, align 8
  %14 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %13, i32 0, i32 1
  store %struct.autofs_wait_queue** %14, %struct.autofs_wait_queue*** %9, align 8
  br label %15

15:                                               ; preds = %27, %3
  %16 = load %struct.autofs_wait_queue**, %struct.autofs_wait_queue*** %9, align 8
  %17 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %16, align 8
  store %struct.autofs_wait_queue* %17, %struct.autofs_wait_queue** %8, align 8
  %18 = icmp ne %struct.autofs_wait_queue* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %15
  %20 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %8, align 8
  %21 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %30

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %8, align 8
  %29 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %28, i32 0, i32 5
  store %struct.autofs_wait_queue** %29, %struct.autofs_wait_queue*** %9, align 8
  br label %15

30:                                               ; preds = %25, %15
  %31 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %8, align 8
  %32 = icmp ne %struct.autofs_wait_queue* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %5, align 8
  %35 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %70

39:                                               ; preds = %30
  %40 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %8, align 8
  %41 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %40, i32 0, i32 5
  %42 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %41, align 8
  %43 = load %struct.autofs_wait_queue**, %struct.autofs_wait_queue*** %9, align 8
  store %struct.autofs_wait_queue* %42, %struct.autofs_wait_queue** %43, align 8
  %44 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %8, align 8
  %45 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %46, align 8
  %48 = call i32 @kfree(%struct.autofs_wait_queue* %47)
  %49 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %8, align 8
  %50 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store %struct.autofs_wait_queue* null, %struct.autofs_wait_queue** %51, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %8, align 8
  %54 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %8, align 8
  %56 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %55, i32 0, i32 3
  %57 = call i32 @wake_up_interruptible(i32* %56)
  %58 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %8, align 8
  %59 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %59, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %39
  %64 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %8, align 8
  %65 = call i32 @kfree(%struct.autofs_wait_queue* %64)
  br label %66

66:                                               ; preds = %63, %39
  %67 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %5, align 8
  %68 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %66, %33
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.autofs_wait_queue*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
