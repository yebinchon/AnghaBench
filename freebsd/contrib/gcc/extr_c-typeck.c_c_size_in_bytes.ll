; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_c_size_in_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_c_size_in_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FUNCTION_TYPE = common dso_local global i32 0, align 4
@VOID_TYPE = common dso_local global i32 0, align 4
@ERROR_MARK = common dso_local global i32 0, align 4
@size_one_node = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"arithmetic on pointer to an incomplete type\00", align 1
@CEIL_DIV_EXPR = common dso_local global i32 0, align 4
@char_type_node = common dso_local global i32 0, align 4
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @c_size_in_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c_size_in_bytes(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @TREE_CODE(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @FUNCTION_TYPE, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %18, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @VOID_TYPE, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @ERROR_MARK, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %10, %1
  %19 = load i32, i32* @size_one_node, align 4
  store i32 %19, i32* %2, align 4
  br label %37

20:                                               ; preds = %14
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @COMPLETE_OR_VOID_TYPE_P(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = call i32 @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @size_one_node, align 4
  store i32 %26, i32* %2, align 4
  br label %37

27:                                               ; preds = %20
  %28 = load i32, i32* @CEIL_DIV_EXPR, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @TYPE_SIZE_UNIT(i32 %29)
  %31 = load i32, i32* @char_type_node, align 4
  %32 = call i32 @TYPE_PRECISION(i32 %31)
  %33 = load i32, i32* @BITS_PER_UNIT, align 4
  %34 = sdiv i32 %32, %33
  %35 = call i32 @size_int(i32 %34)
  %36 = call i32 @size_binop(i32 %28, i32 %30, i32 %35)
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %27, %24, %18
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @COMPLETE_OR_VOID_TYPE_P(i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @size_binop(i32, i32, i32) #1

declare dso_local i32 @TYPE_SIZE_UNIT(i32) #1

declare dso_local i32 @size_int(i32) #1

declare dso_local i32 @TYPE_PRECISION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
