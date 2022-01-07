; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_macro.c_collect_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_macro.c_collect_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_38__ = type { i8*, i8*, i64 }
%struct.TYPE_35__ = type { %struct.TYPE_32__, %struct.TYPE_31__*, %struct.TYPE_34__ }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_34__ = type { i64, i32 }
%struct.TYPE_37__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { %struct.TYPE_36__* }
%struct.TYPE_36__ = type { i32, i64 }
%struct.TYPE_33__ = type { i32, %struct.TYPE_34__** }

@CPP_PADDING = common dso_local global i64 0, align 8
@CPP_OPEN_PAREN = common dso_local global i64 0, align 8
@CPP_CLOSE_PAREN = common dso_local global i64 0, align 8
@CPP_COMMA = common dso_local global i64 0, align 8
@CPP_EOF = common dso_local global i64 0, align 8
@CPP_HASH = common dso_local global i64 0, align 8
@BOL = common dso_local global i32 0, align 4
@CPP_DL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"unterminated argument list invoking macro \22%s\22\00", align 1
@std = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_38__* (%struct.TYPE_35__*, %struct.TYPE_37__*)* @collect_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_38__* @collect_args(%struct.TYPE_35__* %0, %struct.TYPE_37__* %1) #0 {
  %3 = alloca %struct.TYPE_38__*, align 8
  %4 = alloca %struct.TYPE_35__*, align 8
  %5 = alloca %struct.TYPE_37__*, align 8
  %6 = alloca %struct.TYPE_38__*, align 8
  %7 = alloca %struct.TYPE_38__*, align 8
  %8 = alloca %struct.TYPE_36__*, align 8
  %9 = alloca %struct.TYPE_33__*, align 8
  %10 = alloca %struct.TYPE_33__*, align 8
  %11 = alloca %struct.TYPE_34__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_35__* %0, %struct.TYPE_35__** %4, align 8
  store %struct.TYPE_37__* %1, %struct.TYPE_37__** %5, align 8
  %15 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  store %struct.TYPE_36__* %18, %struct.TYPE_36__** %8, align 8
  %19 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %12, align 4
  br label %28

27:                                               ; preds = %2
  store i32 1, i32* %12, align 4
  br label %28

28:                                               ; preds = %27, %23
  %29 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %30 = load i32, i32* %12, align 4
  %31 = zext i32 %30 to i64
  %32 = mul i64 %31, 416
  %33 = trunc i64 %32 to i32
  %34 = call %struct.TYPE_38__* @_cpp_get_buff(%struct.TYPE_35__* %29, i32 %33)
  store %struct.TYPE_38__* %34, %struct.TYPE_38__** %6, align 8
  %35 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  store %struct.TYPE_38__* %35, %struct.TYPE_38__** %7, align 8
  %36 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %39, %struct.TYPE_33__** %9, align 8
  %40 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %41 = load i32, i32* %12, align 4
  %42 = zext i32 %41 to i64
  %43 = mul i64 %42, 16
  %44 = trunc i64 %43 to i32
  %45 = call i32 @memset(%struct.TYPE_33__* %40, i32 0, i32 %44)
  %46 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %47 = load i32, i32* %12, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %46, i64 %48
  %50 = bitcast %struct.TYPE_33__* %49 to i8*
  %51 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  store %struct.TYPE_33__* %53, %struct.TYPE_33__** %10, align 8
  store i32 0, i32* %12, align 4
  br label %54

54:                                               ; preds = %247, %28
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %55 = load i32, i32* %12, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %12, align 4
  %57 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = bitcast i8* %59 to %struct.TYPE_34__**
  %61 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %61, i32 0, i32 1
  store %struct.TYPE_34__** %60, %struct.TYPE_34__*** %62, align 8
  br label %63

63:                                               ; preds = %166, %97, %54
  %64 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %65, align 8
  %67 = load i32, i32* %14, align 4
  %68 = add i32 %67, 2
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_34__*, %struct.TYPE_34__** %66, i64 %69
  %71 = bitcast %struct.TYPE_34__** %70 to i8*
  %72 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ugt i8* %71, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %63
  %77 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %78 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %79 = call %struct.TYPE_38__* @_cpp_append_extend_buff(%struct.TYPE_35__* %77, %struct.TYPE_38__* %78, i32 8000)
  store %struct.TYPE_38__* %79, %struct.TYPE_38__** %6, align 8
  %80 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = bitcast i8* %82 to %struct.TYPE_34__**
  %84 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %84, i32 0, i32 1
  store %struct.TYPE_34__** %83, %struct.TYPE_34__*** %85, align 8
  br label %86

