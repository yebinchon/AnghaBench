; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_compaction.c_compact_trylock_irqsave.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_compaction.c_compact_trylock_irqsave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compact_control = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, %struct.compact_control*)* @compact_trylock_irqsave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compact_trylock_irqsave(i32* %0, i64* %1, %struct.compact_control* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.compact_control*, align 8
  store i32* %0, i32** %4, align 8
  store i64* %1, i64** %5, align 8
  store %struct.compact_control* %2, %struct.compact_control** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i64*, i64** %5, align 8
  %9 = load %struct.compact_control*, %struct.compact_control** %6, align 8
  %10 = call i32 @compact_checklock_irqsave(i32* %7, i64* %8, i32 0, %struct.compact_control* %9)
  ret i32 %10
}

declare dso_local i32 @compact_checklock_irqsave(i32*, i64*, i32, %struct.compact_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
