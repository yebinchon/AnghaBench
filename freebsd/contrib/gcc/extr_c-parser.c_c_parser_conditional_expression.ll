; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_conditional_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_conditional_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_expr = type { i64, i8* }

@CPP_QUERY = common dso_local global i32 0, align 4
@CPP_COLON = common dso_local global i32 0, align 4
@pedantic = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"ISO C forbids omitting the middle term of a ?: expression\00", align 1
@truthvalue_true_node = common dso_local global i64 0, align 8
@skip_evaluation = common dso_local global i32 0, align 4
@truthvalue_false_node = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"expected %<:%>\00", align 1
@error_mark_node = common dso_local global i64 0, align 8
@ERROR_MARK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i8* } (i32*, %struct.c_expr*)* @c_parser_conditional_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i8* } @c_parser_conditional_expression(i32* %0, %struct.c_expr* %1) #0 {
  %3 = alloca %struct.c_expr, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.c_expr*, align 8
  %6 = alloca %struct.c_expr, align 8
  %7 = alloca %struct.c_expr, align 8
  %8 = alloca %struct.c_expr, align 8
  %9 = alloca %struct.c_expr, align 8
  %10 = alloca %struct.c_expr, align 8
  %11 = alloca %struct.c_expr, align 8
  %12 = alloca %struct.c_expr, align 8
  %13 = alloca %struct.c_expr, align 8
  %14 = alloca %struct.c_expr, align 8
  store i32* %0, i32** %4, align 8
  store %struct.c_expr* %1, %struct.c_expr** %5, align 8
  %15 = load %struct.c_expr*, %struct.c_expr** %5, align 8
  %16 = icmp ne %struct.c_expr* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = call i64 (...) @c_dialect_objc()
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %17, %2
  %21 = phi i1 [ true, %2 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @gcc_assert(i32 %22)
  %24 = load i32*, i32** %4, align 8
  %25 = load %struct.c_expr*, %struct.c_expr** %5, align 8
  %26 = call { i64, i8* } @c_parser_binary_expression(i32* %24, %struct.c_expr* %25)
  %27 = bitcast %struct.c_expr* %10 to { i64, i8* }*
  %28 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %27, i32 0, i32 0
  %29 = extractvalue { i64, i8* } %26, 0
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %27, i32 0, i32 1
  %31 = extractvalue { i64, i8* } %26, 1
  store i8* %31, i8** %30, align 8
  %32 = bitcast %struct.c_expr* %6 to i8*
  %33 = bitcast %struct.c_expr* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 16, i1 false)
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* @CPP_QUERY, align 4
  %36 = call i64 @c_parser_next_token_is_not(i32* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %20
  %39 = bitcast %struct.c_expr* %3 to i8*
  %40 = bitcast %struct.c_expr* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 16, i1 false)
  br label %181

