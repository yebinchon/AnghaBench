; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_restore_extension_diagnostics.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_restore_extension_diagnostics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pedantic = common dso_local global i32 0, align 4
@warn_pointer_arith = common dso_local global i32 0, align 4
@warn_traditional = common dso_local global i32 0, align 4
@flag_iso = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @restore_extension_diagnostics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_extension_diagnostics(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, 1
  store i32 %4, i32* @pedantic, align 4
  %5 = load i32, i32* %2, align 4
  %6 = ashr i32 %5, 1
  %7 = and i32 %6, 1
  store i32 %7, i32* @warn_pointer_arith, align 4
  %8 = load i32, i32* %2, align 4
  %9 = ashr i32 %8, 2
  %10 = and i32 %9, 1
  store i32 %10, i32* @warn_traditional, align 4
  %11 = load i32, i32* %2, align 4
  %12 = ashr i32 %11, 3
  %13 = and i32 %12, 1
  store i32 %13, i32* @flag_iso, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
