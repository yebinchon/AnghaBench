; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_es1968.c___apu_set_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_es1968.c___apu_set_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es1968 = type { i64** }

@NR_APUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.es1968*, i64, i64, i64)* @__apu_set_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__apu_set_register(%struct.es1968* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.es1968*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.es1968* %0, %struct.es1968** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @NR_APUS, align 8
  %11 = icmp uge i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i64 @snd_BUG_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  br label %27

16:                                               ; preds = %4
  %17 = load i64, i64* %6, align 8
  %18 = shl i64 %17, 4
  %19 = load i64, i64* %7, align 8
  %20 = or i64 %19, %18
  store i64 %20, i64* %7, align 8
  %21 = load %struct.es1968*, %struct.es1968** %5, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @apu_index_set(%struct.es1968* %21, i64 %22)
  %24 = load %struct.es1968*, %struct.es1968** %5, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @apu_data_set(%struct.es1968* %24, i64 %25)
  br label %27

27:                                               ; preds = %16, %15
  ret void
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @apu_index_set(%struct.es1968*, i64) #1

declare dso_local i32 @apu_data_set(%struct.es1968*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
