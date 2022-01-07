; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tridentfb.c_enable_mmio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tridentfb.c_enable_mmio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tridentfb_par = type { i32 }

@NewMode1 = common dso_local global i32 0, align 4
@Protection = common dso_local global i32 0, align 4
@PCIReg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tridentfb_par*)* @enable_mmio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_mmio(%struct.tridentfb_par* %0) #0 {
  %2 = alloca %struct.tridentfb_par*, align 8
  store %struct.tridentfb_par* %0, %struct.tridentfb_par** %2, align 8
  %3 = call i32 @vga_io_rseq(i32 11)
  %4 = load i32, i32* @NewMode1, align 4
  %5 = call i32 @vga_io_wseq(i32 %4, i32 128)
  %6 = load %struct.tridentfb_par*, %struct.tridentfb_par** %2, align 8
  %7 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @is_oldprotect(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @Protection, align 4
  %13 = call i32 @vga_io_wseq(i32 %12, i32 146)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load i32, i32* @PCIReg, align 4
  %16 = call i32 @outb(i32 %15, i32 980)
  %17 = call i32 @inb(i32 981)
  %18 = or i32 %17, 1
  %19 = call i32 @outb(i32 %18, i32 981)
  ret void
}

declare dso_local i32 @vga_io_rseq(i32) #1

declare dso_local i32 @vga_io_wseq(i32, i32) #1

declare dso_local i32 @is_oldprotect(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
