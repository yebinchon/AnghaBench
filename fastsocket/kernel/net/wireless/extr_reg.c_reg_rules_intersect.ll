; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_reg_rules_intersect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_reg_rules_intersect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_reg_rule = type { i32, %struct.ieee80211_power_rule, %struct.ieee80211_freq_range }
%struct.ieee80211_power_rule = type { i64, i64 }
%struct.ieee80211_freq_range = type { i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule*)* @reg_rules_intersect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_rules_intersect(%struct.ieee80211_reg_rule* %0, %struct.ieee80211_reg_rule* %1, %struct.ieee80211_reg_rule* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_reg_rule*, align 8
  %6 = alloca %struct.ieee80211_reg_rule*, align 8
  %7 = alloca %struct.ieee80211_reg_rule*, align 8
  %8 = alloca %struct.ieee80211_freq_range*, align 8
  %9 = alloca %struct.ieee80211_freq_range*, align 8
  %10 = alloca %struct.ieee80211_freq_range*, align 8
  %11 = alloca %struct.ieee80211_power_rule*, align 8
  %12 = alloca %struct.ieee80211_power_rule*, align 8
  %13 = alloca %struct.ieee80211_power_rule*, align 8
  %14 = alloca i64, align 8
  store %struct.ieee80211_reg_rule* %0, %struct.ieee80211_reg_rule** %5, align 8
  store %struct.ieee80211_reg_rule* %1, %struct.ieee80211_reg_rule** %6, align 8
  store %struct.ieee80211_reg_rule* %2, %struct.ieee80211_reg_rule** %7, align 8
  %15 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %15, i32 0, i32 2
  store %struct.ieee80211_freq_range* %16, %struct.ieee80211_freq_range** %8, align 8
  %17 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %17, i32 0, i32 2
  store %struct.ieee80211_freq_range* %18, %struct.ieee80211_freq_range** %9, align 8
  %19 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %7, align 8
  %20 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %19, i32 0, i32 2
  store %struct.ieee80211_freq_range* %20, %struct.ieee80211_freq_range** %10, align 8
  %21 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %5, align 8
  %22 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %21, i32 0, i32 1
  store %struct.ieee80211_power_rule* %22, %struct.ieee80211_power_rule** %11, align 8
  %23 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %6, align 8
  %24 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %23, i32 0, i32 1
  store %struct.ieee80211_power_rule* %24, %struct.ieee80211_power_rule** %12, align 8
  %25 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %7, align 8
  %26 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %25, i32 0, i32 1
  store %struct.ieee80211_power_rule* %26, %struct.ieee80211_power_rule** %13, align 8
  %27 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %8, align 8
  %28 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %9, align 8
  %31 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @max(i64 %29, i64 %32)
  %34 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %10, align 8
  %35 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %8, align 8
  %37 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %9, align 8
  %40 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i8* @min(i64 %38, i64 %41)
  %43 = ptrtoint i8* %42 to i64
  %44 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %10, align 8
  %45 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %8, align 8
  %47 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %9, align 8
  %50 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = call i8* @min(i64 %48, i64 %51)
  %53 = ptrtoint i8* %52 to i64
  %54 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %10, align 8
  %55 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %54, i32 0, i32 2
  store i64 %53, i64* %55, align 8
  %56 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %10, align 8
  %57 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %10, align 8
  %60 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %58, %61
  store i64 %62, i64* %14, align 8
  %63 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %10, align 8
  %64 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %14, align 8
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %3
  %69 = load i64, i64* %14, align 8
  %70 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %10, align 8
  %71 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %70, i32 0, i32 2
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %68, %3
  %73 = load %struct.ieee80211_power_rule*, %struct.ieee80211_power_rule** %11, align 8
  %74 = getelementptr inbounds %struct.ieee80211_power_rule, %struct.ieee80211_power_rule* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.ieee80211_power_rule*, %struct.ieee80211_power_rule** %12, align 8
  %77 = getelementptr inbounds %struct.ieee80211_power_rule, %struct.ieee80211_power_rule* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i8* @min(i64 %75, i64 %78)
  %80 = ptrtoint i8* %79 to i64
  %81 = load %struct.ieee80211_power_rule*, %struct.ieee80211_power_rule** %13, align 8
  %82 = getelementptr inbounds %struct.ieee80211_power_rule, %struct.ieee80211_power_rule* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.ieee80211_power_rule*, %struct.ieee80211_power_rule** %11, align 8
  %84 = getelementptr inbounds %struct.ieee80211_power_rule, %struct.ieee80211_power_rule* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.ieee80211_power_rule*, %struct.ieee80211_power_rule** %12, align 8
  %87 = getelementptr inbounds %struct.ieee80211_power_rule, %struct.ieee80211_power_rule* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i8* @min(i64 %85, i64 %88)
  %90 = ptrtoint i8* %89 to i64
  %91 = load %struct.ieee80211_power_rule*, %struct.ieee80211_power_rule** %13, align 8
  %92 = getelementptr inbounds %struct.ieee80211_power_rule, %struct.ieee80211_power_rule* %91, i32 0, i32 1
  store i64 %90, i64* %92, align 8
  %93 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %5, align 8
  %94 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %6, align 8
  %97 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %95, %98
  %100 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %7, align 8
  %101 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %7, align 8
  %103 = call i32 @is_valid_reg_rule(%struct.ieee80211_reg_rule* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %72
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %4, align 4
  br label %109

108:                                              ; preds = %72
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %108, %105
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i64 @max(i64, i64) #1

declare dso_local i8* @min(i64, i64) #1

declare dso_local i32 @is_valid_reg_rule(%struct.ieee80211_reg_rule*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
