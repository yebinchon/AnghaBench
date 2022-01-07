; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_initval.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_initval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_expr = type { i64 }

@CPP_OPEN_BRACE = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i64 0, align 8
@STRING_CST = common dso_local global i64 0, align 8
@COMPOUND_LITERAL_EXPR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.c_expr*)* @c_parser_initval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_parser_initval(i32* %0, %struct.c_expr* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.c_expr*, align 8
  %5 = alloca %struct.c_expr, align 8
  %6 = alloca %struct.c_expr, align 8
  %7 = alloca %struct.c_expr, align 8
  %8 = alloca %struct.c_expr, align 8
  store i32* %0, i32** %3, align 8
  store %struct.c_expr* %1, %struct.c_expr** %4, align 8
  %9 = load %struct.c_expr*, %struct.c_expr** %4, align 8
  %10 = icmp ne %struct.c_expr* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = call i64 (...) @c_dialect_objc()
  %13 = icmp ne i64 %12, 0
  br label %14

14:                                               ; preds = %11, %2
  %15 = phi i1 [ true, %2 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @gcc_assert(i32 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* @CPP_OPEN_BRACE, align 4
  %20 = call i64 @c_parser_next_token_is(i32* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %14
  %23 = load %struct.c_expr*, %struct.c_expr** %4, align 8
  %24 = icmp ne %struct.c_expr* %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %22
  %26 = load i32*, i32** %3, align 8
  %27 = load i64, i64* @NULL_TREE, align 8
  %28 = call i64 @c_parser_braced_init(i32* %26, i64 %27, i32 1)
  %29 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %6, i32 0, i32 0
  store i64 %28, i64* %29, align 8
  %30 = bitcast %struct.c_expr* %5 to i8*
  %31 = bitcast %struct.c_expr* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 8, i1 false)
  br label %63

32:                                               ; preds = %22, %14
  %33 = load i32*, i32** %3, align 8
  %34 = load %struct.c_expr*, %struct.c_expr** %4, align 8
  %35 = call i64 @c_parser_expr_no_commas(i32* %33, %struct.c_expr* %34)
  %36 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %7, i32 0, i32 0
  store i64 %35, i64* %36, align 8
  %37 = bitcast %struct.c_expr* %5 to i8*
  %38 = bitcast %struct.c_expr* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 8, i1 false)
  %39 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %5, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @NULL_TREE, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %32
  %44 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %5, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @TREE_CODE(i64 %45)
  %47 = load i64, i64* @STRING_CST, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %5, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @TREE_CODE(i64 %51)
  %53 = load i64, i64* @COMPOUND_LITERAL_EXPR, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %5, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @default_function_array_conversion(i64 %57)
  %59 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %8, i32 0, i32 0
  store i64 %58, i64* %59, align 8
  %60 = bitcast %struct.c_expr* %5 to i8*
  %61 = bitcast %struct.c_expr* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 %61, i64 8, i1 false)
  br label %62

62:                                               ; preds = %55, %49, %43, %32
  br label %63

63:                                               ; preds = %62, %25
  %64 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %5, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @process_init_element(i64 %65)
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @c_dialect_objc(...) #1

declare dso_local i64 @c_parser_next_token_is(i32*, i32) #1

declare dso_local i64 @c_parser_braced_init(i32*, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @c_parser_expr_no_commas(i32*, %struct.c_expr*) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @default_function_array_conversion(i64) #1

declare dso_local i32 @process_init_element(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
