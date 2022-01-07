; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel.c_minstrel_update_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel.c_minstrel_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minstrel_priv = type { i32 }
%struct.minstrel_sta_info = type { i32, i64, i32, i32, %struct.minstrel_rate* }
%struct.minstrel_rate = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }

@MAX_THR_RATES = common dso_local global i32 0, align 4
@EWMA_LEVEL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.minstrel_priv*, %struct.minstrel_sta_info*)* @minstrel_update_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minstrel_update_stats(%struct.minstrel_priv* %0, %struct.minstrel_sta_info* %1) #0 {
  %3 = alloca %struct.minstrel_priv*, align 8
  %4 = alloca %struct.minstrel_sta_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.minstrel_rate*, align 8
  store %struct.minstrel_priv* %0, %struct.minstrel_priv** %3, align 8
  store %struct.minstrel_sta_info* %1, %struct.minstrel_sta_info** %4, align 8
  %11 = load i32, i32* @MAX_THR_RATES, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i64, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %23, %2
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @MAX_THR_RATES, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %14, i64 %21
  store i64 0, i64* %22, align 8
  br label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %9, align 4
  br label %15

26:                                               ; preds = %15
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %218, %26
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %4, align 8
  %30 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %221

33:                                               ; preds = %27
  %34 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %4, align 8
  %35 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %34, i32 0, i32 4
  %36 = load %struct.minstrel_rate*, %struct.minstrel_rate** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %36, i64 %38
  store %struct.minstrel_rate* %39, %struct.minstrel_rate** %10, align 8
  %40 = load %struct.minstrel_rate*, %struct.minstrel_rate** %10, align 8
  %41 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %33
  store i32 1000000, i32* %8, align 4
  br label %46

46:                                               ; preds = %45, %33
  %47 = load %struct.minstrel_rate*, %struct.minstrel_rate** %10, align 8
  %48 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %93

54:                                               ; preds = %46
  %55 = load %struct.minstrel_rate*, %struct.minstrel_rate** %10, align 8
  %56 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %55, i32 0, i32 11
  store i64 0, i64* %56, align 8
  %57 = load %struct.minstrel_rate*, %struct.minstrel_rate** %10, align 8
  %58 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.minstrel_rate*, %struct.minstrel_rate** %10, align 8
  %61 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 @MINSTREL_FRAC(i32 %59, i32 %63)
  %65 = load %struct.minstrel_rate*, %struct.minstrel_rate** %10, align 8
  %66 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.minstrel_rate*, %struct.minstrel_rate** %10, align 8
  %68 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.minstrel_rate*, %struct.minstrel_rate** %10, align 8
  %71 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %70, i32 0, i32 13
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load %struct.minstrel_rate*, %struct.minstrel_rate** %10, align 8
  %75 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.minstrel_rate*, %struct.minstrel_rate** %10, align 8
  %78 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %77, i32 0, i32 12
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %76
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %78, align 8
  %83 = load %struct.minstrel_rate*, %struct.minstrel_rate** %10, align 8
  %84 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.minstrel_rate*, %struct.minstrel_rate** %10, align 8
  %87 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @EWMA_LEVEL, align 4
  %90 = call i32 @minstrel_ewma(i32 %85, i32 %88, i32 %89)
  %91 = load %struct.minstrel_rate*, %struct.minstrel_rate** %10, align 8
  %92 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 8
  br label %98

93:                                               ; preds = %46
  %94 = load %struct.minstrel_rate*, %struct.minstrel_rate** %10, align 8
  %95 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %94, i32 0, i32 11
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %95, align 8
  br label %98

98:                                               ; preds = %93, %54
  %99 = load %struct.minstrel_rate*, %struct.minstrel_rate** %10, align 8
  %100 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.minstrel_rate*, %struct.minstrel_rate** %10, align 8
  %103 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %102, i32 0, i32 5
  store i32 %101, i32* %103, align 4
  %104 = load %struct.minstrel_rate*, %struct.minstrel_rate** %10, align 8
  %105 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = load %struct.minstrel_rate*, %struct.minstrel_rate** %10, align 8
  %109 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %108, i32 0, i32 6
  store i32 %107, i32* %109, align 8
  %110 = load %struct.minstrel_rate*, %struct.minstrel_rate** %10, align 8
  %111 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %110, i32 0, i32 3
  store i32 0, i32* %111, align 4
  %112 = load %struct.minstrel_rate*, %struct.minstrel_rate** %10, align 8
  %113 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %112, i32 0, i32 1
  store i64 0, i64* %113, align 8
  %114 = load %struct.minstrel_rate*, %struct.minstrel_rate** %10, align 8
  %115 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @MINSTREL_FRAC(i32 10, i32 100)
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %98
  %120 = load %struct.minstrel_rate*, %struct.minstrel_rate** %10, align 8
  %121 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %120, i32 0, i32 7
  store i32 0, i32* %121, align 4
  br label %131

122:                                              ; preds = %98
  %123 = load %struct.minstrel_rate*, %struct.minstrel_rate** %10, align 8
  %124 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sdiv i32 1000000, %126
  %128 = mul nsw i32 %125, %127
  %129 = load %struct.minstrel_rate*, %struct.minstrel_rate** %10, align 8
  %130 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %129, i32 0, i32 7
  store i32 %128, i32* %130, align 4
  br label %131

131:                                              ; preds = %122, %119
  %132 = load %struct.minstrel_rate*, %struct.minstrel_rate** %10, align 8
  %133 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @MINSTREL_FRAC(i32 95, i32 100)
  %136 = icmp sgt i32 %134, %135
  br i1 %136, label %143, label %137

