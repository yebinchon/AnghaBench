; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_update_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.minstrel_priv = type { i32 }
%struct.minstrel_ht_sta = type { i64, i32, i32, i32, i32, i32, i32, i32, %struct.minstrel_mcs_group_data*, i64, i32 }
%struct.minstrel_mcs_group_data = type { i32, i32, i32, i32, %struct.minstrel_rate_stats* }
%struct.minstrel_rate_stats = type { i32, i32, i32, i32 }

@EWMA_LEVEL = common dso_local global i32 0, align 4
@minstrel_mcs_groups = common dso_local global %struct.TYPE_3__* null, align 8
@MCS_GROUP_RATES = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.minstrel_priv*, %struct.minstrel_ht_sta*)* @minstrel_ht_update_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minstrel_ht_update_stats(%struct.minstrel_priv* %0, %struct.minstrel_ht_sta* %1) #0 {
  %3 = alloca %struct.minstrel_priv*, align 8
  %4 = alloca %struct.minstrel_ht_sta*, align 8
  %5 = alloca %struct.minstrel_mcs_group_data*, align 8
  %6 = alloca %struct.minstrel_rate_stats*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.minstrel_priv* %0, %struct.minstrel_priv** %3, align 8
  store %struct.minstrel_ht_sta* %1, %struct.minstrel_ht_sta** %4, align 8
  store i32 0, i32* %14, align 4
  %16 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %17 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %2
  %21 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %22 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %21, i32 0, i32 10
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %25 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %28 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @MINSTREL_FRAC(i32 %26, i32 %30)
  %32 = load i32, i32* @EWMA_LEVEL, align 4
  %33 = call i32 @minstrel_ewma(i32 %23, i32 %31, i32 %32)
  %34 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %35 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %34, i32 0, i32 10
  store i32 %33, i32* %35, align 8
  %36 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %37 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %36, i32 0, i32 1
  store i32 0, i32* %37, align 8
  %38 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %39 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %20, %2
  %41 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %42 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %41, i32 0, i32 9
  store i64 0, i64* %42, align 8
  %43 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %44 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %43, i32 0, i32 2
  store i32 0, i32* %44, align 4
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %198, %40
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @minstrel_mcs_groups, align 8
  %48 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %47)
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %201

50:                                               ; preds = %45
  store i32 0, i32* %15, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %51 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %52 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %51, i32 0, i32 8
  %53 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %53, i64 %55
  store %struct.minstrel_mcs_group_data* %56, %struct.minstrel_mcs_group_data** %5, align 8
  %57 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %5, align 8
  %58 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %50
  br label %198

62:                                               ; preds = %50
  %63 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %64 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  store i32 0, i32* %12, align 4
  br label %67

67:                                               ; preds = %194, %62
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @MCS_GROUP_RATES, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %197

71:                                               ; preds = %67
  %72 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %5, align 8
  %73 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @BIT(i32 %75)
  %77 = and i32 %74, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %71
  br label %194

80:                                               ; preds = %71
  %81 = load i32, i32* %15, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %102, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %12, align 4
  %85 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %5, align 8
  %86 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %5, align 8
  %88 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %87, i32 0, i32 2
  store i32 %84, i32* %88, align 8
  %89 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %5, align 8
  %90 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %89, i32 0, i32 1
  store i32 %84, i32* %90, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %83
  %94 = load i32, i32* %12, align 4
  %95 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %96 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 8
  %97 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %98 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %97, i32 0, i32 4
  store i32 %94, i32* %98, align 4
  %99 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %100 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %99, i32 0, i32 3
  store i32 %94, i32* %100, align 8
  store i32 1, i32* %14, align 4
  br label %101

101:                                              ; preds = %93, %83
  store i32 1, i32* %15, align 4
  br label %102

102:                                              ; preds = %101, %80
  %103 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %5, align 8
  %104 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %103, i32 0, i32 4
  %105 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %104, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %105, i64 %107
  store %struct.minstrel_rate_stats* %108, %struct.minstrel_rate_stats** %6, align 8
  %109 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %6, align 8
  %110 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %109, i32 0, i32 0
  store i32 0, i32* %110, align 4
  %111 = load i32, i32* @MCS_GROUP_RATES, align 4
  %112 = load i32, i32* %11, align 4
  %113 = mul nsw i32 %111, %112
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %113, %114
  store i32 %115, i32* %13, align 4
  %116 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %6, align 8
  %117 = call i32 @minstrel_calc_rate_ewma(%struct.minstrel_rate_stats* %116)
  %118 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %12, align 4
  %121 = call i32 @minstrel_ht_calc_tp(%struct.minstrel_ht_sta* %118, i32 %119, i32 %120)
  %122 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %6, align 8
  %123 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %102
  br label %194

