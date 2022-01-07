; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-complex.c_update_complex_components.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-complex.c_update_complex_components.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BSI_CONTINUE_LINKING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i64, i64)* @update_complex_components to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_complex_components(i32* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i64 @TREE_OPERAND(i64 %11, i32 0)
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i64 @set_component_ssa_name(i64 %13, i32 0, i64 %14)
  store i64 %15, i64* %10, align 8
  %16 = load i64, i64* %10, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load i32*, i32** %5, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i32, i32* @BSI_CONTINUE_LINKING, align 4
  %22 = call i32 @bsi_insert_after(i32* %19, i64 %20, i32 %21)
  br label %23

23:                                               ; preds = %18, %4
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i64 @set_component_ssa_name(i64 %24, i32 1, i64 %25)
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load i32*, i32** %5, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i32, i32* @BSI_CONTINUE_LINKING, align 4
  %33 = call i32 @bsi_insert_after(i32* %30, i64 %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %23
  ret void
}

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @set_component_ssa_name(i64, i32, i64) #1

declare dso_local i32 @bsi_insert_after(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
