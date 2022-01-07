; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_via_utility.c_viafb_get_gamma_support_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_via_utility.c_viafb_get_gamma_support_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@None_Device = common dso_local global i32 0, align 4
@CRT_Device = common dso_local global i32 0, align 4
@DVI_Device = common dso_local global i32 0, align 4
@LCD_Device = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @viafb_get_gamma_support_state(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = icmp eq i32 %5, 8
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i32, i32* @None_Device, align 4
  %9 = load i32*, i32** %4, align 8
  store i32 %8, i32* %9, align 4
  br label %17

10:                                               ; preds = %2
  %11 = load i32, i32* @CRT_Device, align 4
  %12 = load i32, i32* @DVI_Device, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @LCD_Device, align 4
  %15 = or i32 %13, %14
  %16 = load i32*, i32** %4, align 8
  store i32 %15, i32* %16, align 4
  br label %17

17:                                               ; preds = %10, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
