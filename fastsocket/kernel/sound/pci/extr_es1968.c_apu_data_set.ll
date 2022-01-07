; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_es1968.c_apu_data_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_es1968.c_apu_data_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es1968 = type { i32 }

@IDR0_DATA_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"es1968: APU register set probably failed (Timeout)!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.es1968*, i64)* @apu_data_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apu_data_set(%struct.es1968* %0, i64 %1) #0 {
  %3 = alloca %struct.es1968*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.es1968* %0, %struct.es1968** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %21, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 1000
  br i1 %8, label %9, label %24

9:                                                ; preds = %6
  %10 = load %struct.es1968*, %struct.es1968** %3, align 8
  %11 = load i32, i32* @IDR0_DATA_PORT, align 4
  %12 = call i64 @__maestro_read(%struct.es1968* %10, i32 %11)
  %13 = load i64, i64* %4, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %26

16:                                               ; preds = %9
  %17 = load %struct.es1968*, %struct.es1968** %3, align 8
  %18 = load i32, i32* @IDR0_DATA_PORT, align 4
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @__maestro_write(%struct.es1968* %17, i32 %18, i64 %19)
  br label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %6

24:                                               ; preds = %6
  %25 = call i32 @snd_printd(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %15
  ret void
}

declare dso_local i64 @__maestro_read(%struct.es1968*, i32) #1

declare dso_local i32 @__maestro_write(%struct.es1968*, i32, i64) #1

declare dso_local i32 @snd_printd(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
