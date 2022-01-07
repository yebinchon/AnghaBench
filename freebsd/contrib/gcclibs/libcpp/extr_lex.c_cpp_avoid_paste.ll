; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_lex.c_cpp_avoid_paste.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_lex.c_cpp_avoid_paste.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i8* }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8* }

@NAMED_OP = common dso_local global i32 0, align 4
@EOF = common dso_local global i8 0, align 1
@DIGRAPH = common dso_local global i32 0, align 4
@digraph_spellings = common dso_local global i8** null, align 8
@CPP_FIRST_DIGRAPH = common dso_local global i64 0, align 8
@token_spellings = common dso_local global %struct.TYPE_9__* null, align 8
@SPELL_OPERATOR = common dso_local global i64 0, align 8
@CPP_LAST_EQ = common dso_local global i64 0, align 8
@CPP_CHAR = common dso_local global i32 0, align 4
@CPP_STRING = common dso_local global i32 0, align 4
@objc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpp_avoid_paste(i32* %0, %struct.TYPE_8__* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @NAMED_OP, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 132, i32* %8, align 4
  br label %24

24:                                               ; preds = %23, %3
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @NAMED_OP, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 132, i32* %9, align 4
  br label %32

32:                                               ; preds = %31, %24
  %33 = load i8, i8* @EOF, align 1
  store i8 %33, i8* %10, align 1
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @DIGRAPH, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %32
  %41 = load i8**, i8*** @digraph_spellings, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i64, i64* @CPP_FIRST_DIGRAPH, align 8
  %44 = trunc i64 %43 to i32
  %45 = sub nsw i32 %42, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %41, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  store i8 %50, i8* %10, align 1
  br label %70

51:                                               ; preds = %32
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** @token_spellings, align 8
  %53 = load i32, i32* %9, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SPELL_OPERATOR, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %51
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** @token_spellings, align 8
  %62 = load i32, i32* %9, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  %68 = load i8, i8* %67, align 1
  store i8 %68, i8* %10, align 1
  br label %69

69:                                               ; preds = %60, %51
  br label %70

70:                                               ; preds = %69, %40
  %71 = load i32, i32* %8, align 4
  %72 = load i64, i64* @CPP_LAST_EQ, align 8
  %73 = trunc i64 %72 to i32
  %74 = icmp sle i32 %71, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load i8, i8* %10, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 61
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  store i32 1, i32* %4, align 4
  br label %280

80:                                               ; preds = %75, %70
  %81 = load i32, i32* %8, align 4
  switch i32 %81, label %278 [
    i32 137, label %82
    i32 135, label %87
    i32 128, label %102
    i32 134, label %107
    i32 139, label %118
    i32 133, label %129
    i32 142, label %140
    i32 130, label %145
    i32 141, label %150
    i32 140, label %161
    i32 138, label %166
    i32 136, label %180
    i32 132, label %191
    i32 131, label %215
    i32 129, label %236
  ]

82:                                               ; preds = %80
  %83 = load i8, i8* %10, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 62
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %4, align 4
  br label %280

87:                                               ; preds = %80
  %88 = load i8, i8* %10, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 60
  br i1 %90, label %99, label %91

91:                                               ; preds = %87
  %92 = load i8, i8* %10, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 37
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  %96 = load i8, i8* %10, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 58
  br label %99

99:                                               ; preds = %95, %91, %87
  %100 = phi i1 [ true, %91 ], [ true, %87 ], [ %98, %95 ]
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %4, align 4
  br label %280

102:                                              ; preds = %80
  %103 = load i8, i8* %10, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 43
  %106 = zext i1 %105 to i32
  store i32 %106, i32* %4, align 4
  br label %280

107:                                              ; preds = %80
  %108 = load i8, i8* %10, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 45
  br i1 %110, label %115, label %111

111:                                              ; preds = %107
  %112 = load i8, i8* %10, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 62
  br label %115

115:                                              ; preds = %111, %107
  %116 = phi i1 [ true, %107 ], [ %114, %111 ]
  %117 = zext i1 %116 to i32
  store i32 %117, i32* %4, align 4
  br label %280

118:                                              ; preds = %80
  %119 = load i8, i8* %10, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 47
  br i1 %121, label %126, label %122

122:                                              ; preds = %118
  %123 = load i8, i8* %10, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 42
  br label %126

126:                                              ; preds = %122, %118
  %127 = phi i1 [ true, %118 ], [ %125, %122 ]
  %128 = zext i1 %127 to i32
  store i32 %128, i32* %4, align 4
  br label %280

129:                                              ; preds = %80
  %130 = load i8, i8* %10, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 58
  br i1 %132, label %137, label %133

133:                                              ; preds = %129
  %134 = load i8, i8* %10, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 62
  br label %137

137:                                              ; preds = %133, %129
  %138 = phi i1 [ true, %129 ], [ %136, %133 ]
  %139 = zext i1 %138 to i32
  store i32 %139, i32* %4, align 4
  br label %280

140:                                              ; preds = %80
  %141 = load i8, i8* %10, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 38
  %144 = zext i1 %143 to i32
  store i32 %144, i32* %4, align 4
  br label %280

145:                                              ; preds = %80
  %146 = load i8, i8* %10, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 124
  %149 = zext i1 %148 to i32
  store i32 %149, i32* %4, align 4
  br label %280

150:                                              ; preds = %80
  %151 = load i8, i8* %10, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 58
  br i1 %153, label %158, label %154

154:                                              ; preds = %150
  %155 = load i8, i8* %10, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 62
  br label %158

158:                                              ; preds = %154, %150
  %159 = phi i1 [ true, %150 ], [ %157, %154 ]
  %160 = zext i1 %159 to i32
  store i32 %160, i32* %4, align 4
  br label %280

161:                                              ; preds = %80
  %162 = load i8, i8* %10, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 42
  %165 = zext i1 %164 to i32
  store i32 %165, i32* %4, align 4
  br label %280

166:                                              ; preds = %80
  %167 = load i8, i8* %10, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp eq i32 %168, 46
  br i1 %169, label %177, label %170

170:                                              ; preds = %166
  %171 = load i8, i8* %10, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp eq i32 %172, 37
  br i1 %173, label %177, label %174

174:                                              ; preds = %170
  %175 = load i32, i32* %9, align 4
  %176 = icmp eq i32 %175, 131
  br label %177

177:                                              ; preds = %174, %170, %166
  %178 = phi i1 [ true, %170 ], [ true, %166 ], [ %176, %174 ]
  %179 = zext i1 %178 to i32
  store i32 %179, i32* %4, align 4
  br label %280

180:                                              ; preds = %80
  %181 = load i8, i8* %10, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp eq i32 %182, 35
  br i1 %183, label %188, label %184

184:                                              ; preds = %180
  %185 = load i8, i8* %10, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp eq i32 %186, 37
  br label %188

188:                                              ; preds = %184, %180
  %189 = phi i1 [ true, %180 ], [ %187, %184 ]
  %190 = zext i1 %189 to i32
  store i32 %190, i32* %4, align 4
  br label %280

191:                                              ; preds = %80
  %192 = load i32, i32* %9, align 4
  %193 = icmp eq i32 %192, 131
  br i1 %193, label %194, label %201

194:                                              ; preds = %191
  %195 = load i32*, i32** %5, align 8
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 0
  %199 = call i32 @name_p(i32* %195, %struct.TYPE_10__* %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %212, label %201

201:                                              ; preds = %194, %191
  %202 = load i32, i32* %9, align 4
  %203 = icmp eq i32 %202, 132
  br i1 %203, label %212, label %204

204:                                              ; preds = %201
  %205 = load i32, i32* %9, align 4
  %206 = load i32, i32* @CPP_CHAR, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %212, label %208

208:                                              ; preds = %204
  %209 = load i32, i32* %9, align 4
  %210 = load i32, i32* @CPP_STRING, align 4
  %211 = icmp eq i32 %209, %210
  br label %212

212:                                              ; preds = %208, %204, %201, %194
  %213 = phi i1 [ true, %204 ], [ true, %201 ], [ true, %194 ], [ %211, %208 ]
  %214 = zext i1 %213 to i32
  store i32 %214, i32* %4, align 4
  br label %280

215:                                              ; preds = %80
  %216 = load i32, i32* %9, align 4
  %217 = icmp eq i32 %216, 131
  br i1 %217, label %233, label %218

218:                                              ; preds = %215
  %219 = load i32, i32* %9, align 4
  %220 = icmp eq i32 %219, 132
  br i1 %220, label %233, label %221

221:                                              ; preds = %218
  %222 = load i8, i8* %10, align 1
  %223 = sext i8 %222 to i32
  %224 = icmp eq i32 %223, 46
  br i1 %224, label %233, label %225

225:                                              ; preds = %221
  %226 = load i8, i8* %10, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp eq i32 %227, 43
  br i1 %228, label %233, label %229

229:                                              ; preds = %225
  %230 = load i8, i8* %10, align 1
  %231 = sext i8 %230 to i32
  %232 = icmp eq i32 %231, 45
  br label %233

233:                                              ; preds = %229, %225, %221, %218, %215
  %234 = phi i1 [ true, %225 ], [ true, %221 ], [ true, %218 ], [ true, %215 ], [ %232, %229 ]
  %235 = zext i1 %234 to i32
  store i32 %235, i32* %4, align 4
  br label %280

236:                                              ; preds = %80
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 0
  %241 = load i8*, i8** %240, align 8
  %242 = getelementptr inbounds i8, i8* %241, i64 0
  %243 = load i8, i8* %242, align 1
  %244 = sext i8 %243 to i32
  %245 = icmp eq i32 %244, 92
  br i1 %245, label %246, label %249

246:                                              ; preds = %236
  %247 = load i32, i32* %9, align 4
  %248 = icmp eq i32 %247, 132
  br i1 %248, label %275, label %249

249:                                              ; preds = %246, %236
  %250 = load i32*, i32** %5, align 8
  %251 = load i32, i32* @objc, align 4
  %252 = call i32 @CPP_OPTION(i32* %250, i32 %251)
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %273

254:                                              ; preds = %249
  %255 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i32 0, i32 0
  %259 = load i8*, i8** %258, align 8
  %260 = getelementptr inbounds i8, i8* %259, i64 0
  %261 = load i8, i8* %260, align 1
  %262 = sext i8 %261 to i32
  %263 = icmp eq i32 %262, 64
  br i1 %263, label %264, label %273

264:                                              ; preds = %254
  %265 = load i32, i32* %9, align 4
  %266 = icmp eq i32 %265, 132
  br i1 %266, label %271, label %267

267:                                              ; preds = %264
  %268 = load i32, i32* %9, align 4
  %269 = load i32, i32* @CPP_STRING, align 4
  %270 = icmp eq i32 %268, %269
  br label %271

271:                                              ; preds = %267, %264
  %272 = phi i1 [ true, %264 ], [ %270, %267 ]
  br label %273

273:                                              ; preds = %271, %254, %249
  %274 = phi i1 [ false, %254 ], [ false, %249 ], [ %272, %271 ]
  br label %275

275:                                              ; preds = %273, %246
  %276 = phi i1 [ true, %246 ], [ %274, %273 ]
  %277 = zext i1 %276 to i32
  store i32 %277, i32* %4, align 4
  br label %280

278:                                              ; preds = %80
  br label %279

279:                                              ; preds = %278
  store i32 0, i32* %4, align 4
  br label %280

280:                                              ; preds = %279, %275, %233, %212, %188, %177, %161, %158, %145, %140, %137, %126, %115, %102, %99, %82, %79
  %281 = load i32, i32* %4, align 4
  ret i32 %281
}

declare dso_local i32 @name_p(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @CPP_OPTION(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
