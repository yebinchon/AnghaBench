; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/extr_i2c.c_snd_i2c_bit_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/extr_i2c.c_snd_i2c_bit_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_i2c_bus = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_i2c_bus*)* @snd_i2c_bit_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_i2c_bit_stop(%struct.snd_i2c_bus* %0) #0 {
  %2 = alloca %struct.snd_i2c_bus*, align 8
  store %struct.snd_i2c_bus* %0, %struct.snd_i2c_bus** %2, align 8
  %3 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %2, align 8
  %4 = call i32 @snd_i2c_bit_set(%struct.snd_i2c_bus* %3, i32 0, i32 0)
  %5 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %2, align 8
  %6 = call i32 @snd_i2c_bit_set(%struct.snd_i2c_bus* %5, i32 1, i32 0)
  %7 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %2, align 8
  %8 = call i32 @snd_i2c_bit_set(%struct.snd_i2c_bus* %7, i32 1, i32 1)
  %9 = load %struct.snd_i2c_bus*, %struct.snd_i2c_bus** %2, align 8
  %10 = call i32 @snd_i2c_bit_hw_stop(%struct.snd_i2c_bus* %9)
  ret void
}

declare dso_local i32 @snd_i2c_bit_set(%struct.snd_i2c_bus*, i32, i32) #1

declare dso_local i32 @snd_i2c_bit_hw_stop(%struct.snd_i2c_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
