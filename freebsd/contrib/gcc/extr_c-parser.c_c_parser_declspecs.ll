; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_declspecs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_declspecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_declspecs = type { i32 }
%struct.c_typespec = type { i8*, i8* }
%struct.TYPE_2__ = type { i64, i32, i8* }

@CPP_NAME = common dso_local global i32 0, align 4
@CPP_KEYWORD = common dso_local global i32 0, align 4
@CPP_LESS = common dso_local global i32 0, align 4
@C_ID_TYPENAME = common dso_local global i64 0, align 8
@C_ID_CLASSNAME = common dso_local global i64 0, align 8
@ctsk_typedef = common dso_local global i8* null, align 8
@NULL_TREE = common dso_local global i8* null, align 8
@ctsk_objc = common dso_local global i8* null, align 8
@ctsk_resword = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.c_declspecs*, i32, i32, i32)* @c_parser_declspecs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_parser_declspecs(i32* %0, %struct.c_declspecs* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.c_declspecs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.c_typespec, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.c_typespec, align 8
  %20 = alloca %struct.c_typespec, align 8
  %21 = alloca %struct.c_typespec, align 8
  store i32* %0, i32** %6, align 8
  store %struct.c_declspecs* %1, %struct.c_declspecs** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %11, align 4
  %23 = load %struct.c_declspecs*, %struct.c_declspecs** %7, align 8
  %24 = getelementptr inbounds %struct.c_declspecs, %struct.c_declspecs* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  br label %26

26:                                               ; preds = %282, %136, %114, %5
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* @CPP_NAME, align 4
  %29 = call i64 @c_parser_next_token_is(i32* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %26
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* @CPP_KEYWORD, align 4
  %34 = call i64 @c_parser_next_token_is(i32* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %31
  %37 = call i64 (...) @c_dialect_objc()
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* @CPP_LESS, align 4
  %42 = call i64 @c_parser_next_token_is(i32* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %39, %36
  %45 = phi i1 [ false, %36 ], [ %43, %39 ]
  br label %46

46:                                               ; preds = %44, %31, %26
  %47 = phi i1 [ true, %31 ], [ true, %26 ], [ %45, %44 ]
  br i1 %47, label %48, label %283

48:                                               ; preds = %46
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* @CPP_NAME, align 4
  %51 = call i64 @c_parser_next_token_is(i32* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %122

53:                                               ; preds = %48
  %54 = load i32*, i32** %6, align 8
  %55 = call %struct.TYPE_2__* @c_parser_peek_token(i32* %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %15, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = call %struct.TYPE_2__* @c_parser_peek_token(i32* %58)
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %16, align 8
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %53
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %64
  %68 = load i64, i64* %16, align 8
  %69 = load i64, i64* @C_ID_TYPENAME, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load i64, i64* %16, align 8
  %73 = load i64, i64* @C_ID_CLASSNAME, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71, %64, %53
  br label %283

76:                                               ; preds = %71, %67
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @c_parser_consume_token(i32* %77)
  store i32 1, i32* %12, align 4
  store i32 1, i32* %11, align 4
  %79 = load i64, i64* %16, align 8
  %80 = load i64, i64* @C_ID_TYPENAME, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %76
  %83 = call i64 (...) @c_dialect_objc()
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* @CPP_LESS, align 4
  %88 = call i64 @c_parser_next_token_is_not(i32* %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85, %82
  %91 = load i8*, i8** @ctsk_typedef, align 8
  %92 = getelementptr inbounds %struct.c_typespec, %struct.c_typespec* %13, i32 0, i32 1
  store i8* %91, i8** %92, align 8
  %93 = load i8*, i8** %15, align 8
  %94 = call i8* @lookup_name(i8* %93)
  %95 = getelementptr inbounds %struct.c_typespec, %struct.c_typespec* %13, i32 0, i32 0
  store i8* %94, i8** %95, align 8
  br label %114

96:                                               ; preds = %85, %76
  %97 = load i8*, i8** @NULL_TREE, align 8
  store i8* %97, i8** %17, align 8
  %98 = call i64 (...) @c_dialect_objc()
  %99 = call i32 @gcc_assert(i64 %98)
  %100 = load i8*, i8** @ctsk_objc, align 8
  %101 = getelementptr inbounds %struct.c_typespec, %struct.c_typespec* %13, i32 0, i32 1
  store i8* %100, i8** %101, align 8
  %102 = load i32*, i32** %6, align 8
  %103 = load i32, i32* @CPP_LESS, align 4
  %104 = call i64 @c_parser_next_token_is(i32* %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %96
  %107 = load i32*, i32** %6, align 8
  %108 = call i8* @c_parser_objc_protocol_refs(i32* %107)
  store i8* %108, i8** %17, align 8
  br label %109

109:                                              ; preds = %106, %96
  %110 = load i8*, i8** %15, align 8
  %111 = load i8*, i8** %17, align 8
  %112 = call i8* @objc_get_protocol_qualified_type(i8* %110, i8* %111)
  %113 = getelementptr inbounds %struct.c_typespec, %struct.c_typespec* %13, i32 0, i32 0
  store i8* %112, i8** %113, align 8
  br label %114

114:                                              ; preds = %109, %90
  %115 = load %struct.c_declspecs*, %struct.c_declspecs** %7, align 8
  %116 = bitcast %struct.c_typespec* %13 to { i8*, i8* }*
  %117 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %116, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @declspecs_add_type(%struct.c_declspecs* %115, i8* %118, i8* %120)
  br label %26

122:                                              ; preds = %48
  %123 = load i32*, i32** %6, align 8
  %124 = load i32, i32* @CPP_LESS, align 4
  %125 = call i64 @c_parser_next_token_is(i32* %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %152

127:                                              ; preds = %122
  %128 = call i64 (...) @c_dialect_objc()
  %129 = call i32 @gcc_assert(i64 %128)
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load i32, i32* %12, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132, %127
  br label %283

136:                                              ; preds = %132
  %137 = load i32*, i32** %6, align 8
  %138 = call i8* @c_parser_objc_protocol_refs(i32* %137)
  store i8* %138, i8** %18, align 8
  %139 = load i8*, i8** @ctsk_objc, align 8
  %140 = getelementptr inbounds %struct.c_typespec, %struct.c_typespec* %13, i32 0, i32 1
  store i8* %139, i8** %140, align 8
  %141 = load i8*, i8** @NULL_TREE, align 8
  %142 = load i8*, i8** %18, align 8
  %143 = call i8* @objc_get_protocol_qualified_type(i8* %141, i8* %142)
  %144 = getelementptr inbounds %struct.c_typespec, %struct.c_typespec* %13, i32 0, i32 0
  store i8* %143, i8** %144, align 8
  %145 = load %struct.c_declspecs*, %struct.c_declspecs** %7, align 8
  %146 = bitcast %struct.c_typespec* %13 to { i8*, i8* }*
  %147 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %146, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 @declspecs_add_type(%struct.c_declspecs* %145, i8* %148, i8* %150)
  br label %26

152:                                              ; preds = %122
  %153 = load i32*, i32** %6, align 8
  %154 = load i32, i32* @CPP_KEYWORD, align 4
  %155 = call i64 @c_parser_next_token_is(i32* %153, i32 %154)
  %156 = call i32 @gcc_assert(i64 %155)
  %157 = load i32*, i32** %6, align 8
  %158 = call %struct.TYPE_2__* @c_parser_peek_token(i32* %157)
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  switch i32 %160, label %281 [
    i32 136, label %161
    i32 145, label %161
    i32 140, label %161
    i32 133, label %161
    i32 143, label %161
    i32 155, label %161
    i32 134, label %161
    i32 130, label %174
    i32 141, label %174
    i32 138, label %174
    i32 137, label %174
    i32 152, label %174
    i32 142, label %174
    i32 153, label %174
    i32 144, label %174
    i32 147, label %174
    i32 129, label %174
    i32 149, label %174
    i32 148, label %174
    i32 150, label %174
    i32 154, label %174
    i32 146, label %196
    i32 135, label %217
    i32 131, label %217
    i32 132, label %238
    i32 151, label %262
    i32 128, label %262
    i32 139, label %262
    i32 156, label %271
  ]

161:                                              ; preds = %152, %152, %152, %152, %152, %152, %152
  %162 = load i32, i32* %8, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %161
  br label %284

165:                                              ; preds = %161
  store i32 1, i32* %11, align 4
  %166 = load %struct.c_declspecs*, %struct.c_declspecs** %7, align 8
  %167 = load i32*, i32** %6, align 8
  %168 = call %struct.TYPE_2__* @c_parser_peek_token(i32* %167)
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 2
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 @declspecs_add_scspec(%struct.c_declspecs* %166, i8* %170)
  %172 = load i32*, i32** %6, align 8
  %173 = call i32 @c_parser_consume_token(i32* %172)
  br label %282

174:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152
  %175 = load i32, i32* %9, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %174
  br label %284

178:                                              ; preds = %174
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %179 = call i32 @OBJC_NEED_RAW_IDENTIFIER(i32 1)
  %180 = load i8*, i8** @ctsk_resword, align 8
  %181 = getelementptr inbounds %struct.c_typespec, %struct.c_typespec* %13, i32 0, i32 1
  store i8* %180, i8** %181, align 8
  %182 = load i32*, i32** %6, align 8
  %183 = call %struct.TYPE_2__* @c_parser_peek_token(i32* %182)
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 2
  %185 = load i8*, i8** %184, align 8
  %186 = getelementptr inbounds %struct.c_typespec, %struct.c_typespec* %13, i32 0, i32 0
  store i8* %185, i8** %186, align 8
  %187 = load %struct.c_declspecs*, %struct.c_declspecs** %7, align 8
  %188 = bitcast %struct.c_typespec* %13 to { i8*, i8* }*
  %189 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  %191 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %188, i32 0, i32 1
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 @declspecs_add_type(%struct.c_declspecs* %187, i8* %190, i8* %192)
  %194 = load i32*, i32** %6, align 8
  %195 = call i32 @c_parser_consume_token(i32* %194)
  br label %282

196:                                              ; preds = %152
  %197 = load i32, i32* %9, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %200, label %199

199:                                              ; preds = %196
  br label %284

200:                                              ; preds = %196
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %201 = load i32*, i32** %6, align 8
  %202 = call { i8*, i8* } @c_parser_enum_specifier(i32* %201)
  %203 = bitcast %struct.c_typespec* %19 to { i8*, i8* }*
  %204 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %203, i32 0, i32 0
  %205 = extractvalue { i8*, i8* } %202, 0
  store i8* %205, i8** %204, align 8
  %206 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %203, i32 0, i32 1
  %207 = extractvalue { i8*, i8* } %202, 1
  store i8* %207, i8** %206, align 8
  %208 = bitcast %struct.c_typespec* %13 to i8*
  %209 = bitcast %struct.c_typespec* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %208, i8* align 8 %209, i64 16, i1 false)
  %210 = load %struct.c_declspecs*, %struct.c_declspecs** %7, align 8
  %211 = bitcast %struct.c_typespec* %13 to { i8*, i8* }*
  %212 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %211, i32 0, i32 0
  %213 = load i8*, i8** %212, align 8
  %214 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %211, i32 0, i32 1
  %215 = load i8*, i8** %214, align 8
  %216 = call i32 @declspecs_add_type(%struct.c_declspecs* %210, i8* %213, i8* %215)
  br label %282

217:                                              ; preds = %152, %152
  %218 = load i32, i32* %9, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %221, label %220

220:                                              ; preds = %217
  br label %284

221:                                              ; preds = %217
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %222 = load i32*, i32** %6, align 8
  %223 = call { i8*, i8* } @c_parser_struct_or_union_specifier(i32* %222)
  %224 = bitcast %struct.c_typespec* %20 to { i8*, i8* }*
  %225 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %224, i32 0, i32 0
  %226 = extractvalue { i8*, i8* } %223, 0
  store i8* %226, i8** %225, align 8
  %227 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %224, i32 0, i32 1
  %228 = extractvalue { i8*, i8* } %223, 1
  store i8* %228, i8** %227, align 8
  %229 = bitcast %struct.c_typespec* %13 to i8*
  %230 = bitcast %struct.c_typespec* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %229, i8* align 8 %230, i64 16, i1 false)
  %231 = load %struct.c_declspecs*, %struct.c_declspecs** %7, align 8
  %232 = bitcast %struct.c_typespec* %13 to { i8*, i8* }*
  %233 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %232, i32 0, i32 0
  %234 = load i8*, i8** %233, align 8
  %235 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %232, i32 0, i32 1
  %236 = load i8*, i8** %235, align 8
  %237 = call i32 @declspecs_add_type(%struct.c_declspecs* %231, i8* %234, i8* %236)
  br label %282

238:                                              ; preds = %152
  %239 = load i32, i32* %9, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %238
  %242 = load i32, i32* %12, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %241, %238
  br label %284

245:                                              ; preds = %241
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %246 = load i32*, i32** %6, align 8
  %247 = call { i8*, i8* } @c_parser_typeof_specifier(i32* %246)
  %248 = bitcast %struct.c_typespec* %21 to { i8*, i8* }*
  %249 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %248, i32 0, i32 0
  %250 = extractvalue { i8*, i8* } %247, 0
  store i8* %250, i8** %249, align 8
  %251 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %248, i32 0, i32 1
  %252 = extractvalue { i8*, i8* } %247, 1
  store i8* %252, i8** %251, align 8
  %253 = bitcast %struct.c_typespec* %13 to i8*
  %254 = bitcast %struct.c_typespec* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %253, i8* align 8 %254, i64 16, i1 false)
  %255 = load %struct.c_declspecs*, %struct.c_declspecs** %7, align 8
  %256 = bitcast %struct.c_typespec* %13 to { i8*, i8* }*
  %257 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %256, i32 0, i32 0
  %258 = load i8*, i8** %257, align 8
  %259 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %256, i32 0, i32 1
  %260 = load i8*, i8** %259, align 8
  %261 = call i32 @declspecs_add_type(%struct.c_declspecs* %255, i8* %258, i8* %260)
  br label %282

262:                                              ; preds = %152, %152, %152
  store i32 1, i32* %11, align 4
  %263 = load %struct.c_declspecs*, %struct.c_declspecs** %7, align 8
  %264 = load i32*, i32** %6, align 8
  %265 = call %struct.TYPE_2__* @c_parser_peek_token(i32* %264)
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 2
  %267 = load i8*, i8** %266, align 8
  %268 = call i32 @declspecs_add_qual(%struct.c_declspecs* %263, i8* %267)
  %269 = load i32*, i32** %6, align 8
  %270 = call i32 @c_parser_consume_token(i32* %269)
  br label %282

271:                                              ; preds = %152
  %272 = load i32, i32* %11, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %275, label %274

274:                                              ; preds = %271
  br label %284

275:                                              ; preds = %271
  %276 = load i32*, i32** %6, align 8
  %277 = call i8* @c_parser_attributes(i32* %276)
  store i8* %277, i8** %14, align 8
  %278 = load %struct.c_declspecs*, %struct.c_declspecs** %7, align 8
  %279 = load i8*, i8** %14, align 8
  %280 = call i32 @declspecs_add_attrs(%struct.c_declspecs* %278, i8* %279)
  br label %282

281:                                              ; preds = %152
  br label %284

282:                                              ; preds = %275, %262, %245, %221, %200, %178, %165
  br label %26

283:                                              ; preds = %135, %75, %46
  br label %284

284:                                              ; preds = %283, %281, %274, %244, %220, %199, %177, %164
  ret void
}

declare dso_local i64 @c_parser_next_token_is(i32*, i32) #1

declare dso_local i64 @c_dialect_objc(...) #1

declare dso_local %struct.TYPE_2__* @c_parser_peek_token(i32*) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

declare dso_local i64 @c_parser_next_token_is_not(i32*, i32) #1

declare dso_local i8* @lookup_name(i8*) #1

declare dso_local i32 @gcc_assert(i64) #1

declare dso_local i8* @c_parser_objc_protocol_refs(i32*) #1

declare dso_local i8* @objc_get_protocol_qualified_type(i8*, i8*) #1

declare dso_local i32 @declspecs_add_type(%struct.c_declspecs*, i8*, i8*) #1

declare dso_local i32 @declspecs_add_scspec(%struct.c_declspecs*, i8*) #1

declare dso_local i32 @OBJC_NEED_RAW_IDENTIFIER(i32) #1

declare dso_local { i8*, i8* } @c_parser_enum_specifier(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local { i8*, i8* } @c_parser_struct_or_union_specifier(i32*) #1

declare dso_local { i8*, i8* } @c_parser_typeof_specifier(i32*) #1

declare dso_local i32 @declspecs_add_qual(%struct.c_declspecs*, i8*) #1

declare dso_local i8* @c_parser_attributes(i32*) #1

declare dso_local i32 @declspecs_add_attrs(%struct.c_declspecs*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
