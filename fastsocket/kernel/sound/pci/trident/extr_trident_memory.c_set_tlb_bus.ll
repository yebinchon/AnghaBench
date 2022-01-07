; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/trident/extr_trident_memory.c_set_tlb_bus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/trident/extr_trident_memory.c_set_tlb_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_trident = type { i32 }

@UNIT_PAGES = common dso_local global i32 0, align 4
@SNDRV_TRIDENT_PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_trident*, i32, i64, i32)* @set_tlb_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_tlb_bus(%struct.snd_trident* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_trident*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_trident* %0, %struct.snd_trident** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @UNIT_PAGES, align 4
  %11 = load i32, i32* %6, align 4
  %12 = mul nsw i32 %11, %10
  store i32 %12, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %31, %4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @UNIT_PAGES, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %13
  %18 = load %struct.snd_trident*, %struct.snd_trident** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i64, i64* %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @__set_tlb_bus(%struct.snd_trident* %18, i32 %19, i64 %20, i32 %21)
  %23 = load i64, i64* @SNDRV_TRIDENT_PAGE_SIZE, align 8
  %24 = load i64, i64* %7, align 8
  %25 = add i64 %24, %23
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* @SNDRV_TRIDENT_PAGE_SIZE, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %17
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %13

36:                                               ; preds = %13
  ret void
}

declare dso_local i32 @__set_tlb_bus(%struct.snd_trident*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
