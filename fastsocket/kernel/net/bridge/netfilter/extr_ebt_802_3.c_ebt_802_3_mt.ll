; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebt_802_3.c_ebt_802_3_mt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebt_802_3.c_ebt_802_3_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_match_param = type { %struct.ebt_802_3_info* }
%struct.ebt_802_3_info = type { i32, i64, i64 }
%struct.ebt_802_3_hdr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i64, i64, i64 }
%struct.TYPE_4__ = type { i64 }

@IS_UI = common dso_local global i32 0, align 4
@EBT_802_3_SAP = common dso_local global i32 0, align 4
@EBT_802_3_TYPE = common dso_local global i32 0, align 4
@CHECK_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_match_param*)* @ebt_802_3_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_802_3_mt(%struct.sk_buff* %0, %struct.xt_match_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_match_param*, align 8
  %6 = alloca %struct.ebt_802_3_info*, align 8
  %7 = alloca %struct.ebt_802_3_hdr*, align 8
  %8 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_match_param* %1, %struct.xt_match_param** %5, align 8
  %9 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %10 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %9, i32 0, i32 0
  %11 = load %struct.ebt_802_3_info*, %struct.ebt_802_3_info** %10, align 8
  store %struct.ebt_802_3_info* %11, %struct.ebt_802_3_info** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call %struct.ebt_802_3_hdr* @ebt_802_3_hdr(%struct.sk_buff* %12)
  store %struct.ebt_802_3_hdr* %13, %struct.ebt_802_3_hdr** %7, align 8
  %14 = load %struct.ebt_802_3_hdr*, %struct.ebt_802_3_hdr** %7, align 8
  %15 = getelementptr inbounds %struct.ebt_802_3_hdr, %struct.ebt_802_3_hdr* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @IS_UI, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.ebt_802_3_hdr*, %struct.ebt_802_3_hdr** %7, align 8
  %24 = getelementptr inbounds %struct.ebt_802_3_hdr, %struct.ebt_802_3_hdr* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  br label %34

28:                                               ; preds = %2
  %29 = load %struct.ebt_802_3_hdr*, %struct.ebt_802_3_hdr** %7, align 8
  %30 = getelementptr inbounds %struct.ebt_802_3_hdr, %struct.ebt_802_3_hdr* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  br label %34

34:                                               ; preds = %28, %22
  %35 = phi i64 [ %27, %22 ], [ %33, %28 ]
  store i64 %35, i64* %8, align 8
  %36 = load %struct.ebt_802_3_info*, %struct.ebt_802_3_info** %6, align 8
  %37 = getelementptr inbounds %struct.ebt_802_3_info, %struct.ebt_802_3_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @EBT_802_3_SAP, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %73

42:                                               ; preds = %34
  %43 = load %struct.ebt_802_3_info*, %struct.ebt_802_3_info** %6, align 8
  %44 = getelementptr inbounds %struct.ebt_802_3_info, %struct.ebt_802_3_info* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ebt_802_3_hdr*, %struct.ebt_802_3_hdr** %7, align 8
  %47 = getelementptr inbounds %struct.ebt_802_3_hdr, %struct.ebt_802_3_hdr* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %45, %50
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* @EBT_802_3_SAP, align 4
  %54 = call i64 @FWINV(i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %110

57:                                               ; preds = %42
  %58 = load %struct.ebt_802_3_info*, %struct.ebt_802_3_info** %6, align 8
  %59 = getelementptr inbounds %struct.ebt_802_3_info, %struct.ebt_802_3_info* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.ebt_802_3_hdr*, %struct.ebt_802_3_hdr** %7, align 8
  %62 = getelementptr inbounds %struct.ebt_802_3_hdr, %struct.ebt_802_3_hdr* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %60, %65
  %67 = zext i1 %66 to i32
  %68 = load i32, i32* @EBT_802_3_SAP, align 4
  %69 = call i64 @FWINV(i32 %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %110

72:                                               ; preds = %57
  br label %73

73:                                               ; preds = %72, %34
  %74 = load %struct.ebt_802_3_info*, %struct.ebt_802_3_info** %6, align 8
  %75 = getelementptr inbounds %struct.ebt_802_3_info, %struct.ebt_802_3_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @EBT_802_3_TYPE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %109

80:                                               ; preds = %73
  %81 = load %struct.ebt_802_3_hdr*, %struct.ebt_802_3_hdr** %7, align 8
  %82 = getelementptr inbounds %struct.ebt_802_3_hdr, %struct.ebt_802_3_hdr* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @CHECK_TYPE, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %80
  %89 = load %struct.ebt_802_3_hdr*, %struct.ebt_802_3_hdr** %7, align 8
  %90 = getelementptr inbounds %struct.ebt_802_3_hdr, %struct.ebt_802_3_hdr* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @CHECK_TYPE, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %97, label %96

96:                                               ; preds = %88, %80
  store i32 0, i32* %3, align 4
  br label %110

97:                                               ; preds = %88
  %98 = load %struct.ebt_802_3_info*, %struct.ebt_802_3_info** %6, align 8
  %99 = getelementptr inbounds %struct.ebt_802_3_info, %struct.ebt_802_3_info* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %8, align 8
  %102 = icmp ne i64 %100, %101
  %103 = zext i1 %102 to i32
  %104 = load i32, i32* @EBT_802_3_TYPE, align 4
  %105 = call i64 @FWINV(i32 %103, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %97
  store i32 0, i32* %3, align 4
  br label %110

108:                                              ; preds = %97
  br label %109

109:                                              ; preds = %108, %73
  store i32 1, i32* %3, align 4
  br label %110

110:                                              ; preds = %109, %107, %96, %71, %56
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.ebt_802_3_hdr* @ebt_802_3_hdr(%struct.sk_buff*) #1

declare dso_local i64 @FWINV(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
