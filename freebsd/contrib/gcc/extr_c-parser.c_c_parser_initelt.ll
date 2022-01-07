; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_initelt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_initelt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_expr = type { i8*, i8* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i64, i8* }

@CPP_NAME = common dso_local global i64 0, align 8
@CPP_COLON = common dso_local global i64 0, align 8
@pedantic = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"obsolete use of designated initializer with %<:%>\00", align 1
@CPP_OPEN_SQUARE = common dso_local global i64 0, align 8
@CPP_DOT = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i8* null, align 8
@ERROR_MARK = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"expected identifier\00", align 1
@CPP_COMMA = common dso_local global i64 0, align 8
@C_ID_TYPENAME = common dso_local global i64 0, align 8
@C_ID_CLASSNAME = common dso_local global i64 0, align 8
@CPP_ELLIPSIS = common dso_local global i64 0, align 8
@CPP_CLOSE_SQUARE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"expected %<]%>\00", align 1
@NULL_TREE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [57 x i8] c"ISO C forbids specifying range of elements to initialize\00", align 1
@CPP_EQ = common dso_local global i64 0, align 8
@flag_isoc99 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"ISO C90 forbids specifying subobject to initialize\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"obsolete use of designated initializer without %<=%>\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"expected %<=%>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @c_parser_initelt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_parser_initelt(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.c_expr, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.c_expr, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.c_expr, align 8
  %13 = alloca %struct.c_expr, align 8
  %14 = alloca %struct.c_expr, align 8
  %15 = alloca %struct.c_expr, align 8
  %16 = alloca %struct.c_expr, align 8
  %17 = alloca %struct.c_expr, align 8
  %18 = alloca %struct.c_expr, align 8
  store i32* %0, i32** %2, align 8
  %19 = load i32*, i32** %2, align 8
  %20 = load i64, i64* @CPP_NAME, align 8
  %21 = call i64 @c_parser_next_token_is(i32* %19, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %1
  %24 = load i32*, i32** %2, align 8
  %25 = call %struct.TYPE_4__* @c_parser_peek_2nd_token(i32* %24)
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CPP_COLON, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %23
  %31 = load i32*, i32** %2, align 8
  %32 = call %struct.TYPE_3__* @c_parser_peek_token(i32* %31)
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @set_init_label(i8* %34)
  %36 = load i64, i64* @pedantic, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = call i32 @pedwarn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %30
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @c_parser_consume_token(i32* %41)
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @c_parser_consume_token(i32* %43)
  br label %323

45:                                               ; preds = %23, %1
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %275, %45
  %47 = load i32*, i32** %2, align 8
  %48 = load i64, i64* @CPP_OPEN_SQUARE, align 8
  %49 = call i64 @c_parser_next_token_is(i32* %47, i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load i32*, i32** %2, align 8
  %53 = load i64, i64* @CPP_DOT, align 8
  %54 = call i64 @c_parser_next_token_is(i32* %52, i64 %53)
  %55 = icmp ne i64 %54, 0
  br label %56

56:                                               ; preds = %51, %46
  %57 = phi i1 [ true, %46 ], [ %55, %51 ]
  br i1 %57, label %58, label %276

58:                                               ; preds = %56
  %59 = load i32, i32* %3, align 4
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %3, align 4
  %61 = icmp slt i32 %60, 2
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %62, %58
  %66 = load i32*, i32** %2, align 8
  %67 = load i64, i64* @CPP_DOT, align 8
  %68 = call i64 @c_parser_next_token_is(i32* %66, i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %102

70:                                               ; preds = %65
  store i32 2, i32* %3, align 4
  %71 = load i32*, i32** %2, align 8
  %72 = call i32 @c_parser_consume_token(i32* %71)
  %73 = load i32*, i32** %2, align 8
  %74 = load i64, i64* @CPP_NAME, align 8
  %75 = call i64 @c_parser_next_token_is(i32* %73, i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %70
  %78 = load i32*, i32** %2, align 8
  %79 = call %struct.TYPE_3__* @c_parser_peek_token(i32* %78)
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @set_init_label(i8* %81)
  %83 = load i32*, i32** %2, align 8
  %84 = call i32 @c_parser_consume_token(i32* %83)
  br label %101

85:                                               ; preds = %70
  %86 = load i8*, i8** @error_mark_node, align 8
  %87 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %5, i32 0, i32 1
  store i8* %86, i8** %87, align 8
  %88 = load i8*, i8** @ERROR_MARK, align 8
  %89 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %5, i32 0, i32 0
  store i8* %88, i8** %89, align 8
  %90 = load i32*, i32** %2, align 8
  %91 = call i32 @c_parser_error(i32* %90, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i32*, i32** %2, align 8
  %93 = load i64, i64* @CPP_COMMA, align 8
  %94 = call i32 @c_parser_skip_until_found(i32* %92, i64 %93, i8* null)
  %95 = bitcast %struct.c_expr* %5 to { i8*, i8* }*
  %96 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %95, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @process_init_element(i8* %97, i8* %99)
  br label %326

101:                                              ; preds = %77
  br label %275

102:                                              ; preds = %65
  %103 = load i32, i32* %4, align 4
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %110

105:                                              ; preds = %102
  %106 = call i64 (...) @c_dialect_objc()
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = load i32, i32* %4, align 4
  store i32 %109, i32* %3, align 4
  br label %276

110:                                              ; preds = %105, %102
  %111 = load i32, i32* %4, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %220

113:                                              ; preds = %110
  %114 = call i64 (...) @c_dialect_objc()
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %220

116:                                              ; preds = %113
  %117 = load i32*, i32** %2, align 8
  %118 = call i32 @c_parser_consume_token(i32* %117)
  %119 = load i32*, i32** %2, align 8
  %120 = call %struct.TYPE_3__* @c_parser_peek_token(i32* %119)
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @CPP_NAME, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %148

125:                                              ; preds = %116
  %126 = load i32*, i32** %2, align 8
  %127 = call %struct.TYPE_3__* @c_parser_peek_token(i32* %126)
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @C_ID_TYPENAME, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %139, label %132

132:                                              ; preds = %125
  %133 = load i32*, i32** %2, align 8
  %134 = call %struct.TYPE_3__* @c_parser_peek_token(i32* %133)
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @C_ID_CLASSNAME, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %148

139:                                              ; preds = %132, %125
  %140 = load i32*, i32** %2, align 8
  %141 = call %struct.TYPE_3__* @c_parser_peek_token(i32* %140)
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 2
  %143 = load i8*, i8** %142, align 8
  store i8* %143, i8** %11, align 8
  %144 = load i32*, i32** %2, align 8
  %145 = call i32 @c_parser_consume_token(i32* %144)
  %146 = load i8*, i8** %11, align 8
  %147 = call i8* @objc_get_class_reference(i8* %146)
  store i8* %147, i8** %8, align 8
  br label %205

148:                                              ; preds = %132, %116
  %149 = load i32*, i32** %2, align 8
  %150 = call { i8*, i8* } @c_parser_expr_no_commas(i32* %149, i32* null)
  %151 = bitcast %struct.c_expr* %12 to { i8*, i8* }*
  %152 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %151, i32 0, i32 0
  %153 = extractvalue { i8*, i8* } %150, 0
  store i8* %153, i8** %152, align 8
  %154 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %151, i32 0, i32 1
  %155 = extractvalue { i8*, i8* } %150, 1
  store i8* %155, i8** %154, align 8
  %156 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %12, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  store i8* %157, i8** %6, align 8
  %158 = load i32*, i32** %2, align 8
  %159 = load i64, i64* @CPP_ELLIPSIS, align 8
  %160 = call i64 @c_parser_next_token_is(i32* %158, i64 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %167, label %162

162:                                              ; preds = %148
  %163 = load i32*, i32** %2, align 8
  %164 = load i64, i64* @CPP_CLOSE_SQUARE, align 8
  %165 = call i64 @c_parser_next_token_is(i32* %163, i64 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %162, %148
  br label %232

168:                                              ; preds = %162
  %169 = load i8*, i8** %6, align 8
  store i8* %169, i8** %8, align 8
  br label %170

170:                                              ; preds = %175, %168
  %171 = load i32*, i32** %2, align 8
  %172 = load i64, i64* @CPP_COMMA, align 8
  %173 = call i64 @c_parser_next_token_is(i32* %171, i64 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %204

175:                                              ; preds = %170
  %176 = load i32*, i32** %2, align 8
  %177 = call i32 @c_parser_consume_token(i32* %176)
  %178 = load i32*, i32** %2, align 8
  %179 = call { i8*, i8* } @c_parser_expr_no_commas(i32* %178, i32* null)
  %180 = bitcast %struct.c_expr* %14 to { i8*, i8* }*
  %181 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %180, i32 0, i32 0
  %182 = extractvalue { i8*, i8* } %179, 0
  store i8* %182, i8** %181, align 8
  %183 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %180, i32 0, i32 1
  %184 = extractvalue { i8*, i8* } %179, 1
  store i8* %184, i8** %183, align 8
  %185 = bitcast %struct.c_expr* %13 to i8*
  %186 = bitcast %struct.c_expr* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %185, i8* align 8 %186, i64 16, i1 false)
  %187 = bitcast %struct.c_expr* %13 to { i8*, i8* }*
  %188 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %187, i32 0, i32 1
  %191 = load i8*, i8** %190, align 8
  %192 = call { i8*, i8* } @default_function_array_conversion(i8* %189, i8* %191)
  %193 = bitcast %struct.c_expr* %15 to { i8*, i8* }*
  %194 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %193, i32 0, i32 0
  %195 = extractvalue { i8*, i8* } %192, 0
  store i8* %195, i8** %194, align 8
  %196 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %193, i32 0, i32 1
  %197 = extractvalue { i8*, i8* } %192, 1
  store i8* %197, i8** %196, align 8
  %198 = bitcast %struct.c_expr* %13 to i8*
  %199 = bitcast %struct.c_expr* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %198, i8* align 8 %199, i64 16, i1 false)
  %200 = load i8*, i8** %8, align 8
  %201 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %13, i32 0, i32 1
  %202 = load i8*, i8** %201, align 8
  %203 = call i8* @build_compound_expr(i8* %200, i8* %202)
  store i8* %203, i8** %8, align 8
  br label %170

204:                                              ; preds = %170
  br label %205

205:                                              ; preds = %204, %139
  %206 = load i32*, i32** %2, align 8
  %207 = call i8* @c_parser_objc_message_args(i32* %206)
  store i8* %207, i8** %9, align 8
  %208 = load i32*, i32** %2, align 8
  %209 = load i64, i64* @CPP_CLOSE_SQUARE, align 8
  %210 = call i32 @c_parser_skip_until_found(i32* %208, i64 %209, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %211 = load i8*, i8** %8, align 8
  %212 = load i8*, i8** %9, align 8
  %213 = call i32 @build_tree_list(i8* %211, i8* %212)
  %214 = call i8* @objc_build_message_expr(i32 %213)
  %215 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %10, i32 0, i32 1
  store i8* %214, i8** %215, align 8
  %216 = load i8*, i8** @ERROR_MARK, align 8
  %217 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %10, i32 0, i32 0
  store i8* %216, i8** %217, align 8
  %218 = load i32*, i32** %2, align 8
  %219 = call i32 @c_parser_initval(i32* %218, %struct.c_expr* %10)
  br label %326

220:                                              ; preds = %113, %110
  %221 = load i32*, i32** %2, align 8
  %222 = call i32 @c_parser_consume_token(i32* %221)
  %223 = load i32*, i32** %2, align 8
  %224 = call { i8*, i8* } @c_parser_expr_no_commas(i32* %223, i32* null)
  %225 = bitcast %struct.c_expr* %16 to { i8*, i8* }*
  %226 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %225, i32 0, i32 0
  %227 = extractvalue { i8*, i8* } %224, 0
  store i8* %227, i8** %226, align 8
  %228 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %225, i32 0, i32 1
  %229 = extractvalue { i8*, i8* } %224, 1
  store i8* %229, i8** %228, align 8
  %230 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %16, i32 0, i32 1
  %231 = load i8*, i8** %230, align 8
  store i8* %231, i8** %6, align 8
  br label %232

232:                                              ; preds = %220, %167
  %233 = load i32*, i32** %2, align 8
  %234 = load i64, i64* @CPP_ELLIPSIS, align 8
  %235 = call i64 @c_parser_next_token_is(i32* %233, i64 %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %249

237:                                              ; preds = %232
  %238 = load i32*, i32** %2, align 8
  %239 = call i32 @c_parser_consume_token(i32* %238)
  %240 = load i32*, i32** %2, align 8
  %241 = call { i8*, i8* } @c_parser_expr_no_commas(i32* %240, i32* null)
  %242 = bitcast %struct.c_expr* %17 to { i8*, i8* }*
  %243 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %242, i32 0, i32 0
  %244 = extractvalue { i8*, i8* } %241, 0
  store i8* %244, i8** %243, align 8
  %245 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %242, i32 0, i32 1
  %246 = extractvalue { i8*, i8* } %241, 1
  store i8* %246, i8** %245, align 8
  %247 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %17, i32 0, i32 1
  %248 = load i8*, i8** %247, align 8
  store i8* %248, i8** %7, align 8
  br label %251

249:                                              ; preds = %232
  %250 = load i8*, i8** @NULL_TREE, align 8
  store i8* %250, i8** %7, align 8
  br label %251

251:                                              ; preds = %249, %237
  %252 = load i32*, i32** %2, align 8
  %253 = load i64, i64* @CPP_CLOSE_SQUARE, align 8
  %254 = call i64 @c_parser_next_token_is(i32* %252, i64 %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %270

256:                                              ; preds = %251
  %257 = load i32*, i32** %2, align 8
  %258 = call i32 @c_parser_consume_token(i32* %257)
  %259 = load i8*, i8** %6, align 8
  %260 = load i8*, i8** %7, align 8
  %261 = call i32 @set_init_index(i8* %259, i8* %260)
  %262 = load i64, i64* @pedantic, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %269

264:                                              ; preds = %256
  %265 = load i8*, i8** %7, align 8
  %266 = icmp ne i8* %265, null
  br i1 %266, label %267, label %269

267:                                              ; preds = %264
  %268 = call i32 @pedwarn(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  br label %269

269:                                              ; preds = %267, %264, %256
  br label %274

270:                                              ; preds = %251
  %271 = load i32*, i32** %2, align 8
  %272 = load i64, i64* @CPP_CLOSE_SQUARE, align 8
  %273 = call i32 @c_parser_skip_until_found(i32* %271, i64 %272, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %274

274:                                              ; preds = %270, %269
  br label %275

275:                                              ; preds = %274, %101
  br label %46

276:                                              ; preds = %108, %56
  %277 = load i32, i32* %3, align 4
  %278 = icmp sge i32 %277, 1
  br i1 %278, label %279, label %322

279:                                              ; preds = %276
  %280 = load i32*, i32** %2, align 8
  %281 = load i64, i64* @CPP_EQ, align 8
  %282 = call i64 @c_parser_next_token_is(i32* %280, i64 %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %295

284:                                              ; preds = %279
  %285 = load i64, i64* @pedantic, align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %292

287:                                              ; preds = %284
  %288 = load i32, i32* @flag_isoc99, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %292, label %290

290:                                              ; preds = %287
  %291 = call i32 @pedwarn(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  br label %292

292:                                              ; preds = %290, %287, %284
  %293 = load i32*, i32** %2, align 8
  %294 = call i32 @c_parser_consume_token(i32* %293)
  br label %321

295:                                              ; preds = %279
  %296 = load i32, i32* %3, align 4
  %297 = icmp eq i32 %296, 1
  br i1 %297, label %298, label %304

298:                                              ; preds = %295
  %299 = load i64, i64* @pedantic, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %298
  %302 = call i32 @pedwarn(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  br label %303

303:                                              ; preds = %301, %298
  br label %320

304:                                              ; preds = %295
  %305 = load i8*, i8** @error_mark_node, align 8
  %306 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %18, i32 0, i32 1
  store i8* %305, i8** %306, align 8
  %307 = load i8*, i8** @ERROR_MARK, align 8
  %308 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %18, i32 0, i32 0
  store i8* %307, i8** %308, align 8
  %309 = load i32*, i32** %2, align 8
  %310 = call i32 @c_parser_error(i32* %309, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %311 = load i32*, i32** %2, align 8
  %312 = load i64, i64* @CPP_COMMA, align 8
  %313 = call i32 @c_parser_skip_until_found(i32* %311, i64 %312, i8* null)
  %314 = bitcast %struct.c_expr* %18 to { i8*, i8* }*
  %315 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %314, i32 0, i32 0
  %316 = load i8*, i8** %315, align 8
  %317 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %314, i32 0, i32 1
  %318 = load i8*, i8** %317, align 8
  %319 = call i32 @process_init_element(i8* %316, i8* %318)
  br label %326

320:                                              ; preds = %303
  br label %321

321:                                              ; preds = %320, %292
  br label %322

322:                                              ; preds = %321, %276
  br label %323

323:                                              ; preds = %322, %40
  %324 = load i32*, i32** %2, align 8
  %325 = call i32 @c_parser_initval(i32* %324, %struct.c_expr* null)
  br label %326

326:                                              ; preds = %323, %304, %205, %85
  ret void
}

declare dso_local i64 @c_parser_next_token_is(i32*, i64) #1

declare dso_local %struct.TYPE_4__* @c_parser_peek_2nd_token(i32*) #1

declare dso_local i32 @set_init_label(i8*) #1

declare dso_local %struct.TYPE_3__* @c_parser_peek_token(i32*) #1

declare dso_local i32 @pedwarn(i8*) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

declare dso_local i32 @c_parser_error(i32*, i8*) #1

declare dso_local i32 @c_parser_skip_until_found(i32*, i64, i8*) #1

declare dso_local i32 @process_init_element(i8*, i8*) #1

declare dso_local i64 @c_dialect_objc(...) #1

declare dso_local i8* @objc_get_class_reference(i8*) #1

declare dso_local { i8*, i8* } @c_parser_expr_no_commas(i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local { i8*, i8* } @default_function_array_conversion(i8*, i8*) #1

declare dso_local i8* @build_compound_expr(i8*, i8*) #1

declare dso_local i8* @c_parser_objc_message_args(i32*) #1

declare dso_local i8* @objc_build_message_expr(i32) #1

declare dso_local i32 @build_tree_list(i8*, i8*) #1

declare dso_local i32 @c_parser_initval(i32*, %struct.c_expr*) #1

declare dso_local i32 @set_init_index(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
