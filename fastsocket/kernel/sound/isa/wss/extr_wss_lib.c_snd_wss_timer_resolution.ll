; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/wss/extr_wss_lib.c_snd_wss_timer_resolution.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/wss/extr_wss_lib.c_snd_wss_timer_resolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_timer = type { i32 }
%struct.snd_wss = type { i32, i32* }

@WSS_HW_CS4236B_MASK = common dso_local global i32 0, align 4
@CS4231_PLAYBK_FORMAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.snd_timer*)* @snd_wss_timer_resolution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @snd_wss_timer_resolution(%struct.snd_timer* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.snd_timer*, align 8
  %4 = alloca %struct.snd_wss*, align 8
  store %struct.snd_timer* %0, %struct.snd_timer** %3, align 8
  %5 = load %struct.snd_timer*, %struct.snd_timer** %3, align 8
  %6 = call %struct.snd_wss* @snd_timer_chip(%struct.snd_timer* %5)
  store %struct.snd_wss* %6, %struct.snd_wss** %4, align 8
  %7 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %8 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @WSS_HW_CS4236B_MASK, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i64 14467, i64* %2, align 8
  br label %26

14:                                               ; preds = %1
  %15 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %16 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @CS4231_PLAYBK_FORMAT, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 1
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 9969, i32 9920
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %2, align 8
  br label %26

26:                                               ; preds = %14, %13
  %27 = load i64, i64* %2, align 8
  ret i64 %27
}

declare dso_local %struct.snd_wss* @snd_timer_chip(%struct.snd_timer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
