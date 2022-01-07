; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_lr0.c_free_storage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_lr0.c_free_storage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@shift_symbol = common dso_local global i32 0, align 4
@redset = common dso_local global i32 0, align 4
@shiftset = common dso_local global i32 0, align 4
@kernel_base = common dso_local global i32 0, align 4
@kernel_end = common dso_local global i32 0, align 4
@kernel_items = common dso_local global i32 0, align 4
@state_set = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @free_storage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_storage() #0 {
  %1 = load i32, i32* @shift_symbol, align 4
  %2 = call i32 @FREE(i32 %1)
  %3 = load i32, i32* @redset, align 4
  %4 = call i32 @FREE(i32 %3)
  %5 = load i32, i32* @shiftset, align 4
  %6 = call i32 @FREE(i32 %5)
  %7 = load i32, i32* @kernel_base, align 4
  %8 = call i32 @FREE(i32 %7)
  %9 = load i32, i32* @kernel_end, align 4
  %10 = call i32 @FREE(i32 %9)
  %11 = load i32, i32* @kernel_items, align 4
  %12 = call i32 @FREE(i32 %11)
  %13 = load i32, i32* @state_set, align 4
  %14 = call i32 @FREE(i32 %13)
  ret void
}

declare dso_local i32 @FREE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