127:                                              ; preds = %102
  %128 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %6, align 8
  %129 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp sgt i32 %130, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %127
  %134 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %6, align 8
  %135 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @MINSTREL_FRAC(i32 3, i32 4)
  %138 = icmp sgt i32 %136, %137
  br i1 %138, label %145, label %139

139:                                              ; preds = %133, %127
  %140 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %6, align 8
  %141 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %7, align 4
  %144 = icmp sgt i32 %142, %143
  br i1 %144, label %145, label %155

145:                                              ; preds = %139, %133
  %146 = load i32, i32* %13, align 4
  %147 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %5, align 8
  %148 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %147, i32 0, i32 3
  store i32 %146, i32* %148, align 4
  %149 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %6, align 8
  %150 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %7, align 4
  %152 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %6, align 8
  %153 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %8, align 4
  br label %155

155:                                              ; preds = %145, %139
  %156 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %6, align 8
  %157 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %9, align 4
  %160 = icmp sgt i32 %158, %159
  br i1 %160, label %161, label %173

161:                                              ; preds = %155
  %162 = load i32, i32* %13, align 4
  %163 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %5, align 8
  %164 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @swap(i32 %162, i32 %165)
  %167 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %6, align 8
  %168 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %9, align 4
  %170 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %171 = load i32, i32* %13, align 4
  %172 = call %struct.minstrel_rate_stats* @minstrel_get_ratestats(%struct.minstrel_ht_sta* %170, i32 %171)
  store %struct.minstrel_rate_stats* %172, %struct.minstrel_rate_stats** %6, align 8
  br label %173

173:                                              ; preds = %161, %155
  %174 = load i32, i32* %13, align 4
  %175 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %5, align 8
  %176 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = icmp sge i32 %174, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %173
  br label %194

180:                                              ; preds = %173
  %181 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %6, align 8
  %182 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %10, align 4
  %185 = icmp sgt i32 %183, %184
  br i1 %185, label %186, label %193

186:                                              ; preds = %180
  %187 = load i32, i32* %13, align 4
  %188 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %5, align 8
  %189 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %188, i32 0, i32 2
  store i32 %187, i32* %189, align 8
  %190 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %6, align 8
  %191 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  store i32 %192, i32* %10, align 4
  br label %193

193:                                              ; preds = %186, %180
  br label %194

194:                                              ; preds = %193, %179, %126, %79
  %195 = load i32, i32* %12, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %12, align 4
  br label %67

197:                                              ; preds = %67
  br label %198

198:                                              ; preds = %197, %61
  %199 = load i32, i32* %11, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %11, align 4
  br label %45

201:                                              ; preds = %45
  %202 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %203 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = mul nsw i32 %204, 8
  store i32 %205, i32* %203, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %206

206:                                              ; preds = %279, %201
  %207 = load i32, i32* %11, align 4
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** @minstrel_mcs_groups, align 8
  %209 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %208)
  %210 = icmp slt i32 %207, %209
  br i1 %210, label %211, label %282

211:                                              ; preds = %206
  %212 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %213 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %212, i32 0, i32 8
  %214 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %213, align 8
  %215 = load i32, i32* %11, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %214, i64 %216
  store %struct.minstrel_mcs_group_data* %217, %struct.minstrel_mcs_group_data** %5, align 8
  %218 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %5, align 8
  %219 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %223, label %222

222:                                              ; preds = %211
  br label %279

223:                                              ; preds = %211
  %224 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %225 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %5, align 8
  %226 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = call %struct.minstrel_rate_stats* @minstrel_get_ratestats(%struct.minstrel_ht_sta* %224, i32 %227)
  store %struct.minstrel_rate_stats* %228, %struct.minstrel_rate_stats** %6, align 8
  %229 = load i32, i32* %9, align 4
  %230 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %6, align 8
  %231 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = icmp slt i32 %229, %232
  br i1 %233, label %234, label %258

234:                                              ; preds = %223
  %235 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %236 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %239 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %238, i32 0, i32 4
  store i32 %237, i32* %239, align 4
  %240 = load i32, i32* %9, align 4
  store i32 %240, i32* %10, align 4
  %241 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %5, align 8
  %242 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %245 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %244, i32 0, i32 3
  store i32 %243, i32* %245, align 8
  %246 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %6, align 8
  %247 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  store i32 %248, i32* %9, align 4
  %249 = load %struct.TYPE_3__*, %struct.TYPE_3__** @minstrel_mcs_groups, align 8
  %250 = load i32, i32* %11, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = sub nsw i32 %254, 1
  %256 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %257 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %256, i32 0, i32 6
  store i32 %255, i32* %257, align 4
  br label %258