41:                                               ; preds = %20
  %42 = bitcast %struct.c_expr* %6 to { i64, i8* }*
  %43 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %42, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = call { i64, i8* } @default_function_array_conversion(i64 %44, i8* %46)
  %48 = bitcast %struct.c_expr* %11 to { i64, i8* }*
  %49 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %48, i32 0, i32 0
  %50 = extractvalue { i64, i8* } %47, 0
  store i64 %50, i64* %49, align 8
  %51 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %48, i32 0, i32 1
  %52 = extractvalue { i64, i8* } %47, 1
  store i8* %52, i8** %51, align 8
  %53 = bitcast %struct.c_expr* %6 to i8*
  %54 = bitcast %struct.c_expr* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 16, i1 false)
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @c_parser_consume_token(i32* %55)
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* @CPP_COLON, align 4
  %59 = call i64 @c_parser_next_token_is(i32* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %84

61:                                               ; preds = %41
  %62 = load i64, i64* @pedantic, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = call i32 @pedwarn(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %61
  %67 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %6, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @default_conversion(i64 %68)
  %70 = call i64 @save_expr(i64 %69)
  %71 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %7, i32 0, i32 0
  store i64 %70, i64* %71, align 8
  %72 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %7, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i8* @c_objc_common_truthvalue_conversion(i64 %73)
  %75 = ptrtoint i8* %74 to i64
  %76 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %6, i32 0, i32 0
  store i64 %75, i64* %76, align 8
  %77 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %6, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @truthvalue_true_node, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = load i32, i32* @skip_evaluation, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* @skip_evaluation, align 4
  br label %120

84:                                               ; preds = %41
  %85 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %6, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @default_conversion(i64 %86)
  %88 = call i8* @c_objc_common_truthvalue_conversion(i64 %87)
  %89 = ptrtoint i8* %88 to i64
  %90 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %6, i32 0, i32 0
  store i64 %89, i64* %90, align 8
  %91 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %6, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @truthvalue_false_node, align 8
  %94 = icmp eq i64 %92, %93
  %95 = zext i1 %94 to i32
  %96 = load i32, i32* @skip_evaluation, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* @skip_evaluation, align 4
  %98 = load i32*, i32** %4, align 8
  %99 = call { i64, i8* } @c_parser_expression_conv(i32* %98)
  %100 = bitcast %struct.c_expr* %12 to { i64, i8* }*
  %101 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %100, i32 0, i32 0
  %102 = extractvalue { i64, i8* } %99, 0
  store i64 %102, i64* %101, align 8
  %103 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %100, i32 0, i32 1
  %104 = extractvalue { i64, i8* } %99, 1
  store i8* %104, i8** %103, align 8
  %105 = bitcast %struct.c_expr* %7 to i8*
  %106 = bitcast %struct.c_expr* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %105, i8* align 8 %106, i64 16, i1 false)
  %107 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %6, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @truthvalue_true_node, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i32
  %112 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %6, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @truthvalue_false_node, align 8
  %115 = icmp eq i64 %113, %114
  %116 = zext i1 %115 to i32
  %117 = sub nsw i32 %111, %116
  %118 = load i32, i32* @skip_evaluation, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* @skip_evaluation, align 4
  br label %120

120:                                              ; preds = %84, %66
  %121 = load i32*, i32** %4, align 8
  %122 = load i32, i32* @CPP_COLON, align 4
  %123 = call i32 @c_parser_require(i32* %121, i32 %122, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %139, label %125

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %6, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @truthvalue_true_node, align 8
  %129 = icmp eq i64 %127, %128
  %130 = zext i1 %129 to i32
  %131 = load i32, i32* @skip_evaluation, align 4
  %132 = sub nsw i32 %131, %130
  store i32 %132, i32* @skip_evaluation, align 4
  %133 = load i64, i64* @error_mark_node, align 8
  %134 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %9, i32 0, i32 0
  store i64 %133, i64* %134, align 8
  %135 = load i8*, i8** @ERROR_MARK, align 8
  %136 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %9, i32 0, i32 1
  store i8* %135, i8** %136, align 8
  %137 = bitcast %struct.c_expr* %3 to i8*
  %138 = bitcast %struct.c_expr* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %137, i8* align 8 %138, i64 16, i1 false)
  br label %181

139:                                              ; preds = %120
  %140 = load i32*, i32** %4, align 8
  %141 = call { i64, i8* } @c_parser_conditional_expression(i32* %140, %struct.c_expr* null)
  %142 = bitcast %struct.c_expr* %13 to { i64, i8* }*
  %143 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %142, i32 0, i32 0
  %144 = extractvalue { i64, i8* } %141, 0
  store i64 %144, i64* %143, align 8
  %145 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %142, i32 0, i32 1
  %146 = extractvalue { i64, i8* } %141, 1
  store i8* %146, i8** %145, align 8
  %147 = bitcast %struct.c_expr* %8 to i8*
  %148 = bitcast %struct.c_expr* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %147, i8* align 8 %148, i64 16, i1 false)
  %149 = bitcast %struct.c_expr* %8 to { i64, i8* }*
  %150 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %149, i32 0, i32 1
  %153 = load i8*, i8** %152, align 8
  %154 = call { i64, i8* } @default_function_array_conversion(i64 %151, i8* %153)
  %155 = bitcast %struct.c_expr* %14 to { i64, i8* }*
  %156 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %155, i32 0, i32 0
  %157 = extractvalue { i64, i8* } %154, 0
  store i64 %157, i64* %156, align 8
  %158 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %155, i32 0, i32 1
  %159 = extractvalue { i64, i8* } %154, 1
  store i8* %159, i8** %158, align 8
  %160 = bitcast %struct.c_expr* %8 to i8*
  %161 = bitcast %struct.c_expr* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %160, i8* align 8 %161, i64 16, i1 false)
  %162 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %6, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @truthvalue_true_node, align 8
  %165 = icmp eq i64 %163, %164
  %166 = zext i1 %165 to i32
  %167 = load i32, i32* @skip_evaluation, align 4
  %168 = sub nsw i32 %167, %166
  store i32 %168, i32* @skip_evaluation, align 4
  %169 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %6, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %7, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %8, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = call i64 @build_conditional_expr(i64 %170, i64 %172, i64 %174)
  %176 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %9, i32 0, i32 0
  store i64 %175, i64* %176, align 8
  %177 = load i8*, i8** @ERROR_MARK, align 8
  %178 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %9, i32 0, i32 1
  store i8* %177, i8** %178, align 8
  %179 = bitcast %struct.c_expr* %3 to i8*
  %180 = bitcast %struct.c_expr* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %179, i8* align 8 %180, i64 16, i1 false)
  br label %181

181:                                              ; preds = %139, %125, %38
  %182 = bitcast %struct.c_expr* %3 to { i64, i8* }*
  %183 = load { i64, i8* }, { i64, i8* }* %182, align 8
  ret { i64, i8* } %183
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @c_dialect_objc(...) #1

declare dso_local { i64, i8* } @c_parser_binary_expression(i32*, %struct.c_expr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @c_parser_next_token_is_not(i32*, i32) #1

declare dso_local { i64, i8* } @default_function_array_conversion(i64, i8*) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

declare dso_local i64 @c_parser_next_token_is(i32*, i32) #1

declare dso_local i32 @pedwarn(i8*) #1

declare dso_local i64 @save_expr(i64) #1

declare dso_local i64 @default_conversion(i64) #1

declare dso_local i8* @c_objc_common_truthvalue_conversion(i64) #1

declare dso_local { i64, i8* } @c_parser_expression_conv(i32*) #1

declare dso_local i32 @c_parser_require(i32*, i32, i8*) #1

declare dso_local i64 @build_conditional_expr(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
