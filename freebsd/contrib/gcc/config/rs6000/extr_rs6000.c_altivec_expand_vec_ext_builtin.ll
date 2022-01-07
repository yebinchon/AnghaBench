; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_altivec_expand_vec_ext_builtin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_altivec_expand_vec_ext_builtin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@optimize = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @altivec_expand_vec_ext_builtin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altivec_expand_vec_ext_builtin(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @TREE_VALUE(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @TREE_CHAIN(i32 %13)
  %15 = call i32 @TREE_VALUE(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @expand_normal(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @TREE_TYPE(i32 %18)
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @get_element_number(i32 %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @TREE_TYPE(i32 %22)
  %24 = call i32 @TREE_TYPE(i32 %23)
  %25 = call i32 @TYPE_MODE(i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @TREE_TYPE(i32 %26)
  %28 = call i32 @TYPE_MODE(i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @VECTOR_MODE_P(i32 %29)
  %31 = call i32 @gcc_assert(i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @force_reg(i32 %32, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i64, i64* @optimize, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %2
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @register_operand(i32 %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40, %37, %2
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @gen_reg_rtx(i32 %46)
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %45, %40
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @rs6000_expand_vector_extract(i32 %49, i32 %50, i32 %51)
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i32 @expand_normal(i32) #1

declare dso_local i32 @get_element_number(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @VECTOR_MODE_P(i32) #1

declare dso_local i32 @force_reg(i32, i32) #1

declare dso_local i32 @register_operand(i32, i32) #1

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i32 @rs6000_expand_vector_extract(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