137:                                              ; preds = %131
  %138 = load %struct.minstrel_rate*, %struct.minstrel_rate** %10, align 8
  %139 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @MINSTREL_FRAC(i32 10, i32 100)
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %160

143:                                              ; preds = %137, %131
  %144 = load %struct.minstrel_rate*, %struct.minstrel_rate** %10, align 8
  %145 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %144, i32 0, i32 9
  %146 = load i32, i32* %145, align 4
  %147 = ashr i32 %146, 1
  %148 = load %struct.minstrel_rate*, %struct.minstrel_rate** %10, align 8
  %149 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %148, i32 0, i32 8
  store i32 %147, i32* %149, align 8
  %150 = load %struct.minstrel_rate*, %struct.minstrel_rate** %10, align 8
  %151 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %150, i32 0, i32 8
  %152 = load i32, i32* %151, align 8
  %153 = icmp sgt i32 %152, 2
  br i1 %153, label %154, label %157

154:                                              ; preds = %143
  %155 = load %struct.minstrel_rate*, %struct.minstrel_rate** %10, align 8
  %156 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %155, i32 0, i32 8
  store i32 2, i32* %156, align 8
  br label %157

157:                                              ; preds = %154, %143
  %158 = load %struct.minstrel_rate*, %struct.minstrel_rate** %10, align 8
  %159 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %158, i32 0, i32 10
  store i32 4, i32* %159, align 8
  br label %168

160:                                              ; preds = %137
  %161 = load %struct.minstrel_rate*, %struct.minstrel_rate** %10, align 8
  %162 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %161, i32 0, i32 10
  store i32 -1, i32* %162, align 8
  %163 = load %struct.minstrel_rate*, %struct.minstrel_rate** %10, align 8
  %164 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %163, i32 0, i32 9
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.minstrel_rate*, %struct.minstrel_rate** %10, align 8
  %167 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %166, i32 0, i32 8
  store i32 %165, i32* %167, align 8
  br label %168

168:                                              ; preds = %160, %157
  %169 = load %struct.minstrel_rate*, %struct.minstrel_rate** %10, align 8
  %170 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %169, i32 0, i32 8
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %168
  %174 = load %struct.minstrel_rate*, %struct.minstrel_rate** %10, align 8
  %175 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %174, i32 0, i32 8
  store i32 2, i32* %175, align 8
  br label %176

176:                                              ; preds = %173, %168
  %177 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %4, align 8
  %178 = load i32, i32* %9, align 4
  %179 = call i32 @minstrel_sort_best_tp_rates(%struct.minstrel_sta_info* %177, i32 %178, i64* %14)
  %180 = load %struct.minstrel_rate*, %struct.minstrel_rate** %10, align 8
  %181 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @MINSTREL_FRAC(i32 95, i32 100)
  %184 = icmp sge i32 %182, %183
  br i1 %184, label %185, label %201

185:                                              ; preds = %176
  %186 = load %struct.minstrel_rate*, %struct.minstrel_rate** %10, align 8
  %187 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %186, i32 0, i32 7
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %4, align 8
  %190 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %189, i32 0, i32 4
  %191 = load %struct.minstrel_rate*, %struct.minstrel_rate** %190, align 8
  %192 = load i64, i64* %7, align 8
  %193 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %191, i64 %192
  %194 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %193, i32 0, i32 7
  %195 = load i32, i32* %194, align 4
  %196 = icmp sge i32 %188, %195
  br i1 %196, label %197, label %200

197:                                              ; preds = %185
  %198 = load i32, i32* %9, align 4
  %199 = sext i32 %198 to i64
  store i64 %199, i64* %7, align 8
  br label %200

200:                                              ; preds = %197, %185
  br label %217

201:                                              ; preds = %176
  %202 = load %struct.minstrel_rate*, %struct.minstrel_rate** %10, align 8
  %203 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %4, align 8
  %206 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %205, i32 0, i32 4
  %207 = load %struct.minstrel_rate*, %struct.minstrel_rate** %206, align 8
  %208 = load i64, i64* %7, align 8
  %209 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %207, i64 %208
  %210 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 8
  %212 = icmp sge i32 %204, %211
  br i1 %212, label %213, label %216

213:                                              ; preds = %201
  %214 = load i32, i32* %9, align 4
  %215 = sext i32 %214 to i64
  store i64 %215, i64* %7, align 8
  br label %216

216:                                              ; preds = %213, %201
  br label %217

217:                                              ; preds = %216, %200
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %9, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %9, align 4
  br label %27

221:                                              ; preds = %27
  %222 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %4, align 8
  %223 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @memcpy(i32 %224, i64* %14, i32 4)
  %226 = load i64, i64* %7, align 8
  %227 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %4, align 8
  %228 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %227, i32 0, i32 1
  store i64 %226, i64* %228, align 8
  %229 = load i32, i32* @jiffies, align 4
  %230 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %4, align 8
  %231 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %230, i32 0, i32 2
  store i32 %229, i32* %231, align 8
  %232 = load %struct.minstrel_priv*, %struct.minstrel_priv** %3, align 8
  %233 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %4, align 8
  %234 = call i32 @minstrel_update_rates(%struct.minstrel_priv* %232, %struct.minstrel_sta_info* %233)
  %235 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %235)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @MINSTREL_FRAC(i32, i32) #2

declare dso_local i32 @minstrel_ewma(i32, i32, i32) #2

declare dso_local i32 @minstrel_sort_best_tp_rates(%struct.minstrel_sta_info*, i32, i64*) #2

declare dso_local i32 @memcpy(i32, i64*, i32) #2

declare dso_local i32 @minstrel_update_rates(%struct.minstrel_priv*, %struct.minstrel_sta_info*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
