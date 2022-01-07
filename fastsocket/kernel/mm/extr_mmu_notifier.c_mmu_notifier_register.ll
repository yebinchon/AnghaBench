; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmu_notifier.c_mmu_notifier_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmu_notifier.c_mmu_notifier_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_notifier = type { i32 }
%struct.mm_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmu_notifier_register(%struct.mmu_notifier* %0, %struct.mm_struct* %1) #0 {
  %3 = alloca %struct.mmu_notifier*, align 8
  %4 = alloca %struct.mm_struct*, align 8
  store %struct.mmu_notifier* %0, %struct.mmu_notifier** %3, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %4, align 8
  %5 = load %struct.mmu_notifier*, %struct.mmu_notifier** %3, align 8
  %6 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %7 = call i32 @do_mmu_notifier_register(%struct.mmu_notifier* %5, %struct.mm_struct* %6, i32 1)
  ret i32 %7
}

declare dso_local i32 @do_mmu_notifier_register(%struct.mmu_notifier*, %struct.mm_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