86:                                               ; preds = %76, %63
  %87 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %88 = call %struct.TYPE_34__* @cpp_get_token(%struct.TYPE_35__* %87)
  store %struct.TYPE_34__* %88, %struct.TYPE_34__** %11, align 8
  %89 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @CPP_PADDING, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %86
  %95 = load i32, i32* %14, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  br label %63

98:                                               ; preds = %94
  br label %166

99:                                               ; preds = %86
  %100 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @CPP_OPEN_PAREN, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load i32, i32* %13, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %13, align 4
  br label %165

108:                                              ; preds = %99
  %109 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @CPP_CLOSE_PAREN, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %108
  %115 = load i32, i32* %13, align 4
  %116 = add i32 %115, -1
  store i32 %116, i32* %13, align 4
  %117 = icmp eq i32 %115, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  br label %175

119:                                              ; preds = %114
  br label %164

120:                                              ; preds = %108
  %121 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @CPP_COMMA, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %142

126:                                              ; preds = %120
  %127 = load i32, i32* %13, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %141

129:                                              ; preds = %126
  %130 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %129
  %135 = load i32, i32* %12, align 4
  %136 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp eq i32 %135, %138
  br i1 %139, label %141, label %140

140:                                              ; preds = %134, %129
  br label %175

141:                                              ; preds = %134, %126
  br label %163

142:                                              ; preds = %120
  %143 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @CPP_EOF, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %161, label %148

148:                                              ; preds = %142
  %149 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @CPP_HASH, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %162

154:                                              ; preds = %148
  %155 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @BOL, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %154, %142
  br label %175

162:                                              ; preds = %154, %148
  br label %163

163:                                              ; preds = %162, %141
  br label %164

164:                                              ; preds = %163, %119
  br label %165

165:                                              ; preds = %164, %105
  br label %166

166:                                              ; preds = %165, %98
  %167 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %168 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %169, align 8
  %171 = load i32, i32* %14, align 4
  %172 = add i32 %171, 1
  store i32 %172, i32* %14, align 4
  %173 = zext i32 %171 to i64
  %174 = getelementptr inbounds %struct.TYPE_34__*, %struct.TYPE_34__** %170, i64 %173
  store %struct.TYPE_34__* %167, %struct.TYPE_34__** %174, align 8
  br label %63

175:                                              ; preds = %161, %140, %118
  br label %176

176:                                              ; preds = %194, %175
  %177 = load i32, i32* %14, align 4
  %178 = icmp ugt i32 %177, 0
  br i1 %178, label %179, label %192

179:                                              ; preds = %176
  %180 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %181, align 8
  %183 = load i32, i32* %14, align 4
  %184 = sub i32 %183, 1
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_34__*, %struct.TYPE_34__** %182, i64 %185
  %187 = load %struct.TYPE_34__*, %struct.TYPE_34__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @CPP_PADDING, align 8
  %191 = icmp eq i64 %189, %190
  br label %192

192:                                              ; preds = %179, %176
  %193 = phi i1 [ false, %176 ], [ %191, %179 ]
  br i1 %193, label %194, label %197

194:                                              ; preds = %192
  %195 = load i32, i32* %14, align 4
  %196 = add i32 %195, -1
  store i32 %196, i32* %14, align 4
  br label %176

197:                                              ; preds = %192
  %198 = load i32, i32* %14, align 4
  %199 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %199, i32 0, i32 0
  store i32 %198, i32* %200, align 8
  %201 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %201, i32 0, i32 2
  %203 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %204 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %203, i32 0, i32 1
  %205 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %204, align 8
  %206 = load i32, i32* %14, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_34__*, %struct.TYPE_34__** %205, i64 %207
  store %struct.TYPE_34__* %202, %struct.TYPE_34__** %208, align 8
  %209 = load i32, i32* %12, align 4
  %210 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = icmp ule i32 %209, %212
  br i1 %213, label %214, label %234

214:                                              ; preds = %197
  %215 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %215, i32 0, i32 1
  %217 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %216, align 8
  %218 = load i32, i32* %14, align 4
  %219 = add i32 %218, 1
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_34__*, %struct.TYPE_34__** %217, i64 %220
  %222 = bitcast %struct.TYPE_34__** %221 to i8*
  %223 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %223, i32 0, i32 0
  store i8* %222, i8** %224, align 8
  %225 = load i32, i32* %12, align 4
  %226 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = icmp ne i32 %225, %228
  br i1 %229, label %230, label %233

230:                                              ; preds = %214
  %231 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %232 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %231, i32 1
  store %struct.TYPE_33__* %232, %struct.TYPE_33__** %10, align 8
  br label %233

233:                                              ; preds = %230, %214
  br label %234

234:                                              ; preds = %233, %197
  br label %235

