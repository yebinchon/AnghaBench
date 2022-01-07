; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pcmcia/vx/extr_vxpocket.c_vxpocket_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pcmcia/vx/extr_vxpocket.c_vxpocket_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.snd_vxpocket* }
%struct.snd_vxpocket = type { i32 }
%struct.vx_core = type { i32, i32 }

@card_alloc = common dso_local global i32 0, align 4
@VX_STAT_IS_STALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmcia_device*)* @vxpocket_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxpocket_detach(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca %struct.snd_vxpocket*, align 8
  %4 = alloca %struct.vx_core*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %5 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %6 = icmp ne %struct.pcmcia_device* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %36

8:                                                ; preds = %1
  %9 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %10 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %9, i32 0, i32 0
  %11 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %10, align 8
  store %struct.snd_vxpocket* %11, %struct.snd_vxpocket** %3, align 8
  %12 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %3, align 8
  %13 = bitcast %struct.snd_vxpocket* %12 to %struct.vx_core*
  store %struct.vx_core* %13, %struct.vx_core** %4, align 8
  %14 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %3, align 8
  %15 = getelementptr inbounds %struct.snd_vxpocket, %struct.snd_vxpocket* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 1, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* @card_alloc, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* @card_alloc, align 4
  %21 = load i32, i32* @VX_STAT_IS_STALE, align 4
  %22 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %23 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %27 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @snd_card_disconnect(i32 %28)
  %30 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %31 = call i32 @vxpocket_release(%struct.pcmcia_device* %30)
  %32 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %33 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @snd_card_free_when_closed(i32 %34)
  br label %36

36:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @snd_card_disconnect(i32) #1

declare dso_local i32 @vxpocket_release(%struct.pcmcia_device*) #1

declare dso_local i32 @snd_card_free_when_closed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
