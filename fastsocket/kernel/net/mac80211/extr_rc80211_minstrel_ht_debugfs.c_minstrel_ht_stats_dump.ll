; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel_ht_debugfs.c_minstrel_ht_stats_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel_ht_debugfs.c_minstrel_ht_stats_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcs_group = type { i32, i32 }
%struct.minstrel_ht_sta = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.minstrel_rate_stats* }
%struct.minstrel_rate_stats = type { i32, i32, i32, i32, i32, i32, i64, i64 }

@MINSTREL_MAX_STREAMS = common dso_local global i32 0, align 4
@MINSTREL_STREAM_GROUPS = common dso_local global i32 0, align 4
@minstrel_mcs_groups = common dso_local global %struct.mcs_group* null, align 8
@IEEE80211_TX_RC_40_MHZ_WIDTH = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_SHORT_GI = common dso_local global i32 0, align 4
@MCS_GROUP_RATES = common dso_local global i32 0, align 4
@minstrel_ht_stats_dump.bitrates = internal constant [4 x i32] [i32 10, i32 20, i32 55, i32 110], align 16
@.str = private unnamed_addr constant [11 x i8] c"CCK/%cP   \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"HT%c0/%cGI \00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c" %2u.%1uM\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" MCS%-2u\00", align 1
@.str.4 = private unnamed_addr constant [79 x i8] c"      %6u.%1u   %6u.%1u    %6u.%1u    %3u            %3u(%3u)  %8llu    %8llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.minstrel_ht_sta*, i32, i8*)* @minstrel_ht_stats_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @minstrel_ht_stats_dump(%struct.minstrel_ht_sta* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.minstrel_ht_sta*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mcs_group*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca %struct.minstrel_rate_stats*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.minstrel_ht_sta* %0, %struct.minstrel_ht_sta** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %19 = load i32, i32* @MINSTREL_MAX_STREAMS, align 4
  %20 = load i32, i32* @MINSTREL_STREAM_GROUPS, align 4
  %21 = mul i32 %19, %20
  store i32 %21, i32* %8, align 4
  store i8 50, i8* %14, align 1
  store i8 76, i8* %15, align 1
  %22 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %23 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %3
  %32 = load i8*, i8** %7, align 8
  store i8* %32, i8** %4, align 8
  br label %227

33:                                               ; preds = %3
  %34 = load %struct.mcs_group*, %struct.mcs_group** @minstrel_mcs_groups, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %34, i64 %36
  store %struct.mcs_group* %37, %struct.mcs_group** %9, align 8
  %38 = load %struct.mcs_group*, %struct.mcs_group** %9, align 8
  %39 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IEEE80211_TX_RC_40_MHZ_WIDTH, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  store i8 52, i8* %14, align 1
  br label %45

45:                                               ; preds = %44, %33
  %46 = load %struct.mcs_group*, %struct.mcs_group** %9, align 8
  %47 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IEEE80211_TX_RC_SHORT_GI, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i8 83, i8* %15, align 1
  br label %53

53:                                               ; preds = %52, %45
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %222, %53
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @MCS_GROUP_RATES, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %225

58:                                               ; preds = %54
  %59 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %60 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %59, i32 0, i32 3
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %66, i64 %68
  store %struct.minstrel_rate_stats* %69, %struct.minstrel_rate_stats** %16, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @MCS_GROUP_RATES, align 4
  %72 = mul i32 %70, %71
  %73 = load i32, i32* %10, align 4
  %74 = add i32 %72, %73
  store i32 %74, i32* %17, align 4
  %75 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %76 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %75, i32 0, i32 3
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @BIT(i32 %83)
  %85 = and i32 %82, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %58
  br label %222

88:                                               ; preds = %58
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %88
  %93 = load i8*, i8** %7, align 8
  %94 = load i32, i32* %10, align 4
  %95 = icmp ult i32 %94, 4
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i32 76, i32 83
  %98 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %93, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %97)
  %99 = load i8*, i8** %7, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  store i8* %101, i8** %7, align 8
  br label %112

102:                                              ; preds = %88
  %103 = load i8*, i8** %7, align 8
  %104 = load i8, i8* %14, align 1
  %105 = sext i8 %104 to i32
  %106 = load i8, i8* %15, align 1
  %107 = sext i8 %106 to i32
  %108 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %105, i32 %107)
  %109 = load i8*, i8** %7, align 8
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  store i8* %111, i8** %7, align 8
  br label %112

