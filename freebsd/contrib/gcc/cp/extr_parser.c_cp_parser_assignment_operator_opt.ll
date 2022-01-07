; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_assignment_operator_opt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_assignment_operator_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@NOP_EXPR = common dso_local global i32 0, align 4
@MULT_EXPR = common dso_local global i32 0, align 4
@TRUNC_DIV_EXPR = common dso_local global i32 0, align 4
@TRUNC_MOD_EXPR = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i32 0, align 4
@MINUS_EXPR = common dso_local global i32 0, align 4
@RSHIFT_EXPR = common dso_local global i32 0, align 4
@LSHIFT_EXPR = common dso_local global i32 0, align 4
@BIT_AND_EXPR = common dso_local global i32 0, align 4
@BIT_XOR_EXPR = common dso_local global i32 0, align 4
@BIT_IOR_EXPR = common dso_local global i32 0, align 4
@ERROR_MARK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @cp_parser_assignment_operator_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_parser_assignment_operator_opt(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.TYPE_5__* @cp_lexer_peek_token(i32 %7)
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %4, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %34 [
    i32 136, label %12
    i32 132, label %14
    i32 137, label %16
    i32 133, label %18
    i32 130, label %20
    i32 134, label %22
    i32 129, label %24
    i32 135, label %26
    i32 138, label %28
    i32 128, label %30
    i32 131, label %32
  ]

12:                                               ; preds = %1
  %13 = load i32, i32* @NOP_EXPR, align 4
  store i32 %13, i32* %3, align 4
  br label %36

14:                                               ; preds = %1
  %15 = load i32, i32* @MULT_EXPR, align 4
  store i32 %15, i32* %3, align 4
  br label %36

16:                                               ; preds = %1
  %17 = load i32, i32* @TRUNC_DIV_EXPR, align 4
  store i32 %17, i32* %3, align 4
  br label %36

18:                                               ; preds = %1
  %19 = load i32, i32* @TRUNC_MOD_EXPR, align 4
  store i32 %19, i32* %3, align 4
  br label %36

20:                                               ; preds = %1
  %21 = load i32, i32* @PLUS_EXPR, align 4
  store i32 %21, i32* %3, align 4
  br label %36

22:                                               ; preds = %1
  %23 = load i32, i32* @MINUS_EXPR, align 4
  store i32 %23, i32* %3, align 4
  br label %36

24:                                               ; preds = %1
  %25 = load i32, i32* @RSHIFT_EXPR, align 4
  store i32 %25, i32* %3, align 4
  br label %36

26:                                               ; preds = %1
  %27 = load i32, i32* @LSHIFT_EXPR, align 4
  store i32 %27, i32* %3, align 4
  br label %36

28:                                               ; preds = %1
  %29 = load i32, i32* @BIT_AND_EXPR, align 4
  store i32 %29, i32* %3, align 4
  br label %36

30:                                               ; preds = %1
  %31 = load i32, i32* @BIT_XOR_EXPR, align 4
  store i32 %31, i32* %3, align 4
  br label %36

32:                                               ; preds = %1
  %33 = load i32, i32* @BIT_IOR_EXPR, align 4
  store i32 %33, i32* %3, align 4
  br label %36

34:                                               ; preds = %1
  %35 = load i32, i32* @ERROR_MARK, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @ERROR_MARK, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @cp_lexer_consume_token(i32 %43)
  br label %45

45:                                               ; preds = %40, %36
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.TYPE_5__* @cp_lexer_peek_token(i32) #1

declare dso_local i32 @cp_lexer_consume_token(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
