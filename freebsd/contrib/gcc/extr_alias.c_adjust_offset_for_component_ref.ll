; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_alias.c_adjust_offset_for_component_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_alias.c_adjust_offset_for_component_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_RTX = common dso_local global i32 0, align 4
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@COMPONENT_REF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @adjust_offset_for_component_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adjust_offset_for_component_ref(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @NULL_RTX, align 4
  store i32 %12, i32* %3, align 4
  br label %52

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @INTVAL(i32 %14)
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %47, %13
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @component_ref_field_offset(i64 %17)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @TREE_OPERAND(i64 %19, i32 1)
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @host_integerp(i64 %21, i32 1)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* @NULL_RTX, align 4
  store i32 %25, i32* %3, align 4
  br label %52

26:                                               ; preds = %16
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @tree_low_cst(i64 %27, i32 1)
  %29 = load i64, i64* %8, align 8
  %30 = call i64 @DECL_FIELD_BIT_OFFSET(i64 %29)
  %31 = call i32 @tree_low_cst(i64 %30, i32 1)
  %32 = load i32, i32* @BITS_PER_UNIT, align 4
  %33 = sdiv i32 %31, %32
  %34 = add nsw i32 %28, %33
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load i64, i64* %4, align 8
  %38 = call i64 @TREE_OPERAND(i64 %37, i32 0)
  store i64 %38, i64* %4, align 8
  br label %39

39:                                               ; preds = %26
  %40 = load i64, i64* %4, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i64, i64* %4, align 8
  %44 = call i64 @TREE_CODE(i64 %43)
  %45 = load i64, i64* @COMPONENT_REF, align 8
  %46 = icmp eq i64 %44, %45
  br label %47

47:                                               ; preds = %42, %39
  %48 = phi i1 [ false, %39 ], [ %46, %42 ]
  br i1 %48, label %16, label %49

49:                                               ; preds = %47
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @GEN_INT(i32 %50)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %49, %24, %11
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i64 @component_ref_field_offset(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i32 @host_integerp(i64, i32) #1

declare dso_local i32 @tree_low_cst(i64, i32) #1

declare dso_local i64 @DECL_FIELD_BIT_OFFSET(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @GEN_INT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
