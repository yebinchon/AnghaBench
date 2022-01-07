; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctmixer.c_set_switch_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctmixer.c_set_switch_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_mixer = type { i32 }

@SWH_MIXER_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ct_mixer*, i32, i8)* @set_switch_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_switch_state(%struct.ct_mixer* %0, i32 %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.ct_mixer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.ct_mixer* %0, %struct.ct_mixer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 %2, i8* %6, align 1
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @SWH_MIXER_START, align 4
  %12 = sub i32 %10, %11
  %13 = shl i32 1, %12
  %14 = load %struct.ct_mixer*, %struct.ct_mixer** %4, align 8
  %15 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  br label %28

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @SWH_MIXER_START, align 4
  %21 = sub i32 %19, %20
  %22 = shl i32 1, %21
  %23 = xor i32 %22, -1
  %24 = load %struct.ct_mixer*, %struct.ct_mixer** %4, align 8
  %25 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %18, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