258:                                              ; preds = %234, %223
  %259 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %260 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %5, align 8
  %261 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = call %struct.minstrel_rate_stats* @minstrel_get_ratestats(%struct.minstrel_ht_sta* %259, i32 %262)
  store %struct.minstrel_rate_stats* %263, %struct.minstrel_rate_stats** %6, align 8
  %264 = load i32, i32* %10, align 4
  %265 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %6, align 8
  %266 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = icmp slt i32 %264, %267
  br i1 %268, label %269, label %278

269:                                              ; preds = %258
  %270 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %5, align 8
  %271 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %274 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %273, i32 0, i32 4
  store i32 %272, i32* %274, align 4
  %275 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %6, align 8
  %276 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  store i32 %277, i32* %10, align 4
  br label %278

278:                                              ; preds = %269, %258
  br label %279

279:                                              ; preds = %278, %222
  %280 = load i32, i32* %11, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %11, align 4
  br label %206

282:                                              ; preds = %206
  %283 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %284 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %283, i32 0, i32 6
  %285 = load i32, i32* %284, align 4
  %286 = icmp slt i32 %285, 1
  br i1 %286, label %287, label %290

287:                                              ; preds = %282
  %288 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %289 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %288, i32 0, i32 6
  store i32 1, i32* %289, align 4
  br label %290

290:                                              ; preds = %287, %282
  store i32 0, i32* %11, align 4
  br label %291

291:                                              ; preds = %343, %290
  %292 = load i32, i32* %11, align 4
  %293 = load %struct.TYPE_3__*, %struct.TYPE_3__** @minstrel_mcs_groups, align 8
  %294 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %293)
  %295 = icmp slt i32 %292, %294
  br i1 %295, label %296, label %346

296:                                              ; preds = %291
  %297 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %298 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %297, i32 0, i32 8
  %299 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %298, align 8
  %300 = load i32, i32* %11, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %299, i64 %301
  store %struct.minstrel_mcs_group_data* %302, %struct.minstrel_mcs_group_data** %5, align 8
  %303 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %5, align 8
  %304 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %308, label %307

307:                                              ; preds = %296
  br label %343

308:                                              ; preds = %296
  %309 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %310 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %5, align 8
  %311 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %310, i32 0, i32 3
  %312 = load i32, i32* %311, align 4
  %313 = call %struct.minstrel_rate_stats* @minstrel_get_ratestats(%struct.minstrel_ht_sta* %309, i32 %312)
  store %struct.minstrel_rate_stats* %313, %struct.minstrel_rate_stats** %6, align 8
  %314 = load i32, i32* %8, align 4
  %315 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %6, align 8
  %316 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = icmp slt i32 %314, %317
  br i1 %318, label %319, label %342

319:                                              ; preds = %308
  %320 = load %struct.TYPE_3__*, %struct.TYPE_3__** @minstrel_mcs_groups, align 8
  %321 = load i32, i32* %11, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %320, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %327 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %326, i32 0, i32 6
  %328 = load i32, i32* %327, align 4
  %329 = icmp sle i32 %325, %328
  br i1 %329, label %330, label %342

330:                                              ; preds = %319
  %331 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %5, align 8
  %332 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %331, i32 0, i32 3
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %335 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %334, i32 0, i32 5
  store i32 %333, i32* %335, align 8
  %336 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %6, align 8
  %337 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %336, i32 0, i32 3
  %338 = load i32, i32* %337, align 4
  store i32 %338, i32* %7, align 4
  %339 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %6, align 8
  %340 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  store i32 %341, i32* %8, align 4
  br label %342

342:                                              ; preds = %330, %319, %308
  br label %343

343:                                              ; preds = %342, %307
  %344 = load i32, i32* %11, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %11, align 4
  br label %291

346:                                              ; preds = %291
  %347 = load i32, i32* @jiffies, align 4
  %348 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %4, align 8
  %349 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %348, i32 0, i32 7
  store i32 %347, i32* %349, align 8
  ret void
}

declare dso_local i32 @minstrel_ewma(i32, i32, i32) #1

declare dso_local i32 @MINSTREL_FRAC(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @minstrel_calc_rate_ewma(%struct.minstrel_rate_stats*) #1

declare dso_local i32 @minstrel_ht_calc_tp(%struct.minstrel_ht_sta*, i32, i32) #1

declare dso_local i32 @swap(i32, i32) #1

declare dso_local %struct.minstrel_rate_stats* @minstrel_get_ratestats(%struct.minstrel_ht_sta*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
