; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/extr_browser.c_ui_browser__run.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/extr_browser.c_ui_browser__run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_browser = type { i32, i32, i32, i32, i32, i32 (%struct.ui_browser*, i32, i32)*, i64, i32, i32 }

@ui__lock = common dso_local global i32 0, align 4
@K_RESIZE = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ui_browser__run(%struct.ui_browser* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ui_browser*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ui_browser* %0, %struct.ui_browser** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %9

9:                                                ; preds = %2, %24, %68, %281
  %10 = call i32 @pthread_mutex_lock(i32* @ui__lock)
  %11 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %12 = call i32 @__ui_browser__refresh(%struct.ui_browser* %11)
  store i32 %12, i32* %6, align 4
  %13 = call i32 (...) @SLsmg_refresh()
  %14 = call i32 @pthread_mutex_unlock(i32* @ui__lock)
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  br label %282

18:                                               ; preds = %9
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @ui__getch(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @K_RESIZE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %18
  %25 = call i32 @ui__refresh_dimensions(i32 0)
  %26 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %27 = call i32 @ui_browser__refresh_dimensions(%struct.ui_browser* %26)
  %28 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %29 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %30 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %29, i32 0, i32 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @__ui_browser__show_title(%struct.ui_browser* %28, i32 %31)
  %33 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %34 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ui_helpline__puts(i32 %35)
  br label %9

37:                                               ; preds = %18
  %38 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %39 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %38, i32 0, i32 6
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %73

42:                                               ; preds = %37
  %43 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %44 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %73, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 133
  br i1 %49, label %68, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 128
  br i1 %52, label %68, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, 130
  br i1 %55, label %68, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %57, 129
  br i1 %58, label %68, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %60, 131
  br i1 %61, label %68, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %7, align 4
  %64 = icmp eq i32 %63, 132
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %7, align 4
  %67 = icmp eq i32 %66, 32
  br i1 %67, label %68, label %71

68:                                               ; preds = %65, %62, %59, %56, %53, %50, %47
  %69 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %70 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  br label %9

71:                                               ; preds = %65
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %3, align 4
  br label %283

73:                                               ; preds = %42, %37
  %74 = load i32, i32* %7, align 4
  switch i32 %74, label %279 [
    i32 133, label %75
    i32 128, label %113
    i32 130, label %143
    i32 32, label %143
    i32 129, label %198
    i32 131, label %239
    i32 132, label %242
  ]

75:                                               ; preds = %73
  %76 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %77 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %80 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = sub nsw i32 %81, 1
  %83 = icmp eq i32 %78, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  br label %281

85:                                               ; preds = %75
  %86 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %87 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  %90 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %91 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %94 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %97 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %95, %98
  %100 = icmp eq i32 %92, %99
  br i1 %100, label %101, label %112

101:                                              ; preds = %85
  %102 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %103 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  %106 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %107 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %106, i32 0, i32 5
  %108 = load i32 (%struct.ui_browser*, i32, i32)*, i32 (%struct.ui_browser*, i32, i32)** %107, align 8
  %109 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %110 = load i32, i32* @SEEK_CUR, align 4
  %111 = call i32 %108(%struct.ui_browser* %109, i32 1, i32 %110)
  br label %112

112:                                              ; preds = %101, %85
  br label %281

113:                                              ; preds = %73
  %114 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %115 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %281

119:                                              ; preds = %113
  %120 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %121 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %121, align 4
  %124 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %125 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %128 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %142

131:                                              ; preds = %119
  %132 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %133 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %133, align 4
  %136 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %137 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %136, i32 0, i32 5
  %138 = load i32 (%struct.ui_browser*, i32, i32)*, i32 (%struct.ui_browser*, i32, i32)** %137, align 8
  %139 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %140 = load i32, i32* @SEEK_CUR, align 4
  %141 = call i32 %138(%struct.ui_browser* %139, i32 -1, i32 %140)
  br label %142

142:                                              ; preds = %131, %119
  br label %281

143:                                              ; preds = %73, %73
  %144 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %145 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %148 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = add nsw i32 %146, %149
  %151 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %152 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = sub nsw i32 %153, 1
  %155 = icmp sgt i32 %150, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %143
  br label %281

157:                                              ; preds = %143
  %158 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %159 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  store i32 %160, i32* %8, align 4
  %161 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %162 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %8, align 4
  %165 = add nsw i32 %163, %164
  %166 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %167 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = sub nsw i32 %168, 1
  %170 = icmp sgt i32 %165, %169
  br i1 %170, label %171, label %180

171:                                              ; preds = %157
  %172 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %173 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = sub nsw i32 %174, 1
  %176 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %177 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = sub nsw i32 %175, %178
  store i32 %179, i32* %8, align 4
  br label %180

180:                                              ; preds = %171, %157
  %181 = load i32, i32* %8, align 4
  %182 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %183 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %184, %181
  store i32 %185, i32* %183, align 4
  %186 = load i32, i32* %8, align 4
  %187 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %188 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %189, %186
  store i32 %190, i32* %188, align 4
  %191 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %192 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %191, i32 0, i32 5
  %193 = load i32 (%struct.ui_browser*, i32, i32)*, i32 (%struct.ui_browser*, i32, i32)** %192, align 8
  %194 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* @SEEK_CUR, align 4
  %197 = call i32 %193(%struct.ui_browser* %194, i32 %195, i32 %196)
  br label %281

198:                                              ; preds = %73
  %199 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %200 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %198
  br label %281

204:                                              ; preds = %198
  %205 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %206 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %209 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 8
  %211 = icmp slt i32 %207, %210
  br i1 %211, label %212, label %216

212:                                              ; preds = %204
  %213 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %214 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  store i32 %215, i32* %8, align 4
  br label %220

216:                                              ; preds = %204
  %217 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %218 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 8
  store i32 %219, i32* %8, align 4
  br label %220

220:                                              ; preds = %216, %212
  %221 = load i32, i32* %8, align 4
  %222 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %223 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = sub nsw i32 %224, %221
  store i32 %225, i32* %223, align 4
  %226 = load i32, i32* %8, align 4
  %227 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %228 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 4
  %230 = sub nsw i32 %229, %226
  store i32 %230, i32* %228, align 4
  %231 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %232 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %231, i32 0, i32 5
  %233 = load i32 (%struct.ui_browser*, i32, i32)*, i32 (%struct.ui_browser*, i32, i32)** %232, align 8
  %234 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %235 = load i32, i32* %8, align 4
  %236 = sub nsw i32 0, %235
  %237 = load i32, i32* @SEEK_CUR, align 4
  %238 = call i32 %233(%struct.ui_browser* %234, i32 %236, i32 %237)
  br label %281

239:                                              ; preds = %73
  %240 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %241 = call i32 @ui_browser__reset_index(%struct.ui_browser* %240)
  br label %281

242:                                              ; preds = %73
  %243 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %244 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %243, i32 0, i32 4
  %245 = load i32, i32* %244, align 8
  %246 = sub nsw i32 %245, 1
  store i32 %246, i32* %8, align 4
  %247 = load i32, i32* %8, align 4
  %248 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %249 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = icmp sge i32 %247, %250
  br i1 %251, label %252, label %257

252:                                              ; preds = %242
  %253 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %254 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = sub nsw i32 %255, 1
  store i32 %256, i32* %8, align 4
  br label %257

257:                                              ; preds = %252, %242
  %258 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %259 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = sub nsw i32 %260, 1
  %262 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %263 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %262, i32 0, i32 1
  store i32 %261, i32* %263, align 4
  %264 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %265 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* %8, align 4
  %268 = sub nsw i32 %266, %267
  %269 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %270 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %269, i32 0, i32 3
  store i32 %268, i32* %270, align 4
  %271 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %272 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %271, i32 0, i32 5
  %273 = load i32 (%struct.ui_browser*, i32, i32)*, i32 (%struct.ui_browser*, i32, i32)** %272, align 8
  %274 = load %struct.ui_browser*, %struct.ui_browser** %4, align 8
  %275 = load i32, i32* %8, align 4
  %276 = sub nsw i32 0, %275
  %277 = load i32, i32* @SEEK_END, align 4
  %278 = call i32 %273(%struct.ui_browser* %274, i32 %276, i32 %277)
  br label %281

279:                                              ; preds = %73
  %280 = load i32, i32* %7, align 4
  store i32 %280, i32* %3, align 4
  br label %283

281:                                              ; preds = %257, %239, %220, %203, %180, %156, %142, %118, %112, %84
  br label %9

282:                                              ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %283

283:                                              ; preds = %282, %279, %71
  %284 = load i32, i32* %3, align 4
  ret i32 %284
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @__ui_browser__refresh(%struct.ui_browser*) #1

declare dso_local i32 @SLsmg_refresh(...) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @ui__getch(i32) #1

declare dso_local i32 @ui__refresh_dimensions(i32) #1

declare dso_local i32 @ui_browser__refresh_dimensions(%struct.ui_browser*) #1

declare dso_local i32 @__ui_browser__show_title(%struct.ui_browser*, i32) #1

declare dso_local i32 @ui_helpline__puts(i32) #1

declare dso_local i32 @ui_browser__reset_index(%struct.ui_browser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
