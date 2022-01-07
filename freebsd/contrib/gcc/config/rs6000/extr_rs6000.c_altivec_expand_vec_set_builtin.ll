; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_altivec_expand_vec_set_builtin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_altivec_expand_vec_set_builtin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_RTX = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @altivec_expand_vec_set_builtin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altivec_expand_vec_set_builtin(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @TREE_VALUE(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @TREE_CHAIN(i32 %13)
  %15 = call i32 @TREE_VALUE(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @TREE_CHAIN(i32 %16)
  %18 = call i32 @TREE_CHAIN(i32 %17)
  %19 = call i32 @TREE_VALUE(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @TREE_TYPE(i32 %20)
  %22 = call i32 @TYPE_MODE(i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @TREE_TYPE(i32 %23)
  %25 = call i32 @TREE_TYPE(i32 %24)
  %26 = call i32 @TYPE_MODE(i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @VECTOR_MODE_P(i32 %27)
  %29 = call i32 @gcc_assert(i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @NULL_RTX, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @expand_expr(i32 %30, i32 %31, i32 %32, i32 0)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @NULL_RTX, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @expand_expr(i32 %34, i32 %35, i32 %36, i32 0)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @TREE_TYPE(i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @get_element_number(i32 %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i64 @GET_MODE(i32 %42)
  %44 = load i32, i32* %4, align 4
  %45 = zext i32 %44 to i64
  %46 = icmp ne i64 %43, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %1
  %48 = load i32, i32* %10, align 4
  %49 = call i64 @GET_MODE(i32 %48)
  %50 = load i64, i64* @VOIDmode, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i64 @GET_MODE(i32 %54)
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @convert_modes(i32 %53, i64 %55, i32 %56, i32 1)
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %52, %47, %1
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @force_reg(i32 %59, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @force_reg(i32 %62, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @rs6000_expand_vector_set(i32 %65, i32 %66, i32 %67)
  %69 = load i32, i32* %9, align 4
  ret i32 %69
}

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @VECTOR_MODE_P(i32) #1

declare dso_local i32 @expand_expr(i32, i32, i32, i32) #1

declare dso_local i32 @get_element_number(i32, i32) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i32 @convert_modes(i32, i64, i32, i32) #1

declare dso_local i32 @force_reg(i32, i32) #1

declare dso_local i32 @rs6000_expand_vector_set(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
