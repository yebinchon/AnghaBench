; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/au88x0/extr_au88x0_xtalk.c_vortex_XtalkHw_SetDelay.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/au88x0/extr_au88x0_xtalk.c_vortex_XtalkHw_SetDelay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i16, i16)* @vortex_XtalkHw_SetDelay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vortex_XtalkHw_SetDelay(%struct.TYPE_3__* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, 536870911
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = or i32 %10, -1610612736
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = and i32 %12, -7937
  %14 = load i16, i16* %5, align 2
  %15 = zext i16 %14 to i32
  %16 = and i32 %15, 31
  %17 = shl i32 %16, 8
  %18 = or i32 %13, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, -253953
  %21 = load i16, i16* %6, align 2
  %22 = zext i16 %21 to i32
  %23 = and i32 %22, 31
  %24 = shl i32 %23, 13
  %25 = or i32 %20, %24
  store i32 %25, i32* %7, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @hwwrite(i32 %28, i32 149088, i32 %29)
  ret void
}

declare dso_local i32 @hwwrite(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
