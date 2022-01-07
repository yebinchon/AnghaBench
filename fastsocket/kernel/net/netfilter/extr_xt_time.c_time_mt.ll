; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_time.c_time_mt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_time.c_time_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.xt_match_param = type { %struct.xt_time_info* }
%struct.xt_time_info = type { i32, i64, i64, i32, i32, i32, i32 }
%struct.xtm = type { i32, i32 }

@NSEC_PER_SEC = common dso_local global i32 0, align 4
@XT_TIME_LOCAL_TZ = common dso_local global i32 0, align 4
@sys_tz = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@XT_TIME_ALL_MONTHDAYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_match_param*)* @time_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @time_mt(%struct.sk_buff* %0, %struct.xt_match_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_match_param*, align 8
  %6 = alloca %struct.xt_time_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xtm, align 4
  %9 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_match_param* %1, %struct.xt_match_param** %5, align 8
  %10 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %11 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %10, i32 0, i32 0
  %12 = load %struct.xt_time_info*, %struct.xt_time_info** %11, align 8
  store %struct.xt_time_info* %12, %struct.xt_time_info** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = call i32 @__net_timestamp(%struct.sk_buff* %19)
  br label %21

21:                                               ; preds = %18, %2
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @ktime_to_ns(i64 %25)
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i32, i32* @NSEC_PER_SEC, align 4
  %29 = call i64 @div_s64(i64 %27, i32 %28)
  store i64 %29, i64* %9, align 8
  %30 = load %struct.xt_time_info*, %struct.xt_time_info** %6, align 8
  %31 = getelementptr inbounds %struct.xt_time_info, %struct.xt_time_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @XT_TIME_LOCAL_TZ, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %21
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sys_tz, i32 0, i32 0), align 4
  %38 = mul nsw i32 60, %37
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %9, align 8
  %41 = sub nsw i64 %40, %39
  store i64 %41, i64* %9, align 8
  br label %42

42:                                               ; preds = %36, %21
  %43 = load i64, i64* %9, align 8
  %44 = load %struct.xt_time_info*, %struct.xt_time_info** %6, align 8
  %45 = getelementptr inbounds %struct.xt_time_info, %struct.xt_time_info* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %43, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load i64, i64* %9, align 8
  %50 = load %struct.xt_time_info*, %struct.xt_time_info** %6, align 8
  %51 = getelementptr inbounds %struct.xt_time_info, %struct.xt_time_info* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48, %42
  store i32 0, i32* %3, align 4
  br label %125

55:                                               ; preds = %48
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @localtime_1(%struct.xtm* %8, i64 %56)
  store i32 %57, i32* %7, align 4
  %58 = load %struct.xt_time_info*, %struct.xt_time_info** %6, align 8
  %59 = getelementptr inbounds %struct.xt_time_info, %struct.xt_time_info* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.xt_time_info*, %struct.xt_time_info** %6, align 8
  %62 = getelementptr inbounds %struct.xt_time_info, %struct.xt_time_info* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = icmp ult i32 %60, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %55
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.xt_time_info*, %struct.xt_time_info** %6, align 8
  %68 = getelementptr inbounds %struct.xt_time_info, %struct.xt_time_info* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = icmp ult i32 %66, %69
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.xt_time_info*, %struct.xt_time_info** %6, align 8
  %74 = getelementptr inbounds %struct.xt_time_info, %struct.xt_time_info* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = icmp ugt i32 %72, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71, %65
  store i32 0, i32* %3, align 4
  br label %125

78:                                               ; preds = %71
  br label %93

79:                                               ; preds = %55
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.xt_time_info*, %struct.xt_time_info** %6, align 8
  %82 = getelementptr inbounds %struct.xt_time_info, %struct.xt_time_info* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = icmp ult i32 %80, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.xt_time_info*, %struct.xt_time_info** %6, align 8
  %88 = getelementptr inbounds %struct.xt_time_info, %struct.xt_time_info* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = icmp ugt i32 %86, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  store i32 0, i32* %3, align 4
  br label %125

92:                                               ; preds = %85, %79
  br label %93

93:                                               ; preds = %92, %78
  %94 = load i64, i64* %9, align 8
  %95 = call i32 @localtime_2(%struct.xtm* %8, i64 %94)
  %96 = load %struct.xt_time_info*, %struct.xt_time_info** %6, align 8
  %97 = getelementptr inbounds %struct.xt_time_info, %struct.xt_time_info* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = getelementptr inbounds %struct.xtm, %struct.xtm* %8, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = shl i32 1, %100
  %102 = and i32 %98, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %93
  store i32 0, i32* %3, align 4
  br label %125

105:                                              ; preds = %93
  %106 = load %struct.xt_time_info*, %struct.xt_time_info** %6, align 8
  %107 = getelementptr inbounds %struct.xt_time_info, %struct.xt_time_info* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @XT_TIME_ALL_MONTHDAYS, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %124

111:                                              ; preds = %105
  %112 = load i64, i64* %9, align 8
  %113 = call i32 @localtime_3(%struct.xtm* %8, i64 %112)
  %114 = load %struct.xt_time_info*, %struct.xt_time_info** %6, align 8
  %115 = getelementptr inbounds %struct.xt_time_info, %struct.xt_time_info* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.xtm, %struct.xtm* %8, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = shl i32 1, %118
  %120 = and i32 %116, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %111
  store i32 0, i32* %3, align 4
  br label %125

123:                                              ; preds = %111
  br label %124

124:                                              ; preds = %123, %105
  store i32 1, i32* %3, align 4
  br label %125

125:                                              ; preds = %124, %122, %104, %91, %77, %54
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @__net_timestamp(%struct.sk_buff*) #1

declare dso_local i64 @ktime_to_ns(i64) #1

declare dso_local i64 @div_s64(i64, i32) #1

declare dso_local i32 @localtime_1(%struct.xtm*, i64) #1

declare dso_local i32 @localtime_2(%struct.xtm*, i64) #1

declare dso_local i32 @localtime_3(%struct.xtm*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
