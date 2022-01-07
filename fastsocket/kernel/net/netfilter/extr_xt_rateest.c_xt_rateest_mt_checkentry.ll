; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_rateest.c_xt_rateest_mt_checkentry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_rateest.c_xt_rateest_mt_checkentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtchk_param = type { %struct.xt_rateest_match_info* }
%struct.xt_rateest_match_info = type { i32, i32, %struct.xt_rateest*, %struct.xt_rateest*, i32, i32 }
%struct.xt_rateest = type { i32 }

@XT_RATEEST_MATCH_ABS = common dso_local global i32 0, align 4
@XT_RATEEST_MATCH_REL = common dso_local global i32 0, align 4
@XT_RATEEST_MATCH_BPS = common dso_local global i32 0, align 4
@XT_RATEEST_MATCH_PPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_mtchk_param*)* @xt_rateest_mt_checkentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xt_rateest_mt_checkentry(%struct.xt_mtchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_mtchk_param*, align 8
  %4 = alloca %struct.xt_rateest_match_info*, align 8
  %5 = alloca %struct.xt_rateest*, align 8
  %6 = alloca %struct.xt_rateest*, align 8
  store %struct.xt_mtchk_param* %0, %struct.xt_mtchk_param** %3, align 8
  %7 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %8 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %7, i32 0, i32 0
  %9 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %8, align 8
  store %struct.xt_rateest_match_info* %9, %struct.xt_rateest_match_info** %4, align 8
  %10 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %4, align 8
  %11 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @XT_RATEEST_MATCH_ABS, align 4
  %14 = load i32, i32* @XT_RATEEST_MATCH_REL, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = call i32 @hweight32(i32 %16)
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %71

20:                                               ; preds = %1
  %21 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %4, align 8
  %22 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @XT_RATEEST_MATCH_BPS, align 4
  %25 = load i32, i32* @XT_RATEEST_MATCH_PPS, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  br label %71

30:                                               ; preds = %20
  %31 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %4, align 8
  %32 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %35 [
    i32 130, label %34
    i32 128, label %34
    i32 129, label %34
  ]

34:                                               ; preds = %30, %30, %30
  br label %36

35:                                               ; preds = %30
  br label %71

36:                                               ; preds = %34
  %37 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %4, align 8
  %38 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.xt_rateest* @xt_rateest_lookup(i32 %39)
  store %struct.xt_rateest* %40, %struct.xt_rateest** %5, align 8
  %41 = load %struct.xt_rateest*, %struct.xt_rateest** %5, align 8
  %42 = icmp ne %struct.xt_rateest* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  br label %71

44:                                               ; preds = %36
  %45 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %4, align 8
  %46 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @XT_RATEEST_MATCH_REL, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %44
  %52 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %4, align 8
  %53 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = call %struct.xt_rateest* @xt_rateest_lookup(i32 %54)
  store %struct.xt_rateest* %55, %struct.xt_rateest** %6, align 8
  %56 = load %struct.xt_rateest*, %struct.xt_rateest** %6, align 8
  %57 = icmp ne %struct.xt_rateest* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  br label %68

59:                                               ; preds = %51
  br label %61

60:                                               ; preds = %44
  store %struct.xt_rateest* null, %struct.xt_rateest** %6, align 8
  br label %61

61:                                               ; preds = %60, %59
  %62 = load %struct.xt_rateest*, %struct.xt_rateest** %5, align 8
  %63 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %4, align 8
  %64 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %63, i32 0, i32 3
  store %struct.xt_rateest* %62, %struct.xt_rateest** %64, align 8
  %65 = load %struct.xt_rateest*, %struct.xt_rateest** %6, align 8
  %66 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %4, align 8
  %67 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %66, i32 0, i32 2
  store %struct.xt_rateest* %65, %struct.xt_rateest** %67, align 8
  store i32 1, i32* %2, align 4
  br label %72

68:                                               ; preds = %58
  %69 = load %struct.xt_rateest*, %struct.xt_rateest** %5, align 8
  %70 = call i32 @xt_rateest_put(%struct.xt_rateest* %69)
  br label %71

71:                                               ; preds = %68, %43, %35, %29, %19
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %61
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @hweight32(i32) #1

declare dso_local %struct.xt_rateest* @xt_rateest_lookup(i32) #1

declare dso_local i32 @xt_rateest_put(%struct.xt_rateest*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
