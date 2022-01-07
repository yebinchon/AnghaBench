; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_binary_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_binary_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i64 }

@PREC_NOT_OPERATOR = common dso_local global i32 0, align 4
@ERROR_MARK = common dso_local global i32 0, align 4
@binops_by_token = common dso_local global %struct.TYPE_12__* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"calls to overloaded operators\00", align 1
@error_mark_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32)* @cp_parser_binary_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_parser_binary_expression(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i64 0
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %7, align 8
  %20 = load i32, i32* @PREC_NOT_OPERATOR, align 4
  store i32 %20, i32* %14, align 4
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @cp_parser_cast_expression(%struct.TYPE_15__* %21, i32 0, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* @ERROR_MARK, align 4
  store i32 %24, i32* %12, align 4
  br label %25

25:                                               ; preds = %118, %2
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.TYPE_13__* @cp_lexer_peek_token(i32 %28)
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %10, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %31 = call i32 @TOKEN_PRECEDENCE(%struct.TYPE_13__* %30)
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp ule i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %25
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %38 = icmp eq %struct.TYPE_14__* %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %119

40:                                               ; preds = %35
  br label %85

41:                                               ; preds = %25
  br label %42

42:                                               ; preds = %66, %41
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** @binops_by_token, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %11, align 4
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @cp_lexer_consume_token(i32 %52)
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %55 = call i32 @cp_parser_simple_cast_expression(%struct.TYPE_15__* %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* @ERROR_MARK, align 4
  store i32 %56, i32* %13, align 4
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.TYPE_13__* @cp_lexer_peek_token(i32 %59)
  store %struct.TYPE_13__* %60, %struct.TYPE_13__** %10, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %62 = call i32 @TOKEN_PRECEDENCE(%struct.TYPE_13__* %61)
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp ugt i32 %63, %64
  br i1 %65, label %66, label %102

66:                                               ; preds = %42
  %67 = load i32, i32* %14, align 4
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 1
  store %struct.TYPE_14__* %80, %struct.TYPE_14__** %7, align 8
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %13, align 4
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %15, align 4
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %16, align 4
  store i32 %84, i32* %15, align 4
  br label %42

85:                                               ; preds = %40
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 -1
  store %struct.TYPE_14__* %87, %struct.TYPE_14__** %7, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %14, align 4
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %13, align 4
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %8, align 4
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %12, align 4
  br label %102

102:                                              ; preds = %85, %42
  store i32 0, i32* %17, align 4
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %13, align 4
  %108 = call i32 @build_x_binary_op(i32 %103, i32 %104, i32 %105, i32 %106, i32 %107, i32* %17)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %11, align 4
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %17, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %102
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %114 = call i64 @cp_parser_non_integral_constant_expression(%struct.TYPE_15__* %113, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = load i32, i32* @error_mark_node, align 4
  store i32 %117, i32* %3, align 4
  br label %121

118:                                              ; preds = %112, %102
  br label %25

119:                                              ; preds = %39
  %120 = load i32, i32* %8, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %119, %116
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @cp_parser_cast_expression(%struct.TYPE_15__*, i32, i32) #1

declare dso_local %struct.TYPE_13__* @cp_lexer_peek_token(i32) #1

declare dso_local i32 @TOKEN_PRECEDENCE(%struct.TYPE_13__*) #1

declare dso_local i32 @cp_lexer_consume_token(i32) #1

declare dso_local i32 @cp_parser_simple_cast_expression(%struct.TYPE_15__*) #1

declare dso_local i32 @build_x_binary_op(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @cp_parser_non_integral_constant_expression(%struct.TYPE_15__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
