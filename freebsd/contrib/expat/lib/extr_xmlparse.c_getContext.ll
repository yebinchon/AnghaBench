; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/expat/lib/extr_xmlparse.c_getContext.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/expat/lib/extr_xmlparse.c_getContext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_17__, i64, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i64* }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i64* }
%struct.TYPE_14__ = type { %struct.TYPE_12__*, i64* }
%struct.TYPE_12__ = type { i32, i64* }
%struct.TYPE_15__ = type { i64*, i32 }

@XML_FALSE = common dso_local global i64 0, align 8
@ASCII_EQUALS = common dso_local global i8 0, align 1
@XML_TRUE = common dso_local global i64 0, align 8
@CONTEXT_SEP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (%struct.TYPE_13__*)* @getContext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @getContext(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %4, align 8
  %18 = load i64, i64* @XML_FALSE, align 8
  store i64 %18, i64* %6, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = icmp ne %struct.TYPE_10__* %22, null
  br i1 %23, label %24, label %73

24:                                               ; preds = %1
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i8, i8* @ASCII_EQUALS, align 1
  %28 = call i64 @XML_T(i8 signext %27)
  %29 = call i32 @poolAppendChar(%struct.TYPE_17__* %26, i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  store i64* null, i64** %2, align 8
  br label %226

32:                                               ; preds = %24
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %8, align 4
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %43, %32
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %68, %46
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %71

51:                                               ; preds = %47
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @poolAppendChar(%struct.TYPE_17__* %53, i64 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %51
  store i64* null, i64** %2, align 8
  br label %226

67:                                               ; preds = %51
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %47

71:                                               ; preds = %47
  %72 = load i64, i64* @XML_TRUE, align 8
  store i64 %72, i64* %6, align 8
  br label %73

73:                                               ; preds = %71, %1
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 1
  %76 = call i32 @hashTableIterInit(i32* %5, i32* %75)
  br label %77

77:                                               ; preds = %164, %88, %73
  %78 = call i64 @hashTableIterNext(i32* %5)
  %79 = inttoptr i64 %78 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %79, %struct.TYPE_14__** %12, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %81 = icmp ne %struct.TYPE_14__* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  br label %166

83:                                               ; preds = %77
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = icmp ne %struct.TYPE_12__* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  br label %77

89:                                               ; preds = %83
  %90 = load i64, i64* %6, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load i64, i64* @CONTEXT_SEP, align 8
  %96 = call i32 @poolAppendChar(%struct.TYPE_17__* %94, i64 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %92
  store i64* null, i64** %2, align 8
  br label %226

99:                                               ; preds = %92, %89
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  %102 = load i64*, i64** %101, align 8
  store i64* %102, i64** %11, align 8
  br label %103

103:                                              ; preds = %116, %99
  %104 = load i64*, i64** %11, align 8
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %103
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = load i64*, i64** %11, align 8
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @poolAppendChar(%struct.TYPE_17__* %109, i64 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %107
  store i64* null, i64** %2, align 8
  br label %226

115:                                              ; preds = %107
  br label %116

116:                                              ; preds = %115
  %117 = load i64*, i64** %11, align 8
  %118 = getelementptr inbounds i64, i64* %117, i32 1
  store i64* %118, i64** %11, align 8
  br label %103

119:                                              ; preds = %103
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = load i8, i8* @ASCII_EQUALS, align 1
  %123 = call i64 @XML_T(i8 signext %122)
  %124 = call i32 @poolAppendChar(%struct.TYPE_17__* %121, i64 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %119
  store i64* null, i64** %2, align 8
  br label %226

127:                                              ; preds = %119
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  store i32 %132, i32* %10, align 4
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %127
  %138 = load i32, i32* %10, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %10, align 4
  br label %140

140:                                              ; preds = %137, %127
  store i32 0, i32* %9, align 4
  br label %141

141:                                              ; preds = %161, %140
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* %10, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %164

145:                                              ; preds = %141
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  %152 = load i64*, i64** %151, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i64, i64* %152, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @poolAppendChar(%struct.TYPE_17__* %147, i64 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %145
  store i64* null, i64** %2, align 8
  br label %226

160:                                              ; preds = %145
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %9, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %9, align 4
  br label %141

164:                                              ; preds = %141
  %165 = load i64, i64* @XML_TRUE, align 8
  store i64 %165, i64* %6, align 8
  br label %77

166:                                              ; preds = %82
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 0
  %169 = call i32 @hashTableIterInit(i32* %5, i32* %168)
  br label %170

170:                                              ; preds = %212, %181, %166
  %171 = call i64 @hashTableIterNext(i32* %5)
  %172 = inttoptr i64 %171 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %172, %struct.TYPE_15__** %14, align 8
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %174 = icmp ne %struct.TYPE_15__* %173, null
  br i1 %174, label %176, label %175

175:                                              ; preds = %170
  br label %214

176:                                              ; preds = %170
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %176
  br label %170

182:                                              ; preds = %176
  %183 = load i64, i64* %6, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %182
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 0
  %188 = load i64, i64* @CONTEXT_SEP, align 8
  %189 = call i32 @poolAppendChar(%struct.TYPE_17__* %187, i64 %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %185
  store i64* null, i64** %2, align 8
  br label %226

192:                                              ; preds = %185, %182
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 0
  %195 = load i64*, i64** %194, align 8
  store i64* %195, i64** %13, align 8
  br label %196

196:                                              ; preds = %209, %192
  %197 = load i64*, i64** %13, align 8
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %212

200:                                              ; preds = %196
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 0
  %203 = load i64*, i64** %13, align 8
  %204 = load i64, i64* %203, align 8
  %205 = call i32 @poolAppendChar(%struct.TYPE_17__* %202, i64 %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %208, label %207

207:                                              ; preds = %200
  store i64* null, i64** %2, align 8
  br label %226

208:                                              ; preds = %200
  br label %209

209:                                              ; preds = %208
  %210 = load i64*, i64** %13, align 8
  %211 = getelementptr inbounds i64, i64* %210, i32 1
  store i64* %211, i64** %13, align 8
  br label %196

212:                                              ; preds = %196
  %213 = load i64, i64* @XML_TRUE, align 8
  store i64 %213, i64* %6, align 8
  br label %170

214:                                              ; preds = %175
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 0
  %217 = call i64 @XML_T(i8 signext 0)
  %218 = call i32 @poolAppendChar(%struct.TYPE_17__* %216, i64 %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %221, label %220

220:                                              ; preds = %214
  store i64* null, i64** %2, align 8
  br label %226

221:                                              ; preds = %214
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i32 0, i32 0
  %225 = load i64*, i64** %224, align 8
  store i64* %225, i64** %2, align 8
  br label %226

226:                                              ; preds = %221, %220, %207, %191, %159, %126, %114, %98, %66, %31
  %227 = load i64*, i64** %2, align 8
  ret i64* %227
}

declare dso_local i32 @poolAppendChar(%struct.TYPE_17__*, i64) #1

declare dso_local i64 @XML_T(i8 signext) #1

declare dso_local i32 @hashTableIterInit(i32*, i32*) #1

declare dso_local i64 @hashTableIterNext(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
