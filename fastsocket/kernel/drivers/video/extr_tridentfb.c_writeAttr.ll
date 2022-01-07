; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tridentfb.c_writeAttr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tridentfb.c_writeAttr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tridentfb_par = type { i64 }

@VGA_IS1_RC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tridentfb_par*, i32, i8)* @writeAttr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writeAttr(%struct.tridentfb_par* %0, i32 %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.tridentfb_par*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.tridentfb_par* %0, %struct.tridentfb_par** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 %2, i8* %6, align 1
  %7 = load %struct.tridentfb_par*, %struct.tridentfb_par** %4, align 8
  %8 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @VGA_IS1_RC, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @fb_readb(i64 %11)
  %13 = load %struct.tridentfb_par*, %struct.tridentfb_par** %4, align 8
  %14 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i8, i8* %6, align 1
  %18 = call i32 @vga_mm_wattr(i64 %15, i32 %16, i8 zeroext %17)
  ret void
}

declare dso_local i32 @fb_readb(i64) #1

declare dso_local i32 @vga_mm_wattr(i64, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
