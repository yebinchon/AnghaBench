; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_es1968.c_snd_es1968_bob_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_es1968.c_snd_es1968_bob_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es1968 = type { i32 }

@ESM_BOB_ENABLE = common dso_local global i32 0, align 4
@ESM_BOB_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.es1968*)* @snd_es1968_bob_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_es1968_bob_stop(%struct.es1968* %0) #0 {
  %2 = alloca %struct.es1968*, align 8
  %3 = alloca i32, align 4
  store %struct.es1968* %0, %struct.es1968** %2, align 8
  %4 = load %struct.es1968*, %struct.es1968** %2, align 8
  %5 = call i32 @__maestro_read(%struct.es1968* %4, i32 17)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @ESM_BOB_ENABLE, align 4
  %7 = xor i32 %6, -1
  %8 = load i32, i32* %3, align 4
  %9 = and i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load %struct.es1968*, %struct.es1968** %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @__maestro_write(%struct.es1968* %10, i32 17, i32 %11)
  %13 = load %struct.es1968*, %struct.es1968** %2, align 8
  %14 = call i32 @__maestro_read(%struct.es1968* %13, i32 23)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @ESM_BOB_START, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load %struct.es1968*, %struct.es1968** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @__maestro_write(%struct.es1968* %19, i32 23, i32 %20)
  ret void
}

declare dso_local i32 @__maestro_read(%struct.es1968*, i32) #1

declare dso_local i32 @__maestro_write(%struct.es1968*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
