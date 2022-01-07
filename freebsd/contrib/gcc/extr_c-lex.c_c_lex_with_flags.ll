; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-lex.c_c_lex_with_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-lex.c_c_lex_with_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i8, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32, i8* }

@c_lex_with_flags.no_more_pch = internal global i32 0, align 4
@TV_CPP = common dso_local global i32 0, align 4
@parse_in = common dso_local global i32 0, align 4
@input_location = common dso_local global i32 0, align 4
@CPP_N_CATEGORY = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i32 0, align 4
@errorcount = common dso_local global i32 0, align 4
@PURE_ZERO = common dso_local global i8 0, align 1
@CPP_AT_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%Hstray %<@%> in program\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"stray %qs in program\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"missing terminating %c character\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"stray %qc in program\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"stray %<\\%o%> in program\00", align 1
@c_lex_return_raw_strings = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c_lex_with_flags(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x i8], align 1
  %13 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  store i8 0, i8* %9, align 1
  %14 = load i32, i32* @TV_CPP, align 4
  %15 = call i32 @timevar_push(i32 %14)
  br label %16

16:                                               ; preds = %153, %114, %26, %3
  %17 = load i32, i32* @parse_in, align 4
  %18 = call %struct.TYPE_13__* @cpp_get_token(i32 %17)
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %7, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %110, %16
  %23 = load i32, i32* @input_location, align 4
  %24 = load i32*, i32** %5, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %8, align 4
  switch i32 %25, label %187 [
    i32 133, label %26
    i32 139, label %27
    i32 138, label %35
    i32 145, label %78
    i32 142, label %114
    i32 132, label %114
    i32 134, label %121
    i32 144, label %154
    i32 129, label %154
    i32 130, label %158
    i32 128, label %158
    i32 131, label %178
    i32 141, label %185
    i32 143, label %185
    i32 140, label %185
  ]

26:                                               ; preds = %22
  br label %16

27:                                               ; preds = %22
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @HT_NODE(i32 %31)
  %33 = call i32 @HT_IDENT_TO_GCC_IDENT(i32 %32)
  %34 = load i32*, i32** %4, align 8
  store i32 %33, i32* %34, align 4
  br label %190

35:                                               ; preds = %22
  %36 = load i32, i32* @parse_in, align 4
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %38 = call i32 @cpp_classify_number(i32 %36, %struct.TYPE_13__* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @CPP_N_CATEGORY, align 4
  %41 = and i32 %39, %40
  switch i32 %41, label %75 [
    i32 135, label %42
    i32 136, label %47
    i32 137, label %70
  ]

42:                                               ; preds = %35
  %43 = load i32, i32* @error_mark_node, align 4
  %44 = load i32*, i32** %4, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @errorcount, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* @errorcount, align 4
  br label %77

47:                                               ; preds = %35
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %65

54:                                               ; preds = %47
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 48
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i8, i8* @PURE_ZERO, align 1
  store i8 %64, i8* %9, align 1
  br label %65

65:                                               ; preds = %63, %54, %47
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @interpret_integer(%struct.TYPE_13__* %66, i32 %67)
  %69 = load i32*, i32** %4, align 8
  store i32 %68, i32* %69, align 4
  br label %77

70:                                               ; preds = %35
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @interpret_float(%struct.TYPE_13__* %71, i32 %72)
  %74 = load i32*, i32** %4, align 8
  store i32 %73, i32* %74, align 4
  br label %77

75:                                               ; preds = %35
  %76 = call i32 (...) @gcc_unreachable()
  br label %77

77:                                               ; preds = %75, %70, %65, %42
  br label %190

78:                                               ; preds = %22
  %79 = call i32 (...) @c_dialect_objc()
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %113

81:                                               ; preds = %78
  %82 = load i32, i32* @input_location, align 4
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %90, %81
  %84 = load i32, i32* @parse_in, align 4
  %85 = call %struct.TYPE_13__* @cpp_get_token(i32 %84)
  store %struct.TYPE_13__* %85, %struct.TYPE_13__** %7, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  switch i32 %89, label %110 [
    i32 133, label %90
    i32 130, label %91
    i32 128, label %91
    i32 139, label %95
  ]

90:                                               ; preds = %83
  br label %83

91:                                               ; preds = %83, %83
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %93 = load i32*, i32** %4, align 8
  %94 = call i32 @lex_string(%struct.TYPE_13__* %92, i32* %93, i32 1)
  store i32 %94, i32* %8, align 4
  br label %112

95:                                               ; preds = %83
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @HT_NODE(i32 %99)
  %101 = call i32 @HT_IDENT_TO_GCC_IDENT(i32 %100)
  %102 = load i32*, i32** %4, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i32*, i32** %4, align 8
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @objc_is_reserved_word(i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %95
  %108 = load i32, i32* @CPP_AT_NAME, align 4
  store i32 %108, i32* %8, align 4
  br label %112

109:                                              ; preds = %95
  br label %110

110:                                              ; preds = %83, %109
  %111 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32* %11)
  br label %22

112:                                              ; preds = %107, %91
  br label %190

113:                                              ; preds = %78
  br label %114

114:                                              ; preds = %22, %22, %113
  %115 = load i32, i32* @parse_in, align 4
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %117 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  %118 = call i32* @cpp_spell_token(i32 %115, %struct.TYPE_13__* %116, i8* %117, i32 1)
  store i32 0, i32* %118, align 4
  %119 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  %120 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %119)
  br label %16

