; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_super.c_get_super_thawed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_super.c_get_super_thawed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.block_device = type { i32 }

@SB_UNFROZEN = common dso_local global i64 0, align 8
@SB_FREEZE_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.super_block* @get_super_thawed(%struct.block_device* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.block_device*, align 8
  %4 = alloca %struct.super_block*, align 8
  store %struct.block_device* %0, %struct.block_device** %3, align 8
  br label %5

5:                                                ; preds = %1, %57
  %6 = load %struct.block_device*, %struct.block_device** %3, align 8
  %7 = call %struct.super_block* @get_super(%struct.block_device* %6)
  store %struct.super_block* %7, %struct.super_block** %4, align 8
  %8 = load %struct.super_block*, %struct.super_block** %4, align 8
  %9 = icmp ne %struct.super_block* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = load %struct.super_block*, %struct.super_block** %4, align 8
  store %struct.super_block* %11, %struct.super_block** %2, align 8
  br label %60

12:                                               ; preds = %5
  %13 = load %struct.super_block*, %struct.super_block** %4, align 8
  %14 = call i32 @sb_has_new_freeze(%struct.super_block* %13)
  %15 = call i64 @likely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %12
  %18 = load %struct.super_block*, %struct.super_block** %4, align 8
  %19 = getelementptr inbounds %struct.super_block, %struct.super_block* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SB_UNFROZEN, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load %struct.super_block*, %struct.super_block** %4, align 8
  store %struct.super_block* %25, %struct.super_block** %2, align 8
  br label %60

26:                                               ; preds = %17
  %27 = load %struct.super_block*, %struct.super_block** %4, align 8
  %28 = getelementptr inbounds %struct.super_block, %struct.super_block* %27, i32 0, i32 1
  %29 = call i32 @up_read(i32* %28)
  %30 = load %struct.super_block*, %struct.super_block** %4, align 8
  %31 = getelementptr inbounds %struct.super_block, %struct.super_block* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.super_block*, %struct.super_block** %4, align 8
  %35 = getelementptr inbounds %struct.super_block, %struct.super_block* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SB_UNFROZEN, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @wait_event(i32 %33, i32 %40)
  br label %57

42:                                               ; preds = %12
  %43 = load %struct.super_block*, %struct.super_block** %4, align 8
  %44 = getelementptr inbounds %struct.super_block, %struct.super_block* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SB_UNFROZEN, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load %struct.super_block*, %struct.super_block** %4, align 8
  store %struct.super_block* %49, %struct.super_block** %2, align 8
  br label %60

50:                                               ; preds = %42
  %51 = load %struct.super_block*, %struct.super_block** %4, align 8
  %52 = getelementptr inbounds %struct.super_block, %struct.super_block* %51, i32 0, i32 1
  %53 = call i32 @up_read(i32* %52)
  %54 = load %struct.super_block*, %struct.super_block** %4, align 8
  %55 = load i32, i32* @SB_FREEZE_WRITE, align 4
  %56 = call i32 @vfs_check_frozen(%struct.super_block* %54, i32 %55)
  br label %57

57:                                               ; preds = %50, %26
  %58 = load %struct.super_block*, %struct.super_block** %4, align 8
  %59 = call i32 @put_super(%struct.super_block* %58)
  br label %5

60:                                               ; preds = %48, %24, %10
  %61 = load %struct.super_block*, %struct.super_block** %2, align 8
  ret %struct.super_block* %61
}

declare dso_local %struct.super_block* @get_super(%struct.block_device*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @sb_has_new_freeze(%struct.super_block*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @vfs_check_frozen(%struct.super_block*, i32) #1

declare dso_local i32 @put_super(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
