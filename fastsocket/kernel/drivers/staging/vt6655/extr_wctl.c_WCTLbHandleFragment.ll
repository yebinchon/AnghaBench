; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_wctl.c_WCTLbHandleFragment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_wctl.c_WCTLbHandleFragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i64, %struct.TYPE_17__*, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i64, %struct.TYPE_19__*, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_19__ = type { i32 }

@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @WCTLbHandleFragment(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i64, i64* %10, align 8
  %14 = load i64, i64* @TRUE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %5
  store i32 28, i32* %12, align 4
  %17 = load i64, i64* %11, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* %12, align 4
  %21 = add nsw i32 %20, 4
  store i32 %21, i32* %12, align 4
  br label %22

22:                                               ; preds = %19, %16
  br label %24

23:                                               ; preds = %5
  store i32 24, i32* %12, align 4
  br label %24

24:                                               ; preds = %23, %22
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %26 = call i64 @IS_FIRST_FRAGMENT_PKT(%struct.TYPE_19__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %160

28:                                               ; preds = %24
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %31 = call i8* @WCTLuSearchDFCB(%struct.TYPE_18__* %29, %struct.TYPE_19__* %30)
  %32 = ptrtoint i8* %31 to i64
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %37, %40
  br i1 %41, label %42, label %78

42:                                               ; preds = %28
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %47, align 8
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 6
  store i32 %45, i32* %53, align 8
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %56, 4
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %59, align 8
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  store i32 %57, i32* %65, align 8
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 15
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %71, align 8
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 1
  store i32 %69, i32* %77, align 4
  br label %94

78:                                               ; preds = %28
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %81 = call i64 @WCTLuInsertDFCB(%struct.TYPE_18__* %79, %struct.TYPE_19__* %80)
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %86, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %78
  %92 = load i64, i64* @FALSE, align 8
  store i64 %92, i64* %6, align 8
  br label %313

93:                                               ; preds = %78
  br label %94

94:                                               ; preds = %93, %42
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %96, align 8
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 5
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, 4
  %107 = inttoptr i64 %106 to %struct.TYPE_19__*
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %109, align 8
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 4
  store %struct.TYPE_19__* %107, %struct.TYPE_19__** %115, align 8
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %117, align 8
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 4
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %123, align 8
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @memcpy(%struct.TYPE_19__* %124, %struct.TYPE_19__* %125, i32 %126)
  %128 = load i32, i32* %9, align 4
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %130, align 8
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 2
  store i32 %128, i32* %136, align 8
  %137 = load i32, i32* %9, align 4
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %139, align 8
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 4
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %145, align 8
  %147 = sext i32 %137 to i64
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i64 %147
  store %struct.TYPE_19__* %148, %struct.TYPE_19__** %145, align 8
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %150, align 8
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 4
  %159 = load i64, i64* @FALSE, align 8
  store i64 %159, i64* %6, align 8
  br label %313

160:                                              ; preds = %24
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %163 = call i8* @WCTLuSearchDFCB(%struct.TYPE_18__* %161, %struct.TYPE_19__* %162)
  %164 = ptrtoint i8* %163 to i64
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 0
  store i64 %164, i64* %166, align 8
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %169, %172
  br i1 %173, label %174, label %290

174:                                              ; preds = %160
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %176, align 8
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = ashr i32 %186, 4
  %188 = icmp eq i32 %183, %187
  br i1 %188, label %189, label %274

189:                                              ; preds = %174
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 2
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %191, align 8
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = and i32 %201, 15
  %203 = icmp eq i32 %198, %202
  br i1 %203, label %204, label %274

204:                                              ; preds = %189
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 2
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %206, align 8
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* %9, align 4
  %215 = add nsw i32 %213, %214
  %216 = load i32, i32* %12, align 4
  %217 = sub nsw i32 %215, %216
  %218 = icmp slt i32 %217, 2346
  br i1 %218, label %219, label %274

219:                                              ; preds = %204
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 2
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %221, align 8
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 4
  %228 = load %struct.TYPE_19__*, %struct.TYPE_19__** %227, align 8
  %229 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %230 = load i32, i32* %12, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %229, i64 %231
  %233 = load i32, i32* %9, align 4
  %234 = load i32, i32* %12, align 4
  %235 = sub nsw i32 %233, %234
  %236 = call i32 @memcpy(%struct.TYPE_19__* %228, %struct.TYPE_19__* %232, i32 %235)
  %237 = load i32, i32* %9, align 4
  %238 = load i32, i32* %12, align 4
  %239 = sub nsw i32 %237, %238
  %240 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %240, i32 0, i32 2
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %241, align 8
  %243 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = add nsw i32 %248, %239
  store i32 %249, i32* %247, align 8
  %250 = load i32, i32* %9, align 4
  %251 = load i32, i32* %12, align 4
  %252 = sub nsw i32 %250, %251
  %253 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %253, i32 0, i32 2
  %255 = load %struct.TYPE_17__*, %struct.TYPE_17__** %254, align 8
  %256 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %255, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %259, i32 0, i32 4
  %261 = load %struct.TYPE_19__*, %struct.TYPE_19__** %260, align 8
  %262 = sext i32 %252 to i64
  %263 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %261, i64 %262
  store %struct.TYPE_19__* %263, %struct.TYPE_19__** %260, align 8
  %264 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i32 0, i32 2
  %266 = load %struct.TYPE_17__*, %struct.TYPE_17__** %265, align 8
  %267 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %268 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %266, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %271, align 4
  br label %289

274:                                              ; preds = %204, %189, %174
  %275 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %276 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %275, i32 0, i32 3
  %277 = load i32, i32* %276, align 8
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %276, align 8
  %279 = load i64, i64* @FALSE, align 8
  %280 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %281 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %280, i32 0, i32 2
  %282 = load %struct.TYPE_17__*, %struct.TYPE_17__** %281, align 8
  %283 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %282, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %286, i32 0, i32 3
  store i64 %279, i64* %287, align 8
  %288 = load i64, i64* @FALSE, align 8
  store i64 %288, i64* %6, align 8
  br label %313

289:                                              ; preds = %219
  br label %292

290:                                              ; preds = %160
  %291 = load i64, i64* @FALSE, align 8
  store i64 %291, i64* %6, align 8
  br label %313

292:                                              ; preds = %289
  %293 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %294 = call i64 @IS_LAST_FRAGMENT_PKT(%struct.TYPE_19__* %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %311

296:                                              ; preds = %292
  %297 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %298 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 8
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %298, align 8
  %301 = load i64, i64* @FALSE, align 8
  %302 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %303 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %302, i32 0, i32 2
  %304 = load %struct.TYPE_17__*, %struct.TYPE_17__** %303, align 8
  %305 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %306 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %304, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %308, i32 0, i32 3
  store i64 %301, i64* %309, align 8
  %310 = load i64, i64* @TRUE, align 8
  store i64 %310, i64* %6, align 8
  br label %313

311:                                              ; preds = %292
  %312 = load i64, i64* @FALSE, align 8
  store i64 %312, i64* %6, align 8
  br label %313

313:                                              ; preds = %311, %296, %290, %274, %94, %91
  %314 = load i64, i64* %6, align 8
  ret i64 %314
}

declare dso_local i64 @IS_FIRST_FRAGMENT_PKT(%struct.TYPE_19__*) #1

declare dso_local i8* @WCTLuSearchDFCB(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i64 @WCTLuInsertDFCB(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_19__*, %struct.TYPE_19__*, i32) #1

declare dso_local i64 @IS_LAST_FRAGMENT_PKT(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
