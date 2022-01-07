; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_typeof_specifier.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_typeof_specifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_typespec = type { i32, i32 }
%struct.c_type_name = type { i32 }
%struct.c_expr = type { i32 }

@ctsk_typeof = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i32 0, align 4
@RID_TYPEOF = common dso_local global i32 0, align 4
@skip_evaluation = common dso_local global i32 0, align 4
@in_typeof = common dso_local global i32 0, align 4
@CPP_OPEN_PAREN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"expected %<(%>\00", align 1
@NULL_TREE = common dso_local global i32 0, align 4
@COMPONENT_REF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"%<typeof%> applied to a bit-field\00", align 1
@NOP_EXPR = common dso_local global i32 0, align 4
@void_type_node = common dso_local global i32 0, align 4
@input_location = common dso_local global i32 0, align 4
@CPP_CLOSE_PAREN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"expected %<)%>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @c_parser_typeof_specifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @c_parser_typeof_specifier(i32* %0) #0 {
  %2 = alloca %struct.c_typespec, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.c_type_name*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.c_expr, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32, i32* @ctsk_typeof, align 4
  %9 = getelementptr inbounds %struct.c_typespec, %struct.c_typespec* %2, i32 0, i32 1
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @error_mark_node, align 4
  %11 = getelementptr inbounds %struct.c_typespec, %struct.c_typespec* %2, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* @RID_TYPEOF, align 4
  %14 = call i32 @c_parser_next_token_is_keyword(i32* %12, i32 %13)
  %15 = call i32 @gcc_assert(i32 %14)
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @c_parser_consume_token(i32* %16)
  %18 = load i32, i32* @skip_evaluation, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @skip_evaluation, align 4
  %20 = load i32, i32* @in_typeof, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @in_typeof, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* @CPP_OPEN_PAREN, align 4
  %24 = call i32 @c_parser_require(i32* %22, i32 %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @skip_evaluation, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* @skip_evaluation, align 4
  %29 = load i32, i32* @in_typeof, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* @in_typeof, align 4
  br label %122

31:                                               ; preds = %1
  %32 = load i32*, i32** %3, align 8
  %33 = call i64 @c_parser_next_token_starts_typename(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %31
  %36 = load i32*, i32** %3, align 8
  %37 = call %struct.c_type_name* @c_parser_type_name(i32* %36)
  store %struct.c_type_name* %37, %struct.c_type_name** %4, align 8
  %38 = load i32, i32* @skip_evaluation, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* @skip_evaluation, align 4
  %40 = load i32, i32* @in_typeof, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* @in_typeof, align 4
  %42 = load %struct.c_type_name*, %struct.c_type_name** %4, align 8
  %43 = icmp ne %struct.c_type_name* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %35
  %45 = load %struct.c_type_name*, %struct.c_type_name** %4, align 8
  %46 = call i32 @groktypename(%struct.c_type_name* %45)
  %47 = getelementptr inbounds %struct.c_typespec, %struct.c_typespec* %2, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = getelementptr inbounds %struct.c_typespec, %struct.c_typespec* %2, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @NULL_TREE, align 4
  %51 = call i32 @variably_modified_type_p(i32 %49, i32 %50)
  %52 = call i32 @pop_maybe_used(i32 %51)
  br label %53

53:                                               ; preds = %44, %35
  br label %118

54:                                               ; preds = %31
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @c_parser_expression(i32* %55)
  %57 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %6, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @skip_evaluation, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* @skip_evaluation, align 4
  %60 = load i32, i32* @in_typeof, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* @in_typeof, align 4
  %62 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %6, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @TREE_CODE(i32 %63)
  %65 = load i64, i64* @COMPONENT_REF, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %54
  %68 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %6, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @TREE_OPERAND(i32 %69, i32 1)
  %71 = call i64 @DECL_C_BIT_FIELD(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = call i32 @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %67, %54
  %76 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %6, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @TREE_TYPE(i32 %77)
  %79 = getelementptr inbounds %struct.c_typespec, %struct.c_typespec* %2, i32 0, i32 0
  store i32 %78, i32* %79, align 4
  %80 = getelementptr inbounds %struct.c_typespec, %struct.c_typespec* %2, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @NULL_TREE, align 4
  %83 = call i32 @variably_modified_type_p(i32 %81, i32 %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* @skip_evaluation, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %115, label %86

86:                                               ; preds = %75
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %115

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %6, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i64 @DECL_P(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %89
  %96 = load i32, i32* %7, align 4
  %97 = call i64 @CONSTANT_CLASS_P(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %95, %89
  %100 = load i32, i32* @NOP_EXPR, align 4
  %101 = load i32, i32* @void_type_node, align 4
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @build1(i32 %100, i32 %101, i32 %102)
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %99, %95
  %105 = load i32, i32* %7, align 4
  %106 = call i64 @EXPR_P(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @input_location, align 4
  %111 = call i32 @SET_EXPR_LOCATION(i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %108, %104
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @add_stmt(i32 %113)
  br label %115

115:                                              ; preds = %112, %86, %75
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @pop_maybe_used(i32 %116)
  br label %118

118:                                              ; preds = %115, %53
  %119 = load i32*, i32** %3, align 8
  %120 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %121 = call i32 @c_parser_skip_until_found(i32* %119, i32 %120, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %122

122:                                              ; preds = %118, %26
  %123 = bitcast %struct.c_typespec* %2 to i64*
  %124 = load i64, i64* %123, align 4
  ret i64 %124
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @c_parser_next_token_is_keyword(i32*, i32) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

declare dso_local i32 @c_parser_require(i32*, i32, i8*) #1

declare dso_local i64 @c_parser_next_token_starts_typename(i32*) #1

declare dso_local %struct.c_type_name* @c_parser_type_name(i32*) #1

declare dso_local i32 @groktypename(%struct.c_type_name*) #1

declare dso_local i32 @pop_maybe_used(i32) #1

declare dso_local i32 @variably_modified_type_p(i32, i32) #1

declare dso_local i32 @c_parser_expression(i32*) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @DECL_C_BIT_FIELD(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @DECL_P(i32) #1

declare dso_local i64 @CONSTANT_CLASS_P(i32) #1

declare dso_local i32 @build1(i32, i32, i32) #1

declare dso_local i64 @EXPR_P(i32) #1

declare dso_local i32 @SET_EXPR_LOCATION(i32, i32) #1

declare dso_local i32 @add_stmt(i32) #1

declare dso_local i32 @c_parser_skip_until_found(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
