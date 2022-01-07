; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs/extr_waitq.c_autofs_wait_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs/extr_waitq.c_autofs_wait_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.autofs_sb_info = type { %struct.autofs_wait_queue* }
%struct.autofs_wait_queue = type { i64, i32, i32, i32, %struct.autofs_wait_queue*, %struct.autofs_wait_queue* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @autofs_wait_release(%struct.autofs_sb_info* %0, i64 %1, i32 %2) #0 {
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
  store %struct.autofs_wait_queue** %11, %struct.autofs_wait_queue*** %9, align 8
  br label %12

12:                                               ; preds = %24, %3
  %13 = load %struct.autofs_wait_queue**, %struct.autofs_wait_queue*** %9, align 8
  %14 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %13, align 8
  store %struct.autofs_wait_queue* %14, %struct.autofs_wait_queue** %8, align 8
  %15 = icmp ne %struct.autofs_wait_queue* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %8, align 8
  %18 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %27

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %8, align 8
  %26 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %25, i32 0, i32 5
  store %struct.autofs_wait_queue** %26, %struct.autofs_wait_queue*** %9, align 8
  br label %12

27:                                               ; preds = %22, %12
  %28 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %8, align 8
  %29 = icmp ne %struct.autofs_wait_queue* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %60

33:                                               ; preds = %27
  %34 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %8, align 8
  %35 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %34, i32 0, i32 5
  %36 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %35, align 8
  %37 = load %struct.autofs_wait_queue**, %struct.autofs_wait_queue*** %9, align 8
  store %struct.autofs_wait_queue* %36, %struct.autofs_wait_queue** %37, align 8
  %38 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %8, align 8
  %39 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %38, i32 0, i32 4
  %40 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %39, align 8
  %41 = call i32 @kfree(%struct.autofs_wait_queue* %40)
  %42 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %8, align 8
  %43 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %42, i32 0, i32 4
  store %struct.autofs_wait_queue* null, %struct.autofs_wait_queue** %43, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %8, align 8
  %46 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %8, align 8
  %48 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %48, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %33
  %53 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %8, align 8
  %54 = call i32 @kfree(%struct.autofs_wait_queue* %53)
  br label %59

55:                                               ; preds = %33
  %56 = load %struct.autofs_wait_queue*, %struct.autofs_wait_queue** %8, align 8
  %57 = getelementptr inbounds %struct.autofs_wait_queue, %struct.autofs_wait_queue* %56, i32 0, i32 2
  %58 = call i32 @wake_up(i32* %57)
  br label %59

59:                                               ; preds = %55, %52
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %30
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @kfree(%struct.autofs_wait_queue*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
