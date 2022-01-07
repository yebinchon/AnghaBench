; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/ppc/extr_awacs.c_snd_pmac_awacs_set_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/ppc/extr_awacs.c_snd_pmac_awacs_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pmac = type { i32*, i32 }

@MASK_SAMPLERATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pmac*)* @snd_pmac_awacs_set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_pmac_awacs_set_format(%struct.snd_pmac* %0) #0 {
  %2 = alloca %struct.snd_pmac*, align 8
  store %struct.snd_pmac* %0, %struct.snd_pmac** %2, align 8
  %3 = load i32, i32* @MASK_SAMPLERATE, align 4
  %4 = xor i32 %3, -1
  %5 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %6 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, %4
  store i32 %10, i32* %8, align 4
  %11 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %12 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = shl i32 %13, 3
  %15 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %16 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %14
  store i32 %20, i32* %18, align 4
  %21 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %22 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %23 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @snd_pmac_awacs_write_reg(%struct.snd_pmac* %21, i32 1, i32 %26)
  ret void
}

declare dso_local i32 @snd_pmac_awacs_write_reg(%struct.snd_pmac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
