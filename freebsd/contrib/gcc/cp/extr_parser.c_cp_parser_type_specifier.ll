; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_type_specifier.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_type_specifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { i32, i64* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }

@NULL_TREE = common dso_local global i64 0, align 8
@ds_last = common dso_local global i64 0, align 8
@ds_friend = common dso_local global i64 0, align 8
@ds_const = common dso_local global i64 0, align 8
@ds_volatile = common dso_local global i64 0, align 8
@ds_restrict = common dso_local global i64 0, align 8
@ds_complex = common dso_local global i64 0, align 8
@CP_PARSER_FLAGS_OPTIONAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"expected type specifier\00", align 1
@error_mark_node = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_21__*, i32, %struct.TYPE_22__*, i32, i32*, i32*)* @cp_parser_type_specifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cp_parser_type_specifier(%struct.TYPE_21__* %0, i32 %1, %struct.TYPE_22__* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_20__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load i64, i64* @NULL_TREE, align 8
  store i64 %18, i64* %14, align 8
  %19 = load i64, i64* @ds_last, align 8
  store i64 %19, i64* %17, align 8
  %20 = load i32*, i32** %12, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32*, i32** %12, align 8
  store i32 0, i32* %23, align 4
  br label %24

24:                                               ; preds = %22, %6
  %25 = load i32*, i32** %13, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32*, i32** %13, align 8
  store i32 0, i32* %28, align 4
  br label %29

29:                                               ; preds = %27, %24
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.TYPE_20__* @cp_lexer_peek_token(i32 %32)
  store %struct.TYPE_20__* %33, %struct.TYPE_20__** %15, align 8
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %16, align 4
  switch i32 %37, label %137 [
    i32 133, label %38
    i32 136, label %58
    i32 131, label %58
    i32 129, label %58
    i32 130, label %87
    i32 134, label %114
    i32 128, label %121
    i32 132, label %128
    i32 135, label %135
  ]

38:                                               ; preds = %29
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %40 = call i64 @cp_parser_enum_specifier(%struct.TYPE_21__* %39)
  store i64 %40, i64* %14, align 8
  %41 = load i64, i64* %14, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %38
  %44 = load i32*, i32** %12, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32*, i32** %12, align 8
  store i32 2, i32* %47, align 4
  br label %48

48:                                               ; preds = %46, %43
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %50 = icmp ne %struct.TYPE_22__* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %53 = load i64, i64* %14, align 8
  %54 = call i32 @cp_parser_set_decl_spec_type(%struct.TYPE_22__* %52, i64 %53, i32 1)
  br label %55

55:                                               ; preds = %51, %48
  %56 = load i64, i64* %14, align 8
  store i64 %56, i64* %7, align 8
  br label %183

57:                                               ; preds = %38
  br label %81

58:                                               ; preds = %29, %29, %29
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %60 = call i32 @cp_parser_parse_tentatively(%struct.TYPE_21__* %59)
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %62 = call i64 @cp_parser_class_specifier(%struct.TYPE_21__* %61)
  store i64 %62, i64* %14, align 8
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %64 = call i32 @cp_parser_parse_definitely(%struct.TYPE_21__* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %58
  %67 = load i32*, i32** %12, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32*, i32** %12, align 8
  store i32 2, i32* %70, align 4
  br label %71

71:                                               ; preds = %69, %66
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %73 = icmp ne %struct.TYPE_22__* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %76 = load i64, i64* %14, align 8
  %77 = call i32 @cp_parser_set_decl_spec_type(%struct.TYPE_22__* %75, i64 %76, i32 1)
  br label %78

78:                                               ; preds = %74, %71
  %79 = load i64, i64* %14, align 8
  store i64 %79, i64* %7, align 8
  br label %183

80:                                               ; preds = %58
  br label %81

81:                                               ; preds = %80, %57
  %82 = load i32*, i32** %12, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i32*, i32** %12, align 8
  store i32 1, i32* %85, align 4
  br label %86

86:                                               ; preds = %84, %81
  br label %87

87:                                               ; preds = %29, %86
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %90 = icmp ne %struct.TYPE_22__* %89, null
  br i1 %90, label %91, label %101

91:                                               ; preds = %87
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 1
  %94 = load i64*, i64** %93, align 8
  %95 = load i64, i64* @ds_friend, align 8
  %96 = trunc i64 %95 to i32
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %94, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br label %101

101:                                              ; preds = %91, %87
  %102 = phi i1 [ false, %87 ], [ %100, %91 ]
  %103 = zext i1 %102 to i32
  %104 = load i32, i32* %11, align 4
  %105 = call i64 @cp_parser_elaborated_type_specifier(%struct.TYPE_21__* %88, i32 %103, i32 %104)
  store i64 %105, i64* %14, align 8
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %107 = icmp ne %struct.TYPE_22__* %106, null
  br i1 %107, label %108, label %112

108:                                              ; preds = %101
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %110 = load i64, i64* %14, align 8
  %111 = call i32 @cp_parser_set_decl_spec_type(%struct.TYPE_22__* %109, i64 %110, i32 1)
  br label %112

112:                                              ; preds = %108, %101
  %113 = load i64, i64* %14, align 8
  store i64 %113, i64* %7, align 8
  br label %183

114:                                              ; preds = %29
  %115 = load i64, i64* @ds_const, align 8
  store i64 %115, i64* %17, align 8
  %116 = load i32*, i32** %13, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = load i32*, i32** %13, align 8
  store i32 1, i32* %119, align 4
  br label %120

120:                                              ; preds = %118, %114
  br label %138

121:                                              ; preds = %29
  %122 = load i64, i64* @ds_volatile, align 8
  store i64 %122, i64* %17, align 8
  %123 = load i32*, i32** %13, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = load i32*, i32** %13, align 8
  store i32 1, i32* %126, align 4
  br label %127

127:                                              ; preds = %125, %121
  br label %138

128:                                              ; preds = %29
  %129 = load i64, i64* @ds_restrict, align 8
  store i64 %129, i64* %17, align 8
  %130 = load i32*, i32** %13, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = load i32*, i32** %13, align 8
  store i32 1, i32* %133, align 4
  br label %134

134:                                              ; preds = %132, %128
  br label %138

135:                                              ; preds = %29
  %136 = load i64, i64* @ds_complex, align 8
  store i64 %136, i64* %17, align 8
  br label %138

137:                                              ; preds = %29
  br label %138

138:                                              ; preds = %137, %135, %134, %127, %120
  %139 = load i64, i64* %17, align 8
  %140 = load i64, i64* @ds_last, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %165

142:                                              ; preds = %138
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %144 = icmp ne %struct.TYPE_22__* %143, null
  br i1 %144, label %145, label %157

145:                                              ; preds = %142
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 1
  %148 = load i64*, i64** %147, align 8
  %149 = load i64, i64* %17, align 8
  %150 = trunc i64 %149 to i32
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %148, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %153, 1
  store i64 %154, i64* %152, align 8
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 0
  store i32 1, i32* %156, align 8
  br label %157

157:                                              ; preds = %145, %142
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call %struct.TYPE_18__* @cp_lexer_consume_token(i32 %160)
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  store i64 %164, i64* %7, align 8
  br label %183

165:                                              ; preds = %138
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %168 = load i32, i32* %9, align 4
  %169 = call i64 @cp_parser_simple_type_specifier(%struct.TYPE_21__* %166, %struct.TYPE_22__* %167, i32 %168)
  store i64 %169, i64* %14, align 8
  %170 = load i64, i64* %14, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %181, label %172

172:                                              ; preds = %165
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* @CP_PARSER_FLAGS_OPTIONAL, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %172
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %179 = call i32 @cp_parser_error(%struct.TYPE_21__* %178, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %180 = load i64, i64* @error_mark_node, align 8
  store i64 %180, i64* %7, align 8
  br label %183

181:                                              ; preds = %172, %165
  %182 = load i64, i64* %14, align 8
  store i64 %182, i64* %7, align 8
  br label %183

183:                                              ; preds = %181, %177, %157, %112, %78, %55
  %184 = load i64, i64* %7, align 8
  ret i64 %184
}

declare dso_local %struct.TYPE_20__* @cp_lexer_peek_token(i32) #1

declare dso_local i64 @cp_parser_enum_specifier(%struct.TYPE_21__*) #1

declare dso_local i32 @cp_parser_set_decl_spec_type(%struct.TYPE_22__*, i64, i32) #1

declare dso_local i32 @cp_parser_parse_tentatively(%struct.TYPE_21__*) #1

declare dso_local i64 @cp_parser_class_specifier(%struct.TYPE_21__*) #1

declare dso_local i32 @cp_parser_parse_definitely(%struct.TYPE_21__*) #1

declare dso_local i64 @cp_parser_elaborated_type_specifier(%struct.TYPE_21__*, i32, i32) #1

declare dso_local %struct.TYPE_18__* @cp_lexer_consume_token(i32) #1

declare dso_local i64 @cp_parser_simple_type_specifier(%struct.TYPE_21__*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @cp_parser_error(%struct.TYPE_21__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
