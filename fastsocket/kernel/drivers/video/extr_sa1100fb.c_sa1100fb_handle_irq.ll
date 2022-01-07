; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sa1100fb.c_sa1100fb_handle_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sa1100fb.c_sa1100fb_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa1100fb_info = type { i32 }

@LCSR = common dso_local global i32 0, align 4
@LCSR_LDD = common dso_local global i32 0, align 4
@LCCR0_LDM = common dso_local global i32 0, align 4
@LCCR0 = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sa1100fb_handle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa1100fb_handle_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sa1100fb_info*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.sa1100fb_info*
  store %struct.sa1100fb_info* %8, %struct.sa1100fb_info** %5, align 8
  %9 = load i32, i32* @LCSR, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @LCSR_LDD, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load i32, i32* @LCCR0_LDM, align 4
  %16 = load i32, i32* @LCCR0, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* @LCCR0, align 4
  %18 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %19 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %18, i32 0, i32 0
  %20 = call i32 @wake_up(i32* %19)
  br label %21

21:                                               ; preds = %14, %2
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* @LCSR, align 4
  %23 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %23
}

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
