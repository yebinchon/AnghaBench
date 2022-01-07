; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_alignof_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_alignof_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_expr = type { i8*, i32 }
%struct.c_type_name = type { i32 }

@RID_ALIGNOF = common dso_local global i32 0, align 4
@skip_evaluation = common dso_local global i32 0, align 4
@in_alignof = common dso_local global i32 0, align 4
@CPP_OPEN_PAREN = common dso_local global i32 0, align 4
@CPP_CLOSE_PAREN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"expected %<)%>\00", align 1
@error_mark_node = common dso_local global i32 0, align 4
@ERROR_MARK = common dso_local global i8* null, align 8
@CPP_OPEN_BRACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i8*, i32 } (i32*)* @c_parser_alignof_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i8*, i32 } @c_parser_alignof_expression(i32* %0) #0 {
  %2 = alloca %struct.c_expr, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.c_expr, align 8
  %5 = alloca %struct.c_type_name*, align 8
  %6 = alloca %struct.c_expr, align 8
  %7 = alloca %struct.c_expr, align 8
  %8 = alloca %struct.c_expr, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @RID_ALIGNOF, align 4
  %11 = call i32 @c_parser_next_token_is_keyword(i32* %9, i32 %10)
  %12 = call i32 @gcc_assert(i32 %11)
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @c_parser_consume_token(i32* %13)
  %15 = load i32, i32* @skip_evaluation, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @skip_evaluation, align 4
  %17 = load i32, i32* @in_alignof, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @in_alignof, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* @CPP_OPEN_PAREN, align 4
  %21 = call i64 @c_parser_next_token_is(i32* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %76

23:                                               ; preds = %1
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @c_parser_peek_2nd_token(i32* %24)
  %26 = call i64 @c_token_starts_typename(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %76

28:                                               ; preds = %23
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @c_parser_consume_token(i32* %29)
  %31 = load i32*, i32** %3, align 8
  %32 = call %struct.c_type_name* @c_parser_type_name(i32* %31)
  store %struct.c_type_name* %32, %struct.c_type_name** %5, align 8
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %35 = call i32 @c_parser_skip_until_found(i32* %33, i32 %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.c_type_name*, %struct.c_type_name** %5, align 8
  %37 = icmp eq %struct.c_type_name* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %28
  %39 = load i32, i32* @skip_evaluation, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* @skip_evaluation, align 4
  %41 = load i32, i32* @in_alignof, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* @in_alignof, align 4
  %43 = load i32, i32* @error_mark_node, align 4
  %44 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %2, i32 0, i32 1
  store i32 %43, i32* %44, align 8
  %45 = load i8*, i8** @ERROR_MARK, align 8
  %46 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %2, i32 0, i32 0
  store i8* %45, i8** %46, align 8
  br label %97

47:                                               ; preds = %28
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* @CPP_OPEN_BRACE, align 4
  %50 = call i64 @c_parser_next_token_is(i32* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %47
  %53 = load i32*, i32** %3, align 8
  %54 = load %struct.c_type_name*, %struct.c_type_name** %5, align 8
  %55 = call { i8*, i32 } @c_parser_postfix_expression_after_paren_type(i32* %53, %struct.c_type_name* %54)
  %56 = bitcast %struct.c_expr* %7 to { i8*, i32 }*
  %57 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %56, i32 0, i32 0
  %58 = extractvalue { i8*, i32 } %55, 0
  store i8* %58, i8** %57, align 8
  %59 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %56, i32 0, i32 1
  %60 = extractvalue { i8*, i32 } %55, 1
  store i32 %60, i32* %59, align 8
  %61 = bitcast %struct.c_expr* %4 to i8*
  %62 = bitcast %struct.c_expr* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 8 %62, i64 16, i1 false)
  br label %86

63:                                               ; preds = %47
  %64 = load i32, i32* @skip_evaluation, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* @skip_evaluation, align 4
  %66 = load i32, i32* @in_alignof, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* @in_alignof, align 4
  %68 = load %struct.c_type_name*, %struct.c_type_name** %5, align 8
  %69 = call i32 @groktypename(%struct.c_type_name* %68)
  %70 = call i32 @c_alignof(i32 %69)
  %71 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %6, i32 0, i32 1
  store i32 %70, i32* %71, align 8
  %72 = load i8*, i8** @ERROR_MARK, align 8
  %73 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %6, i32 0, i32 0
  store i8* %72, i8** %73, align 8
  %74 = bitcast %struct.c_expr* %2 to i8*
  %75 = bitcast %struct.c_expr* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %74, i8* align 8 %75, i64 16, i1 false)
  br label %97

76:                                               ; preds = %23, %1
  %77 = load i32*, i32** %3, align 8
  %78 = call { i8*, i32 } @c_parser_unary_expression(i32* %77)
  %79 = bitcast %struct.c_expr* %8 to { i8*, i32 }*
  %80 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %79, i32 0, i32 0
  %81 = extractvalue { i8*, i32 } %78, 0
  store i8* %81, i8** %80, align 8
  %82 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %79, i32 0, i32 1
  %83 = extractvalue { i8*, i32 } %78, 1
  store i32 %83, i32* %82, align 8
  %84 = bitcast %struct.c_expr* %4 to i8*
  %85 = bitcast %struct.c_expr* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %84, i8* align 8 %85, i64 16, i1 false)
  br label %86

86:                                               ; preds = %76, %52
  %87 = load i32, i32* @skip_evaluation, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* @skip_evaluation, align 4
  %89 = load i32, i32* @in_alignof, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* @in_alignof, align 4
  %91 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %4, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @c_alignof_expr(i32 %92)
  %94 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %2, i32 0, i32 1
  store i32 %93, i32* %94, align 8
  %95 = load i8*, i8** @ERROR_MARK, align 8
  %96 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %2, i32 0, i32 0
  store i8* %95, i8** %96, align 8
  br label %97

97:                                               ; preds = %86, %63, %38
  %98 = bitcast %struct.c_expr* %2 to { i8*, i32 }*
  %99 = load { i8*, i32 }, { i8*, i32 }* %98, align 8
  ret { i8*, i32 } %99
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @c_parser_next_token_is_keyword(i32*, i32) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

declare dso_local i64 @c_parser_next_token_is(i32*, i32) #1

declare dso_local i64 @c_token_starts_typename(i32) #1

declare dso_local i32 @c_parser_peek_2nd_token(i32*) #1

declare dso_local %struct.c_type_name* @c_parser_type_name(i32*) #1

declare dso_local i32 @c_parser_skip_until_found(i32*, i32, i8*) #1

declare dso_local { i8*, i32 } @c_parser_postfix_expression_after_paren_type(i32*, %struct.c_type_name*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @c_alignof(i32) #1

declare dso_local i32 @groktypename(%struct.c_type_name*) #1

declare dso_local { i8*, i32 } @c_parser_unary_expression(i32*) #1

declare dso_local i32 @c_alignof_expr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
