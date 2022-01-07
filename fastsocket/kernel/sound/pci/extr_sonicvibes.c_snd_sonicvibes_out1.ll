; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_sonicvibes.c_snd_sonicvibes_out1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_sonicvibes.c_snd_sonicvibes_out1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sonicvibes = type { i32 }

@INDEX = common dso_local global i32 0, align 4
@DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sonicvibes*, i8, i8)* @snd_sonicvibes_out1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_sonicvibes_out1(%struct.sonicvibes* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.sonicvibes*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct.sonicvibes* %0, %struct.sonicvibes** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %7 = load i8, i8* %5, align 1
  %8 = load %struct.sonicvibes*, %struct.sonicvibes** %4, align 8
  %9 = load i32, i32* @INDEX, align 4
  %10 = call i32 @SV_REG(%struct.sonicvibes* %8, i32 %9)
  %11 = call i32 @outb(i8 zeroext %7, i32 %10)
  %12 = call i32 @udelay(i32 10)
  %13 = load i8, i8* %6, align 1
  %14 = load %struct.sonicvibes*, %struct.sonicvibes** %4, align 8
  %15 = load i32, i32* @DATA, align 4
  %16 = call i32 @SV_REG(%struct.sonicvibes* %14, i32 %15)
  %17 = call i32 @outb(i8 zeroext %13, i32 %16)
  %18 = call i32 @udelay(i32 10)
  ret void
}

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local i32 @SV_REG(%struct.sonicvibes*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
