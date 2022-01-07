; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-sra.c_generate_element_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-sra.c_generate_element_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sra_elt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sra_elt*, i64, i64*)* @generate_element_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate_element_init(%struct.sra_elt* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.sra_elt*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sra_elt* %0, %struct.sra_elt** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = call i32 (...) @push_gimplify_context()
  %10 = load %struct.sra_elt*, %struct.sra_elt** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64*, i64** %6, align 8
  %13 = call i32 @generate_element_init_1(%struct.sra_elt* %10, i64 %11, i64* %12)
  store i32 %13, i32* %7, align 4
  %14 = call i32 @pop_gimplify_context(i32* null)
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %3
  %18 = load i64*, i64** %6, align 8
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %17
  %22 = load i64*, i64** %6, align 8
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @tsi_start(i64 %23)
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %34, %21
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @tsi_end_p(i32 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @tsi_stmt_ptr(i32 %31)
  %33 = call i32 @find_new_referenced_vars(i32 %32)
  br label %34

34:                                               ; preds = %30
  %35 = call i32 @tsi_next(i32* %8)
  br label %25

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36, %17, %3
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

declare dso_local i32 @push_gimplify_context(...) #1

declare dso_local i32 @generate_element_init_1(%struct.sra_elt*, i64, i64*) #1

declare dso_local i32 @pop_gimplify_context(i32*) #1

declare dso_local i32 @tsi_start(i64) #1

declare dso_local i32 @tsi_end_p(i32) #1

declare dso_local i32 @find_new_referenced_vars(i32) #1

declare dso_local i32 @tsi_stmt_ptr(i32) #1

declare dso_local i32 @tsi_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
