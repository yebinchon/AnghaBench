; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_gelf_mips64el.c__libelf_mips64el_r_info_tom.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_gelf_mips64el.c__libelf_mips64el_r_info_tom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_libelf_mips64el_r_info_tom(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = ashr i32 %8, 32
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %2, align 4
  %11 = ashr i32 %10, 40
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %2, align 4
  %13 = ashr i32 %12, 48
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %2, align 4
  %15 = ashr i32 %14, 56
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %2, align 4
  %17 = shl i32 %16, 32
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  %19 = shl i32 %18, 24
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %5, align 4
  %23 = shl i32 %22, 16
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %6, align 4
  %27 = shl i32 %26, 8
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
