; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_relational_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_relational_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @pp_c_relational_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_c_relational_expression(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @TREE_CODE(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %48 [
    i32 128, label %9
    i32 130, label %9
    i32 129, label %9
    i32 131, label %9
  ]

9:                                                ; preds = %2, %2, %2, %2
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @TREE_OPERAND(i32 %11, i32 0)
  call void @pp_c_relational_expression(i32* %10, i32 %12)
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @pp_c_whitespace(i32* %13)
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 128
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @pp_less(i32* %18)
  br label %41

20:                                               ; preds = %9
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 130
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @pp_greater(i32* %24)
  br label %40

26:                                               ; preds = %20
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 129
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @pp_identifier(i32* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %39

32:                                               ; preds = %26
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 131
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @pp_identifier(i32* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %32
  br label %39

39:                                               ; preds = %38, %29
  br label %40

40:                                               ; preds = %39, %23
  br label %41

41:                                               ; preds = %40, %17
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @pp_c_whitespace(i32* %42)
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @TREE_OPERAND(i32 %45, i32 1)
  %47 = call i32 @pp_c_shift_expression(i32* %44, i32 %46)
  br label %52

48:                                               ; preds = %2
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @pp_c_shift_expression(i32* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %41
  ret void
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @pp_c_whitespace(i32*) #1

declare dso_local i32 @pp_less(i32*) #1

declare dso_local i32 @pp_greater(i32*) #1

declare dso_local i32 @pp_identifier(i32*, i8*) #1

declare dso_local i32 @pp_c_shift_expression(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
