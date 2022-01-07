; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_w83627hf_wdt.c_w83627hf_select_wd_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_w83627hf_wdt.c_w83627hf_select_wd_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WDT_EFER = common dso_local global i32 0, align 4
@WDT_EFDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @w83627hf_select_wd_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w83627hf_select_wd_register() #0 {
  %1 = alloca i8, align 1
  %2 = load i32, i32* @WDT_EFER, align 4
  %3 = call i32 @outb_p(i32 135, i32 %2)
  %4 = load i32, i32* @WDT_EFER, align 4
  %5 = call i32 @outb_p(i32 135, i32 %4)
  %6 = load i32, i32* @WDT_EFER, align 4
  %7 = call i32 @outb(i32 32, i32 %6)
  %8 = load i32, i32* @WDT_EFDR, align 4
  %9 = call zeroext i8 @inb(i32 %8)
  store i8 %9, i8* %1, align 1
  %10 = load i8, i8* %1, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp eq i32 %11, 130
  br i1 %12, label %13, label %27

13:                                               ; preds = %0
  %14 = load i32, i32* @WDT_EFER, align 4
  %15 = call i32 @outb_p(i32 43, i32 %14)
  %16 = load i32, i32* @WDT_EFDR, align 4
  %17 = call i32 @inb_p(i32 %16)
  %18 = and i32 %17, 247
  %19 = or i32 %18, 4
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %1, align 1
  %21 = load i32, i32* @WDT_EFER, align 4
  %22 = call i32 @outb_p(i32 43, i32 %21)
  %23 = load i8, i8* %1, align 1
  %24 = zext i8 %23 to i32
  %25 = load i32, i32* @WDT_EFDR, align 4
  %26 = call i32 @outb_p(i32 %24, i32 %25)
  br label %45

27:                                               ; preds = %0
  %28 = load i8, i8* %1, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %29, 136
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load i32, i32* @WDT_EFER, align 4
  %33 = call i32 @outb_p(i32 45, i32 %32)
  %34 = load i32, i32* @WDT_EFDR, align 4
  %35 = call i32 @inb_p(i32 %34)
  %36 = and i32 %35, -2
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %1, align 1
  %38 = load i32, i32* @WDT_EFER, align 4
  %39 = call i32 @outb_p(i32 45, i32 %38)
  %40 = load i8, i8* %1, align 1
  %41 = zext i8 %40 to i32
  %42 = load i32, i32* @WDT_EFDR, align 4
  %43 = call i32 @outb_p(i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %31, %27
  br label %45

45:                                               ; preds = %44, %13
  %46 = load i32, i32* @WDT_EFER, align 4
  %47 = call i32 @outb_p(i32 7, i32 %46)
  %48 = load i32, i32* @WDT_EFDR, align 4
  %49 = call i32 @outb_p(i32 8, i32 %48)
  %50 = load i32, i32* @WDT_EFER, align 4
  %51 = call i32 @outb_p(i32 48, i32 %50)
  %52 = load i32, i32* @WDT_EFDR, align 4
  %53 = call i32 @outb_p(i32 1, i32 %52)
  ret void
}

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @inb_p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