112:                                              ; preds = %102, %92
  %113 = load i32, i32* %17, align 4
  %114 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %115 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %113, %116
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32 84, i32 32
  %120 = trunc i32 %119 to i8
  %121 = load i8*, i8** %7, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %7, align 8
  store i8 %120, i8* %121, align 1
  %123 = load i32, i32* %17, align 4
  %124 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %125 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %123, %126
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i32 116, i32 32
  %130 = trunc i32 %129 to i8
  %131 = load i8*, i8** %7, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %7, align 8
  store i8 %130, i8* %131, align 1
  %133 = load i32, i32* %17, align 4
  %134 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %135 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = icmp eq i32 %133, %136
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i32 80, i32 32
  %140 = trunc i32 %139 to i8
  %141 = load i8*, i8** %7, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %7, align 8
  store i8 %140, i8* %141, align 1
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* %8, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %161

146:                                              ; preds = %112
  %147 = load i32, i32* %10, align 4
  %148 = urem i32 %147, 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds [4 x i32], [4 x i32]* @minstrel_ht_stats_dump.bitrates, i64 0, i64 %149
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %18, align 4
  %152 = load i8*, i8** %7, align 8
  %153 = load i32, i32* %18, align 4
  %154 = sdiv i32 %153, 10
  %155 = load i32, i32* %18, align 4
  %156 = srem i32 %155, 10
  %157 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %152, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %154, i32 %156)
  %158 = load i8*, i8** %7, align 8
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i8, i8* %158, i64 %159
  store i8* %160, i8** %7, align 8
  br label %175

161:                                              ; preds = %112
  %162 = load i8*, i8** %7, align 8
  %163 = load %struct.mcs_group*, %struct.mcs_group** %9, align 8
  %164 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = sub nsw i32 %165, 1
  %167 = load i32, i32* @MCS_GROUP_RATES, align 4
  %168 = mul i32 %166, %167
  %169 = load i32, i32* %10, align 4
  %170 = add i32 %168, %169
  %171 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %162, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %170)
  %172 = load i8*, i8** %7, align 8
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i8, i8* %172, i64 %173
  store i8* %174, i8** %7, align 8
  br label %175

175:                                              ; preds = %161, %146
  %176 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %16, align 8
  %177 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = sdiv i32 %178, 10
  store i32 %179, i32* %11, align 4
  %180 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %16, align 8
  %181 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = mul nsw i32 %182, 1000
  %184 = call i32 @MINSTREL_TRUNC(i32 %183)
  store i32 %184, i32* %12, align 4
  %185 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %16, align 8
  %186 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = mul nsw i32 %187, 1000
  %189 = call i32 @MINSTREL_TRUNC(i32 %188)
  store i32 %189, i32* %13, align 4
  %190 = load i8*, i8** %7, align 8
  %191 = load i32, i32* %11, align 4
  %192 = udiv i32 %191, 10
  %193 = load i32, i32* %11, align 4
  %194 = urem i32 %193, 10
  %195 = load i32, i32* %13, align 4
  %196 = udiv i32 %195, 10
  %197 = load i32, i32* %13, align 4
  %198 = urem i32 %197, 10
  %199 = load i32, i32* %12, align 4
  %200 = udiv i32 %199, 10
  %201 = load i32, i32* %12, align 4
  %202 = urem i32 %201, 10
  %203 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %16, align 8
  %204 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %16, align 8
  %207 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %16, align 8
  %210 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %209, i32 0, i32 5
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %16, align 8
  %213 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %212, i32 0, i32 7
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %16, align 8
  %216 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %215, i32 0, i32 6
  %217 = load i64, i64* %216, align 8
  %218 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %190, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.4, i64 0, i64 0), i32 %192, i32 %194, i32 %196, i32 %198, i32 %200, i32 %202, i32 %205, i32 %208, i32 %211, i64 %214, i64 %217)
  %219 = load i8*, i8** %7, align 8
  %220 = sext i32 %218 to i64
  %221 = getelementptr inbounds i8, i8* %219, i64 %220
  store i8* %221, i8** %7, align 8
  br label %222

222:                                              ; preds = %175, %87
  %223 = load i32, i32* %10, align 4
  %224 = add i32 %223, 1
  store i32 %224, i32* %10, align 4
  br label %54

225:                                              ; preds = %54
  %226 = load i8*, i8** %7, align 8
  store i8* %226, i8** %4, align 8
  br label %227

227:                                              ; preds = %225, %31
  %228 = load i8*, i8** %4, align 8
  ret i8* %228
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i32 @MINSTREL_TRUNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
