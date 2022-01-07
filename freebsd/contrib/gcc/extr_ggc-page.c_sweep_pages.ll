; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-page.c_sweep_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-page.c_sweep_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_6__**, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_6__*, %struct.TYPE_6__* }

@NUM_ORDERS = common dso_local global i32 0, align 4
@G = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sweep_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sweep_pages() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  store i32 2, i32* %1, align 4
  br label %9

9:                                                ; preds = %248, %0
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @NUM_ORDERS, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %251

13:                                               ; preds = %9
  %14 = load %struct.TYPE_6__**, %struct.TYPE_6__*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @G, i32 0, i32 3), align 8
  %15 = load i32, i32* %1, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %14, i64 %16
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %2, align 8
  %19 = load %struct.TYPE_6__**, %struct.TYPE_6__*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @G, i32 0, i32 2), align 8
  %20 = load i32, i32* %1, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %19, i64 %21
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %5, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = icmp eq %struct.TYPE_6__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %13
  br label %248

27:                                               ; preds = %13
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  br label %28

28:                                               ; preds = %220, %27
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %8, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %34 = icmp eq %struct.TYPE_6__* %32, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %7, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = call i64 @OBJECTS_IN_PAGE(%struct.TYPE_6__* %36)
  store i64 %37, i64* %3, align 8
  %38 = load i64, i64* %3, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub i64 %38, %41
  store i64 %42, i64* %4, align 8
  %43 = load i32, i32* %1, align 4
  %44 = call i64 @OBJECT_SIZE(i32 %43)
  %45 = load i64, i64* %4, align 8
  %46 = mul i64 %44, %45
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @G, i32 0, i32 0), align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @G, i32 0, i32 0), align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @G, i32 0, i32 1), align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %28
  br label %217

55:                                               ; preds = %28
  %56 = load i64, i64* %4, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %96

58:                                               ; preds = %55
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %60 = icmp ne %struct.TYPE_6__* %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %63 = load %struct.TYPE_6__**, %struct.TYPE_6__*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @G, i32 0, i32 2), align 8
  %64 = load i32, i32* %1, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %63, i64 %65
  store %struct.TYPE_6__* %62, %struct.TYPE_6__** %66, align 8
  br label %71

67:                                               ; preds = %58
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  store %struct.TYPE_6__* %68, %struct.TYPE_6__** %70, align 8
  br label %71

71:                                               ; preds = %67, %61
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %73 = icmp ne %struct.TYPE_6__* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 3
  store %struct.TYPE_6__* %75, %struct.TYPE_6__** %77, align 8
  br label %78

78:                                               ; preds = %74, %71
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %80 = load %struct.TYPE_6__**, %struct.TYPE_6__*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @G, i32 0, i32 3), align 8
  %81 = load i32, i32* %1, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %80, i64 %82
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = icmp eq %struct.TYPE_6__* %79, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %78
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %88 = load %struct.TYPE_6__**, %struct.TYPE_6__*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @G, i32 0, i32 3), align 8
  %89 = load i32, i32* %1, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %88, i64 %90
  store %struct.TYPE_6__* %87, %struct.TYPE_6__** %91, align 8
  br label %92

92:                                               ; preds = %86, %78
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %94 = call i32 @free_page(%struct.TYPE_6__* %93)
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %95, %struct.TYPE_6__** %5, align 8
  br label %216

96:                                               ; preds = %55
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %153

101:                                              ; preds = %96
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %103 = load %struct.TYPE_6__**, %struct.TYPE_6__*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @G, i32 0, i32 3), align 8
  %104 = load i32, i32* %1, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %103, i64 %105
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = icmp ne %struct.TYPE_6__* %102, %107
  br i1 %108, label %109, label %152

109:                                              ; preds = %101
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %111, align 8
  %112 = load %struct.TYPE_6__**, %struct.TYPE_6__*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @G, i32 0, i32 3), align 8
  %113 = load i32, i32* %1, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %112, i64 %114
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 3
  store %struct.TYPE_6__* %116, %struct.TYPE_6__** %118, align 8
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %120 = load %struct.TYPE_6__**, %struct.TYPE_6__*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @G, i32 0, i32 3), align 8
  %121 = load i32, i32* %1, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %120, i64 %122
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 2
  store %struct.TYPE_6__* %119, %struct.TYPE_6__** %125, align 8
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %127 = load %struct.TYPE_6__**, %struct.TYPE_6__*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @G, i32 0, i32 3), align 8
  %128 = load i32, i32* %1, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %127, i64 %129
  store %struct.TYPE_6__* %126, %struct.TYPE_6__** %130, align 8
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %132 = icmp ne %struct.TYPE_6__* %131, null
  br i1 %132, label %139, label %133

133:                                              ; preds = %109
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %135 = load %struct.TYPE_6__**, %struct.TYPE_6__*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @G, i32 0, i32 2), align 8
  %136 = load i32, i32* %1, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %135, i64 %137
  store %struct.TYPE_6__* %134, %struct.TYPE_6__** %138, align 8
  br label %143

139:                                              ; preds = %109
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 2
  store %struct.TYPE_6__* %140, %struct.TYPE_6__** %142, align 8
  br label %143

