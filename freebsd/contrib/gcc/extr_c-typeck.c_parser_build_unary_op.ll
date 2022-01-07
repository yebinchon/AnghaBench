; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_parser_build_unary_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_parser_build_unary_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_expr = type { i32, i32 }

@ERROR_MARK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @parser_build_unary_op(i32 %0, i64 %1) #0 {
  %3 = alloca %struct.c_expr, align 4
  %4 = alloca %struct.c_expr, align 4
  %5 = alloca i32, align 4
  %6 = bitcast %struct.c_expr* %4 to i64*
  store i64 %1, i64* %6, align 4
  store i32 %0, i32* %5, align 4
  %7 = load i32, i32* @ERROR_MARK, align 4
  %8 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 1
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %4, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @build_unary_op(i32 %9, i32 %11, i32 0)
  %13 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @TREE_OVERFLOW_P(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %4, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @TREE_OVERFLOW_P(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @overflow_warning(i32 %25)
  br label %27

27:                                               ; preds = %23, %18, %2
  %28 = bitcast %struct.c_expr* %3 to i64*
  %29 = load i64, i64* %28, align 4
  ret i64 %29
}

declare dso_local i32 @build_unary_op(i32, i32, i32) #1

declare dso_local i64 @TREE_OVERFLOW_P(i32) #1

declare dso_local i32 @overflow_warning(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
