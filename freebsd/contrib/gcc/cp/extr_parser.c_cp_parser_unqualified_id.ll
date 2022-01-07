; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_unqualified_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_unqualified_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i8*, i8*, i8*, i32 }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }

@error_mark_node = common dso_local global i8* null, align 8
@NAMESPACE_DECL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"scope %qT before %<~%> is not a class-name\00", align 1
@CPP_OPEN_PAREN = common dso_local global i32 0, align 4
@BIT_NOT_EXPR = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i8* null, align 8
@none_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"declaration of %<~%T%> as member of %qT\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"typedef-name %qD used as destructor declarator\00", align 1
@RID_OPERATOR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"expected unqualified-id\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_20__*, i32, i32, i32, i32)* @cp_parser_unqualified_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cp_parser_unqualified_id(%struct.TYPE_20__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.TYPE_19__* @cp_lexer_peek_token(i32 %22)
  store %struct.TYPE_19__* %23, %struct.TYPE_19__** %12, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %343 [
    i32 129, label %27
    i32 128, label %43
    i32 131, label %49
    i32 130, label %311
  ]

27:                                               ; preds = %5
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %29 = call i32 @cp_parser_parse_tentatively(%struct.TYPE_20__* %28)
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i8* @cp_parser_template_id(%struct.TYPE_20__* %30, i32 %31, i32 %32, i32 %33)
  store i8* %34, i8** %13, align 8
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %36 = call i32 @cp_parser_parse_definitely(%struct.TYPE_20__* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i8*, i8** %13, align 8
  store i8* %39, i8** %6, align 8
  br label %352

40:                                               ; preds = %27
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %42 = call i8* @cp_parser_identifier(%struct.TYPE_20__* %41)
  store i8* %42, i8** %6, align 8
  br label %352

43:                                               ; preds = %5
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i8* @cp_parser_template_id(%struct.TYPE_20__* %44, i32 %45, i32 %46, i32 %47)
  store i8* %48, i8** %6, align 8
  br label %352

49:                                               ; preds = %5
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @cp_lexer_consume_token(i32 %52)
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %17, align 8
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %16, align 8
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 2
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %15, align 8
  %63 = load i8*, i8** %17, align 8
  %64 = load i8*, i8** @error_mark_node, align 8
  %65 = icmp eq i8* %63, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %49
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @cp_lexer_next_token_is(i32 %69, i32 129)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @cp_lexer_consume_token(i32 %75)
  br label %77

77:                                               ; preds = %72, %66
  %78 = load i8*, i8** @error_mark_node, align 8
  store i8* %78, i8** %6, align 8
  br label %352

79:                                               ; preds = %49
  %80 = load i8*, i8** %17, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %109

82:                                               ; preds = %79
  %83 = load i8*, i8** %17, align 8
  %84 = call i32 @TREE_CODE(i8* %83)
  %85 = load i32, i32* @NAMESPACE_DECL, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %109

87:                                               ; preds = %82
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %89 = call i32 @cp_parser_uncommitted_to_tentative_parse_p(%struct.TYPE_20__* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = load i8*, i8** %17, align 8
  %93 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %92)
  br label %94

94:                                               ; preds = %91, %87
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %96 = call i32 @cp_parser_simulate_error(%struct.TYPE_20__* %95)
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @cp_lexer_next_token_is(i32 %99, i32 129)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %94
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @cp_lexer_consume_token(i32 %105)
  br label %107

107:                                              ; preds = %102, %94
  %108 = load i8*, i8** @error_mark_node, align 8
  store i8* %108, i8** %6, align 8
  br label %352

109:                                              ; preds = %82, %79
  %110 = load i8*, i8** %17, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load i8*, i8** %17, align 8
  %114 = call i32 @TYPE_P(i8* %113)
  %115 = icmp ne i32 %114, 0
  br label %116

116:                                              ; preds = %112, %109
  %117 = phi i1 [ true, %109 ], [ %115, %112 ]
  %118 = zext i1 %117 to i32
  %119 = call i32 @gcc_assert(i32 %118)
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = call %struct.TYPE_19__* @cp_lexer_peek_token(i32 %122)
  store %struct.TYPE_19__* %123, %struct.TYPE_19__** %12, align 8
  %124 = load i8*, i8** %17, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %156

126:                                              ; preds = %116
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, 129
  br i1 %130, label %131, label %156

131:                                              ; preds = %126
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = call %struct.TYPE_17__* @cp_lexer_peek_nth_token(i32 %134, i32 2)
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @CPP_OPEN_PAREN, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %156

140:                                              ; preds = %131
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i8*, i8** %17, align 8
  %146 = call i32 @constructor_name_p(i32 %144, i8* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %140
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @cp_lexer_consume_token(i32 %151)
  %153 = load i32, i32* @BIT_NOT_EXPR, align 4
  %154 = load i8*, i8** %17, align 8
  %155 = call i8* @build_nt(i32 %153, i8* %154)
  store i8* %155, i8** %6, align 8
  br label %352

156:                                              ; preds = %140, %131, %126, %116
  store i32 0, i32* %18, align 4
  %157 = load i8*, i8** @NULL_TREE, align 8
  store i8* %157, i8** %14, align 8
  %158 = load i8*, i8** %17, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %172

160:                                              ; preds = %156
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %162 = call i32 @cp_parser_parse_tentatively(%struct.TYPE_20__* %161)
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %164 = load i32, i32* @none_type, align 4
  %165 = load i32, i32* %10, align 4
  %166 = call i8* @cp_parser_class_name(%struct.TYPE_20__* %163, i32 0, i32 0, i32 %164, i32 0, i32 0, i32 %165)
  store i8* %166, i8** %14, align 8
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %168 = call i32 @cp_parser_parse_definitely(%struct.TYPE_20__* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %160
  store i32 1, i32* %18, align 4
  br label %171

171:                                              ; preds = %170, %160
  br label %172

172:                                              ; preds = %171, %156
  %173 = load i32, i32* %18, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %202, label %175

175:                                              ; preds = %172
  %176 = load i8*, i8** %17, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %178, label %202

178:                                              ; preds = %175
  %179 = load i8*, i8** %15, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %202

181:                                              ; preds = %178
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %183 = call i32 @cp_parser_parse_tentatively(%struct.TYPE_20__* %182)
  %184 = load i8*, i8** %15, align 8
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 0
  store i8* %184, i8** %186, align 8
  %187 = load i8*, i8** @NULL_TREE, align 8
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 1
  store i8* %187, i8** %189, align 8
  %190 = load i8*, i8** @NULL_TREE, align 8
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 2
  store i8* %190, i8** %192, align 8
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %194 = load i32, i32* @none_type, align 4
  %195 = load i32, i32* %10, align 4
  %196 = call i8* @cp_parser_class_name(%struct.TYPE_20__* %193, i32 0, i32 0, i32 %194, i32 0, i32 0, i32 %195)
  store i8* %196, i8** %14, align 8
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %198 = call i32 @cp_parser_parse_definitely(%struct.TYPE_20__* %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %181
  store i32 1, i32* %18, align 4
  br label %201

201:                                              ; preds = %200, %181
  br label %230

202:                                              ; preds = %178, %175, %172
  %203 = load i32, i32* %18, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %229, label %205

205:                                              ; preds = %202
  %206 = load i8*, i8** %16, align 8
  %207 = icmp ne i8* %206, null
  br i1 %207, label %208, label %229

208:                                              ; preds = %205
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %210 = call i32 @cp_parser_parse_tentatively(%struct.TYPE_20__* %209)
  %211 = load i8*, i8** %16, align 8
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %212, i32 0, i32 0
  store i8* %211, i8** %213, align 8
  %214 = load i8*, i8** @NULL_TREE, align 8
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %215, i32 0, i32 1
  store i8* %214, i8** %216, align 8
  %217 = load i8*, i8** @NULL_TREE, align 8
  %218 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %218, i32 0, i32 2
  store i8* %217, i8** %219, align 8
  %220 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %221 = load i32, i32* @none_type, align 4
  %222 = load i32, i32* %10, align 4
  %223 = call i8* @cp_parser_class_name(%struct.TYPE_20__* %220, i32 0, i32 0, i32 %221, i32 0, i32 0, i32 %222)
  store i8* %223, i8** %14, align 8
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %225 = call i32 @cp_parser_parse_definitely(%struct.TYPE_20__* %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %208
  store i32 1, i32* %18, align 4
  br label %228

228:                                              ; preds = %227, %208
  br label %229

229:                                              ; preds = %228, %205, %202
  br label %230

230:                                              ; preds = %229, %201
  %231 = load i32, i32* %18, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %247, label %233

233:                                              ; preds = %230
  %234 = load i8*, i8** @NULL_TREE, align 8
  %235 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %235, i32 0, i32 0
  store i8* %234, i8** %236, align 8
  %237 = load i8*, i8** @NULL_TREE, align 8
  %238 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %238, i32 0, i32 1
  store i8* %237, i8** %239, align 8
  %240 = load i8*, i8** @NULL_TREE, align 8
  %241 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %241, i32 0, i32 2
  store i8* %240, i8** %242, align 8
  %243 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %244 = load i32, i32* @none_type, align 4
  %245 = load i32, i32* %10, align 4
  %246 = call i8* @cp_parser_class_name(%struct.TYPE_20__* %243, i32 0, i32 0, i32 %244, i32 0, i32 0, i32 %245)
  store i8* %246, i8** %14, align 8
  br label %247

247:                                              ; preds = %233, %230
  %248 = load i8*, i8** %14, align 8
  %249 = load i8*, i8** @error_mark_node, align 8
  %250 = icmp eq i8* %248, %249
  br i1 %250, label %251, label %258

251:                                              ; preds = %247
  %252 = load i8*, i8** %17, align 8
  %253 = icmp ne i8* %252, null
  br i1 %253, label %254, label %258

254:                                              ; preds = %251
  %255 = load i32, i32* @BIT_NOT_EXPR, align 4
  %256 = load i8*, i8** %17, align 8
  %257 = call i8* @build_nt(i32 %255, i8* %256)
  store i8* %257, i8** %6, align 8
  br label %352

258:                                              ; preds = %251, %247
  %259 = load i8*, i8** %14, align 8
  %260 = load i8*, i8** @error_mark_node, align 8
  %261 = icmp eq i8* %259, %260
  br i1 %261, label %262, label %264

262:                                              ; preds = %258
  %263 = load i8*, i8** @error_mark_node, align 8
  store i8* %263, i8** %6, align 8
  br label %352

264:                                              ; preds = %258
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* %10, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %288

268:                                              ; preds = %265
  %269 = load i8*, i8** %17, align 8
  %270 = icmp ne i8* %269, null
  br i1 %270, label %271, label %288

271:                                              ; preds = %268
  %272 = load i8*, i8** %17, align 8
  %273 = load i8*, i8** %14, align 8
  %274 = call i32 @check_dtor_name(i8* %272, i8* %273)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %288, label %276

276:                                              ; preds = %271
  %277 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %278 = call i32 @cp_parser_uncommitted_to_tentative_parse_p(%struct.TYPE_20__* %277)
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %284, label %280

280:                                              ; preds = %276
  %281 = load i8*, i8** %14, align 8
  %282 = load i8*, i8** %17, align 8
  %283 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %281, i8* %282)
  br label %284

284:                                              ; preds = %280, %276
  %285 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %286 = call i32 @cp_parser_simulate_error(%struct.TYPE_20__* %285)
  %287 = load i8*, i8** @error_mark_node, align 8
  store i8* %287, i8** %6, align 8
  br label %352

288:                                              ; preds = %271, %268, %265
  %289 = load i32, i32* %10, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %306

291:                                              ; preds = %288
  %292 = load i8*, i8** %14, align 8
  %293 = call i32 @DECL_IMPLICIT_TYPEDEF_P(i8* %292)
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %306, label %295

295:                                              ; preds = %291
  %296 = load i8*, i8** %14, align 8
  %297 = call i32 @DECL_SELF_REFERENCE_P(i8* %296)
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %306, label %299

299:                                              ; preds = %295
  %300 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %301 = call i32 @cp_parser_uncommitted_to_tentative_parse_p(%struct.TYPE_20__* %300)
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %306, label %303

303:                                              ; preds = %299
  %304 = load i8*, i8** %14, align 8
  %305 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %304)
  br label %306

306:                                              ; preds = %303, %299, %295, %291, %288
  %307 = load i32, i32* @BIT_NOT_EXPR, align 4
  %308 = load i8*, i8** %14, align 8
  %309 = call i8* @TREE_TYPE(i8* %308)
  %310 = call i8* @build_nt(i32 %307, i8* %309)
  store i8* %310, i8** %6, align 8
  br label %352

311:                                              ; preds = %5
  %312 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %313 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* @RID_OPERATOR, align 4
  %316 = icmp eq i32 %314, %315
  br i1 %316, label %317, label %342

317:                                              ; preds = %311
  %318 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %319 = call i32 @cp_parser_parse_tentatively(%struct.TYPE_20__* %318)
  %320 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %321 = load i32, i32* %8, align 4
  %322 = load i32, i32* %10, align 4
  %323 = call i8* @cp_parser_template_id(%struct.TYPE_20__* %320, i32 %321, i32 1, i32 %322)
  store i8* %323, i8** %19, align 8
  %324 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %325 = call i32 @cp_parser_parse_definitely(%struct.TYPE_20__* %324)
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %329

327:                                              ; preds = %317
  %328 = load i8*, i8** %19, align 8
  store i8* %328, i8** %6, align 8
  br label %352

329:                                              ; preds = %317
  %330 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %331 = call i32 @cp_parser_parse_tentatively(%struct.TYPE_20__* %330)
  %332 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %333 = call i8* @cp_parser_operator_function_id(%struct.TYPE_20__* %332)
  store i8* %333, i8** %19, align 8
  %334 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %335 = call i32 @cp_parser_parse_definitely(%struct.TYPE_20__* %334)
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %340, label %337

337:                                              ; preds = %329
  %338 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %339 = call i8* @cp_parser_conversion_function_id(%struct.TYPE_20__* %338)
  store i8* %339, i8** %19, align 8
  br label %340

340:                                              ; preds = %337, %329
  %341 = load i8*, i8** %19, align 8
  store i8* %341, i8** %6, align 8
  br label %352

342:                                              ; preds = %311
  br label %343

343:                                              ; preds = %5, %342
  %344 = load i32, i32* %11, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %348

346:                                              ; preds = %343
  %347 = load i8*, i8** @NULL_TREE, align 8
  store i8* %347, i8** %6, align 8
  br label %352

348:                                              ; preds = %343
  %349 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %350 = call i32 @cp_parser_error(%struct.TYPE_20__* %349, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %351 = load i8*, i8** @error_mark_node, align 8
  store i8* %351, i8** %6, align 8
  br label %352

352:                                              ; preds = %348, %346, %340, %327, %306, %284, %262, %254, %148, %107, %77, %43, %40, %38
  %353 = load i8*, i8** %6, align 8
  ret i8* %353
}

declare dso_local %struct.TYPE_19__* @cp_lexer_peek_token(i32) #1

declare dso_local i32 @cp_parser_parse_tentatively(%struct.TYPE_20__*) #1

declare dso_local i8* @cp_parser_template_id(%struct.TYPE_20__*, i32, i32, i32) #1

declare dso_local i32 @cp_parser_parse_definitely(%struct.TYPE_20__*) #1

declare dso_local i8* @cp_parser_identifier(%struct.TYPE_20__*) #1

declare dso_local i32 @cp_lexer_consume_token(i32) #1

declare dso_local i32 @cp_lexer_next_token_is(i32, i32) #1

declare dso_local i32 @TREE_CODE(i8*) #1

declare dso_local i32 @cp_parser_uncommitted_to_tentative_parse_p(%struct.TYPE_20__*) #1

declare dso_local i32 @error(i8*, i8*, ...) #1

declare dso_local i32 @cp_parser_simulate_error(%struct.TYPE_20__*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @TYPE_P(i8*) #1

declare dso_local %struct.TYPE_17__* @cp_lexer_peek_nth_token(i32, i32) #1

declare dso_local i32 @constructor_name_p(i32, i8*) #1

declare dso_local i8* @build_nt(i32, i8*) #1

declare dso_local i8* @cp_parser_class_name(%struct.TYPE_20__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @check_dtor_name(i8*, i8*) #1

declare dso_local i32 @DECL_IMPLICIT_TYPEDEF_P(i8*) #1

declare dso_local i32 @DECL_SELF_REFERENCE_P(i8*) #1

declare dso_local i8* @TREE_TYPE(i8*) #1

declare dso_local i8* @cp_parser_operator_function_id(%struct.TYPE_20__*) #1

declare dso_local i8* @cp_parser_conversion_function_id(%struct.TYPE_20__*) #1

declare dso_local i32 @cp_parser_error(%struct.TYPE_20__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
