; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_ftdi_sio.c_ftdi_232am_baud_base_to_divisor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_ftdi_sio.c_ftdi_232am_baud_base_to_divisor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i32, i32)* @ftdi_232am_baud_base_to_divisor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @ftdi_232am_baud_base_to_divisor(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = sdiv i32 %7, 2
  %9 = load i32, i32* %3, align 4
  %10 = sdiv i32 %8, %9
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = and i32 %11, 7
  %13 = icmp eq i32 %12, 7
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %14, %2
  %18 = load i32, i32* %6, align 4
  %19 = ashr i32 %18, 3
  %20 = trunc i32 %19 to i16
  store i16 %20, i16* %5, align 2
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 7
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %30

25:                                               ; preds = %17
  %26 = load i16, i16* %5, align 2
  %27 = zext i16 %26 to i32
  %28 = or i32 %27, 49152
  %29 = trunc i32 %28 to i16
  store i16 %29, i16* %5, align 2
  br label %54

30:                                               ; preds = %17
  %31 = load i32, i32* %6, align 4
  %32 = icmp sge i32 %31, 4
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i16, i16* %5, align 2
  %35 = zext i16 %34 to i32
  %36 = or i32 %35, 16384
  %37 = trunc i32 %36 to i16
  store i16 %37, i16* %5, align 2
  br label %53

38:                                               ; preds = %30
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i16, i16* %5, align 2
  %43 = zext i16 %42 to i32
  %44 = or i32 %43, 32768
  %45 = trunc i32 %44 to i16
  store i16 %45, i16* %5, align 2
  br label %52

46:                                               ; preds = %38
  %47 = load i16, i16* %5, align 2
  %48 = zext i16 %47 to i32
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i16 0, i16* %5, align 2
  br label %51

51:                                               ; preds = %50, %46
  br label %52

52:                                               ; preds = %51, %41
  br label %53

53:                                               ; preds = %52, %33
  br label %54

54:                                               ; preds = %53, %25
  %55 = load i16, i16* %5, align 2
  ret i16 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
