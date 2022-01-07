; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_es1968.c_snd_es1968_program_wavecache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_es1968.c_snd_es1968_program_wavecache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es1968 = type { i32 }
%struct.esschan = type { i32, i32*, i32* }

@ESS_FMT_16BIT = common dso_local global i32 0, align 4
@ESS_FMT_STEREO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.es1968*, %struct.esschan*, i32, i32, i32)* @snd_es1968_program_wavecache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_es1968_program_wavecache(%struct.es1968* %0, %struct.esschan* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.es1968*, align 8
  %7 = alloca %struct.esschan*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.es1968* %0, %struct.es1968** %6, align 8
  store %struct.esschan* %1, %struct.esschan** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %9, align 4
  %13 = sub nsw i32 %12, 16
  %14 = and i32 %13, 65528
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %38, label %17

17:                                               ; preds = %5
  %18 = load %struct.esschan*, %struct.esschan** %7, align 8
  %19 = getelementptr inbounds %struct.esschan, %struct.esschan* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ESS_FMT_16BIT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* %11, align 4
  %26 = or i32 %25, 4
  store i32 %26, i32* %11, align 4
  br label %27

27:                                               ; preds = %24, %17
  %28 = load %struct.esschan*, %struct.esschan** %7, align 8
  %29 = getelementptr inbounds %struct.esschan, %struct.esschan* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ESS_FMT_STEREO, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* %11, align 4
  %36 = or i32 %35, 2
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %34, %27
  br label %38

38:                                               ; preds = %37, %5
  %39 = load %struct.es1968*, %struct.es1968** %6, align 8
  %40 = load %struct.esschan*, %struct.esschan** %7, align 8
  %41 = getelementptr inbounds %struct.esschan, %struct.esschan* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 3
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @wave_set_register(%struct.es1968* %39, i32 %47, i32 %48)
  ret void
}

declare dso_local i32 @wave_set_register(%struct.es1968*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
