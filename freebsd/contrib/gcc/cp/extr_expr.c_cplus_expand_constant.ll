; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_expr.c_cplus_expand_constant.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_expr.c_cplus_expand_constant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIELD_DECL = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cplus_expand_constant(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @TREE_CODE(i32 %7)
  switch i32 %8, label %53 [
    i32 128, label %9
  ]

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @TREE_TYPE(i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @PTRMEM_CST_MEMBER(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @TREE_CODE(i32 %14)
  %16 = load i32, i32* @FIELD_DECL, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %45

18:                                               ; preds = %9
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @byte_position(i32 %19)
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %29, %18
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @DECL_CONTEXT(i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @TYPE_PTRMEM_CLASS_TYPE(i32 %24)
  %26 = call i32 @same_type_p(i32 %23, i32 %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br i1 %28, label %29, label %40

29:                                               ; preds = %21
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @TYPE_PTRMEM_CLASS_TYPE(i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @DECL_CONTEXT(i32 %32)
  %34 = call i32 @lookup_anon_field(i32 %31, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @PLUS_EXPR, align 4
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @byte_position(i32 %37)
  %39 = call i32 @size_binop(i32 %35, i32 %36, i32 %38)
  store i32 %39, i32* %2, align 4
  br label %21

40:                                               ; preds = %21
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @build_nop(i32 %41, i32 %42)
  %44 = call i32 @fold(i32 %43)
  store i32 %44, i32* %2, align 4
  br label %52

45:                                               ; preds = %9
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @expand_ptrmemfunc_cst(i32 %46, i32* %5, i32* %6)
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @build_ptrmemfunc1(i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %45, %40
  br label %54

53:                                               ; preds = %1
  br label %54

54:                                               ; preds = %53, %52
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @PTRMEM_CST_MEMBER(i32) #1

declare dso_local i32 @byte_position(i32) #1

declare dso_local i32 @same_type_p(i32, i32) #1

declare dso_local i32 @DECL_CONTEXT(i32) #1

declare dso_local i32 @TYPE_PTRMEM_CLASS_TYPE(i32) #1

declare dso_local i32 @lookup_anon_field(i32, i32) #1

declare dso_local i32 @size_binop(i32, i32, i32) #1

declare dso_local i32 @fold(i32) #1

declare dso_local i32 @build_nop(i32, i32) #1

declare dso_local i32 @expand_ptrmemfunc_cst(i32, i32*, i32*) #1

declare dso_local i32 @build_ptrmemfunc1(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
