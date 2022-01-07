; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/au88x0/extr_au88x0_xtalk.c_vortex_XtalkHw_ZeroState.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/au88x0/extr_au88x0_xtalk.c_vortex_XtalkHw_ZeroState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@asXtalkCoefsZeros = common dso_local global i32 0, align 4
@asXtalkGainsZeros = common dso_local global i32 0, align 4
@alXtalkDlineZeros = common dso_local global i32 0, align 4
@asXtalkInStateZeros = common dso_local global i32 0, align 4
@asXtalkOutStateZeros = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @vortex_XtalkHw_ZeroState to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vortex_XtalkHw_ZeroState(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @vortex_XtalkHw_ZeroIO(i32* %3)
  %5 = load i32*, i32** %2, align 8
  %6 = load i32, i32* @asXtalkCoefsZeros, align 4
  %7 = call i32 @vortex_XtalkHw_SetLeftEQ(i32* %5, i32 0, i32 0, i32 %6)
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* @asXtalkCoefsZeros, align 4
  %10 = call i32 @vortex_XtalkHw_SetRightEQ(i32* %8, i32 0, i32 0, i32 %9)
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @asXtalkCoefsZeros, align 4
  %13 = call i32 @vortex_XtalkHw_SetLeftXT(i32* %11, i32 0, i32 0, i32 %12)
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* @asXtalkCoefsZeros, align 4
  %16 = call i32 @vortex_XtalkHw_SetRightXT(i32* %14, i32 0, i32 0, i32 %15)
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* @asXtalkGainsZeros, align 4
  %19 = call i32 @vortex_XtalkHw_SetGains(i32* %17, i32 %18)
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @vortex_XtalkHw_SetDelay(i32* %20, i32 0, i32 0)
  %22 = load i32*, i32** %2, align 8
  %23 = load i32, i32* @alXtalkDlineZeros, align 4
  %24 = call i32 @vortex_XtalkHw_SetLeftDline(i32* %22, i32 %23)
  %25 = load i32*, i32** %2, align 8
  %26 = load i32, i32* @alXtalkDlineZeros, align 4
  %27 = call i32 @vortex_XtalkHw_SetRightDline(i32* %25, i32 %26)
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* @alXtalkDlineZeros, align 4
  %30 = call i32 @vortex_XtalkHw_SetLeftDline(i32* %28, i32 %29)
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* @alXtalkDlineZeros, align 4
  %33 = call i32 @vortex_XtalkHw_SetRightDline(i32* %31, i32 %32)
  %34 = load i32*, i32** %2, align 8
  %35 = load i32, i32* @asXtalkInStateZeros, align 4
  %36 = load i32, i32* @asXtalkOutStateZeros, align 4
  %37 = call i32 @vortex_XtalkHw_SetLeftEQStates(i32* %34, i32 %35, i32 %36)
  %38 = load i32*, i32** %2, align 8
  %39 = load i32, i32* @asXtalkInStateZeros, align 4
  %40 = load i32, i32* @asXtalkOutStateZeros, align 4
  %41 = call i32 @vortex_XtalkHw_SetRightEQStates(i32* %38, i32 %39, i32 %40)
  %42 = load i32*, i32** %2, align 8
  %43 = load i32, i32* @asXtalkInStateZeros, align 4
  %44 = load i32, i32* @asXtalkOutStateZeros, align 4
  %45 = call i32 @vortex_XtalkHw_SetLeftXTStates(i32* %42, i32 %43, i32 %44)
  %46 = load i32*, i32** %2, align 8
  %47 = load i32, i32* @asXtalkInStateZeros, align 4
  %48 = load i32, i32* @asXtalkOutStateZeros, align 4
  %49 = call i32 @vortex_XtalkHw_SetRightXTStates(i32* %46, i32 %47, i32 %48)
  ret void
}

declare dso_local i32 @vortex_XtalkHw_ZeroIO(i32*) #1

declare dso_local i32 @vortex_XtalkHw_SetLeftEQ(i32*, i32, i32, i32) #1

declare dso_local i32 @vortex_XtalkHw_SetRightEQ(i32*, i32, i32, i32) #1

declare dso_local i32 @vortex_XtalkHw_SetLeftXT(i32*, i32, i32, i32) #1

declare dso_local i32 @vortex_XtalkHw_SetRightXT(i32*, i32, i32, i32) #1

declare dso_local i32 @vortex_XtalkHw_SetGains(i32*, i32) #1

declare dso_local i32 @vortex_XtalkHw_SetDelay(i32*, i32, i32) #1

declare dso_local i32 @vortex_XtalkHw_SetLeftDline(i32*, i32) #1

declare dso_local i32 @vortex_XtalkHw_SetRightDline(i32*, i32) #1

declare dso_local i32 @vortex_XtalkHw_SetLeftEQStates(i32*, i32, i32) #1

declare dso_local i32 @vortex_XtalkHw_SetRightEQStates(i32*, i32, i32) #1

declare dso_local i32 @vortex_XtalkHw_SetLeftXTStates(i32*, i32, i32) #1

declare dso_local i32 @vortex_XtalkHw_SetRightXTStates(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
