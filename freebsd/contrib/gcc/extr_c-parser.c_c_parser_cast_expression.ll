; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_cast_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_cast_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_expr = type { i8*, i32 }
%struct.c_type_name = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CPP_OPEN_PAREN = common dso_local global i32 0, align 4
@CPP_CLOSE_PAREN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"expected %<)%>\00", align 1
@error_mark_node = common dso_local global i32 0, align 4
@ERROR_MARK = common dso_local global i8* null, align 8
@CPP_OPEN_BRACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i8*, i32 } (i32*, %struct.c_expr*)* @c_parser_cast_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i8*, i32 } @c_parser_cast_expression(i32* %0, %struct.c_expr* %1) #0 {
  %3 = alloca %struct.c_expr, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.c_expr*, align 8
  %6 = alloca %struct.c_type_name*, align 8
  %7 = alloca %struct.c_expr, align 8
  %8 = alloca %struct.c_expr, align 8
  %9 = alloca %struct.c_expr, align 8
  %10 = alloca %struct.c_expr, align 8
  store i32* %0, i32** %4, align 8
  store %struct.c_expr* %1, %struct.c_expr** %5, align 8
  %11 = load %struct.c_expr*, %struct.c_expr** %5, align 8
  %12 = icmp ne %struct.c_expr* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = call i64 (...) @c_dialect_objc()
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %13, %2
  %17 = phi i1 [ true, %2 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @gcc_assert(i32 %18)
  %20 = load %struct.c_expr*, %struct.c_expr** %5, align 8
  %21 = icmp ne %struct.c_expr* %20, null
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = load i32*, i32** %4, align 8
  %24 = load %struct.c_expr*, %struct.c_expr** %5, align 8
  %25 = bitcast %struct.c_expr* %24 to { i8*, i32 }*
  %26 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %25, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call { i8*, i32 } @c_parser_postfix_expression_after_primary(i32* %23, i8* %27, i32 %29)
  %31 = bitcast %struct.c_expr* %3 to { i8*, i32 }*
  %32 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %31, i32 0, i32 0
  %33 = extractvalue { i8*, i32 } %30, 0
  store i8* %33, i8** %32, align 8
  %34 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %31, i32 0, i32 1
  %35 = extractvalue { i8*, i32 } %30, 1
  store i32 %35, i32* %34, align 8
  br label %123

36:                                               ; preds = %16
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* @CPP_OPEN_PAREN, align 4
  %39 = call i64 @c_parser_next_token_is(i32* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %115

41:                                               ; preds = %36
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @c_parser_peek_2nd_token(i32* %42)
  %44 = call i64 @c_token_starts_typename(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %115

46:                                               ; preds = %41
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @c_parser_consume_token(i32* %47)
  %49 = load i32*, i32** %4, align 8
  %50 = call %struct.c_type_name* @c_parser_type_name(i32* %49)
  store %struct.c_type_name* %50, %struct.c_type_name** %6, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %53 = call i32 @c_parser_skip_until_found(i32* %51, i32 %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.c_type_name*, %struct.c_type_name** %6, align 8
  %55 = icmp eq %struct.c_type_name* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %46
  %57 = load i32, i32* @error_mark_node, align 4
  %58 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %7, i32 0, i32 1
  store i32 %57, i32* %58, align 8
  %59 = load i8*, i8** @ERROR_MARK, align 8
  %60 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %7, i32 0, i32 0
  store i8* %59, i8** %60, align 8
  %61 = bitcast %struct.c_expr* %3 to i8*
  %62 = bitcast %struct.c_expr* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 8 %62, i64 16, i1 false)
  br label %123

63:                                               ; preds = %46
  %64 = load %struct.c_type_name*, %struct.c_type_name** %6, align 8
  %65 = getelementptr inbounds %struct.c_type_name, %struct.c_type_name* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @used_types_insert(i32 %68)
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* @CPP_OPEN_BRACE, align 4
  %72 = call i64 @c_parser_next_token_is(i32* %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %63
  %75 = load i32*, i32** %4, align 8
  %76 = load %struct.c_type_name*, %struct.c_type_name** %6, align 8
  %77 = call { i8*, i32 } @c_parser_postfix_expression_after_paren_type(i32* %75, %struct.c_type_name* %76)
  %78 = bitcast %struct.c_expr* %3 to { i8*, i32 }*
  %79 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %78, i32 0, i32 0
  %80 = extractvalue { i8*, i32 } %77, 0
  store i8* %80, i8** %79, align 8
  %81 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %78, i32 0, i32 1
  %82 = extractvalue { i8*, i32 } %77, 1
  store i32 %82, i32* %81, align 8
  br label %123

83:                                               ; preds = %63
  %84 = load i32*, i32** %4, align 8
  %85 = call { i8*, i32 } @c_parser_cast_expression(i32* %84, %struct.c_expr* null)
  %86 = bitcast %struct.c_expr* %9 to { i8*, i32 }*
  %87 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %86, i32 0, i32 0
  %88 = extractvalue { i8*, i32 } %85, 0
  store i8* %88, i8** %87, align 8
  %89 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %86, i32 0, i32 1
  %90 = extractvalue { i8*, i32 } %85, 1
  store i32 %90, i32* %89, align 8
  %91 = bitcast %struct.c_expr* %8 to i8*
  %92 = bitcast %struct.c_expr* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %91, i8* align 8 %92, i64 16, i1 false)
  %93 = bitcast %struct.c_expr* %8 to { i8*, i32 }*
  %94 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %93, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call { i8*, i32 } @default_function_array_conversion(i8* %95, i32 %97)
  %99 = bitcast %struct.c_expr* %10 to { i8*, i32 }*
  %100 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %99, i32 0, i32 0
  %101 = extractvalue { i8*, i32 } %98, 0
  store i8* %101, i8** %100, align 8
  %102 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %99, i32 0, i32 1
  %103 = extractvalue { i8*, i32 } %98, 1
  store i32 %103, i32* %102, align 8
  %104 = bitcast %struct.c_expr* %8 to i8*
  %105 = bitcast %struct.c_expr* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %104, i8* align 8 %105, i64 16, i1 false)
  %106 = load %struct.c_type_name*, %struct.c_type_name** %6, align 8
  %107 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %8, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @c_cast_expr(%struct.c_type_name* %106, i32 %108)
  %110 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %7, i32 0, i32 1
  store i32 %109, i32* %110, align 8
  %111 = load i8*, i8** @ERROR_MARK, align 8
  %112 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %7, i32 0, i32 0
  store i8* %111, i8** %112, align 8
  %113 = bitcast %struct.c_expr* %3 to i8*
  %114 = bitcast %struct.c_expr* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %113, i8* align 8 %114, i64 16, i1 false)
  br label %123

115:                                              ; preds = %41, %36
  %116 = load i32*, i32** %4, align 8
  %117 = call { i8*, i32 } @c_parser_unary_expression(i32* %116)
  %118 = bitcast %struct.c_expr* %3 to { i8*, i32 }*
  %119 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %118, i32 0, i32 0
  %120 = extractvalue { i8*, i32 } %117, 0
  store i8* %120, i8** %119, align 8
  %121 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %118, i32 0, i32 1
  %122 = extractvalue { i8*, i32 } %117, 1
  store i32 %122, i32* %121, align 8
  br label %123

123:                                              ; preds = %115, %83, %74, %56, %22
  %124 = bitcast %struct.c_expr* %3 to { i8*, i32 }*
  %125 = load { i8*, i32 }, { i8*, i32 }* %124, align 8
  ret { i8*, i32 } %125
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @c_dialect_objc(...) #1

declare dso_local { i8*, i32 } @c_parser_postfix_expression_after_primary(i32*, i8*, i32) #1

declare dso_local i64 @c_parser_next_token_is(i32*, i32) #1

declare dso_local i64 @c_token_starts_typename(i32) #1

declare dso_local i32 @c_parser_peek_2nd_token(i32*) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

declare dso_local %struct.c_type_name* @c_parser_type_name(i32*) #1

declare dso_local i32 @c_parser_skip_until_found(i32*, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @used_types_insert(i32) #1

declare dso_local { i8*, i32 } @c_parser_postfix_expression_after_paren_type(i32*, %struct.c_type_name*) #1

declare dso_local { i8*, i32 } @default_function_array_conversion(i8*, i32) #1

declare dso_local i32 @c_cast_expr(%struct.c_type_name*, i32) #1

declare dso_local { i8*, i32 } @c_parser_unary_expression(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
