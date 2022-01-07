; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_calc_retransmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_calc_retransmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcs_group = type { i32* }
%struct.minstrel_priv = type { i32, i32, i32, i32 }
%struct.minstrel_ht_sta = type { i32, i32, i32 }
%struct.minstrel_rate_stats = type { i64, i32, i32, i32 }

@minstrel_mcs_groups = common dso_local global %struct.mcs_group* null, align 8
@MCS_GROUP_RATES = common dso_local global i32 0, align 4
@MINSTREL_CCK_GROUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.minstrel_priv*, %struct.minstrel_ht_sta*, i32)* @minstrel_calc_retransmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minstrel_calc_retransmit(%struct.minstrel_priv* %0, %struct.minstrel_ht_sta* %1, i32 %2) #0 {
  %4 = alloca %struct.minstrel_priv*, align 8
  %5 = alloca %struct.minstrel_ht_sta*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.minstrel_rate_stats*, align 8
  %8 = alloca %struct.mcs_group*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.minstrel_priv* %0, %struct.minstrel_priv** %4, align 8
  store %struct.minstrel_ht_sta* %1, %struct.minstrel_ht_sta** %5, align 8
  store i32 %2, i32* %6, align 4
  %18 = load %struct.minstrel_priv*, %struct.minstrel_priv** %4, align 8
  %19 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 9, i32* %14, align 4
  %21 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %22 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @MINSTREL_TRUNC(i32 %23)
  store i32 %24, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %25 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call %struct.minstrel_rate_stats* @minstrel_get_ratestats(%struct.minstrel_ht_sta* %25, i32 %26)
  store %struct.minstrel_rate_stats* %27, %struct.minstrel_rate_stats** %7, align 8
  %28 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %7, align 8
  %29 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @MINSTREL_FRAC(i32 1, i32 10)
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %3
  %34 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %7, align 8
  %35 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %34, i32 0, i32 1
  store i32 1, i32* %35, align 8
  %36 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %7, align 8
  %37 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %36, i32 0, i32 2
  store i32 1, i32* %37, align 4
  br label %166

38:                                               ; preds = %3
  %39 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %7, align 8
  %40 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %39, i32 0, i32 1
  store i32 2, i32* %40, align 8
  %41 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %7, align 8
  %42 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %41, i32 0, i32 2
  store i32 2, i32* %42, align 4
  %43 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %7, align 8
  %44 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %43, i32 0, i32 3
  store i32 1, i32* %44, align 8
  %45 = load %struct.mcs_group*, %struct.mcs_group** @minstrel_mcs_groups, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @MCS_GROUP_RATES, align 4
  %48 = sdiv i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %45, i64 %49
  store %struct.mcs_group* %50, %struct.mcs_group** %8, align 8
  %51 = load %struct.mcs_group*, %struct.mcs_group** %8, align 8
  %52 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @MCS_GROUP_RATES, align 4
  %56 = srem i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %53, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %15, align 4
  %61 = mul i32 %59, %60
  %62 = udiv i32 %61, 1000
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %12, align 4
  %65 = mul i32 %63, %64
  %66 = lshr i32 %65, 1
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %12, align 4
  %68 = shl i32 %67, 1
  %69 = or i32 %68, 1
  %70 = load %struct.minstrel_priv*, %struct.minstrel_priv** %4, align 8
  %71 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @min(i32 %69, i32 %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %12, align 4
  %76 = mul i32 %74, %75
  %77 = lshr i32 %76, 1
  %78 = load i32, i32* %13, align 4
  %79 = add i32 %78, %77
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %12, align 4
  %81 = shl i32 %80, 1
  %82 = or i32 %81, 1
  %83 = load %struct.minstrel_priv*, %struct.minstrel_priv** %4, align 8
  %84 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @min(i32 %82, i32 %85)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @MCS_GROUP_RATES, align 4
  %89 = sdiv i32 %87, %88
  %90 = load i32, i32* @MINSTREL_CCK_GROUP, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %38
  %93 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %94 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %16, align 4
  %96 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %97 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %17, align 4
  br label %99

99:                                               ; preds = %92, %38
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* %11, align 4
  %103 = add i32 %101, %102
  %104 = mul i32 2, %103
  %105 = add i32 %100, %104
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %17, align 4
  %108 = load i32, i32* %11, align 4
  %109 = add i32 %107, %108
  %110 = mul i32 2, %109
  %111 = add i32 %106, %110
  store i32 %111, i32* %10, align 4
  br label %112

112:                                              ; preds = %164, %99
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %12, align 4
  %115 = mul i32 %113, %114
  %116 = lshr i32 %115, 1
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %12, align 4
  %118 = shl i32 %117, 1
  %119 = or i32 %118, 1
  %120 = load %struct.minstrel_priv*, %struct.minstrel_priv** %4, align 8
  %121 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @min(i32 %119, i32 %122)
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %16, align 4
  %126 = add i32 %124, %125
  %127 = load i32, i32* %11, align 4
  %128 = add i32 %126, %127
  %129 = load i32, i32* %9, align 4
  %130 = add i32 %129, %128
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %17, align 4
  %133 = add i32 %131, %132
  %134 = load i32, i32* %11, align 4
  %135 = add i32 %133, %134
  %136 = load i32, i32* %10, align 4
  %137 = add i32 %136, %135
  store i32 %137, i32* %10, align 4
  %138 = load i32, i32* %10, align 4
  %139 = load %struct.minstrel_priv*, %struct.minstrel_priv** %4, align 8
  %140 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp ult i32 %138, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %112
  %144 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %7, align 8
  %145 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %143, %112
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %9, align 4
  %151 = load %struct.minstrel_priv*, %struct.minstrel_priv** %4, align 8
  %152 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = icmp ult i32 %150, %153
  br i1 %154, label %155, label %164

155:                                              ; preds = %149
  %156 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %7, align 8
  %157 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 8
  %160 = load %struct.minstrel_priv*, %struct.minstrel_priv** %4, align 8
  %161 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = icmp slt i32 %159, %162
  br label %164

164:                                              ; preds = %155, %149
  %165 = phi i1 [ false, %149 ], [ %163, %155 ]
  br i1 %165, label %112, label %166

166:                                              ; preds = %33, %164
  ret void
}

declare dso_local i32 @MINSTREL_TRUNC(i32) #1

declare dso_local %struct.minstrel_rate_stats* @minstrel_get_ratestats(%struct.minstrel_ht_sta*, i32) #1

declare dso_local i64 @MINSTREL_FRAC(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