143:                                              ; preds = %139, %133
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %145 = icmp ne %struct.TYPE_6__* %144, null
  br i1 %145, label %146, label %150

146:                                              ; preds = %143
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 3
  store %struct.TYPE_6__* %147, %struct.TYPE_6__** %149, align 8
  br label %150

150:                                              ; preds = %146, %143
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %151, %struct.TYPE_6__** %5, align 8
  br label %152

152:                                              ; preds = %150, %101
  br label %215

153:                                              ; preds = %96
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %155 = load %struct.TYPE_6__**, %struct.TYPE_6__*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @G, i32 0, i32 2), align 8
  %156 = load i32, i32* %1, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %155, i64 %157
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %158, align 8
  %160 = icmp ne %struct.TYPE_6__* %154, %159
  br i1 %160, label %161, label %214

161:                                              ; preds = %153
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 2
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %163, align 8
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 2
  store %struct.TYPE_6__* %164, %struct.TYPE_6__** %166, align 8
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = icmp ne %struct.TYPE_6__* %169, null
  br i1 %170, label %171, label %177

171:                                              ; preds = %161
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 2
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 3
  store %struct.TYPE_6__* %172, %struct.TYPE_6__** %176, align 8
  br label %177

177:                                              ; preds = %171, %161
  %178 = load %struct.TYPE_6__**, %struct.TYPE_6__*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @G, i32 0, i32 2), align 8
  %179 = load i32, i32* %1, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %178, i64 %180
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %181, align 8
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 2
  store %struct.TYPE_6__* %182, %struct.TYPE_6__** %184, align 8
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 3
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %186, align 8
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %188 = load %struct.TYPE_6__**, %struct.TYPE_6__*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @G, i32 0, i32 2), align 8
  %189 = load i32, i32* %1, align 4
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %188, i64 %190
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 3
  store %struct.TYPE_6__* %187, %struct.TYPE_6__** %193, align 8
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %195 = load %struct.TYPE_6__**, %struct.TYPE_6__*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @G, i32 0, i32 2), align 8
  %196 = load i32, i32* %1, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %195, i64 %197
  store %struct.TYPE_6__* %194, %struct.TYPE_6__** %198, align 8
  %199 = load %struct.TYPE_6__**, %struct.TYPE_6__*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @G, i32 0, i32 3), align 8
  %200 = load i32, i32* %1, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %199, i64 %201
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %202, align 8
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %205 = icmp eq %struct.TYPE_6__* %203, %204
  br i1 %205, label %206, label %212

206:                                              ; preds = %177
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %208 = load %struct.TYPE_6__**, %struct.TYPE_6__*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @G, i32 0, i32 3), align 8
  %209 = load i32, i32* %1, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %208, i64 %210
  store %struct.TYPE_6__* %207, %struct.TYPE_6__** %211, align 8
  br label %212

212:                                              ; preds = %206, %177
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %213, %struct.TYPE_6__** %5, align 8
  br label %214

214:                                              ; preds = %212, %153
  br label %215

215:                                              ; preds = %214, %152
  br label %216

216:                                              ; preds = %215, %92
  br label %217

217:                                              ; preds = %216, %54
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %218, %struct.TYPE_6__** %6, align 8
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %219, %struct.TYPE_6__** %5, align 8
  br label %220

220:                                              ; preds = %217
  %221 = load i32, i32* %7, align 4
  %222 = icmp ne i32 %221, 0
  %223 = xor i1 %222, true
  br i1 %223, label %28, label %224

224:                                              ; preds = %220
  %225 = load %struct.TYPE_6__**, %struct.TYPE_6__*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @G, i32 0, i32 2), align 8
  %226 = load i32, i32* %1, align 4
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %225, i64 %227
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %228, align 8
  store %struct.TYPE_6__* %229, %struct.TYPE_6__** %5, align 8
  br label %230

230:                                              ; preds = %243, %224
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %232 = icmp ne %struct.TYPE_6__* %231, null
  br i1 %232, label %233, label %247

233:                                              ; preds = %230
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @G, i32 0, i32 1), align 8
  %238 = icmp ne i64 %236, %237
  br i1 %238, label %239, label %242

239:                                              ; preds = %233
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %241 = call i32 @ggc_recalculate_in_use_p(%struct.TYPE_6__* %240)
  br label %242

242:                                              ; preds = %239, %233
  br label %243

243:                                              ; preds = %242
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 2
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %245, align 8
  store %struct.TYPE_6__* %246, %struct.TYPE_6__** %5, align 8
  br label %230

247:                                              ; preds = %230
  br label %248

248:                                              ; preds = %247, %26
  %249 = load i32, i32* %1, align 4
  %250 = add i32 %249, 1
  store i32 %250, i32* %1, align 4
  br label %9

251:                                              ; preds = %9
  ret void
}

declare dso_local i64 @OBJECTS_IN_PAGE(%struct.TYPE_6__*) #1

declare dso_local i64 @OBJECT_SIZE(i32) #1

declare dso_local i32 @free_page(%struct.TYPE_6__*) #1

declare dso_local i32 @ggc_recalculate_in_use_p(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
