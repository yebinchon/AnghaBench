; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_set_rec_codec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_set_rec_codec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i32*, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@ixj_convert_loaded = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32)* @set_rec_codec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_rec_codec(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %255 [
    i32 138, label %10
    i32 139, label %26
    i32 130, label %42
    i32 131, label %61
    i32 132, label %77
    i32 137, label %93
    i32 136, label %106
    i32 135, label %138
    i32 129, label %170
    i32 140, label %187
    i32 134, label %204
    i32 133, label %221
    i32 128, label %238
  ]

10:                                               ; preds = %2
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 18
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = load i32, i32* @ixj_convert_loaded, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16, %10
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  store i32 12, i32* %21, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 2
  store i32 0, i32* %23, align 8
  br label %25

24:                                               ; preds = %16
  store i32 1, i32* %5, align 4
  br label %25

25:                                               ; preds = %24, %19
  br label %268

26:                                               ; preds = %2
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 18
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ixj_convert_loaded, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32, %26
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  store i32 10, i32* %37, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 2
  store i32 0, i32* %39, align 8
  br label %41

40:                                               ; preds = %32
  store i32 1, i32* %5, align 4
  br label %41

41:                                               ; preds = %40, %35
  br label %268

42:                                               ; preds = %2
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 7
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 32
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 6
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %48, %42
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  store i32 16, i32* %56, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  store i32 0, i32* %58, align 8
  br label %60

59:                                               ; preds = %48
  store i32 1, i32* %5, align 4
  br label %60

60:                                               ; preds = %59, %54
  br label %268

61:                                               ; preds = %2
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 18
  br i1 %66, label %70, label %67

67:                                               ; preds = %61
  %68 = load i32, i32* @ixj_convert_loaded, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67, %61
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  store i32 9, i32* %72, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 2
  store i32 0, i32* %74, align 8
  br label %76

75:                                               ; preds = %67
  store i32 1, i32* %5, align 4
  br label %76

76:                                               ; preds = %75, %70
  br label %268

77:                                               ; preds = %2
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 18
  br i1 %82, label %86, label %83

83:                                               ; preds = %77
  %84 = load i32, i32* @ixj_convert_loaded, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83, %77
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  store i32 8, i32* %88, align 4
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 2
  store i32 0, i32* %90, align 8
  br label %92

91:                                               ; preds = %83
  store i32 1, i32* %5, align 4
  br label %92

92:                                               ; preds = %91, %86
  br label %268

93:                                               ; preds = %2
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 7
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 32
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  store i32 48, i32* %101, align 4
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 2
  store i32 0, i32* %103, align 8
  br label %105

104:                                              ; preds = %93
  store i32 1, i32* %5, align 4
  br label %105

105:                                              ; preds = %104, %99
  br label %268

106:                                              ; preds = %2
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 7
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 32
  br i1 %111, label %112, label %136

112:                                              ; preds = %106
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 6
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %112
  store i32 1, i32* %5, align 4
  br label %268

119:                                              ; preds = %112
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 5
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  switch i32 %123, label %130 [
    i32 160, label %124
    i32 80, label %127
  ]

124:                                              ; preds = %119
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  store i32 10, i32* %126, align 4
  br label %133

127:                                              ; preds = %119
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  store i32 5, i32* %129, align 4
  br label %133

130:                                              ; preds = %119
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  store i32 15, i32* %132, align 4
  br label %133

133:                                              ; preds = %130, %127, %124
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 2
  store i32 0, i32* %135, align 8
  br label %137

136:                                              ; preds = %106
  store i32 1, i32* %5, align 4
  br label %137

137:                                              ; preds = %136, %133
  br label %268

138:                                              ; preds = %2
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 7
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 32
  br i1 %143, label %144, label %168

144:                                              ; preds = %138
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 6
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %144
  store i32 1, i32* %5, align 4
  br label %268

151:                                              ; preds = %144
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 5
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  switch i32 %155, label %162 [
    i32 160, label %156
    i32 80, label %159
  ]

156:                                              ; preds = %151
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 1
  store i32 12, i32* %158, align 4
  br label %165

159:                                              ; preds = %151
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 1
  store i32 6, i32* %161, align 4
  br label %165

162:                                              ; preds = %151
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 1
  store i32 18, i32* %164, align 4
  br label %165

165:                                              ; preds = %162, %159, %156
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 2
  store i32 0, i32* %167, align 8
  br label %169

168:                                              ; preds = %138
  store i32 1, i32* %5, align 4
  br label %169

169:                                              ; preds = %168, %165
  br label %268

170:                                              ; preds = %2
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 5
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  switch i32 %174, label %181 [
    i32 160, label %175
    i32 80, label %178
  ]

175:                                              ; preds = %170
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 1
  store i32 80, i32* %177, align 4
  br label %184

178:                                              ; preds = %170
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 1
  store i32 40, i32* %180, align 4
  br label %184

181:                                              ; preds = %170
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 1
  store i32 120, i32* %183, align 4
  br label %184

184:                                              ; preds = %181, %178, %175
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 2
  store i32 4, i32* %186, align 8
  br label %268

187:                                              ; preds = %2
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 5
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  switch i32 %191, label %198 [
    i32 160, label %192
    i32 80, label %195
  ]

192:                                              ; preds = %187
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 1
  store i32 80, i32* %194, align 4
  br label %201

195:                                              ; preds = %187
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 1
  store i32 40, i32* %197, align 4
  br label %201

198:                                              ; preds = %187
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 1
  store i32 120, i32* %200, align 4
  br label %201

201:                                              ; preds = %198, %195, %192
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 2
  store i32 4, i32* %203, align 8
  br label %268

204:                                              ; preds = %2
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 5
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  switch i32 %208, label %215 [
    i32 160, label %209
    i32 80, label %212
  ]

209:                                              ; preds = %204
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 1
  store i32 160, i32* %211, align 4
  br label %218

212:                                              ; preds = %204
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 1
  store i32 80, i32* %214, align 4
  br label %218

215:                                              ; preds = %204
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 1
  store i32 240, i32* %217, align 4
  br label %218

218:                                              ; preds = %215, %212, %209
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 2
  store i32 5, i32* %220, align 8
  br label %268

221:                                              ; preds = %2
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 5
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  switch i32 %225, label %232 [
    i32 160, label %226
    i32 80, label %229
  ]

226:                                              ; preds = %221
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 1
  store i32 80, i32* %228, align 4
  br label %235

229:                                              ; preds = %221
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 1
  store i32 40, i32* %231, align 4
  br label %235

232:                                              ; preds = %221
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 1
  store i32 120, i32* %234, align 4
  br label %235

235:                                              ; preds = %232, %229, %226
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 2
  store i32 6, i32* %237, align 8
  br label %268

238:                                              ; preds = %2
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 5
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  switch i32 %242, label %249 [
    i32 160, label %243
    i32 80, label %246
  ]

243:                                              ; preds = %238
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 1
  store i32 80, i32* %245, align 4
  br label %252

246:                                              ; preds = %238
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 1
  store i32 40, i32* %248, align 4
  br label %252

249:                                              ; preds = %238
  %250 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 1
  store i32 120, i32* %251, align 4
  br label %252

252:                                              ; preds = %249, %246, %243
  %253 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 2
  store i32 7, i32* %254, align 8
  br label %268

255:                                              ; preds = %2
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 4
  %258 = load i32*, i32** %257, align 8
  %259 = call i32 @kfree(i32* %258)
  %260 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 1
  store i32 0, i32* %261, align 4
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 2
  store i32 -1, i32* %263, align 8
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 4
  store i32* null, i32** %265, align 8
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i32 0, i32 3
  store i32 0, i32* %267, align 4
  store i32 1, i32* %5, align 4
  br label %268

268:                                              ; preds = %255, %252, %235, %218, %201, %184, %169, %150, %137, %118, %105, %92, %76, %60, %41, %25
  %269 = load i32, i32* %5, align 4
  ret i32 %269
}

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
