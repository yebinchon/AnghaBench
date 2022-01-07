; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/au88x0/extr_au88x0_a3d.c_Vort3DRend_Initialize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/au88x0/extr_au88x0_a3d.c_Vort3DRend_Initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i16 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i16)* @Vort3DRend_Initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Vort3DRend_Initialize(%struct.TYPE_11__* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i16, align 2
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i16 %1, i16* %4, align 2
  %5 = load i16, i16* %4, align 2
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  store i16 %5, i16* %7, align 2
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %9 = call i32 @vortex_XtalkHw_init(%struct.TYPE_11__* %8)
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = call i32 @vortex_XtalkHw_SetGainsAllChan(%struct.TYPE_11__* %10)
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i16, i16* %13, align 2
  %15 = zext i16 %14 to i32
  switch i32 %15, label %22 [
    i32 129, label %16
    i32 128, label %19
    i32 130, label %23
    i32 131, label %26
  ]

16:                                               ; preds = %2
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = call i32 @vortex_XtalkHw_ProgramXtalkNarrow(%struct.TYPE_11__* %17)
  br label %29

19:                                               ; preds = %2
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %21 = call i32 @vortex_XtalkHw_ProgramXtalkWide(%struct.TYPE_11__* %20)
  br label %29

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %2, %22
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %25 = call i32 @vortex_XtalkHw_ProgramPipe(%struct.TYPE_11__* %24)
  br label %29

26:                                               ; preds = %2
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = call i32 @vortex_XtalkHw_ProgramDiamondXtalk(%struct.TYPE_11__* %27)
  br label %29

29:                                               ; preds = %26, %23, %19, %16
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %31 = call i32 @vortex_XtalkHw_SetSampleRate(%struct.TYPE_11__* %30, i32 17)
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %33 = call i32 @vortex_XtalkHw_Enable(%struct.TYPE_11__* %32)
  ret i32 0
}

declare dso_local i32 @vortex_XtalkHw_init(%struct.TYPE_11__*) #1

declare dso_local i32 @vortex_XtalkHw_SetGainsAllChan(%struct.TYPE_11__*) #1

declare dso_local i32 @vortex_XtalkHw_ProgramXtalkNarrow(%struct.TYPE_11__*) #1

declare dso_local i32 @vortex_XtalkHw_ProgramXtalkWide(%struct.TYPE_11__*) #1

declare dso_local i32 @vortex_XtalkHw_ProgramPipe(%struct.TYPE_11__*) #1

declare dso_local i32 @vortex_XtalkHw_ProgramDiamondXtalk(%struct.TYPE_11__*) #1

declare dso_local i32 @vortex_XtalkHw_SetSampleRate(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @vortex_XtalkHw_Enable(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
