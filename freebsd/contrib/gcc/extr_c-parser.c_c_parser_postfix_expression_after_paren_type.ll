; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_postfix_expression_after_paren_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_postfix_expression_after_paren_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_type_name = type { i32 }
%struct.c_expr = type { i32, i32 }

@NULL_TREE = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"compound literal has variable size\00", align 1
@pedantic = common dso_local global i64 0, align 8
@flag_isoc99 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"ISO C90 forbids compound literals\00", align 1
@ERROR_MARK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.c_type_name*)* @c_parser_postfix_expression_after_paren_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @c_parser_postfix_expression_after_paren_type(i32* %0, %struct.c_type_name* %1) #0 {
  %3 = alloca %struct.c_expr, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.c_type_name*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.c_expr, align 4
  %8 = alloca %struct.c_expr, align 4
  %9 = alloca %struct.c_expr, align 4
  store i32* %0, i32** %4, align 8
  store %struct.c_type_name* %1, %struct.c_type_name** %5, align 8
  %10 = load i32, i32* @NULL_TREE, align 4
  %11 = call i32 @start_init(i32 %10, i32* null, i32 0)
  %12 = load %struct.c_type_name*, %struct.c_type_name** %5, align 8
  %13 = call i64 @groktypename(%struct.c_type_name* %12)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @error_mark_node, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @C_TYPE_VARIABLE_SIZE(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %23 = load i64, i64* @error_mark_node, align 8
  store i64 %23, i64* %6, align 8
  br label %24

24:                                               ; preds = %21, %17, %2
  %25 = load i32*, i32** %4, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @c_parser_braced_init(i32* %25, i64 %26, i32 0)
  %28 = bitcast %struct.c_expr* %9 to i64*
  store i64 %27, i64* %28, align 4
  %29 = bitcast %struct.c_expr* %7 to i8*
  %30 = bitcast %struct.c_expr* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 8, i1 false)
  %31 = call i32 (...) @finish_init()
  %32 = load i64, i64* %6, align 8
  %33 = bitcast %struct.c_expr* %7 to i64*
  %34 = load i64, i64* %33, align 4
  %35 = call i32 @maybe_warn_string_init(i64 %32, i64 %34)
  %36 = load i64, i64* @pedantic, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %24
  %39 = load i32, i32* @flag_isoc99, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = call i32 @pedwarn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %38, %24
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %7, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @build_compound_literal(i64 %44, i32 %46)
  %48 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %8, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @ERROR_MARK, align 4
  %50 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %8, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  %51 = load i32*, i32** %4, align 8
  %52 = bitcast %struct.c_expr* %8 to i64*
  %53 = load i64, i64* %52, align 4
  %54 = call i64 @c_parser_postfix_expression_after_primary(i32* %51, i64 %53)
  %55 = bitcast %struct.c_expr* %3 to i64*
  store i64 %54, i64* %55, align 4
  %56 = bitcast %struct.c_expr* %3 to i64*
  %57 = load i64, i64* %56, align 4
  ret i64 %57
}

declare dso_local i32 @start_init(i32, i32*, i32) #1

declare dso_local i64 @groktypename(%struct.c_type_name*) #1

declare dso_local i64 @C_TYPE_VARIABLE_SIZE(i64) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @c_parser_braced_init(i32*, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @finish_init(...) #1

declare dso_local i32 @maybe_warn_string_init(i64, i64) #1

declare dso_local i32 @pedwarn(i8*) #1

declare dso_local i32 @build_compound_literal(i64, i32) #1

declare dso_local i64 @c_parser_postfix_expression_after_primary(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
