; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_c_expr_sizeof_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_c_expr_sizeof_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_expr = type { i64, i8* }

@error_mark_node = common dso_local global i64 0, align 8
@ERROR_MARK = common dso_local global i8* null, align 8
@COMPOUND_EXPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i8* } @c_expr_sizeof_expr(i64 %0, i8* %1) #0 {
  %3 = alloca %struct.c_expr, align 8
  %4 = alloca %struct.c_expr, align 8
  %5 = bitcast %struct.c_expr* %4 to { i64, i8* }*
  %6 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %5, i32 0, i32 0
  store i64 %0, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %5, i32 0, i32 1
  store i8* %1, i8** %7, align 8
  %8 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %4, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @error_mark_node, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i64, i64* @error_mark_node, align 8
  %14 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 0
  store i64 %13, i64* %14, align 8
  %15 = load i8*, i8** @ERROR_MARK, align 8
  %16 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 1
  store i8* %15, i8** %16, align 8
  %17 = call i32 @pop_maybe_used(i32 0)
  br label %48

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %4, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @TREE_TYPE(i64 %20)
  %22 = call i64 @c_sizeof(i32 %21)
  %23 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 0
  store i64 %22, i64* %23, align 8
  %24 = load i8*, i8** @ERROR_MARK, align 8
  %25 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 1
  store i8* %24, i8** %25, align 8
  %26 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %4, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @TREE_TYPE(i64 %27)
  %29 = call i64 @c_vla_type_p(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %18
  %32 = load i32, i32* @COMPOUND_EXPR, align 4
  %33 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @TREE_TYPE(i64 %34)
  %36 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %4, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @build2(i32 %32, i32 %35, i64 %37, i64 %39)
  %41 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %3, i32 0, i32 0
  store i64 %40, i64* %41, align 8
  br label %42

42:                                               ; preds = %31, %18
  %43 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %4, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @TREE_TYPE(i64 %44)
  %46 = call i32 @C_TYPE_VARIABLE_SIZE(i32 %45)
  %47 = call i32 @pop_maybe_used(i32 %46)
  br label %48

48:                                               ; preds = %42, %12
  %49 = bitcast %struct.c_expr* %3 to { i64, i8* }*
  %50 = load { i64, i8* }, { i64, i8* }* %49, align 8
  ret { i64, i8* } %50
}

declare dso_local i32 @pop_maybe_used(i32) #1

declare dso_local i64 @c_sizeof(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @c_vla_type_p(i32) #1

declare dso_local i64 @build2(i32, i32, i64, i64) #1

declare dso_local i32 @C_TYPE_VARIABLE_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
