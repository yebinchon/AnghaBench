; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_reg.c_EEPROMTxVgaAdjust.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_reg.c_EEPROMTxVgaAdjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_data = type { i8**, i64, %struct.TYPE_2__*, i8** }
%struct.TYPE_2__ = type { i32, i8* }

@RF_AIROHA_7230 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EEPROMTxVgaAdjust(%struct.hw_data* %0) #0 {
  %2 = alloca %struct.hw_data*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hw_data* %0, %struct.hw_data** %2, align 8
  %6 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %7 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %6, i32 0, i32 0
  %8 = load i8**, i8*** %7, align 8
  store i8** %8, i8*** %3, align 8
  %9 = load i8**, i8*** %3, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 1
  %11 = load i8*, i8** %10, align 8
  %12 = load i8**, i8*** %3, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  %15 = ptrtoint i8* %11 to i64
  %16 = ptrtoint i8* %14 to i64
  %17 = sub i64 %15, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %38, %1
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 5
  br i1 %21, label %22, label %41

22:                                               ; preds = %19
  %23 = load i8**, i8*** %3, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = mul nsw i32 %26, %27
  %29 = sdiv i32 %28, 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr i8, i8* %25, i64 %30
  %32 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %33 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %32, i32 0, i32 3
  %34 = load i8**, i8*** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  store i8* %31, i8** %37, align 8
  br label %38

38:                                               ; preds = %22
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %19

41:                                               ; preds = %19
  %42 = load i8**, i8*** %3, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 2
  %44 = load i8*, i8** %43, align 8
  %45 = load i8**, i8*** %3, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 1
  %47 = load i8*, i8** %46, align 8
  %48 = ptrtoint i8* %44 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %5, align 4
  store i32 5, i32* %4, align 4
  br label %52

52:                                               ; preds = %72, %41
  %53 = load i32, i32* %4, align 4
  %54 = icmp slt i32 %53, 10
  br i1 %54, label %55, label %75

55:                                               ; preds = %52
  %56 = load i8**, i8*** %3, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 1
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %4, align 4
  %61 = sub nsw i32 %60, 5
  %62 = mul nsw i32 %59, %61
  %63 = sdiv i32 %62, 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr i8, i8* %58, i64 %64
  %66 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %67 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %66, i32 0, i32 3
  %68 = load i8**, i8*** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  store i8* %65, i8** %71, align 8
  br label %72

72:                                               ; preds = %55
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %52

75:                                               ; preds = %52
  %76 = load i8**, i8*** %3, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 3
  %78 = load i8*, i8** %77, align 8
  %79 = load i8**, i8*** %3, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 2
  %81 = load i8*, i8** %80, align 8
  %82 = ptrtoint i8* %78 to i64
  %83 = ptrtoint i8* %81 to i64
  %84 = sub i64 %82, %83
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %5, align 4
  store i32 10, i32* %4, align 4
  br label %86

86:                                               ; preds = %106, %75
  %87 = load i32, i32* %4, align 4
  %88 = icmp slt i32 %87, 13
  br i1 %88, label %89, label %109

89:                                               ; preds = %86
  %90 = load i8**, i8*** %3, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 2
  %92 = load i8*, i8** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %4, align 4
  %95 = sub nsw i32 %94, 10
  %96 = mul nsw i32 %93, %95
  %97 = sdiv i32 %96, 2
  %98 = sext i32 %97 to i64
  %99 = getelementptr i8, i8* %92, i64 %98
  %100 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %101 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %100, i32 0, i32 3
  %102 = load i8**, i8*** %101, align 8
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  store i8* %99, i8** %105, align 8
  br label %106

106:                                              ; preds = %89
  %107 = load i32, i32* %4, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %4, align 4
  br label %86

109:                                              ; preds = %86
  %110 = load i8**, i8*** %3, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 3
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %114 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %113, i32 0, i32 3
  %115 = load i8**, i8*** %114, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i64 13
  store i8* %112, i8** %116, align 8
  %117 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %118 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @RF_AIROHA_7230, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %743

