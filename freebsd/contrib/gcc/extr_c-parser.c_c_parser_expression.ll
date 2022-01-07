; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_expr = type { i32, i32 }

@CPP_COMMA = common dso_local global i32 0, align 4
@COMPOUND_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @c_parser_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @c_parser_expression(i32* %0) #0 {
  %2 = alloca %struct.c_expr, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.c_expr, align 4
  %5 = alloca %struct.c_expr, align 4
  %6 = alloca %struct.c_expr, align 4
  %7 = alloca %struct.c_expr, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @c_parser_expr_no_commas(i32* %8, i32* null)
  %10 = bitcast %struct.c_expr* %4 to i64*
  store i64 %9, i64* %10, align 4
  %11 = bitcast %struct.c_expr* %2 to i8*
  %12 = bitcast %struct.c_expr* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 8, i1 false)
  br label %13

13:                                               ; preds = %18, %1
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* @CPP_COMMA, align 4
  %16 = call i64 @c_parser_next_token_is(i32* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %13
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @c_parser_consume_token(i32* %19)
  %21 = load i32*, i32** %3, align 8
  %22 = call i64 @c_parser_expr_no_commas(i32* %21, i32* null)
  %23 = bitcast %struct.c_expr* %6 to i64*
  store i64 %22, i64* %23, align 4
  %24 = bitcast %struct.c_expr* %5 to i8*
  %25 = bitcast %struct.c_expr* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 8, i1 false)
  %26 = bitcast %struct.c_expr* %5 to i64*
  %27 = load i64, i64* %26, align 4
  %28 = call i64 @default_function_array_conversion(i64 %27)
  %29 = bitcast %struct.c_expr* %7 to i64*
  store i64 %28, i64* %29, align 4
  %30 = bitcast %struct.c_expr* %5 to i8*
  %31 = bitcast %struct.c_expr* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 8, i1 false)
  %32 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %2, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %5, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @build_compound_expr(i32 %33, i32 %35)
  %37 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %2, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @COMPOUND_EXPR, align 4
  %39 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %2, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  br label %13

40:                                               ; preds = %13
  %41 = bitcast %struct.c_expr* %2 to i64*
  %42 = load i64, i64* %41, align 4
  ret i64 %42
}

declare dso_local i64 @c_parser_expr_no_commas(i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @c_parser_next_token_is(i32*, i32) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

declare dso_local i64 @default_function_array_conversion(i64) #1

declare dso_local i32 @build_compound_expr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
