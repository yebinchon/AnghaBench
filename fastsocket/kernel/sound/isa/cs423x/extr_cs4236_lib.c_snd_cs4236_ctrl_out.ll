; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/cs423x/extr_cs4236_lib.c_snd_cs4236_ctrl_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/cs423x/extr_cs4236_lib.c_snd_cs4236_ctrl_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_wss = type { i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_wss*, i8, i8)* @snd_cs4236_ctrl_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_cs4236_ctrl_out(%struct.snd_wss* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.snd_wss*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct.snd_wss* %0, %struct.snd_wss** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %7 = load i8, i8* %5, align 1
  %8 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %9 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, 3
  %12 = call i32 @outb(i8 zeroext %7, i64 %11)
  %13 = load i8, i8* %6, align 1
  %14 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %15 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %5, align 1
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  store i8 %13, i8* %19, align 1
  %20 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %21 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 4
  %24 = call i32 @outb(i8 zeroext %13, i64 %23)
  ret void
}

declare dso_local i32 @outb(i8 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
