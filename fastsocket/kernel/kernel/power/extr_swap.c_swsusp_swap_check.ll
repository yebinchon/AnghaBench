; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_swap.c_swsusp_swap_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_swap.c_swsusp_swap_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@swsusp_resume_device = common dso_local global i32 0, align 4
@swsusp_resume_block = common dso_local global i32 0, align 4
@resume_bdev = common dso_local global i32 0, align 4
@root_swap = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @swsusp_swap_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swsusp_swap_check() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @swsusp_resume_device, align 4
  %4 = load i32, i32* @swsusp_resume_block, align 4
  %5 = call i32 @swap_type_of(i32 %3, i32 %4, i32* @resume_bdev)
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i32, i32* %2, align 4
  store i32 %9, i32* %1, align 4
  br label %31

10:                                               ; preds = %0
  %11 = load i32, i32* %2, align 4
  store i32 %11, i32* @root_swap, align 4
  %12 = load i32, i32* @resume_bdev, align 4
  %13 = load i32, i32* @FMODE_WRITE, align 4
  %14 = call i32 @blkdev_get(i32 %12, i32 %13)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load i32, i32* %2, align 4
  store i32 %18, i32* %1, align 4
  br label %31

19:                                               ; preds = %10
  %20 = load i32, i32* @resume_bdev, align 4
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = call i32 @set_blocksize(i32 %20, i32 %21)
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i32, i32* @resume_bdev, align 4
  %27 = load i32, i32* @FMODE_WRITE, align 4
  %28 = call i32 @blkdev_put(i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %19
  %30 = load i32, i32* %2, align 4
  store i32 %30, i32* %1, align 4
  br label %31

31:                                               ; preds = %29, %17, %8
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

declare dso_local i32 @swap_type_of(i32, i32, i32*) #1

declare dso_local i32 @blkdev_get(i32, i32) #1

declare dso_local i32 @set_blocksize(i32, i32) #1

declare dso_local i32 @blkdev_put(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
