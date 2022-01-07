; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_es1968.c_snd_es1968_ac97_wait_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_es1968.c_snd_es1968_ac97_wait_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es1968 = type { i64 }

@ESM_AC97_INDEX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"es1968: ac97 timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.es1968*)* @snd_es1968_ac97_wait_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es1968_ac97_wait_poll(%struct.es1968* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.es1968*, align 8
  %4 = alloca i32, align 4
  store %struct.es1968* %0, %struct.es1968** %3, align 8
  store i32 100000, i32* %4, align 4
  br label %5

5:                                                ; preds = %19, %1
  %6 = load i32, i32* %4, align 4
  %7 = add nsw i32 %6, -1
  store i32 %7, i32* %4, align 4
  %8 = icmp sgt i32 %6, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %5
  %10 = load %struct.es1968*, %struct.es1968** %3, align 8
  %11 = getelementptr inbounds %struct.es1968, %struct.es1968* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ESM_AC97_INDEX, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @inb(i64 %14)
  %16 = and i32 %15, 1
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %22

19:                                               ; preds = %9
  br label %5

20:                                               ; preds = %5
  %21 = call i32 @snd_printd(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @snd_printd(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
