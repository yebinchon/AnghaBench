; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/expat/lib/extr_xmlparse.c_getAttributeId.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/expat/lib/extr_xmlparse.c_getAttributeId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64*, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i64* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__, i32 }

@ASCII_x = common dso_local global i8 0, align 1
@ASCII_m = common dso_local global i8 0, align 1
@ASCII_l = common dso_local global i8 0, align 1
@ASCII_n = common dso_local global i8 0, align 1
@ASCII_s = common dso_local global i8 0, align 1
@ASCII_COLON = common dso_local global i8 0, align 1
@XML_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (%struct.TYPE_8__*, i32*, i8*, i8*)* @getAttributeId to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @getAttributeId(%struct.TYPE_8__* %0, i32* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %10, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = call i64 @XML_T(i8 signext 0)
  %21 = call i32 @poolAppendChar(i32* %19, i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %226

24:                                               ; preds = %4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32*, i32** %7, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = call i64* @poolStoreString(i32* %26, i32* %27, i8* %28, i8* %29)
  store i64* %30, i64** %12, align 8
  %31 = load i64*, i64** %12, align 8
  %32 = icmp ne i64* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %226

34:                                               ; preds = %24
  %35 = load i64*, i64** %12, align 8
  %36 = getelementptr inbounds i64, i64* %35, i32 1
  store i64* %36, i64** %12, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 3
  %40 = load i64*, i64** %12, align 8
  %41 = call i64 @lookup(%struct.TYPE_8__* %37, i32* %39, i64* %40, i32 24)
  %42 = inttoptr i64 %41 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %42, %struct.TYPE_11__** %11, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %44 = icmp ne %struct.TYPE_11__* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %34
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %226

46:                                               ; preds = %34
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i64*, i64** %12, align 8
  %51 = icmp ne i64* %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = call i32 @poolDiscard(i32* %54)
  br label %224

56:                                               ; preds = %46
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = call i32 @poolFinish(i32* %58)
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %56
  br label %223

65:                                               ; preds = %56
  %66 = load i64*, i64** %12, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  %68 = load i64, i64* %67, align 8
  %69 = load i8, i8* @ASCII_x, align 1
  %70 = call i64 @XML_T(i8 signext %69)
  %71 = icmp eq i64 %68, %70
  br i1 %71, label %72, label %138

72:                                               ; preds = %65
  %73 = load i64*, i64** %12, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 1
  %75 = load i64, i64* %74, align 8
  %76 = load i8, i8* @ASCII_m, align 1
  %77 = call i64 @XML_T(i8 signext %76)
  %78 = icmp eq i64 %75, %77
  br i1 %78, label %79, label %138

79:                                               ; preds = %72
  %80 = load i64*, i64** %12, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 2
  %82 = load i64, i64* %81, align 8
  %83 = load i8, i8* @ASCII_l, align 1
  %84 = call i64 @XML_T(i8 signext %83)
  %85 = icmp eq i64 %82, %84
  br i1 %85, label %86, label %138

86:                                               ; preds = %79
  %87 = load i64*, i64** %12, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 3
  %89 = load i64, i64* %88, align 8
  %90 = load i8, i8* @ASCII_n, align 1
  %91 = call i64 @XML_T(i8 signext %90)
  %92 = icmp eq i64 %89, %91
  br i1 %92, label %93, label %138

93:                                               ; preds = %86
  %94 = load i64*, i64** %12, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 4
  %96 = load i64, i64* %95, align 8
  %97 = load i8, i8* @ASCII_s, align 1
  %98 = call i64 @XML_T(i8 signext %97)
  %99 = icmp eq i64 %96, %98
  br i1 %99, label %100, label %138

100:                                              ; preds = %93
  %101 = load i64*, i64** %12, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 5
  %103 = load i64, i64* %102, align 8
  %104 = call i64 @XML_T(i8 signext 0)
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %113, label %106

106:                                              ; preds = %100
  %107 = load i64*, i64** %12, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 5
  %109 = load i64, i64* %108, align 8
  %110 = load i8, i8* @ASCII_COLON, align 1
  %111 = call i64 @XML_T(i8 signext %110)
  %112 = icmp eq i64 %109, %111
  br i1 %112, label %113, label %138

113:                                              ; preds = %106, %100
  %114 = load i64*, i64** %12, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 5
  %116 = load i64, i64* %115, align 8
  %117 = call i64 @XML_T(i8 signext 0)
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %113
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  store %struct.TYPE_9__* %121, %struct.TYPE_9__** %123, align 8
  br label %134

124:                                              ; preds = %113
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  %128 = load i64*, i64** %12, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 6
  %130 = call i64 @lookup(%struct.TYPE_8__* %125, i32* %127, i64* %129, i32 8)
  %131 = inttoptr i64 %130 to %struct.TYPE_9__*
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 1
  store %struct.TYPE_9__* %131, %struct.TYPE_9__** %133, align 8
  br label %134

134:                                              ; preds = %124, %119
  %135 = load i32, i32* @XML_TRUE, align 4
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  br label %222

138:                                              ; preds = %106, %93, %86, %79, %72, %65
  store i32 0, i32* %13, align 4
  br label %139

139:                                              ; preds = %218, %138
  %140 = load i64*, i64** %12, align 8
  %141 = load i32, i32* %13, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i64, i64* %140, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %221

146:                                              ; preds = %139
  %147 = load i64*, i64** %12, align 8
  %148 = load i32, i32* %13, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %147, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = load i8, i8* @ASCII_COLON, align 1
  %153 = call i64 @XML_T(i8 signext %152)
  %154 = icmp eq i64 %151, %153
  br i1 %154, label %155, label %217

155:                                              ; preds = %146
  store i32 0, i32* %14, align 4
  br label %156

156:                                              ; preds = %172, %155
  %157 = load i32, i32* %14, align 4
  %158 = load i32, i32* %13, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %175

160:                                              ; preds = %156
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = load i64*, i64** %12, align 8
  %164 = load i32, i32* %14, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i64, i64* %163, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @poolAppendChar(i32* %162, i64 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %160
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %226

171:                                              ; preds = %160
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %14, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %14, align 4
  br label %156

175:                                              ; preds = %156
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  %178 = call i64 @XML_T(i8 signext 0)
  %179 = call i32 @poolAppendChar(i32* %177, i64 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %175
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %226

182:                                              ; preds = %175
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 1
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 0
  %188 = call i64* @poolStart(i32* %187)
  %189 = call i64 @lookup(%struct.TYPE_8__* %183, i32* %185, i64* %188, i32 8)
  %190 = inttoptr i64 %189 to %struct.TYPE_9__*
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 1
  store %struct.TYPE_9__* %190, %struct.TYPE_9__** %192, align 8
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %194, align 8
  %196 = icmp ne %struct.TYPE_9__* %195, null
  br i1 %196, label %198, label %197

197:                                              ; preds = %182
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %226

198:                                              ; preds = %182
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 0
  %203 = load i64*, i64** %202, align 8
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 0
  %206 = call i64* @poolStart(i32* %205)
  %207 = icmp eq i64* %203, %206
  br i1 %207, label %208, label %212

208:                                              ; preds = %198
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 0
  %211 = call i32 @poolFinish(i32* %210)
  br label %216

212:                                              ; preds = %198
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 0
  %215 = call i32 @poolDiscard(i32* %214)
  br label %216

216:                                              ; preds = %212, %208
  br label %221

217:                                              ; preds = %146
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %13, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %13, align 4
  br label %139

221:                                              ; preds = %216, %139
  br label %222

222:                                              ; preds = %221, %134
  br label %223

223:                                              ; preds = %222, %64
  br label %224

224:                                              ; preds = %223, %52
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %225, %struct.TYPE_11__** %5, align 8
  br label %226

226:                                              ; preds = %224, %197, %181, %170, %45, %33, %23
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  ret %struct.TYPE_11__* %227
}

declare dso_local i32 @poolAppendChar(i32*, i64) #1

declare dso_local i64 @XML_T(i8 signext) #1

declare dso_local i64* @poolStoreString(i32*, i32*, i8*, i8*) #1

declare dso_local i64 @lookup(%struct.TYPE_8__*, i32*, i64*, i32) #1

declare dso_local i32 @poolDiscard(i32*) #1

declare dso_local i32 @poolFinish(i32*) #1

declare dso_local i64* @poolStart(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
