; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_super.c_sb_wait_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_super.c_sb_wait_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i32* }

@_THIS_IP_ = common dso_local global i32 0, align 4
@wait = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sb_wait_write(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.super_block*, %struct.super_block** %3, align 8
  %7 = call i32 @sb_has_new_freeze(%struct.super_block* %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %64

14:                                               ; preds = %2
  %15 = load %struct.super_block*, %struct.super_block** %3, align 8
  %16 = getelementptr inbounds %struct.super_block, %struct.super_block* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* @_THIS_IP_, align 4
  %24 = call i32 @rwsem_acquire(i32* %22, i32 0, i32 0, i32 %23)
  %25 = load %struct.super_block*, %struct.super_block** %3, align 8
  %26 = getelementptr inbounds %struct.super_block, %struct.super_block* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* @_THIS_IP_, align 4
  %34 = call i32 @rwsem_release(i32* %32, i32 1, i32 %33)
  br label %35

35:                                               ; preds = %61, %14
  %36 = load i32, i32* @wait, align 4
  %37 = call i32 @DEFINE_WAIT(i32 %36)
  %38 = load %struct.super_block*, %struct.super_block** %3, align 8
  %39 = getelementptr inbounds %struct.super_block, %struct.super_block* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %42 = call i32 @prepare_to_wait(i32* %40, i32* @wait, i32 %41)
  %43 = load %struct.super_block*, %struct.super_block** %3, align 8
  %44 = getelementptr inbounds %struct.super_block, %struct.super_block* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = call i64 @percpu_counter_sum(i32* %50)
  store i64 %51, i64* %5, align 8
  %52 = load i64, i64* %5, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %35
  %55 = call i32 (...) @schedule()
  br label %56

56:                                               ; preds = %54, %35
  %57 = load %struct.super_block*, %struct.super_block** %3, align 8
  %58 = getelementptr inbounds %struct.super_block, %struct.super_block* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = call i32 @finish_wait(i32* %59, i32* @wait)
  br label %61

61:                                               ; preds = %56
  %62 = load i64, i64* %5, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %35, label %64

64:                                               ; preds = %13, %61
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sb_has_new_freeze(%struct.super_block*) #1

declare dso_local i32 @rwsem_acquire(i32*, i32, i32, i32) #1

declare dso_local i32 @rwsem_release(i32*, i32, i32) #1

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i64 @percpu_counter_sum(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
