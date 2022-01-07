; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_write_array_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_write_array_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@INTEGER_CST = common dso_local global i64 0, align 8
@PLUS_EXPR = common dso_local global i32 0, align 4
@size_one_node = common dso_local global i32 0, align 4
@processing_template_decl = common dso_local global i32 0, align 4
@G = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @write_array_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_array_type(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = call i32 @write_char(i8 signext 65)
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @TYPE_DOMAIN(i64 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %45

9:                                                ; preds = %1
  %10 = load i64, i64* %2, align 8
  %11 = call i64 @TYPE_DOMAIN(i64 %10)
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* %3, align 8
  %13 = call i64 @TYPE_MAX_VALUE(i64 %12)
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @TREE_CODE(i64 %14)
  %16 = load i64, i64* @INTEGER_CST, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %9
  %19 = load i32, i32* @PLUS_EXPR, align 4
  %20 = load i64, i64* %4, align 8
  %21 = load i32, i32* @size_one_node, align 4
  %22 = call i64 @size_binop(i32 %19, i64 %20, i32 %21)
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @tree_low_cst(i64 %23, i32 1)
  %25 = call i32 @write_unsigned_number(i32 %24)
  br label %44

26:                                               ; preds = %9
  %27 = load i64, i64* %4, align 8
  %28 = call i64 @TREE_OPERAND(i64 %27, i32 0)
  store i64 %28, i64* %4, align 8
  %29 = call i32 @abi_version_at_least(i32 2)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @processing_template_decl, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @processing_template_decl, align 4
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @value_dependent_expression_p(i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @G, i32 0, i32 0), align 4
  br label %38

38:                                               ; preds = %37, %31
  %39 = load i32, i32* @processing_template_decl, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* @processing_template_decl, align 4
  br label %41

41:                                               ; preds = %38, %26
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @write_expression(i64 %42)
  br label %44

44:                                               ; preds = %41, %18
  br label %45

45:                                               ; preds = %44, %1
  %46 = call i32 @write_char(i8 signext 95)
  %47 = load i64, i64* %2, align 8
  %48 = call i32 @TREE_TYPE(i64 %47)
  %49 = call i32 @write_type(i32 %48)
  ret void
}

declare dso_local i32 @write_char(i8 signext) #1

declare dso_local i64 @TYPE_DOMAIN(i64) #1

declare dso_local i64 @TYPE_MAX_VALUE(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @size_binop(i32, i64, i32) #1

declare dso_local i32 @write_unsigned_number(i32) #1

declare dso_local i32 @tree_low_cst(i64, i32) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i32 @abi_version_at_least(i32) #1

declare dso_local i32 @value_dependent_expression_p(i64) #1

declare dso_local i32 @write_expression(i64) #1

declare dso_local i32 @write_type(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
