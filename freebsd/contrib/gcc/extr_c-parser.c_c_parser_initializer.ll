; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_initializer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_initializer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_expr = type { i32 }

@CPP_OPEN_BRACE = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@STRING_CST = common dso_local global i64 0, align 8
@COMPOUND_LITERAL_EXPR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @c_parser_initializer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c_parser_initializer(i32* %0) #0 {
  %2 = alloca %struct.c_expr, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.c_expr, align 4
  %5 = alloca %struct.c_expr, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* @CPP_OPEN_BRACE, align 4
  %8 = call i64 @c_parser_next_token_is(i32* %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @NULL_TREE, align 4
  %13 = call i32 @c_parser_braced_init(i32* %11, i32 %12, i32 0)
  %14 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %2, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  br label %40

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @c_parser_expr_no_commas(i32* %16, i32* null)
  %18 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %4, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = bitcast %struct.c_expr* %2 to i8*
  %20 = bitcast %struct.c_expr* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 4, i1 false)
  %21 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %2, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @TREE_CODE(i32 %22)
  %24 = load i64, i64* @STRING_CST, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %2, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @TREE_CODE(i32 %28)
  %30 = load i64, i64* @COMPOUND_LITERAL_EXPR, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %2, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @default_function_array_conversion(i32 %34)
  %36 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %5, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = bitcast %struct.c_expr* %2 to i8*
  %38 = bitcast %struct.c_expr* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 4, i1 false)
  br label %39

39:                                               ; preds = %32, %26, %15
  br label %40

40:                                               ; preds = %39, %10
  %41 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %2, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  ret i32 %42
}

declare dso_local i64 @c_parser_next_token_is(i32*, i32) #1

declare dso_local i32 @c_parser_braced_init(i32*, i32, i32) #1

declare dso_local i32 @c_parser_expr_no_commas(i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @default_function_array_conversion(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
