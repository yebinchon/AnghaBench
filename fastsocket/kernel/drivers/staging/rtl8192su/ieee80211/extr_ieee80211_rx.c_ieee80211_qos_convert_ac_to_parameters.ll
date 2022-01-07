; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_rx.c_ieee80211_qos_convert_ac_to_parameters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_rx.c_ieee80211_qos_convert_ac_to_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_qos_parameter_info = type { %struct.ieee80211_qos_ac_parameter* }
%struct.ieee80211_qos_ac_parameter = type { i32, i32, i32 }
%struct.ieee80211_qos_parameters = type { i32*, i32*, i32*, i32*, i32* }

@QOS_QUEUE_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_qos_parameter_info*, %struct.ieee80211_qos_parameters*)* @ieee80211_qos_convert_ac_to_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_qos_convert_ac_to_parameters(%struct.ieee80211_qos_parameter_info* %0, %struct.ieee80211_qos_parameters* %1) #0 {
  %3 = alloca %struct.ieee80211_qos_parameter_info*, align 8
  %4 = alloca %struct.ieee80211_qos_parameters*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_qos_ac_parameter*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_qos_parameter_info* %0, %struct.ieee80211_qos_parameter_info** %3, align 8
  store %struct.ieee80211_qos_parameters* %1, %struct.ieee80211_qos_parameters** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %109, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @QOS_QUEUE_NUM, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %112

13:                                               ; preds = %9
  %14 = load %struct.ieee80211_qos_parameter_info*, %struct.ieee80211_qos_parameter_info** %3, align 8
  %15 = getelementptr inbounds %struct.ieee80211_qos_parameter_info, %struct.ieee80211_qos_parameter_info* %14, i32 0, i32 0
  %16 = load %struct.ieee80211_qos_ac_parameter*, %struct.ieee80211_qos_ac_parameter** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ieee80211_qos_ac_parameter, %struct.ieee80211_qos_ac_parameter* %16, i64 %18
  store %struct.ieee80211_qos_ac_parameter* %19, %struct.ieee80211_qos_ac_parameter** %7, align 8
  %20 = load %struct.ieee80211_qos_ac_parameter*, %struct.ieee80211_qos_ac_parameter** %7, align 8
  %21 = getelementptr inbounds %struct.ieee80211_qos_ac_parameter, %struct.ieee80211_qos_ac_parameter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 96
  %24 = ashr i32 %23, 5
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @QOS_QUEUE_NUM, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %13
  br label %109

29:                                               ; preds = %13
  %30 = load %struct.ieee80211_qos_ac_parameter*, %struct.ieee80211_qos_ac_parameter** %7, align 8
  %31 = getelementptr inbounds %struct.ieee80211_qos_ac_parameter, %struct.ieee80211_qos_ac_parameter* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 15
  %34 = load %struct.ieee80211_qos_parameters*, %struct.ieee80211_qos_parameters** %4, align 8
  %35 = getelementptr inbounds %struct.ieee80211_qos_parameters, %struct.ieee80211_qos_parameters* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %33, i32* %39, align 4
  %40 = load %struct.ieee80211_qos_parameters*, %struct.ieee80211_qos_parameters** %4, align 8
  %41 = getelementptr inbounds %struct.ieee80211_qos_parameters, %struct.ieee80211_qos_parameters* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %46, 2
  br i1 %47, label %48, label %49

48:                                               ; preds = %29
  br label %57

49:                                               ; preds = %29
  %50 = load %struct.ieee80211_qos_parameters*, %struct.ieee80211_qos_parameters** %4, align 8
  %51 = getelementptr inbounds %struct.ieee80211_qos_parameters, %struct.ieee80211_qos_parameters* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  br label %57

57:                                               ; preds = %49, %48
  %58 = phi i32 [ 2, %48 ], [ %56, %49 ]
  %59 = load %struct.ieee80211_qos_parameters*, %struct.ieee80211_qos_parameters** %4, align 8
  %60 = getelementptr inbounds %struct.ieee80211_qos_parameters, %struct.ieee80211_qos_parameters* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %58, i32* %64, align 4
  %65 = load %struct.ieee80211_qos_ac_parameter*, %struct.ieee80211_qos_ac_parameter** %7, align 8
  %66 = getelementptr inbounds %struct.ieee80211_qos_ac_parameter, %struct.ieee80211_qos_ac_parameter* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 15
  %69 = load %struct.ieee80211_qos_parameters*, %struct.ieee80211_qos_parameters** %4, align 8
  %70 = getelementptr inbounds %struct.ieee80211_qos_parameters, %struct.ieee80211_qos_parameters* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %68, i32* %74, align 4
  %75 = load %struct.ieee80211_qos_ac_parameter*, %struct.ieee80211_qos_ac_parameter** %7, align 8
  %76 = getelementptr inbounds %struct.ieee80211_qos_ac_parameter, %struct.ieee80211_qos_ac_parameter* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 240
  %79 = ashr i32 %78, 4
  %80 = load %struct.ieee80211_qos_parameters*, %struct.ieee80211_qos_parameters** %4, align 8
  %81 = getelementptr inbounds %struct.ieee80211_qos_parameters, %struct.ieee80211_qos_parameters* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %79, i32* %85, align 4
  %86 = load %struct.ieee80211_qos_ac_parameter*, %struct.ieee80211_qos_ac_parameter** %7, align 8
  %87 = getelementptr inbounds %struct.ieee80211_qos_ac_parameter, %struct.ieee80211_qos_ac_parameter* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 16
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 1, i32 0
  %93 = load %struct.ieee80211_qos_parameters*, %struct.ieee80211_qos_parameters** %4, align 8
  %94 = getelementptr inbounds %struct.ieee80211_qos_parameters, %struct.ieee80211_qos_parameters* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 %92, i32* %98, align 4
  %99 = load %struct.ieee80211_qos_ac_parameter*, %struct.ieee80211_qos_ac_parameter** %7, align 8
  %100 = getelementptr inbounds %struct.ieee80211_qos_ac_parameter, %struct.ieee80211_qos_ac_parameter* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @le16_to_cpu(i32 %101)
  %103 = load %struct.ieee80211_qos_parameters*, %struct.ieee80211_qos_parameters** %4, align 8
  %104 = getelementptr inbounds %struct.ieee80211_qos_parameters, %struct.ieee80211_qos_parameters* %103, i32 0, i32 4
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 %102, i32* %108, align 4
  br label %109

109:                                              ; preds = %57, %28
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %6, align 4
  br label %9

112:                                              ; preds = %9
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
