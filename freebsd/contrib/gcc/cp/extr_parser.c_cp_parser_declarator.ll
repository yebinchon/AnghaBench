; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_declarator.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_declarator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i64 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i64 }

@NULL_TREE = common dso_local global i64 0, align 8
@flag_blocks = common dso_local global i64 0, align 8
@CPP_XOR = common dso_local global i64 0, align 8
@CP_PARSER_DECLARATOR_EITHER = common dso_local global i32 0, align 4
@cp_error_declarator = common dso_local global %struct.TYPE_26__* null, align 8
@CP_PARSER_DECLARATOR_NAMED = common dso_local global i32 0, align 4
@INDIRECT_REF = common dso_local global i32 0, align 4
@CPP_OPEN_PAREN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_26__* (%struct.TYPE_25__*, i32, i32*, i32*, i32)* @cp_parser_declarator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_26__* @cp_parser_declarator(%struct.TYPE_25__* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca %struct.TYPE_26__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_26__*, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %21 = load i64, i64* @NULL_TREE, align 8
  store i64 %21, i64* %17, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32*, i32** %9, align 8
  store i32 0, i32* %25, align 4
  br label %26

26:                                               ; preds = %24, %5
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %28 = call i64 @cp_parser_allow_gnu_extensions_p(%struct.TYPE_25__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %32 = call i64 @cp_parser_attributes_opt(%struct.TYPE_25__* %31)
  store i64 %32, i64* %17, align 8
  br label %33

33:                                               ; preds = %30, %26
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.TYPE_24__* @cp_lexer_peek_token(i32 %36)
  store %struct.TYPE_24__* %37, %struct.TYPE_24__** %12, align 8
  %38 = load i64, i64* @flag_blocks, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %66

40:                                               ; preds = %33
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @CPP_XOR, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %40
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @cp_lexer_consume_token(i32 %49)
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %52 = call i32 @cp_parser_cv_qualifier_or_attribute_seq_opt(%struct.TYPE_25__* %51, i64* %20)
  store i32 %52, i32* %18, align 4
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %54 = load i32, i32* @CP_PARSER_DECLARATOR_EITHER, align 4
  %55 = call %struct.TYPE_26__* @cp_parser_declarator(%struct.TYPE_25__* %53, i32 %54, i32* null, i32* null, i32 0)
  store %struct.TYPE_26__* %55, %struct.TYPE_26__** %19, align 8
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %57 = load %struct.TYPE_26__*, %struct.TYPE_26__** @cp_error_declarator, align 8
  %58 = icmp eq %struct.TYPE_26__* %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %46
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  store %struct.TYPE_26__* %60, %struct.TYPE_26__** %6, align 8
  br label %152

61:                                               ; preds = %46
  %62 = load i64, i64* %20, align 8
  %63 = load i32, i32* %18, align 4
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %65 = call %struct.TYPE_26__* @make_block_pointer_declarator(i64 %62, i32 %63, %struct.TYPE_26__* %64)
  store %struct.TYPE_26__* %65, %struct.TYPE_26__** %6, align 8
  br label %152

66:                                               ; preds = %40, %33
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %68 = call i32 @cp_parser_parse_tentatively(%struct.TYPE_25__* %67)
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %70 = call i32 @cp_parser_ptr_operator(%struct.TYPE_25__* %69, i64* %16, i32* %15)
  store i32 %70, i32* %14, align 4
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %72 = call i64 @cp_parser_parse_definitely(%struct.TYPE_25__* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %120

74:                                               ; preds = %66
  %75 = load i32*, i32** %10, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i32*, i32** %10, align 8
  store i32 1, i32* %78, align 4
  br label %79

79:                                               ; preds = %77, %74
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @CP_PARSER_DECLARATOR_NAMED, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %85 = call i32 @cp_parser_parse_tentatively(%struct.TYPE_25__* %84)
  br label %86

86:                                               ; preds = %83, %79
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call %struct.TYPE_26__* @cp_parser_declarator(%struct.TYPE_25__* %87, i32 %88, i32* null, i32* null, i32 0)
  store %struct.TYPE_26__* %89, %struct.TYPE_26__** %13, align 8
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @CP_PARSER_DECLARATOR_NAMED, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %86
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %95 = call i64 @cp_parser_parse_definitely(%struct.TYPE_25__* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %93
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %13, align 8
  br label %98

98:                                               ; preds = %97, %93, %86
  %99 = load i64, i64* %16, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load i32, i32* %15, align 4
  %103 = load i64, i64* %16, align 8
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %105 = call %struct.TYPE_26__* @make_ptrmem_declarator(i32 %102, i64 %103, %struct.TYPE_26__* %104)
  store %struct.TYPE_26__* %105, %struct.TYPE_26__** %13, align 8
  br label %119

106:                                              ; preds = %98
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* @INDIRECT_REF, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = load i32, i32* %15, align 4
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %113 = call %struct.TYPE_26__* @make_pointer_declarator(i32 %111, %struct.TYPE_26__* %112)
  store %struct.TYPE_26__* %113, %struct.TYPE_26__** %13, align 8
  br label %118

114:                                              ; preds = %106
  %115 = load i32, i32* %15, align 4
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %117 = call %struct.TYPE_26__* @make_reference_declarator(i32 %115, %struct.TYPE_26__* %116)
  store %struct.TYPE_26__* %117, %struct.TYPE_26__** %13, align 8
  br label %118

118:                                              ; preds = %114, %110
  br label %119

119:                                              ; preds = %118, %101
  br label %136

120:                                              ; preds = %66
  %121 = load i32*, i32** %10, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %130

123:                                              ; preds = %120
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @CPP_OPEN_PAREN, align 4
  %128 = call i32 @cp_lexer_next_token_is(i32 %126, i32 %127)
  %129 = load i32*, i32** %10, align 8
  store i32 %128, i32* %129, align 4
  br label %130

130:                                              ; preds = %123, %120
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %132 = load i32, i32* %8, align 4
  %133 = load i32*, i32** %9, align 8
  %134 = load i32, i32* %11, align 4
  %135 = call %struct.TYPE_26__* @cp_parser_direct_declarator(%struct.TYPE_25__* %131, i32 %132, i32* %133, i32 %134)
  store %struct.TYPE_26__* %135, %struct.TYPE_26__** %13, align 8
  br label %136

136:                                              ; preds = %130, %119
  %137 = load i64, i64* %17, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %150

139:                                              ; preds = %136
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %141 = icmp ne %struct.TYPE_26__* %140, null
  br i1 %141, label %142, label %150

142:                                              ; preds = %139
  %143 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %144 = load %struct.TYPE_26__*, %struct.TYPE_26__** @cp_error_declarator, align 8
  %145 = icmp ne %struct.TYPE_26__* %143, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %142
  %147 = load i64, i64* %17, align 8
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %149 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %148, i32 0, i32 0
  store i64 %147, i64* %149, align 8
  br label %150

150:                                              ; preds = %146, %142, %139, %136
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  store %struct.TYPE_26__* %151, %struct.TYPE_26__** %6, align 8
  br label %152

152:                                              ; preds = %150, %61, %59
  %153 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  ret %struct.TYPE_26__* %153
}

declare dso_local i64 @cp_parser_allow_gnu_extensions_p(%struct.TYPE_25__*) #1

declare dso_local i64 @cp_parser_attributes_opt(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_24__* @cp_lexer_peek_token(i32) #1

declare dso_local i32 @cp_lexer_consume_token(i32) #1

declare dso_local i32 @cp_parser_cv_qualifier_or_attribute_seq_opt(%struct.TYPE_25__*, i64*) #1

declare dso_local %struct.TYPE_26__* @make_block_pointer_declarator(i64, i32, %struct.TYPE_26__*) #1

declare dso_local i32 @cp_parser_parse_tentatively(%struct.TYPE_25__*) #1

declare dso_local i32 @cp_parser_ptr_operator(%struct.TYPE_25__*, i64*, i32*) #1

declare dso_local i64 @cp_parser_parse_definitely(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_26__* @make_ptrmem_declarator(i32, i64, %struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_26__* @make_pointer_declarator(i32, %struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_26__* @make_reference_declarator(i32, %struct.TYPE_26__*) #1

declare dso_local i32 @cp_lexer_next_token_is(i32, i32) #1

declare dso_local %struct.TYPE_26__* @cp_parser_direct_declarator(%struct.TYPE_25__*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
