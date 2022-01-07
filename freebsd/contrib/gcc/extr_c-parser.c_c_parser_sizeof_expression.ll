; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_sizeof_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_sizeof_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_expr = type { i32, i32 }
%struct.c_type_name = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@RID_SIZEOF = common dso_local global i32 0, align 4
@skip_evaluation = common dso_local global i32 0, align 4
@in_sizeof = common dso_local global i32 0, align 4
@CPP_OPEN_PAREN = common dso_local global i32 0, align 4
@CPP_CLOSE_PAREN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"expected %<)%>\00", align 1
@error_mark_node = common dso_local global i32 0, align 4
@ERROR_MARK = common dso_local global i32 0, align 4
@CPP_OPEN_BRACE = common dso_local global i32 0, align 4
@cdk_array = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"%<[*]%> not allowed in other than a declaration\00", align 1
@COMPONENT_REF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"%<sizeof%> applied to a bit-field\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @c_parser_sizeof_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @c_parser_sizeof_expression(i32* %0) #0 {
  %2 = alloca %struct.c_expr, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.c_expr, align 4
  %5 = alloca %struct.c_type_name*, align 8
  %6 = alloca %struct.c_expr, align 4
  %7 = alloca %struct.c_expr, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* @RID_SIZEOF, align 4
  %10 = call i32 @c_parser_next_token_is_keyword(i32* %8, i32 %9)
  %11 = call i32 @gcc_assert(i32 %10)
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @c_parser_consume_token(i32* %12)
  %14 = load i32, i32* @skip_evaluation, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @skip_evaluation, align 4
  %16 = load i32, i32* @in_sizeof, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @in_sizeof, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* @CPP_OPEN_PAREN, align 4
  %20 = call i64 @c_parser_next_token_is(i32* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %85

22:                                               ; preds = %1
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @c_parser_peek_2nd_token(i32* %23)
  %25 = call i64 @c_token_starts_typename(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %85

27:                                               ; preds = %22
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @c_parser_consume_token(i32* %28)
  %30 = load i32*, i32** %3, align 8
  %31 = call %struct.c_type_name* @c_parser_type_name(i32* %30)
  store %struct.c_type_name* %31, %struct.c_type_name** %5, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %34 = call i32 @c_parser_skip_until_found(i32* %32, i32 %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.c_type_name*, %struct.c_type_name** %5, align 8
  %36 = icmp eq %struct.c_type_name* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %27
  %38 = load i32, i32* @skip_evaluation, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* @skip_evaluation, align 4
  %40 = load i32, i32* @in_sizeof, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* @in_sizeof, align 4
  %42 = load i32, i32* @error_mark_node, align 4
  %43 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %2, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @ERROR_MARK, align 4
  %45 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %2, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  br label %114

46:                                               ; preds = %27
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* @CPP_OPEN_BRACE, align 4
  %49 = call i64 @c_parser_next_token_is(i32* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load i32*, i32** %3, align 8
  %53 = load %struct.c_type_name*, %struct.c_type_name** %5, align 8
  %54 = call i64 @c_parser_postfix_expression_after_paren_type(i32* %52, %struct.c_type_name* %53)
  %55 = bitcast %struct.c_expr* %6 to i64*
  store i64 %54, i64* %55, align 4
  %56 = bitcast %struct.c_expr* %4 to i8*
  %57 = bitcast %struct.c_expr* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %56, i8* align 4 %57, i64 8, i1 false)
  br label %91

58:                                               ; preds = %46
  %59 = load i32, i32* @skip_evaluation, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* @skip_evaluation, align 4
  %61 = load i32, i32* @in_sizeof, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* @in_sizeof, align 4
  %63 = load %struct.c_type_name*, %struct.c_type_name** %5, align 8
  %64 = getelementptr inbounds %struct.c_type_name, %struct.c_type_name* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @cdk_array, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %58
  %71 = load %struct.c_type_name*, %struct.c_type_name** %5, align 8
  %72 = getelementptr inbounds %struct.c_type_name, %struct.c_type_name* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %70
  %80 = call i32 @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %70, %58
  %82 = load %struct.c_type_name*, %struct.c_type_name** %5, align 8
  %83 = call i64 @c_expr_sizeof_type(%struct.c_type_name* %82)
  %84 = bitcast %struct.c_expr* %2 to i64*
  store i64 %83, i64* %84, align 4
  br label %114

85:                                               ; preds = %22, %1
  %86 = load i32*, i32** %3, align 8
  %87 = call i64 @c_parser_unary_expression(i32* %86)
  %88 = bitcast %struct.c_expr* %7 to i64*
  store i64 %87, i64* %88, align 4
  %89 = bitcast %struct.c_expr* %4 to i8*
  %90 = bitcast %struct.c_expr* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %89, i8* align 4 %90, i64 8, i1 false)
  br label %91

91:                                               ; preds = %85, %51
  %92 = load i32, i32* @skip_evaluation, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* @skip_evaluation, align 4
  %94 = load i32, i32* @in_sizeof, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* @in_sizeof, align 4
  %96 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %4, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @TREE_CODE(i32 %97)
  %99 = load i64, i64* @COMPONENT_REF, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %109

101:                                              ; preds = %91
  %102 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %4, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @TREE_OPERAND(i32 %103, i32 1)
  %105 = call i64 @DECL_C_BIT_FIELD(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = call i32 @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %101, %91
  %110 = bitcast %struct.c_expr* %4 to i64*
  %111 = load i64, i64* %110, align 4
  %112 = call i64 @c_expr_sizeof_expr(i64 %111)
  %113 = bitcast %struct.c_expr* %2 to i64*
  store i64 %112, i64* %113, align 4
  br label %114

114:                                              ; preds = %109, %81, %37
  %115 = bitcast %struct.c_expr* %2 to i64*
  %116 = load i64, i64* %115, align 4
  ret i64 %116
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @c_parser_next_token_is_keyword(i32*, i32) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

declare dso_local i64 @c_parser_next_token_is(i32*, i32) #1

declare dso_local i64 @c_token_starts_typename(i32) #1

declare dso_local i32 @c_parser_peek_2nd_token(i32*) #1

declare dso_local %struct.c_type_name* @c_parser_type_name(i32*) #1

declare dso_local i32 @c_parser_skip_until_found(i32*, i32, i8*) #1

declare dso_local i64 @c_parser_postfix_expression_after_paren_type(i32*, %struct.c_type_name*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @c_expr_sizeof_type(%struct.c_type_name*) #1

declare dso_local i64 @c_parser_unary_expression(i32*) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @DECL_C_BIT_FIELD(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i64 @c_expr_sizeof_expr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
