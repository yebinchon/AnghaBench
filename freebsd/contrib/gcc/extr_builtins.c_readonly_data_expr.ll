; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_readonly_data_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_readonly_data_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADDR_EXPR = common dso_local global i64 0, align 8
@STRING_CST = common dso_local global i64 0, align 8
@CONSTRUCTOR = common dso_local global i64 0, align 8
@VAR_DECL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @readonly_data_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readonly_data_expr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @STRIP_NOPS(i32 %4)
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @TREE_CODE(i32 %6)
  %8 = load i64, i64* @ADDR_EXPR, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %41

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @TREE_OPERAND(i32 %12, i32 0)
  %14 = call i32 @get_base_address(i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %41

18:                                               ; preds = %11
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @TREE_CODE(i32 %19)
  %21 = load i64, i64* @STRING_CST, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %37, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %3, align 4
  %25 = call i64 @TREE_CODE(i32 %24)
  %26 = load i64, i64* @CONSTRUCTOR, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %37, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %3, align 4
  %30 = call i64 @TREE_CODE(i32 %29)
  %31 = load i64, i64* @VAR_DECL, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load i32, i32* %3, align 4
  %35 = call i64 @TREE_STATIC(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33, %23, %18
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @decl_readonly_section(i32 %38, i32 0)
  store i32 %39, i32* %2, align 4
  br label %41

40:                                               ; preds = %33, %28
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %37, %17, %10
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @STRIP_NOPS(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @get_base_address(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i64 @TREE_STATIC(i32) #1

declare dso_local i32 @decl_readonly_section(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
