; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_parameter_declaration_clause.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_parameter_declaration_clause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_12__ = type { i64 }

@CPP_ELLIPSIS = common dso_local global i64 0, align 8
@CPP_CLOSE_PAREN = common dso_local global i64 0, align 8
@in_system_header = common dso_local global i64 0, align 8
@current_class_type = common dso_local global i32* null, align 8
@current_lang_name = common dso_local global i64 0, align 8
@lang_name_c = common dso_local global i64 0, align 8
@no_parameters = common dso_local global %struct.TYPE_15__* null, align 8
@RID_VOID = common dso_local global i64 0, align 8
@CPP_COMMA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"`...'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (%struct.TYPE_14__*)* @cp_parser_parameter_declaration_clause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @cp_parser_parameter_declaration_clause(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.TYPE_13__* @cp_lexer_peek_token(i32 %10)
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %5, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CPP_ELLIPSIS, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @cp_lexer_consume_token(i32 %20)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %2, align 8
  br label %114

22:                                               ; preds = %1
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CPP_CLOSE_PAREN, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %22
  %29 = load i64, i64* @in_system_header, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i32*, i32** @current_class_type, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i64, i64* @current_lang_name, align 8
  %36 = load i64, i64* @lang_name_c, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %2, align 8
  br label %114

39:                                               ; preds = %34, %31, %28
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** @no_parameters, align 8
  store %struct.TYPE_15__* %40, %struct.TYPE_15__** %2, align 8
  br label %114

41:                                               ; preds = %22
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @RID_VOID, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %41
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.TYPE_12__* @cp_lexer_peek_nth_token(i32 %50, i32 2)
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @CPP_CLOSE_PAREN, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %47
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @cp_lexer_consume_token(i32 %59)
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** @no_parameters, align 8
  store %struct.TYPE_15__* %61, %struct.TYPE_15__** %2, align 8
  br label %114

62:                                               ; preds = %47, %41
  br label %63

63:                                               ; preds = %62
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %66 = call %struct.TYPE_15__* @cp_parser_parameter_declaration_list(%struct.TYPE_14__* %65, i32* %7)
  store %struct.TYPE_15__* %66, %struct.TYPE_15__** %4, align 8
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %2, align 8
  br label %114

70:                                               ; preds = %64
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call %struct.TYPE_13__* @cp_lexer_peek_token(i32 %73)
  store %struct.TYPE_13__* %74, %struct.TYPE_13__** %5, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @CPP_COMMA, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %70
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @cp_lexer_consume_token(i32 %83)
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %86 = load i64, i64* @CPP_ELLIPSIS, align 8
  %87 = call i32* @cp_parser_require(%struct.TYPE_14__* %85, i64 %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %88 = icmp ne i32* %87, null
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %6, align 4
  br label %103

90:                                               ; preds = %70
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @CPP_ELLIPSIS, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %90
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @cp_lexer_consume_token(i32 %99)
  store i32 1, i32* %6, align 4
  br label %102

101:                                              ; preds = %90
  store i32 0, i32* %6, align 4
  br label %102

102:                                              ; preds = %101, %96
  br label %103

103:                                              ; preds = %102, %80
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %105 = icmp ne %struct.TYPE_15__* %104, null
  br i1 %105, label %106, label %112

106:                                              ; preds = %103
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  store i32 1, i32* %111, align 4
  br label %112

112:                                              ; preds = %109, %106, %103
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_15__* %113, %struct.TYPE_15__** %2, align 8
  br label %114

114:                                              ; preds = %112, %69, %56, %39, %38, %17
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  ret %struct.TYPE_15__* %115
}

declare dso_local %struct.TYPE_13__* @cp_lexer_peek_token(i32) #1

declare dso_local i32 @cp_lexer_consume_token(i32) #1

declare dso_local %struct.TYPE_12__* @cp_lexer_peek_nth_token(i32, i32) #1

declare dso_local %struct.TYPE_15__* @cp_parser_parameter_declaration_list(%struct.TYPE_14__*, i32*) #1

declare dso_local i32* @cp_parser_require(%struct.TYPE_14__*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