121:                                              ; preds = %22
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 0
  %128 = load i8, i8* %127, align 1
  store i8 %128, i8* %13, align 1
  %129 = load i8, i8* %13, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 34
  br i1 %131, label %136, label %132

132:                                              ; preds = %121
  %133 = load i8, i8* %13, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 39
  br i1 %135, label %136, label %140

136:                                              ; preds = %132, %121
  %137 = load i8, i8* %13, align 1
  %138 = sext i8 %137 to i32
  %139 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %138)
  br label %153

140:                                              ; preds = %132
  %141 = load i8, i8* %13, align 1
  %142 = call i32 @ISGRAPH(i8 signext %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = load i8, i8* %13, align 1
  %146 = sext i8 %145 to i32
  %147 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %146)
  br label %152

148:                                              ; preds = %140
  %149 = load i8, i8* %13, align 1
  %150 = sext i8 %149 to i32
  %151 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %150)
  br label %152

152:                                              ; preds = %148, %144
  br label %153

153:                                              ; preds = %152, %136
  br label %16

154:                                              ; preds = %22, %22
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %156 = call i32 @lex_charconst(%struct.TYPE_13__* %155)
  %157 = load i32*, i32** %4, align 8
  store i32 %156, i32* %157, align 4
  br label %190

158:                                              ; preds = %22, %22
  %159 = load i32, i32* @c_lex_return_raw_strings, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %158
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %163 = load i32*, i32** %4, align 8
  %164 = call i32 @lex_string(%struct.TYPE_13__* %162, i32* %163, i32 0)
  store i32 %164, i32* %8, align 4
  br label %190

165:                                              ; preds = %158
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 1
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 @build_string(i32 %170, i8* %175)
  %177 = load i32*, i32** %4, align 8
  store i32 %176, i32* %177, align 4
  br label %190

178:                                              ; preds = %22
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @build_int_cst(i32* null, i32 %182)
  %184 = load i32*, i32** %4, align 8
  store i32 %183, i32* %184, align 4
  br label %190

185:                                              ; preds = %22, %22, %22
  %186 = call i32 (...) @gcc_unreachable()
  br label %187

187:                                              ; preds = %22, %185
  %188 = load i32, i32* @NULL_TREE, align 4
  %189 = load i32*, i32** %4, align 8
  store i32 %188, i32* %189, align 4
  br label %190

190:                                              ; preds = %187, %178, %165, %161, %154, %112, %77, %27
  %191 = load i8*, i8** %6, align 8
  %192 = icmp ne i8* %191, null
  br i1 %192, label %193, label %203

193:                                              ; preds = %190
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 1
  %196 = load i8, i8* %195, align 4
  %197 = zext i8 %196 to i32
  %198 = load i8, i8* %9, align 1
  %199 = zext i8 %198 to i32
  %200 = or i32 %197, %199
  %201 = trunc i32 %200 to i8
  %202 = load i8*, i8** %6, align 8
  store i8 %201, i8* %202, align 1
  br label %203

203:                                              ; preds = %193, %190
  %204 = load i32, i32* @c_lex_with_flags.no_more_pch, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %208, label %206

206:                                              ; preds = %203
  store i32 1, i32* @c_lex_with_flags.no_more_pch, align 4
  %207 = call i32 (...) @c_common_no_more_pch()
  br label %208

208:                                              ; preds = %206, %203
  %209 = load i32, i32* @TV_CPP, align 4
  %210 = call i32 @timevar_pop(i32 %209)
  %211 = load i32, i32* %8, align 4
  ret i32 %211
}

declare dso_local i32 @timevar_push(i32) #1

declare dso_local %struct.TYPE_13__* @cpp_get_token(i32) #1

declare dso_local i32 @HT_IDENT_TO_GCC_IDENT(i32) #1

declare dso_local i32 @HT_NODE(i32) #1

declare dso_local i32 @cpp_classify_number(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @interpret_integer(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @interpret_float(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @c_dialect_objc(...) #1

declare dso_local i32 @lex_string(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @objc_is_reserved_word(i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32* @cpp_spell_token(i32, %struct.TYPE_13__*, i8*, i32) #1

declare dso_local i32 @ISGRAPH(i8 signext) #1

declare dso_local i32 @lex_charconst(%struct.TYPE_13__*) #1

declare dso_local i32 @build_string(i32, i8*) #1

declare dso_local i32 @build_int_cst(i32*, i32) #1

declare dso_local i32 @c_common_no_more_pch(...) #1

declare dso_local i32 @timevar_pop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
