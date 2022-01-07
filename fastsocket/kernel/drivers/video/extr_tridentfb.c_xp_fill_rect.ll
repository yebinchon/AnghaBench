; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tridentfb.c_xp_fill_rect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tridentfb.c_xp_fill_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tridentfb_par = type { i32 }

@ROP_P = common dso_local global i32 0, align 4
@DRAWFL = common dso_local global i32 0, align 4
@OLDDIM = common dso_local global i32 0, align 4
@OLDDST = common dso_local global i32 0, align 4
@OLDCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tridentfb_par*, i32, i32, i32, i32, i32, i32)* @xp_fill_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xp_fill_rect(%struct.tridentfb_par* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.tridentfb_par*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.tridentfb_par* %0, %struct.tridentfb_par** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load %struct.tridentfb_par*, %struct.tridentfb_par** %8, align 8
  %16 = load i32, i32* @ROP_P, align 4
  %17 = call i32 @writemmr(%struct.tridentfb_par* %15, i32 8487, i32 %16)
  %18 = load %struct.tridentfb_par*, %struct.tridentfb_par** %8, align 8
  %19 = load i32, i32* %13, align 4
  %20 = call i32 @writemmr(%struct.tridentfb_par* %18, i32 8536, i32 %19)
  %21 = load %struct.tridentfb_par*, %struct.tridentfb_par** %8, align 8
  %22 = load i32, i32* @DRAWFL, align 4
  %23 = call i32 @writemmr(%struct.tridentfb_par* %21, i32 %22, i32 16384)
  %24 = load %struct.tridentfb_par*, %struct.tridentfb_par** %8, align 8
  %25 = load i32, i32* @OLDDIM, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @point(i32 %26, i32 %27)
  %29 = call i32 @writemmr(%struct.tridentfb_par* %24, i32 %25, i32 %28)
  %30 = load %struct.tridentfb_par*, %struct.tridentfb_par** %8, align 8
  %31 = load i32, i32* @OLDDST, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @point(i32 %32, i32 %33)
  %35 = call i32 @writemmr(%struct.tridentfb_par* %30, i32 %31, i32 %34)
  %36 = load %struct.tridentfb_par*, %struct.tridentfb_par** %8, align 8
  %37 = load i32, i32* @OLDCMD, align 4
  %38 = call i32 @t_outb(%struct.tridentfb_par* %36, i32 1, i32 %37)
  %39 = load %struct.tridentfb_par*, %struct.tridentfb_par** %8, align 8
  %40 = load %struct.tridentfb_par*, %struct.tridentfb_par** %8, align 8
  %41 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @t_outb(%struct.tridentfb_par* %39, i32 %42, i32 8485)
  ret void
}

declare dso_local i32 @writemmr(%struct.tridentfb_par*, i32, i32) #1

declare dso_local i32 @point(i32, i32) #1

declare dso_local i32 @t_outb(%struct.tridentfb_par*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
