; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/cs423x/extr_cs4236_lib.c_snd_cs4236_ctrl_in.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/cs423x/extr_cs4236_lib.c_snd_cs4236_ctrl_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_wss = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.snd_wss*, i8)* @snd_cs4236_ctrl_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @snd_cs4236_ctrl_in(%struct.snd_wss* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.snd_wss*, align 8
  %4 = alloca i8, align 1
  store %struct.snd_wss* %0, %struct.snd_wss** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %4, align 1
  %6 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %7 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %8, 3
  %10 = call i32 @outb(i8 zeroext %5, i64 %9)
  %11 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %12 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, 4
  %15 = call zeroext i8 @inb(i64 %14)
  ret i8 %15
}

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local zeroext i8 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