235:                                              ; preds = %234
  %236 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %237 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @CPP_CLOSE_PAREN, align 8
  %240 = icmp ne i64 %238, %239
  br i1 %240, label %241, label %247

241:                                              ; preds = %235
  %242 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %243 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @CPP_EOF, align 8
  %246 = icmp ne i64 %244, %245
  br label %247

247:                                              ; preds = %241, %235
  %248 = phi i1 [ false, %235 ], [ %246, %241 ]
  br i1 %248, label %54, label %249

249:                                              ; preds = %247
  %250 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %251 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @CPP_EOF, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %255, label %277

255:                                              ; preds = %249
  %256 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %256, i32 0, i32 1
  %258 = load %struct.TYPE_31__*, %struct.TYPE_31__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %268, label %262

262:                                              ; preds = %255
  %263 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %262, %255
  %269 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %270 = call i32 @_cpp_backup_tokens(%struct.TYPE_35__* %269, i32 1)
  br label %271

271:                                              ; preds = %268, %262
  %272 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %273 = load i32, i32* @CPP_DL_ERROR, align 4
  %274 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %275 = call i32 @NODE_NAME(%struct.TYPE_37__* %274)
  %276 = call i32 @cpp_error(%struct.TYPE_35__* %272, i32 %273, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %275)
  br label %336

277:                                              ; preds = %249
  %278 = load i32, i32* %12, align 4
  %279 = icmp eq i32 %278, 1
  br i1 %279, label %280, label %292

280:                                              ; preds = %277
  %281 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %282 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %292

285:                                              ; preds = %280
  %286 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %287 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %286, i64 0
  %288 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %292

291:                                              ; preds = %285
  store i32 0, i32* %12, align 4
  br label %292

292:                                              ; preds = %291, %285, %280, %277
  %293 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %294 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %295 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %296 = load i32, i32* %12, align 4
  %297 = call i64 @_cpp_arguments_ok(%struct.TYPE_35__* %293, %struct.TYPE_36__* %294, %struct.TYPE_37__* %295, i32 %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %335

299:                                              ; preds = %292
  %300 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %301 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %300, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %333

304:                                              ; preds = %299
  %305 = load i32, i32* %12, align 4
  %306 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %307 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = icmp ult i32 %305, %308
  br i1 %309, label %324, label %310

310:                                              ; preds = %304
  %311 = load i32, i32* %12, align 4
  %312 = icmp eq i32 %311, 1
  br i1 %312, label %313, label %333

313:                                              ; preds = %310
  %314 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %315 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %314, i64 0
  %316 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %333

319:                                              ; preds = %313
  %320 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %321 = load i32, i32* @std, align 4
  %322 = call i32 @CPP_OPTION(%struct.TYPE_35__* %320, i32 %321)
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %333, label %324

324:                                              ; preds = %319, %304
  %325 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %326 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %327 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = sub nsw i32 %328, 1
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %325, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %331, i32 0, i32 1
  store %struct.TYPE_34__** null, %struct.TYPE_34__*** %332, align 8
  br label %333

333:                                              ; preds = %324, %319, %313, %310, %299
  %334 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  store %struct.TYPE_38__* %334, %struct.TYPE_38__** %3, align 8
  br label %340

335:                                              ; preds = %292
  br label %336

336:                                              ; preds = %335, %271
  %337 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %338 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %339 = call i32 @_cpp_release_buff(%struct.TYPE_35__* %337, %struct.TYPE_38__* %338)
  store %struct.TYPE_38__* null, %struct.TYPE_38__** %3, align 8
  br label %340

340:                                              ; preds = %336, %333
  %341 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  ret %struct.TYPE_38__* %341
}

declare dso_local %struct.TYPE_38__* @_cpp_get_buff(%struct.TYPE_35__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_33__*, i32, i32) #1

declare dso_local %struct.TYPE_38__* @_cpp_append_extend_buff(%struct.TYPE_35__*, %struct.TYPE_38__*, i32) #1

declare dso_local %struct.TYPE_34__* @cpp_get_token(%struct.TYPE_35__*) #1

declare dso_local i32 @_cpp_backup_tokens(%struct.TYPE_35__*, i32) #1

declare dso_local i32 @cpp_error(%struct.TYPE_35__*, i32, i8*, i32) #1

declare dso_local i32 @NODE_NAME(%struct.TYPE_37__*) #1

declare dso_local i64 @_cpp_arguments_ok(%struct.TYPE_35__*, %struct.TYPE_36__*, %struct.TYPE_37__*, i32) #1

declare dso_local i32 @CPP_OPTION(%struct.TYPE_35__*, i32) #1

declare dso_local i32 @_cpp_release_buff(%struct.TYPE_35__*, %struct.TYPE_38__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
