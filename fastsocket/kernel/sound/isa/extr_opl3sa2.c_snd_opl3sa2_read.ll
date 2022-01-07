; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/extr_opl3sa2.c_snd_opl3sa2_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/extr_opl3sa2.c_snd_opl3sa2_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_opl3sa2 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.snd_opl3sa2*, i8)* @snd_opl3sa2_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @snd_opl3sa2_read(%struct.snd_opl3sa2* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.snd_opl3sa2*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  store %struct.snd_opl3sa2* %0, %struct.snd_opl3sa2** %3, align 8
  store i8 %1, i8* %4, align 1
  %7 = load %struct.snd_opl3sa2*, %struct.snd_opl3sa2** %3, align 8
  %8 = getelementptr inbounds %struct.snd_opl3sa2, %struct.snd_opl3sa2* %7, i32 0, i32 0
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.snd_opl3sa2*, %struct.snd_opl3sa2** %3, align 8
  %12 = load i8, i8* %4, align 1
  %13 = call zeroext i8 @__snd_opl3sa2_read(%struct.snd_opl3sa2* %11, i8 zeroext %12)
  store i8 %13, i8* %6, align 1
  %14 = load %struct.snd_opl3sa2*, %struct.snd_opl3sa2** %3, align 8
  %15 = getelementptr inbounds %struct.snd_opl3sa2, %struct.snd_opl3sa2* %14, i32 0, i32 0
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_unlock_irqrestore(i32* %15, i64 %16)
  %18 = load i8, i8* %6, align 1
  ret i8 %18
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i8 @__snd_opl3sa2_read(%struct.snd_opl3sa2*, i8 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
