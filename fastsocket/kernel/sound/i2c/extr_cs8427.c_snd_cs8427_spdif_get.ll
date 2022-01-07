; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/extr_cs8427.c_snd_cs8427_spdif_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/extr_cs8427.c_snd_cs8427_spdif_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.snd_i2c_device = type { i32, %struct.cs8427* }
%struct.cs8427 = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_cs8427_spdif_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cs8427_spdif_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_i2c_device*, align 8
  %6 = alloca %struct.cs8427*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %7 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %8 = call %struct.snd_i2c_device* @snd_kcontrol_chip(%struct.snd_kcontrol* %7)
  store %struct.snd_i2c_device* %8, %struct.snd_i2c_device** %5, align 8
  %9 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %5, align 8
  %10 = getelementptr inbounds %struct.snd_i2c_device, %struct.snd_i2c_device* %9, i32 0, i32 1
  %11 = load %struct.cs8427*, %struct.cs8427** %10, align 8
  store %struct.cs8427* %11, %struct.cs8427** %6, align 8
  %12 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %5, align 8
  %13 = getelementptr inbounds %struct.snd_i2c_device, %struct.snd_i2c_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @snd_i2c_lock(i32 %14)
  %16 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %17 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.cs8427*, %struct.cs8427** %6, align 8
  %22 = getelementptr inbounds %struct.cs8427, %struct.cs8427* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @memcpy(i32 %20, i32 %24, i32 24)
  %26 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %5, align 8
  %27 = getelementptr inbounds %struct.snd_i2c_device, %struct.snd_i2c_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @snd_i2c_unlock(i32 %28)
  ret i32 0
}

declare dso_local %struct.snd_i2c_device* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_i2c_lock(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @snd_i2c_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