122:                                              ; preds = %109
  %123 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %124 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %123, i32 0, i32 2
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  store i32 184, i32* %127, align 8
  %128 = load i8**, i8*** %3, align 8
  %129 = getelementptr inbounds i8*, i8** %128, i64 4
  %130 = load i8*, i8** %129, align 8
  %131 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %132 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %131, i32 0, i32 2
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i64 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  store i8* %130, i8** %135, align 8
  %136 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %137 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %136, i32 0, i32 2
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i64 3
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  store i32 196, i32* %140, align 8
  %141 = load i8**, i8*** %3, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i64 5
  %143 = load i8*, i8** %142, align 8
  %144 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %145 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %144, i32 0, i32 2
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i64 3
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 1
  store i8* %143, i8** %148, align 8
  %149 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %150 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %149, i32 0, i32 2
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i64 1
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  store i32 188, i32* %153, align 8
  %154 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %155 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %154, i32 0, i32 2
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i64 2
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  store i32 192, i32* %158, align 8
  %159 = load i8**, i8*** %3, align 8
  %160 = getelementptr inbounds i8*, i8** %159, i64 5
  %161 = load i8*, i8** %160, align 8
  %162 = load i8**, i8*** %3, align 8
  %163 = getelementptr inbounds i8*, i8** %162, i64 4
  %164 = load i8*, i8** %163, align 8
  %165 = ptrtoint i8* %161 to i64
  %166 = ptrtoint i8* %164 to i64
  %167 = sub i64 %165, %166
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %5, align 4
  %169 = load i8**, i8*** %3, align 8
  %170 = getelementptr inbounds i8*, i8** %169, i64 5
  %171 = load i8*, i8** %170, align 8
  %172 = load i32, i32* %5, align 4
  %173 = sdiv i32 %172, 3
  %174 = sext i32 %173 to i64
  %175 = sub i64 0, %174
  %176 = getelementptr i8, i8* %171, i64 %175
  %177 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %178 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %177, i32 0, i32 2
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i64 2
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 1
  store i8* %176, i8** %181, align 8
  %182 = load i8**, i8*** %3, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i64 5
  %184 = load i8*, i8** %183, align 8
  %185 = load i32, i32* %5, align 4
  %186 = mul nsw i32 %185, 2
  %187 = sdiv i32 %186, 3
  %188 = sext i32 %187 to i64
  %189 = sub i64 0, %188
  %190 = getelementptr i8, i8* %184, i64 %189
  %191 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %192 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %191, i32 0, i32 2
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i64 1
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 1
  store i8* %190, i8** %195, align 8
  %196 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %197 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %196, i32 0, i32 2
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i64 6
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 0
  store i32 16, i32* %200, align 8
  %201 = load i8**, i8*** %3, align 8
  %202 = getelementptr inbounds i8*, i8** %201, i64 6
  %203 = load i8*, i8** %202, align 8
  %204 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %205 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %204, i32 0, i32 2
  %206 = load %struct.TYPE_2__*, %struct.TYPE_2__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i64 6
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 1
  store i8* %203, i8** %208, align 8
  %209 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %210 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %209, i32 0, i32 2
  %211 = load %struct.TYPE_2__*, %struct.TYPE_2__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i64 4
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 0
  store i32 8, i32* %213, align 8
  %214 = load i8**, i8*** %3, align 8
  %215 = getelementptr inbounds i8*, i8** %214, i64 6
  %216 = load i8*, i8** %215, align 8
  %217 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %218 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %217, i32 0, i32 2
  %219 = load %struct.TYPE_2__*, %struct.TYPE_2__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i64 4
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 1
  store i8* %216, i8** %221, align 8
  %222 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %223 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %222, i32 0, i32 2
  %224 = load %struct.TYPE_2__*, %struct.TYPE_2__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i64 5
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 0
  store i32 12, i32* %226, align 8
  %227 = load i8**, i8*** %3, align 8
  %228 = getelementptr inbounds i8*, i8** %227, i64 6
  %229 = load i8*, i8** %228, align 8
  %230 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %231 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %230, i32 0, i32 2
  %232 = load %struct.TYPE_2__*, %struct.TYPE_2__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i64 5
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 1
  store i8* %229, i8** %234, align 8
  %235 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %236 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %235, i32 0, i32 2
  %237 = load %struct.TYPE_2__*, %struct.TYPE_2__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i64 8
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i32 0, i32 0
  store i32 36, i32* %239, align 8
  %240 = load i8**, i8*** %3, align 8
  %241 = getelementptr inbounds i8*, i8** %240, i64 7
  %242 = load i8*, i8** %241, align 8
  %243 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %244 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %243, i32 0, i32 2
  %245 = load %struct.TYPE_2__*, %struct.TYPE_2__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i64 8
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %246, i32 0, i32 1
  store i8* %242, i8** %247, align 8
  %248 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %249 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %248, i32 0, i32 2
  %250 = load %struct.TYPE_2__*, %struct.TYPE_2__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %250, i64 7
  %252 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i32 0, i32 0
  store i32 34, i32* %252, align 8
  %253 = load i8**, i8*** %3, align 8
  %254 = getelementptr inbounds i8*, i8** %253, i64 7
  %255 = load i8*, i8** %254, align 8
  %256 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %257 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %256, i32 0, i32 2
  %258 = load %struct.TYPE_2__*, %struct.TYPE_2__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i64 7
  %260 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i32 0, i32 1
  store i8* %255, i8** %260, align 8
  %261 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %262 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %261, i32 0, i32 2
  %263 = load %struct.TYPE_2__*, %struct.TYPE_2__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %263, i64 9
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %264, i32 0, i32 0
  store i32 38, i32* %265, align 8
  %266 = load i8**, i8*** %3, align 8
  %267 = getelementptr inbounds i8*, i8** %266, i64 7
  %268 = load i8*, i8** %267, align 8
  %269 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %270 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %269, i32 0, i32 2
  %271 = load %struct.TYPE_2__*, %struct.TYPE_2__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %271, i64 9
  %273 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %272, i32 0, i32 1
  store i8* %268, i8** %273, align 8
  %274 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %275 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %274, i32 0, i32 2
  %276 = load %struct.TYPE_2__*, %struct.TYPE_2__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %276, i64 10
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %277, i32 0, i32 0
  store i32 40, i32* %278, align 8
  %279 = load i8**, i8*** %3, align 8
  %280 = getelementptr inbounds i8*, i8** %279, i64 8
  %281 = load i8*, i8** %280, align 8
  %282 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %283 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %282, i32 0, i32 2
  %284 = load %struct.TYPE_2__*, %struct.TYPE_2__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %284, i64 10
  %286 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %285, i32 0, i32 1
  store i8* %281, i8** %286, align 8
  %287 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %288 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %287, i32 0, i32 2
  %289 = load %struct.TYPE_2__*, %struct.TYPE_2__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %289, i64 14
  %291 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %290, i32 0, i32 0
  store i32 48, i32* %291, align 8
  %292 = load i8**, i8*** %3, align 8
  %293 = getelementptr inbounds i8*, i8** %292, i64 9
  %294 = load i8*, i8** %293, align 8
  %295 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %296 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %295, i32 0, i32 2
  %297 = load %struct.TYPE_2__*, %struct.TYPE_2__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %297, i64 14
  %299 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %298, i32 0, i32 1
  store i8* %294, i8** %299, align 8
  %300 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %301 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %300, i32 0, i32 2
  %302 = load %struct.TYPE_2__*, %struct.TYPE_2__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %302, i64 11
  %304 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %303, i32 0, i32 0
  store i32 42, i32* %304, align 8
  %305 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %306 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %305, i32 0, i32 2
  %307 = load %struct.TYPE_2__*, %struct.TYPE_2__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %307, i64 12
  %309 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %308, i32 0, i32 0
  store i32 44, i32* %309, align 8
  %310 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %311 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %310, i32 0, i32 2
  %312 = load %struct.TYPE_2__*, %struct.TYPE_2__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %312, i64 13
  %314 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %313, i32 0, i32 0
  store i32 46, i32* %314, align 8
  %315 = load i8**, i8*** %3, align 8
  %316 = getelementptr inbounds i8*, i8** %315, i64 9
  %317 = load i8*, i8** %316, align 8
  %318 = load i8**, i8*** %3, align 8
  %319 = getelementptr inbounds i8*, i8** %318, i64 8
  %320 = load i8*, i8** %319, align 8
  %321 = ptrtoint i8* %317 to i64
  %322 = ptrtoint i8* %320 to i64
  %323 = sub i64 %321, %322
  %324 = trunc i64 %323 to i32
  store i32 %324, i32* %5, align 4
  %325 = load i8**, i8*** %3, align 8
  %326 = getelementptr inbounds i8*, i8** %325, i64 9
  %327 = load i8*, i8** %326, align 8
  %328 = load i32, i32* %5, align 4
  %329 = sdiv i32 %328, 4
  %330 = sext i32 %329 to i64
  %331 = sub i64 0, %330
  %332 = getelementptr i8, i8* %327, i64 %331
  %333 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %334 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %333, i32 0, i32 2
  %335 = load %struct.TYPE_2__*, %struct.TYPE_2__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %335, i64 13
  %337 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %336, i32 0, i32 1
  store i8* %332, i8** %337, align 8
  %338 = load i8**, i8*** %3, align 8
  %339 = getelementptr inbounds i8*, i8** %338, i64 9
  %340 = load i8*, i8** %339, align 8
  %341 = load i32, i32* %5, align 4
  %342 = mul nsw i32 %341, 2
  %343 = sdiv i32 %342, 4
  %344 = sext i32 %343 to i64
  %345 = sub i64 0, %344
  %346 = getelementptr i8, i8* %340, i64 %345
  %347 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %348 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %347, i32 0, i32 2
  %349 = load %struct.TYPE_2__*, %struct.TYPE_2__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %349, i64 12
  %351 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %350, i32 0, i32 1
  store i8* %346, i8** %351, align 8
  %352 = load i8**, i8*** %3, align 8
  %353 = getelementptr inbounds i8*, i8** %352, i64 9
  %354 = load i8*, i8** %353, align 8
  %355 = load i32, i32* %5, align 4
  %356 = mul nsw i32 %355, 3
  %357 = sdiv i32 %356, 4
  %358 = sext i32 %357 to i64
  %359 = sub i64 0, %358
  %360 = getelementptr i8, i8* %354, i64 %359
  %361 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %362 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %361, i32 0, i32 2
  %363 = load %struct.TYPE_2__*, %struct.TYPE_2__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %363, i64 11
  %365 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %364, i32 0, i32 1
  store i8* %360, i8** %365, align 8
  %366 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %367 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %366, i32 0, i32 2
  %368 = load %struct.TYPE_2__*, %struct.TYPE_2__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %368, i64 15
  %370 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %369, i32 0, i32 0
  store i32 52, i32* %370, align 8
  %371 = load i8**, i8*** %3, align 8
  %372 = getelementptr inbounds i8*, i8** %371, i64 10
  %373 = load i8*, i8** %372, align 8
  %374 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %375 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %374, i32 0, i32 2
  %376 = load %struct.TYPE_2__*, %struct.TYPE_2__** %375, align 8
  %377 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %376, i64 15
  %378 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %377, i32 0, i32 1
  store i8* %373, i8** %378, align 8
  %379 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %380 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %379, i32 0, i32 2
  %381 = load %struct.TYPE_2__*, %struct.TYPE_2__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %381, i64 18
  %383 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %382, i32 0, i32 0
  store i32 64, i32* %383, align 8
  %384 = load i8**, i8*** %3, align 8
  %385 = getelementptr inbounds i8*, i8** %384, i64 11
  %386 = load i8*, i8** %385, align 8
  %387 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %388 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %387, i32 0, i32 2
  %389 = load %struct.TYPE_2__*, %struct.TYPE_2__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %389, i64 18
  %391 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %390, i32 0, i32 1
  store i8* %386, i8** %391, align 8
  %392 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %393 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %392, i32 0, i32 2
  %394 = load %struct.TYPE_2__*, %struct.TYPE_2__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %394, i64 16
  %396 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %395, i32 0, i32 0
  store i32 56, i32* %396, align 8
  %397 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %398 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %397, i32 0, i32 2
  %399 = load %struct.TYPE_2__*, %struct.TYPE_2__** %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %399, i64 17
  %401 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %400, i32 0, i32 0
  store i32 60, i32* %401, align 8
  %402 = load i8**, i8*** %3, align 8
  %403 = getelementptr inbounds i8*, i8** %402, i64 11
  %404 = load i8*, i8** %403, align 8
  %405 = load i8**, i8*** %3, align 8
  %406 = getelementptr inbounds i8*, i8** %405, i64 10
  %407 = load i8*, i8** %406, align 8
  %408 = ptrtoint i8* %404 to i64
  %409 = ptrtoint i8* %407 to i64
  %410 = sub i64 %408, %409
  %411 = trunc i64 %410 to i32
  store i32 %411, i32* %5, align 4
  %412 = load i8**, i8*** %3, align 8
  %413 = getelementptr inbounds i8*, i8** %412, i64 11
  %414 = load i8*, i8** %413, align 8
  %415 = load i32, i32* %5, align 4
  %416 = sdiv i32 %415, 3
  %417 = sext i32 %416 to i64
  %418 = sub i64 0, %417
  %419 = getelementptr i8, i8* %414, i64 %418
  %420 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %421 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %420, i32 0, i32 2
  %422 = load %struct.TYPE_2__*, %struct.TYPE_2__** %421, align 8
  %423 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %422, i64 17
  %424 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %423, i32 0, i32 1
  store i8* %419, i8** %424, align 8
  %425 = load i8**, i8*** %3, align 8
  %426 = getelementptr inbounds i8*, i8** %425, i64 11
  %427 = load i8*, i8** %426, align 8
  %428 = load i32, i32* %5, align 4
  %429 = mul nsw i32 %428, 2
  %430 = sdiv i32 %429, 3
  %431 = sext i32 %430 to i64
  %432 = sub i64 0, %431
  %433 = getelementptr i8, i8* %427, i64 %432
  %434 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %435 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %434, i32 0, i32 2
  %436 = load %struct.TYPE_2__*, %struct.TYPE_2__** %435, align 8
  %437 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %436, i64 16
  %438 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %437, i32 0, i32 1
  store i8* %433, i8** %438, align 8
  %439 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %440 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %439, i32 0, i32 2
  %441 = load %struct.TYPE_2__*, %struct.TYPE_2__** %440, align 8
  %442 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %441, i64 19
  %443 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %442, i32 0, i32 0
  store i32 100, i32* %443, align 8
  %444 = load i8**, i8*** %3, align 8
  %445 = getelementptr inbounds i8*, i8** %444, i64 12
  %446 = load i8*, i8** %445, align 8
  %447 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %448 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %447, i32 0, i32 2
  %449 = load %struct.TYPE_2__*, %struct.TYPE_2__** %448, align 8
  %450 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %449, i64 19
  %451 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %450, i32 0, i32 1
  store i8* %446, i8** %451, align 8
  %452 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %453 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %452, i32 0, i32 2
  %454 = load %struct.TYPE_2__*, %struct.TYPE_2__** %453, align 8
  %455 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %454, i64 22
  %456 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %455, i32 0, i32 0
  store i32 112, i32* %456, align 8
  %457 = load i8**, i8*** %3, align 8
  %458 = getelementptr inbounds i8*, i8** %457, i64 13
  %459 = load i8*, i8** %458, align 8
  %460 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %461 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %460, i32 0, i32 2
  %462 = load %struct.TYPE_2__*, %struct.TYPE_2__** %461, align 8
  %463 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %462, i64 22
  %464 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %463, i32 0, i32 1
  store i8* %459, i8** %464, align 8
  %465 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %466 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %465, i32 0, i32 2
  %467 = load %struct.TYPE_2__*, %struct.TYPE_2__** %466, align 8
  %468 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %467, i64 20
  %469 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %468, i32 0, i32 0
  store i32 104, i32* %469, align 8
  %470 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %471 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %470, i32 0, i32 2
  %472 = load %struct.TYPE_2__*, %struct.TYPE_2__** %471, align 8
  %473 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %472, i64 21
  %474 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %473, i32 0, i32 0
  store i32 108, i32* %474, align 8
  %475 = load i8**, i8*** %3, align 8
  %476 = getelementptr inbounds i8*, i8** %475, i64 13
  %477 = load i8*, i8** %476, align 8
  %478 = load i8**, i8*** %3, align 8
  %479 = getelementptr inbounds i8*, i8** %478, i64 12
  %480 = load i8*, i8** %479, align 8
  %481 = ptrtoint i8* %477 to i64
  %482 = ptrtoint i8* %480 to i64
  %483 = sub i64 %481, %482
  %484 = trunc i64 %483 to i32
  store i32 %484, i32* %5, align 4
  %485 = load i8**, i8*** %3, align 8
  %486 = getelementptr inbounds i8*, i8** %485, i64 13
  %487 = load i8*, i8** %486, align 8
  %488 = load i32, i32* %5, align 4
  %489 = sdiv i32 %488, 3
  %490 = sext i32 %489 to i64
  %491 = sub i64 0, %490
  %492 = getelementptr i8, i8* %487, i64 %491
  %493 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %494 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %493, i32 0, i32 2
  %495 = load %struct.TYPE_2__*, %struct.TYPE_2__** %494, align 8
  %496 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %495, i64 21
  %497 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %496, i32 0, i32 1
  store i8* %492, i8** %497, align 8
  %498 = load i8**, i8*** %3, align 8
  %499 = getelementptr inbounds i8*, i8** %498, i64 13
  %500 = load i8*, i8** %499, align 8
  %501 = load i32, i32* %5, align 4
  %502 = mul nsw i32 %501, 2
  %503 = sdiv i32 %502, 3
  %504 = sext i32 %503 to i64
  %505 = sub i64 0, %504
  %506 = getelementptr i8, i8* %500, i64 %505
  %507 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %508 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %507, i32 0, i32 2
  %509 = load %struct.TYPE_2__*, %struct.TYPE_2__** %508, align 8
  %510 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %509, i64 20
  %511 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %510, i32 0, i32 1
  store i8* %506, i8** %511, align 8
  %512 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %513 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %512, i32 0, i32 2
  %514 = load %struct.TYPE_2__*, %struct.TYPE_2__** %513, align 8
  %515 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %514, i64 26
  %516 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %515, i32 0, i32 0
  store i32 128, i32* %516, align 8
  %517 = load i8**, i8*** %3, align 8
  %518 = getelementptr inbounds i8*, i8** %517, i64 14
  %519 = load i8*, i8** %518, align 8
  %520 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %521 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %520, i32 0, i32 2
  %522 = load %struct.TYPE_2__*, %struct.TYPE_2__** %521, align 8
  %523 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %522, i64 26
  %524 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %523, i32 0, i32 1
  store i8* %519, i8** %524, align 8
  %525 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %526 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %525, i32 0, i32 2
  %527 = load %struct.TYPE_2__*, %struct.TYPE_2__** %526, align 8
  %528 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %527, i64 23
  %529 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %528, i32 0, i32 0
  store i32 116, i32* %529, align 8
  %530 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %531 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %530, i32 0, i32 2
  %532 = load %struct.TYPE_2__*, %struct.TYPE_2__** %531, align 8
  %533 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %532, i64 24
  %534 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %533, i32 0, i32 0
  store i32 120, i32* %534, align 8
  %535 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %536 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %535, i32 0, i32 2
  %537 = load %struct.TYPE_2__*, %struct.TYPE_2__** %536, align 8
  %538 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %537, i64 25
  %539 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %538, i32 0, i32 0
  store i32 124, i32* %539, align 8
  %540 = load i8**, i8*** %3, align 8
  %541 = getelementptr inbounds i8*, i8** %540, i64 14
  %542 = load i8*, i8** %541, align 8
  %543 = load i8**, i8*** %3, align 8
  %544 = getelementptr inbounds i8*, i8** %543, i64 13
  %545 = load i8*, i8** %544, align 8
  %546 = ptrtoint i8* %542 to i64
  %547 = ptrtoint i8* %545 to i64
  %548 = sub i64 %546, %547
  %549 = trunc i64 %548 to i32
  store i32 %549, i32* %5, align 4
  %550 = load i8**, i8*** %3, align 8
  %551 = getelementptr inbounds i8*, i8** %550, i64 14
  %552 = load i8*, i8** %551, align 8
  %553 = load i32, i32* %5, align 4
  %554 = sdiv i32 %553, 4
  %555 = sext i32 %554 to i64
  %556 = sub i64 0, %555
  %557 = getelementptr i8, i8* %552, i64 %556
  %558 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %559 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %558, i32 0, i32 2
  %560 = load %struct.TYPE_2__*, %struct.TYPE_2__** %559, align 8
  %561 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %560, i64 25
  %562 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %561, i32 0, i32 1
  store i8* %557, i8** %562, align 8
  %563 = load i8**, i8*** %3, align 8
  %564 = getelementptr inbounds i8*, i8** %563, i64 14
  %565 = load i8*, i8** %564, align 8
  %566 = load i32, i32* %5, align 4
  %567 = mul nsw i32 %566, 2
  %568 = sdiv i32 %567, 4
  %569 = sext i32 %568 to i64
  %570 = sub i64 0, %569
  %571 = getelementptr i8, i8* %565, i64 %570
  %572 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %573 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %572, i32 0, i32 2
  %574 = load %struct.TYPE_2__*, %struct.TYPE_2__** %573, align 8
  %575 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %574, i64 24
  %576 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %575, i32 0, i32 1
  store i8* %571, i8** %576, align 8
  %577 = load i8**, i8*** %3, align 8
  %578 = getelementptr inbounds i8*, i8** %577, i64 14
  %579 = load i8*, i8** %578, align 8
  %580 = load i32, i32* %5, align 4
  %581 = mul nsw i32 %580, 3
  %582 = sdiv i32 %581, 4
  %583 = sext i32 %582 to i64
  %584 = sub i64 0, %583
  %585 = getelementptr i8, i8* %579, i64 %584
  %586 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %587 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %586, i32 0, i32 2
  %588 = load %struct.TYPE_2__*, %struct.TYPE_2__** %587, align 8
  %589 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %588, i64 23
  %590 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %589, i32 0, i32 1
  store i8* %585, i8** %590, align 8
  %591 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %592 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %591, i32 0, i32 2
  %593 = load %struct.TYPE_2__*, %struct.TYPE_2__** %592, align 8
  %594 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %593, i64 29
  %595 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %594, i32 0, i32 0
  store i32 140, i32* %595, align 8
  %596 = load i8**, i8*** %3, align 8
  %597 = getelementptr inbounds i8*, i8** %596, i64 15
  %598 = load i8*, i8** %597, align 8
  %599 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %600 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %599, i32 0, i32 2
  %601 = load %struct.TYPE_2__*, %struct.TYPE_2__** %600, align 8
  %602 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %601, i64 29
  %603 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %602, i32 0, i32 1
  store i8* %598, i8** %603, align 8
  %604 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %605 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %604, i32 0, i32 2
  %606 = load %struct.TYPE_2__*, %struct.TYPE_2__** %605, align 8
  %607 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %606, i64 27
  %608 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %607, i32 0, i32 0
  store i32 132, i32* %608, align 8
  %609 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %610 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %609, i32 0, i32 2
  %611 = load %struct.TYPE_2__*, %struct.TYPE_2__** %610, align 8
  %612 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %611, i64 28
  %613 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %612, i32 0, i32 0
  store i32 136, i32* %613, align 8
  %614 = load i8**, i8*** %3, align 8
  %615 = getelementptr inbounds i8*, i8** %614, i64 15
  %616 = load i8*, i8** %615, align 8
  %617 = load i8**, i8*** %3, align 8
  %618 = getelementptr inbounds i8*, i8** %617, i64 14
  %619 = load i8*, i8** %618, align 8
  %620 = ptrtoint i8* %616 to i64
  %621 = ptrtoint i8* %619 to i64
  %622 = sub i64 %620, %621
  %623 = trunc i64 %622 to i32
  store i32 %623, i32* %5, align 4
  %624 = load i8**, i8*** %3, align 8
  %625 = getelementptr inbounds i8*, i8** %624, i64 15
  %626 = load i8*, i8** %625, align 8
  %627 = load i32, i32* %5, align 4
  %628 = sdiv i32 %627, 3
  %629 = sext i32 %628 to i64
  %630 = sub i64 0, %629
  %631 = getelementptr i8, i8* %626, i64 %630
  %632 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %633 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %632, i32 0, i32 2
  %634 = load %struct.TYPE_2__*, %struct.TYPE_2__** %633, align 8
  %635 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %634, i64 28
  %636 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %635, i32 0, i32 1
  store i8* %631, i8** %636, align 8
  %637 = load i8**, i8*** %3, align 8
  %638 = getelementptr inbounds i8*, i8** %637, i64 15
  %639 = load i8*, i8** %638, align 8
  %640 = load i32, i32* %5, align 4
  %641 = mul nsw i32 %640, 2
  %642 = sdiv i32 %641, 3
  %643 = sext i32 %642 to i64
  %644 = sub i64 0, %643
  %645 = getelementptr i8, i8* %639, i64 %644
  %646 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %647 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %646, i32 0, i32 2
  %648 = load %struct.TYPE_2__*, %struct.TYPE_2__** %647, align 8
  %649 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %648, i64 27
  %650 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %649, i32 0, i32 1
  store i8* %645, i8** %650, align 8
  %651 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %652 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %651, i32 0, i32 2
  %653 = load %struct.TYPE_2__*, %struct.TYPE_2__** %652, align 8
  %654 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %653, i64 30
  %655 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %654, i32 0, i32 0
  store i32 149, i32* %655, align 8
  %656 = load i8**, i8*** %3, align 8
  %657 = getelementptr inbounds i8*, i8** %656, i64 16
  %658 = load i8*, i8** %657, align 8
  %659 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %660 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %659, i32 0, i32 2
  %661 = load %struct.TYPE_2__*, %struct.TYPE_2__** %660, align 8
  %662 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %661, i64 30
  %663 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %662, i32 0, i32 1
  store i8* %658, i8** %663, align 8
  %664 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %665 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %664, i32 0, i32 2
  %666 = load %struct.TYPE_2__*, %struct.TYPE_2__** %665, align 8
  %667 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %666, i64 34
  %668 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %667, i32 0, i32 0
  store i32 165, i32* %668, align 8
  %669 = load i8**, i8*** %3, align 8
  %670 = getelementptr inbounds i8*, i8** %669, i64 17
  %671 = load i8*, i8** %670, align 8
  %672 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %673 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %672, i32 0, i32 2
  %674 = load %struct.TYPE_2__*, %struct.TYPE_2__** %673, align 8
  %675 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %674, i64 34
  %676 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %675, i32 0, i32 1
  store i8* %671, i8** %676, align 8
  %677 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %678 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %677, i32 0, i32 2
  %679 = load %struct.TYPE_2__*, %struct.TYPE_2__** %678, align 8
  %680 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %679, i64 31
  %681 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %680, i32 0, i32 0
  store i32 153, i32* %681, align 8
  %682 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %683 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %682, i32 0, i32 2
  %684 = load %struct.TYPE_2__*, %struct.TYPE_2__** %683, align 8
  %685 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %684, i64 32
  %686 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %685, i32 0, i32 0
  store i32 157, i32* %686, align 8
  %687 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %688 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %687, i32 0, i32 2
  %689 = load %struct.TYPE_2__*, %struct.TYPE_2__** %688, align 8
  %690 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %689, i64 33
  %691 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %690, i32 0, i32 0
  store i32 161, i32* %691, align 8
  %692 = load i8**, i8*** %3, align 8
  %693 = getelementptr inbounds i8*, i8** %692, i64 17
  %694 = load i8*, i8** %693, align 8
  %695 = load i8**, i8*** %3, align 8
  %696 = getelementptr inbounds i8*, i8** %695, i64 16
  %697 = load i8*, i8** %696, align 8
  %698 = ptrtoint i8* %694 to i64
  %699 = ptrtoint i8* %697 to i64
  %700 = sub i64 %698, %699
  %701 = trunc i64 %700 to i32
  store i32 %701, i32* %5, align 4
  %702 = load i8**, i8*** %3, align 8
  %703 = getelementptr inbounds i8*, i8** %702, i64 17
  %704 = load i8*, i8** %703, align 8
  %705 = load i32, i32* %5, align 4
  %706 = sdiv i32 %705, 4
  %707 = sext i32 %706 to i64
  %708 = sub i64 0, %707
  %709 = getelementptr i8, i8* %704, i64 %708
  %710 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %711 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %710, i32 0, i32 2
  %712 = load %struct.TYPE_2__*, %struct.TYPE_2__** %711, align 8
  %713 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %712, i64 33
  %714 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %713, i32 0, i32 1
  store i8* %709, i8** %714, align 8
  %715 = load i8**, i8*** %3, align 8
  %716 = getelementptr inbounds i8*, i8** %715, i64 17
  %717 = load i8*, i8** %716, align 8
  %718 = load i32, i32* %5, align 4
  %719 = mul nsw i32 %718, 2
  %720 = sdiv i32 %719, 4
  %721 = sext i32 %720 to i64
  %722 = sub i64 0, %721
  %723 = getelementptr i8, i8* %717, i64 %722
  %724 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %725 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %724, i32 0, i32 2
  %726 = load %struct.TYPE_2__*, %struct.TYPE_2__** %725, align 8
  %727 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %726, i64 32
  %728 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %727, i32 0, i32 1
  store i8* %723, i8** %728, align 8
  %729 = load i8**, i8*** %3, align 8
  %730 = getelementptr inbounds i8*, i8** %729, i64 17
  %731 = load i8*, i8** %730, align 8
  %732 = load i32, i32* %5, align 4
  %733 = mul nsw i32 %732, 3
  %734 = sdiv i32 %733, 4
  %735 = sext i32 %734 to i64
  %736 = sub i64 0, %735
  %737 = getelementptr i8, i8* %731, i64 %736
  %738 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %739 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %738, i32 0, i32 2
  %740 = load %struct.TYPE_2__*, %struct.TYPE_2__** %739, align 8
  %741 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %740, i64 31
  %742 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %741, i32 0, i32 1
  store i8* %737, i8** %742, align 8
  br label %743

743:                                              ; preds = %122, %109
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
