; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tridentfb.c_disable_mmio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tridentfb.c_disable_mmio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tridentfb_par = type { i32, i32 }

@NewMode1 = common dso_local global i32 0, align 4
@Protection = common dso_local global i32 0, align 4
@PCIReg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tridentfb_par*)* @disable_mmio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_mmio(%struct.tridentfb_par* %0) #0 {
  %2 = alloca %struct.tridentfb_par*, align 8
  store %struct.tridentfb_par* %0, %struct.tridentfb_par** %2, align 8
  %3 = load %struct.tridentfb_par*, %struct.tridentfb_par** %2, align 8
  %4 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @vga_mm_rseq(i32 %5, i32 11)
  %7 = load %struct.tridentfb_par*, %struct.tridentfb_par** %2, align 8
  %8 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @NewMode1, align 4
  %11 = call i32 @vga_mm_wseq(i32 %9, i32 %10, i32 128)
  %12 = load %struct.tridentfb_par*, %struct.tridentfb_par** %2, align 8
  %13 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @is_oldprotect(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load %struct.tridentfb_par*, %struct.tridentfb_par** %2, align 8
  %19 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @Protection, align 4
  %22 = call i32 @vga_mm_wseq(i32 %20, i32 %21, i32 146)
  br label %23

23:                                               ; preds = %17, %1
  %24 = load %struct.tridentfb_par*, %struct.tridentfb_par** %2, align 8
  %25 = load i32, i32* @PCIReg, align 4
  %26 = call i32 @t_outb(%struct.tridentfb_par* %24, i32 %25, i32 980)
  %27 = load %struct.tridentfb_par*, %struct.tridentfb_par** %2, align 8
  %28 = load %struct.tridentfb_par*, %struct.tridentfb_par** %2, align 8
  %29 = call i32 @t_inb(%struct.tridentfb_par* %28, i32 981)
  %30 = and i32 %29, -2
  %31 = call i32 @t_outb(%struct.tridentfb_par* %27, i32 %30, i32 981)
  ret void
}

declare dso_local i32 @vga_mm_rseq(i32, i32) #1

declare dso_local i32 @vga_mm_wseq(i32, i32, i32) #1

declare dso_local i32 @is_oldprotect(i32) #1

declare dso_local i32 @t_outb(%struct.tridentfb_par*, i32, i32) #1

declare dso_local i32 @t_inb(%struct.tridentfb_par*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
