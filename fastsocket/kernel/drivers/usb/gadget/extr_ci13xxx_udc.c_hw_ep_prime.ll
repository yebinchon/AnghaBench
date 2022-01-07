; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_ci13xxx_udc.c_hw_ep_prime.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_ci13xxx_udc.c_hw_ep_prime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EBUSY = common dso_local global i32 0, align 4
@RX = common dso_local global i32 0, align 4
@CAP_ENDPTSETUPSTAT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@CAP_ENDPTPRIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @hw_ep_prime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_ep_prime(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @hw_ep_bit(i32 %9, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @hw_ep_is_primed(i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %67

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @RX, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load i32, i32* @CAP_ENDPTSETUPSTAT, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @BIT(i32 %28)
  %30 = call i64 @hw_cread(i32 %27, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @EAGAIN, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %67

35:                                               ; preds = %26, %22, %19
  %36 = load i32, i32* @CAP_ENDPTPRIME, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @BIT(i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @BIT(i32 %39)
  %41 = call i32 @hw_cwrite(i32 %36, i32 %38, i32 %40)
  br label %42

42:                                               ; preds = %48, %35
  %43 = load i32, i32* @CAP_ENDPTPRIME, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @BIT(i32 %44)
  %46 = call i64 @hw_cread(i32 %43, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = call i32 (...) @cpu_relax()
  br label %42

50:                                               ; preds = %42
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @RX, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = load i32, i32* @CAP_ENDPTSETUPSTAT, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @BIT(i32 %59)
  %61 = call i64 @hw_cread(i32 %58, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* @EAGAIN, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %67

66:                                               ; preds = %57, %53, %50
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %63, %32, %16
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @hw_ep_bit(i32, i32) #1

declare dso_local i64 @hw_ep_is_primed(i32, i32) #1

declare dso_local i64 @hw_cread(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @hw_cwrite(i32, i32, i32) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
