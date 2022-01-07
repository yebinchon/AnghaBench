; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_w83697hf_wdt.c_w83697hf_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_w83697hf_wdt.c_w83697hf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @w83697hf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w83697hf_init() #0 {
  %1 = alloca i8, align 1
  %2 = call i32 (...) @w83697hf_select_wdt()
  %3 = call zeroext i8 @w83697hf_get_reg(i32 41)
  store i8 %3, i8* %1, align 1
  %4 = load i8, i8* %1, align 1
  %5 = zext i8 %4 to i32
  %6 = and i32 %5, -97
  %7 = trunc i32 %6 to i8
  store i8 %7, i8* %1, align 1
  %8 = load i8, i8* %1, align 1
  %9 = zext i8 %8 to i32
  %10 = or i32 %9, 32
  %11 = trunc i32 %10 to i8
  store i8 %11, i8* %1, align 1
  %12 = load i8, i8* %1, align 1
  %13 = call i32 @w83697hf_set_reg(i32 41, i8 zeroext %12)
  %14 = call zeroext i8 @w83697hf_get_reg(i32 243)
  store i8 %14, i8* %1, align 1
  %15 = load i8, i8* %1, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, -5
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %1, align 1
  %19 = load i8, i8* %1, align 1
  %20 = call i32 @w83697hf_set_reg(i32 243, i8 zeroext %19)
  %21 = call i32 (...) @w83697hf_deselect_wdt()
  ret void
}

declare dso_local i32 @w83697hf_select_wdt(...) #1

declare dso_local zeroext i8 @w83697hf_get_reg(i32) #1

declare dso_local i32 @w83697hf_set_reg(i32, i8 zeroext) #1

declare dso_local i32 @w83697hf_deselect_wdt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
