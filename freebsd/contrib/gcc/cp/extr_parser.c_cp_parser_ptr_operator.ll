; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_ptr_operator.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_ptr_operator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i8*, i8*, i8*, i32 }
%struct.TYPE_14__ = type { i64 }

@ERROR_MARK = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i8* null, align 8
@TYPE_UNQUALIFIED = common dso_local global i32 0, align 4
@CPP_MULT = common dso_local global i64 0, align 8
@CPP_AND = common dso_local global i64 0, align 8
@ADDR_EXPR = common dso_local global i32 0, align 4
@INDIRECT_REF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"`*'\00", align 1
@NAMESPACE_DECL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"%qD is a namespace\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"expected ptr-operator\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i8**, i32*)* @cp_parser_ptr_operator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_parser_ptr_operator(%struct.TYPE_15__* %0, i8** %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* @ERROR_MARK, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i8*, i8** @NULL_TREE, align 8
  %11 = load i8**, i8*** %5, align 8
  store i8* %10, i8** %11, align 8
  %12 = load i32, i32* @TYPE_UNQUALIFIED, align 4
  %13 = load i32*, i32** %6, align 8
  store i32 %12, i32* %13, align 4
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.TYPE_14__* @cp_lexer_peek_token(i32 %16)
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %8, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CPP_MULT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %3
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CPP_AND, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %57

29:                                               ; preds = %23, %3
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CPP_AND, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @ADDR_EXPR, align 4
  br label %39

37:                                               ; preds = %29
  %38 = load i32, i32* @INDIRECT_REF, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  store i32 %40, i32* %7, align 4
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @cp_lexer_consume_token(i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @INDIRECT_REF, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %39
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %50 = call i64 @cp_parser_allow_gnu_extensions_p(%struct.TYPE_15__* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48, %39
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %54 = call i32 @cp_parser_cv_qualifier_seq_opt(%struct.TYPE_15__* %53)
  %55 = load i32*, i32** %6, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %52, %48
  br label %111

57:                                               ; preds = %23
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %59 = call i32 @cp_parser_parse_tentatively(%struct.TYPE_15__* %58)
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %61 = call i32 @cp_parser_global_scope_opt(%struct.TYPE_15__* %60, i32 0)
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %63 = call i32 @cp_parser_nested_name_specifier(%struct.TYPE_15__* %62, i32 0, i32 1, i32 0, i32 0)
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %65 = call i32 @cp_parser_error_occurred(%struct.TYPE_15__* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %103, label %67

67:                                               ; preds = %57
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %69 = load i64, i64* @CPP_MULT, align 8
  %70 = call i64 @cp_parser_require(%struct.TYPE_15__* %68, i64 %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %103

72:                                               ; preds = %67
  %73 = load i32, i32* @INDIRECT_REF, align 4
  store i32 %73, i32* %7, align 4
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = call i64 @TREE_CODE(i8* %76)
  %78 = load i64, i64* @NAMESPACE_DECL, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %72
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %83)
  br label %102

85:                                               ; preds = %72
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = load i8**, i8*** %5, align 8
  store i8* %88, i8** %89, align 8
  %90 = load i8*, i8** @NULL_TREE, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 2
  store i8* %90, i8** %92, align 8
  %93 = load i8*, i8** @NULL_TREE, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  %96 = load i8*, i8** @NULL_TREE, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %100 = call i32 @cp_parser_cv_qualifier_seq_opt(%struct.TYPE_15__* %99)
  %101 = load i32*, i32** %6, align 8
  store i32 %100, i32* %101, align 4
  br label %102

102:                                              ; preds = %85, %80
  br label %103

103:                                              ; preds = %102, %67, %57
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %105 = call i32 @cp_parser_parse_definitely(%struct.TYPE_15__* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %103
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %109 = call i32 @cp_parser_error(%struct.TYPE_15__* %108, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %110

110:                                              ; preds = %107, %103
  br label %111

111:                                              ; preds = %110, %56
  %112 = load i32, i32* %7, align 4
  ret i32 %112
}

declare dso_local %struct.TYPE_14__* @cp_lexer_peek_token(i32) #1

declare dso_local i32 @cp_lexer_consume_token(i32) #1

declare dso_local i64 @cp_parser_allow_gnu_extensions_p(%struct.TYPE_15__*) #1

declare dso_local i32 @cp_parser_cv_qualifier_seq_opt(%struct.TYPE_15__*) #1

declare dso_local i32 @cp_parser_parse_tentatively(%struct.TYPE_15__*) #1

declare dso_local i32 @cp_parser_global_scope_opt(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @cp_parser_nested_name_specifier(%struct.TYPE_15__*, i32, i32, i32, i32) #1

declare dso_local i32 @cp_parser_error_occurred(%struct.TYPE_15__*) #1

declare dso_local i64 @cp_parser_require(%struct.TYPE_15__*, i64, i8*) #1

declare dso_local i64 @TREE_CODE(i8*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @cp_parser_parse_definitely(%struct.TYPE_15__*) #1

declare dso_local i32 @cp_parser_error(%struct.TYPE_15__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
