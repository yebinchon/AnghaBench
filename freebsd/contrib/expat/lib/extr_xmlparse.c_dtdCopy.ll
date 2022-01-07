; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/expat/lib/extr_xmlparse.c_dtdCopy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/expat/lib/extr_xmlparse.c_dtdCopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i64 (i32)* }
%struct.TYPE_15__ = type { i32*, %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_14__*, %struct.TYPE_11__*, %struct.TYPE_15__*, i32* }
%struct.TYPE_14__ = type { i32*, i32, %struct.TYPE_15__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_10__*)* @dtdCopy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtdCopy(i32 %0, %struct.TYPE_13__* %1, %struct.TYPE_13__* %2, %struct.TYPE_10__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_12__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_12__*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %9, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 14
  %22 = call i32 @hashTableIterInit(i32* %10, i32* %21)
  br label %23

23:                                               ; preds = %48, %4
  %24 = call i64 @hashTableIterNext(i32* %10)
  %25 = inttoptr i64 %24 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %12, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %27 = icmp ne %struct.TYPE_11__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %49

29:                                               ; preds = %23
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 11
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i8* @poolCopyString(i32* %31, i32* %34)
  %36 = bitcast i8* %35 to i32*
  store i32* %36, i32** %11, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %385

40:                                               ; preds = %29
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 14
  %44 = load i32*, i32** %11, align 8
  %45 = call i64 @lookup(i32 %41, i32* %43, i32* %44, i32 8)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %385

48:                                               ; preds = %40
  br label %23

49:                                               ; preds = %28
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 13
  %52 = call i32 @hashTableIterInit(i32* %10, i32* %51)
  br label %53

53:                                               ; preds = %130, %49
  %54 = call i64 @hashTableIterNext(i32* %10)
  %55 = inttoptr i64 %54 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %55, %struct.TYPE_15__** %15, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %57 = icmp ne %struct.TYPE_15__* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  br label %131

59:                                               ; preds = %53
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 11
  %62 = call i32 @XML_T(i8 signext 0)
  %63 = call i32 @poolAppendChar(i32* %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  br label %385

66:                                               ; preds = %59
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 11
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i8* @poolCopyString(i32* %68, i32* %71)
  %73 = bitcast i8* %72 to i32*
  store i32* %73, i32** %14, align 8
  %74 = load i32*, i32** %14, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %66
  store i32 0, i32* %5, align 4
  br label %385

77:                                               ; preds = %66
  %78 = load i32*, i32** %14, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %14, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 13
  %83 = load i32*, i32** %14, align 8
  %84 = call i64 @lookup(i32 %80, i32* %82, i32* %83, i32 24)
  %85 = inttoptr i64 %84 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %85, %struct.TYPE_15__** %13, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %87 = icmp ne %struct.TYPE_15__* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %77
  store i32 0, i32* %5, align 4
  br label %385

89:                                               ; preds = %77
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 4
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = icmp ne %struct.TYPE_11__* %97, null
  br i1 %98, label %99, label %130

99:                                               ; preds = %89
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 16
  %110 = icmp eq %struct.TYPE_11__* %107, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %99
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 16
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 1
  store %struct.TYPE_11__* %113, %struct.TYPE_11__** %115, align 8
  br label %129

116:                                              ; preds = %99
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 14
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = call i64 @lookup(i32 %117, i32* %119, i32* %124, i32 0)
  %126 = inttoptr i64 %125 to %struct.TYPE_11__*
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 1
  store %struct.TYPE_11__* %126, %struct.TYPE_11__** %128, align 8
  br label %129

129:                                              ; preds = %116, %111
  br label %130

130:                                              ; preds = %129, %89
  br label %53

131:                                              ; preds = %58
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 15
  %134 = call i32 @hashTableIterInit(i32* %10, i32* %133)
  br label %135

135:                                              ; preds = %327, %131
  %136 = call i64 @hashTableIterNext(i32* %10)
  %137 = inttoptr i64 %136 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %137, %struct.TYPE_12__** %19, align 8
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %139 = icmp ne %struct.TYPE_12__* %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %135
  br label %328

141:                                              ; preds = %135
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 11
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 5
  %146 = load i32*, i32** %145, align 8
  %147 = call i8* @poolCopyString(i32* %143, i32* %146)
  %148 = bitcast i8* %147 to i32*
  store i32* %148, i32** %18, align 8
  %149 = load i32*, i32** %18, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %152, label %151

151:                                              ; preds = %141
  store i32 0, i32* %5, align 4
  br label %385

152:                                              ; preds = %141
  %153 = load i32, i32* %6, align 4
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 15
  %156 = load i32*, i32** %18, align 8
  %157 = call i64 @lookup(i32 %153, i32* %155, i32* %156, i32 40)
  %158 = inttoptr i64 %157 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %158, %struct.TYPE_12__** %17, align 8
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %160 = icmp ne %struct.TYPE_12__* %159, null
  br i1 %160, label %162, label %161

161:                                              ; preds = %152
  store i32 0, i32* %5, align 4
  br label %385

162:                                              ; preds = %152
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %187

167:                                              ; preds = %162
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = load i64 (i32)*, i64 (i32)** %169, align 8
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = sext i32 %173 to i64
  %175 = mul i64 %174, 24
  %176 = trunc i64 %175 to i32
  %177 = call i64 %170(i32 %176)
  %178 = inttoptr i64 %177 to %struct.TYPE_14__*
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 2
  store %struct.TYPE_14__* %178, %struct.TYPE_14__** %180, align 8
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 2
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %182, align 8
  %184 = icmp ne %struct.TYPE_14__* %183, null
  br i1 %184, label %186, label %185

185:                                              ; preds = %167
  store i32 0, i32* %5, align 4
  br label %385

186:                                              ; preds = %167
  br label %187

187:                                              ; preds = %186, %162
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 4
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %189, align 8
  %191 = icmp ne %struct.TYPE_15__* %190, null
  br i1 %191, label %192, label %205

192:                                              ; preds = %187
  %193 = load i32, i32* %6, align 4
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 13
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 4
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = call i64 @lookup(i32 %193, i32* %195, i32* %200, i32 0)
  %202 = inttoptr i64 %201 to %struct.TYPE_15__*
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 4
  store %struct.TYPE_15__* %202, %struct.TYPE_15__** %204, align 8
  br label %205

205:                                              ; preds = %192, %187
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 8
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 1
  store i32 %208, i32* %212, align 4
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 3
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %214, align 8
  %216 = icmp ne %struct.TYPE_11__* %215, null
  br i1 %216, label %217, label %230

217:                                              ; preds = %205
  %218 = load i32, i32* %6, align 4
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 14
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 3
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 0
  %225 = load i32*, i32** %224, align 8
  %226 = call i64 @lookup(i32 %218, i32* %220, i32* %225, i32 0)
  %227 = inttoptr i64 %226 to %struct.TYPE_11__*
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 3
  store %struct.TYPE_11__* %227, %struct.TYPE_11__** %229, align 8
  br label %230

230:                                              ; preds = %217, %205
  store i32 0, i32* %16, align 4
  br label %231

231:                                              ; preds = %324, %230
  %232 = load i32, i32* %16, align 4
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = icmp slt i32 %232, %235
  br i1 %236, label %237, label %327

237:                                              ; preds = %231
  %238 = load i32, i32* %6, align 4
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 13
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 2
  %243 = load %struct.TYPE_14__*, %struct.TYPE_14__** %242, align 8
  %244 = load i32, i32* %16, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 2
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = call i64 @lookup(i32 %238, i32* %240, i32* %250, i32 0)
  %252 = inttoptr i64 %251 to %struct.TYPE_15__*
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 2
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %254, align 8
  %256 = load i32, i32* %16, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %258, i32 0, i32 2
  store %struct.TYPE_15__* %252, %struct.TYPE_15__** %259, align 8
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 2
  %262 = load %struct.TYPE_14__*, %struct.TYPE_14__** %261, align 8
  %263 = load i32, i32* %16, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 2
  %270 = load %struct.TYPE_14__*, %struct.TYPE_14__** %269, align 8
  %271 = load i32, i32* %16, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 1
  store i32 %267, i32* %274, align 8
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 2
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %276, align 8
  %278 = load i32, i32* %16, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i32 0, i32 0
  %282 = load i32*, i32** %281, align 8
  %283 = icmp ne i32* %282, null
  br i1 %283, label %284, label %315

284:                                              ; preds = %237
  %285 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i32 0, i32 11
  %287 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 2
  %289 = load %struct.TYPE_14__*, %struct.TYPE_14__** %288, align 8
  %290 = load i32, i32* %16, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %292, i32 0, i32 0
  %294 = load i32*, i32** %293, align 8
  %295 = call i8* @poolCopyString(i32* %286, i32* %294)
  %296 = bitcast i8* %295 to i32*
  %297 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %298 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %297, i32 0, i32 2
  %299 = load %struct.TYPE_14__*, %struct.TYPE_14__** %298, align 8
  %300 = load i32, i32* %16, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %299, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %302, i32 0, i32 0
  store i32* %296, i32** %303, align 8
  %304 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %305 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %304, i32 0, i32 2
  %306 = load %struct.TYPE_14__*, %struct.TYPE_14__** %305, align 8
  %307 = load i32, i32* %16, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %306, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %309, i32 0, i32 0
  %311 = load i32*, i32** %310, align 8
  %312 = icmp ne i32* %311, null
  br i1 %312, label %314, label %313

313:                                              ; preds = %284
  store i32 0, i32* %5, align 4
  br label %385

314:                                              ; preds = %284
  br label %323

315:                                              ; preds = %237
  %316 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %317 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %316, i32 0, i32 2
  %318 = load %struct.TYPE_14__*, %struct.TYPE_14__** %317, align 8
  %319 = load i32, i32* %16, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %318, i64 %320
  %322 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %321, i32 0, i32 0
  store i32* null, i32** %322, align 8
  br label %323

323:                                              ; preds = %315, %314
  br label %324

324:                                              ; preds = %323
  %325 = load i32, i32* %16, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %16, align 4
  br label %231

327:                                              ; preds = %231
  br label %135

328:                                              ; preds = %140
  %329 = load i32, i32* %6, align 4
  %330 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %331 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %330, i32 0, i32 12
  %332 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %333 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %332, i32 0, i32 11
  %334 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %335 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %334, i32 0, i32 12
  %336 = call i32 @copyEntityTable(i32 %329, i32* %331, i32* %333, i32* %335)
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %339, label %338

338:                                              ; preds = %328
  store i32 0, i32* %5, align 4
  br label %385

339:                                              ; preds = %328
  %340 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %341 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %340, i32 0, i32 8
  %342 = load i32, i32* %341, align 8
  %343 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %344 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %343, i32 0, i32 8
  store i32 %342, i32* %344, align 8
  %345 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %346 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %345, i32 0, i32 7
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %349 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %348, i32 0, i32 7
  store i32 %347, i32* %349, align 4
  %350 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %351 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %350, i32 0, i32 6
  %352 = load i32, i32* %351, align 8
  %353 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %354 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %353, i32 0, i32 6
  store i32 %352, i32* %354, align 8
  %355 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %356 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %355, i32 0, i32 5
  %357 = load i32, i32* %356, align 4
  %358 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %359 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %358, i32 0, i32 5
  store i32 %357, i32* %359, align 4
  %360 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %361 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %360, i32 0, i32 4
  %362 = load i32, i32* %361, align 8
  %363 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %364 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %363, i32 0, i32 4
  store i32 %362, i32* %364, align 8
  %365 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %366 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %365, i32 0, i32 3
  %367 = load i32, i32* %366, align 4
  %368 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %369 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %368, i32 0, i32 3
  store i32 %367, i32* %369, align 4
  %370 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %371 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %370, i32 0, i32 2
  %372 = load i32, i32* %371, align 8
  %373 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %374 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %373, i32 0, i32 2
  store i32 %372, i32* %374, align 8
  %375 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %376 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 4
  %378 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %379 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %378, i32 0, i32 1
  store i32 %377, i32* %379, align 4
  %380 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %381 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 8
  %383 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %384 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %383, i32 0, i32 0
  store i32 %382, i32* %384, align 8
  store i32 1, i32* %5, align 4
  br label %385

385:                                              ; preds = %339, %338, %313, %185, %161, %151, %88, %76, %65, %47, %39
  %386 = load i32, i32* %5, align 4
  ret i32 %386
}

declare dso_local i32 @hashTableIterInit(i32*, i32*) #1

declare dso_local i64 @hashTableIterNext(i32*) #1

declare dso_local i8* @poolCopyString(i32*, i32*) #1

declare dso_local i64 @lookup(i32, i32*, i32*, i32) #1

declare dso_local i32 @poolAppendChar(i32*, i32) #1

declare dso_local i32 @XML_T(i8 signext) #1

declare dso_local i32 @copyEntityTable(i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
