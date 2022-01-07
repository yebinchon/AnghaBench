; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/s3c24xx/extr_s3c64xx-i2s.c_s3c64xx_i2s_get_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/s3c24xx/extr_s3c64xx-i2s.c_s3c64xx_i2s_get_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.s3c_i2sv2_info = type { %struct.clk* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.clk* @s3c64xx_i2s_get_clock(%struct.snd_soc_dai* %0) #0 {
  %2 = alloca %struct.snd_soc_dai*, align 8
  %3 = alloca %struct.s3c_i2sv2_info*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %2, align 8
  %4 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %5 = call %struct.s3c_i2sv2_info* @to_info(%struct.snd_soc_dai* %4)
  store %struct.s3c_i2sv2_info* %5, %struct.s3c_i2sv2_info** %3, align 8
  %6 = load %struct.s3c_i2sv2_info*, %struct.s3c_i2sv2_info** %3, align 8
  %7 = getelementptr inbounds %struct.s3c_i2sv2_info, %struct.s3c_i2sv2_info* %6, i32 0, i32 0
  %8 = load %struct.clk*, %struct.clk** %7, align 8
  ret %struct.clk* %8
}

declare dso_local %struct.s3c_i2sv2_info* @to_info(%struct.snd_soc_dai*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
