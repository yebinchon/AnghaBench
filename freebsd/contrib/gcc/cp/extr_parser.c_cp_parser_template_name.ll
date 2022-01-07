; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_template_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_template_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32 }

@RID_OPERATOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"expected template-name\00", align 1
@error_mark_node = common dso_local global i64 0, align 8
@processing_template_decl = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"non-template %qD used as template\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"use %<%T::template %D%> to indicate that it is a template\00", align 1
@none_type = common dso_local global i32 0, align 4
@TEMPLATE_DECL = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@OVERLOAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_13__*, i32, i32, i32, i32*)* @cp_parser_template_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cp_parser_template_name(%struct.TYPE_13__* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @RID_OPERATOR, align 4
  %22 = call i64 @cp_lexer_next_token_is_keyword(i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %5
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %26 = call i32 @cp_parser_parse_tentatively(%struct.TYPE_13__* %25)
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %28 = call i64 @cp_parser_operator_function_id(%struct.TYPE_13__* %27)
  store i64 %28, i64* %12, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %30 = call i32 @cp_parser_parse_definitely(%struct.TYPE_13__* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %24
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %34 = call i32 @cp_parser_error(%struct.TYPE_13__* %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %35 = load i64, i64* @error_mark_node, align 8
  store i64 %35, i64* %6, align 8
  br label %227

36:                                               ; preds = %24
  br label %40

37:                                               ; preds = %5
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %39 = call i64 @cp_parser_identifier(%struct.TYPE_13__* %38)
  store i64 %39, i64* %12, align 8
  br label %40

40:                                               ; preds = %37, %36
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* @error_mark_node, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i64, i64* @error_mark_node, align 8
  store i64 %45, i64* %6, align 8
  br label %227

46:                                               ; preds = %40
  %47 = load i64, i64* @processing_template_decl, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %149

49:                                               ; preds = %46
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %51 = call i64 @cp_parser_nth_token_starts_template_argument_list_p(%struct.TYPE_13__* %50, i32 1)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %149

53:                                               ; preds = %49
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %126

56:                                               ; preds = %53
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %126, label %59

59:                                               ; preds = %56
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %126

64:                                               ; preds = %59
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @TYPE_P(i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %126

70:                                               ; preds = %64
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %126

73:                                               ; preds = %70
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @dependent_type_p(i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %126

79:                                               ; preds = %73
  %80 = load i64, i64* %12, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @constructor_name_p(i64 %80, i64 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %126, label %86

86:                                               ; preds = %79
  store i64 0, i64* %15, align 8
  %87 = load i64, i64* %12, align 8
  %88 = call i32 @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %87)
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %12, align 8
  %93 = call i32 @inform(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i64 %91, i64 %92)
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %95 = call i64 @cp_parser_simulate_error(%struct.TYPE_13__* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %86
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @cp_lexer_token_position(i32 %100, i32 1)
  store i64 %101, i64* %15, align 8
  br label %102

102:                                              ; preds = %97, %86
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @cp_lexer_consume_token(i32 %105)
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %108 = call i32 @cp_parser_enclosed_template_argument_list(%struct.TYPE_13__* %107)
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %110 = call i32 @cp_parser_skip_to_closing_parenthesis(%struct.TYPE_13__* %109, i32 1, i32 1, i32 0)
  %111 = load i64, i64* %15, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %102
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i64, i64* %15, align 8
  %118 = call i32 @cp_lexer_purge_tokens_after(i32 %116, i64 %117)
  br label %119

119:                                              ; preds = %113, %102
  %120 = load i32*, i32** %11, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = load i32*, i32** %11, align 8
  store i32 1, i32* %123, align 4
  br label %124

124:                                              ; preds = %122, %119
  %125 = load i64, i64* %12, align 8
  store i64 %125, i64* %6, align 8
  br label %227

126:                                              ; preds = %79, %73, %70, %64, %59, %56, %53
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %148

129:                                              ; preds = %126
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %146

134:                                              ; preds = %129
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i64 @TYPE_P(i64 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %134
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = call i64 @dependent_type_p(i64 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %140, %129
  %147 = load i64, i64* %12, align 8
  store i64 %147, i64* %6, align 8
  br label %227

148:                                              ; preds = %140, %134, %126
  br label %149

149:                                              ; preds = %148, %49, %46
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %151 = load i64, i64* %12, align 8
  %152 = load i32, i32* @none_type, align 4
  %153 = load i32, i32* %9, align 4
  %154 = call i64 @cp_parser_lookup_name(%struct.TYPE_13__* %150, i64 %151, i32 %152, i32 0, i32 0, i32 %153, i32* null)
  store i64 %154, i64* %13, align 8
  %155 = load i64, i64* %13, align 8
  %156 = call i64 @maybe_get_template_decl_from_type_decl(i64 %155)
  store i64 %156, i64* %13, align 8
  %157 = load i64, i64* %13, align 8
  %158 = call i64 @TREE_CODE(i64 %157)
  %159 = load i64, i64* @TEMPLATE_DECL, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %149
  br label %203

162:                                              ; preds = %149
  %163 = load i64, i64* @NULL_TREE, align 8
  store i64 %163, i64* %16, align 8
  %164 = load i64, i64* %13, align 8
  %165 = call i64 @BASELINK_P(i64 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %162
  %168 = load i64, i64* %13, align 8
  %169 = call i64 @BASELINK_FUNCTIONS(i64 %168)
  br label %172

170:                                              ; preds = %162
  %171 = load i64, i64* %13, align 8
  br label %172

172:                                              ; preds = %170, %167
  %173 = phi i64 [ %169, %167 ], [ %171, %170 ]
  store i64 %173, i64* %14, align 8
  %174 = load i64, i64* %14, align 8
  %175 = call i64 @TREE_CODE(i64 %174)
  %176 = load i64, i64* @OVERLOAD, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %195

178:                                              ; preds = %172
  %179 = load i64, i64* %14, align 8
  store i64 %179, i64* %16, align 8
  br label %180

180:                                              ; preds = %191, %178
  %181 = load i64, i64* %16, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %194

183:                                              ; preds = %180
  %184 = load i64, i64* %16, align 8
  %185 = call i64 @OVL_CURRENT(i64 %184)
  %186 = call i64 @TREE_CODE(i64 %185)
  %187 = load i64, i64* @TEMPLATE_DECL, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %183
  br label %194

190:                                              ; preds = %183
  br label %191

191:                                              ; preds = %190
  %192 = load i64, i64* %16, align 8
  %193 = call i64 @OVL_NEXT(i64 %192)
  store i64 %193, i64* %16, align 8
  br label %180

194:                                              ; preds = %189, %180
  br label %195

195:                                              ; preds = %194, %172
  %196 = load i64, i64* %16, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %202, label %198

198:                                              ; preds = %195
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %200 = call i32 @cp_parser_error(%struct.TYPE_13__* %199, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %201 = load i64, i64* @error_mark_node, align 8
  store i64 %201, i64* %6, align 8
  br label %227

202:                                              ; preds = %195
  br label %203

203:                                              ; preds = %202, %161
  %204 = load i64, i64* %13, align 8
  %205 = call i64 @DECL_FUNCTION_TEMPLATE_P(i64 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %211, label %207

207:                                              ; preds = %203
  %208 = load i64, i64* %13, align 8
  %209 = call i32 @DECL_P(i64 %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %225, label %211

211:                                              ; preds = %207, %203
  %212 = load i64, i64* %13, align 8
  %213 = call i32 @get_first_fn(i64 %212)
  %214 = call i64 @CP_DECL_CONTEXT(i32 %213)
  store i64 %214, i64* %17, align 8
  %215 = load i64, i64* %17, align 8
  %216 = call i64 @TYPE_P(i64 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %224

218:                                              ; preds = %211
  %219 = load i64, i64* %17, align 8
  %220 = call i64 @dependent_type_p(i64 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %218
  %223 = load i64, i64* %12, align 8
  store i64 %223, i64* %6, align 8
  br label %227

224:                                              ; preds = %218, %211
  br label %225

225:                                              ; preds = %224, %207
  %226 = load i64, i64* %13, align 8
  store i64 %226, i64* %6, align 8
  br label %227

227:                                              ; preds = %225, %222, %198, %146, %124, %44, %32
  %228 = load i64, i64* %6, align 8
  ret i64 %228
}

declare dso_local i64 @cp_lexer_next_token_is_keyword(i32, i32) #1

declare dso_local i32 @cp_parser_parse_tentatively(%struct.TYPE_13__*) #1

declare dso_local i64 @cp_parser_operator_function_id(%struct.TYPE_13__*) #1

declare dso_local i32 @cp_parser_parse_definitely(%struct.TYPE_13__*) #1

declare dso_local i32 @cp_parser_error(%struct.TYPE_13__*, i8*) #1

declare dso_local i64 @cp_parser_identifier(%struct.TYPE_13__*) #1

declare dso_local i64 @cp_parser_nth_token_starts_template_argument_list_p(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @TYPE_P(i64) #1

declare dso_local i64 @dependent_type_p(i64) #1

declare dso_local i32 @constructor_name_p(i64, i64) #1

declare dso_local i32 @error(i8*, i64) #1

declare dso_local i32 @inform(i8*, i64, i64) #1

declare dso_local i64 @cp_parser_simulate_error(%struct.TYPE_13__*) #1

declare dso_local i64 @cp_lexer_token_position(i32, i32) #1

declare dso_local i32 @cp_lexer_consume_token(i32) #1

declare dso_local i32 @cp_parser_enclosed_template_argument_list(%struct.TYPE_13__*) #1

declare dso_local i32 @cp_parser_skip_to_closing_parenthesis(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @cp_lexer_purge_tokens_after(i32, i64) #1

declare dso_local i64 @cp_parser_lookup_name(%struct.TYPE_13__*, i64, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @maybe_get_template_decl_from_type_decl(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @BASELINK_P(i64) #1

declare dso_local i64 @BASELINK_FUNCTIONS(i64) #1

declare dso_local i64 @OVL_CURRENT(i64) #1

declare dso_local i64 @OVL_NEXT(i64) #1

declare dso_local i64 @DECL_FUNCTION_TEMPLATE_P(i64) #1

declare dso_local i32 @DECL_P(i64) #1

declare dso_local i64 @CP_DECL_CONTEXT(i32) #1

declare dso_local i32 @get_first_fn(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
