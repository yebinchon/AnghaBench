; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_devio.c_usbfs_increase_memory_usage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_devio.c_usbfs_increase_memory_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@usbfs_memory_mb = common dso_local global i32 0, align 4
@USBFS_XFER_MAX = common dso_local global i32 0, align 4
@usbfs_memory_usage = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @usbfs_increase_memory_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbfs_increase_memory_usage(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @usbfs_memory_mb, align 4
  %6 = call i32 @ACCESS_ONCE(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @USBFS_XFER_MAX, align 4
  %12 = ashr i32 %11, 20
  %13 = icmp ugt i32 %10, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %9, %1
  %15 = load i32, i32* @USBFS_XFER_MAX, align 4
  store i32 %15, i32* %4, align 4
  br label %19

16:                                               ; preds = %9
  %17 = load i32, i32* %4, align 4
  %18 = shl i32 %17, 20
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %16, %14
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @atomic_add(i32 %20, i32* @usbfs_memory_usage)
  %22 = call i32 @atomic_read(i32* @usbfs_memory_usage)
  %23 = load i32, i32* %4, align 4
  %24 = icmp ule i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %31

26:                                               ; preds = %19
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @atomic_sub(i32 %27, i32* @usbfs_memory_usage)
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %26, %25
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @ACCESS_ONCE(i32) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
