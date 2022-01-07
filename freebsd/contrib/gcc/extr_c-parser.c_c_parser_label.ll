; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_label.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i64 }

@NULL_TREE = common dso_local global i64 0, align 8
@RID_CASE = common dso_local global i32 0, align 4
@CPP_COLON = common dso_local global i32 0, align 4
@CPP_ELLIPSIS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"expected %<:%>\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"expected %<:%> or %<...%>\00", align 1
@RID_DEFAULT = common dso_local global i32 0, align 4
@CPP_NAME = common dso_local global i32 0, align 4
@LABEL_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @c_parser_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_parser_label(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = call %struct.TYPE_3__* @c_parser_peek_token(i32* %13)
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %3, align 4
  %17 = load i64, i64* @NULL_TREE, align 8
  store i64 %17, i64* %4, align 8
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @RID_CASE, align 4
  %20 = call i64 @c_parser_next_token_is_keyword(i32* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %67

22:                                               ; preds = %1
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @c_parser_consume_token(i32* %23)
  %25 = load i32*, i32** %2, align 8
  %26 = call i64 @c_parser_expr_no_commas(i32* %25, i32* null)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %5, align 8
  %30 = load i32*, i32** %2, align 8
  %31 = load i32, i32* @CPP_COLON, align 4
  %32 = call i64 @c_parser_next_token_is(i32* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %22
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @c_parser_consume_token(i32* %35)
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @NULL_TREE, align 8
  %39 = call i64 @do_case(i64 %37, i64 %38)
  store i64 %39, i64* %4, align 8
  br label %66

40:                                               ; preds = %22
  %41 = load i32*, i32** %2, align 8
  %42 = load i32, i32* @CPP_ELLIPSIS, align 4
  %43 = call i64 @c_parser_next_token_is(i32* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %40
  %46 = load i32*, i32** %2, align 8
  %47 = call i32 @c_parser_consume_token(i32* %46)
  %48 = load i32*, i32** %2, align 8
  %49 = call i64 @c_parser_expr_no_commas(i32* %48, i32* null)
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i64 %49, i64* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %6, align 8
  %53 = load i32*, i32** %2, align 8
  %54 = load i32, i32* @CPP_COLON, align 4
  %55 = call i64 @c_parser_require(i32* %53, i32 %54, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %45
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* %6, align 8
  %60 = call i64 @do_case(i64 %58, i64 %59)
  store i64 %60, i64* %4, align 8
  br label %61

61:                                               ; preds = %57, %45
  br label %65

62:                                               ; preds = %40
  %63 = load i32*, i32** %2, align 8
  %64 = call i32 @c_parser_error(i32* %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %65

65:                                               ; preds = %62, %61
  br label %66

66:                                               ; preds = %65, %34
  br label %121

67:                                               ; preds = %1
  %68 = load i32*, i32** %2, align 8
  %69 = load i32, i32* @RID_DEFAULT, align 4
  %70 = call i64 @c_parser_next_token_is_keyword(i32* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %67
  %73 = load i32*, i32** %2, align 8
  %74 = call i32 @c_parser_consume_token(i32* %73)
  %75 = load i32*, i32** %2, align 8
  %76 = load i32, i32* @CPP_COLON, align 4
  %77 = call i64 @c_parser_require(i32* %75, i32 %76, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load i64, i64* @NULL_TREE, align 8
  %81 = load i64, i64* @NULL_TREE, align 8
  %82 = call i64 @do_case(i64 %80, i64 %81)
  store i64 %82, i64* %4, align 8
  br label %83

83:                                               ; preds = %79, %72
  br label %120

84:                                               ; preds = %67
  %85 = load i32*, i32** %2, align 8
  %86 = call %struct.TYPE_3__* @c_parser_peek_token(i32* %85)
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %9, align 8
  %89 = load i32*, i32** %2, align 8
  %90 = load i32, i32* @CPP_NAME, align 4
  %91 = call i64 @c_parser_next_token_is(i32* %89, i32 %90)
  %92 = call i32 @gcc_assert(i64 %91)
  %93 = load i32*, i32** %2, align 8
  %94 = call i32 @c_parser_consume_token(i32* %93)
  %95 = load i32*, i32** %2, align 8
  %96 = load i32, i32* @CPP_COLON, align 4
  %97 = call i64 @c_parser_next_token_is(i32* %95, i32 %96)
  %98 = call i32 @gcc_assert(i64 %97)
  %99 = load i32*, i32** %2, align 8
  %100 = call %struct.TYPE_3__* @c_parser_peek_token(i32* %99)
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  store i32 %102, i32* %11, align 4
  %103 = load i32*, i32** %2, align 8
  %104 = call i32 @c_parser_consume_token(i32* %103)
  %105 = load i32*, i32** %2, align 8
  %106 = call i64 @c_parser_attributes(i32* %105)
  store i64 %106, i64* %12, align 8
  %107 = load i32, i32* %11, align 4
  %108 = load i64, i64* %9, align 8
  %109 = call i64 @define_label(i32 %107, i64 %108)
  store i64 %109, i64* %10, align 8
  %110 = load i64, i64* %10, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %84
  %113 = load i64, i64* %12, align 8
  %114 = call i32 @decl_attributes(i64* %10, i64 %113, i32 0)
  %115 = load i32, i32* @LABEL_EXPR, align 4
  %116 = load i64, i64* %10, align 8
  %117 = call i32 @build_stmt(i32 %115, i64 %116)
  %118 = call i64 @add_stmt(i32 %117)
  store i64 %118, i64* %4, align 8
  br label %119

119:                                              ; preds = %112, %84
  br label %120

120:                                              ; preds = %119, %83
  br label %121

121:                                              ; preds = %120, %66
  %122 = load i64, i64* %4, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %121
  %125 = load i64, i64* %4, align 8
  %126 = load i32, i32* %3, align 4
  %127 = call i32 @SET_EXPR_LOCATION(i64 %125, i32 %126)
  br label %128

128:                                              ; preds = %124, %121
  ret void
}

declare dso_local %struct.TYPE_3__* @c_parser_peek_token(i32*) #1

declare dso_local i64 @c_parser_next_token_is_keyword(i32*, i32) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

declare dso_local i64 @c_parser_expr_no_commas(i32*, i32*) #1

declare dso_local i64 @c_parser_next_token_is(i32*, i32) #1

declare dso_local i64 @do_case(i64, i64) #1

declare dso_local i64 @c_parser_require(i32*, i32, i8*) #1

declare dso_local i32 @c_parser_error(i32*, i8*) #1

declare dso_local i32 @gcc_assert(i64) #1

declare dso_local i64 @c_parser_attributes(i32*) #1

declare dso_local i64 @define_label(i32, i64) #1

declare dso_local i32 @decl_attributes(i64*, i64, i32) #1

declare dso_local i64 @add_stmt(i32) #1

declare dso_local i32 @build_stmt(i32, i64) #1

declare dso_local i32 @SET_EXPR_LOCATION(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
