; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebt_vlan.c_ebt_vlan_mt_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebt_vlan.c_ebt_vlan_mt_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtchk_param = type { %struct.ebt_entry*, %struct.ebt_vlan_info* }
%struct.ebt_entry = type { i64 }
%struct.ebt_vlan_info = type { i32, i32, i16, i16, i64 }

@ETH_P_8021Q = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"passed entry proto %2.4X is not 802.1Q (8100)\0A\00", align 1
@EBT_VLAN_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"bitmask %2X is out of mask (%2X)\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"inversion flags %2X is out of mask (%2X)\0A\00", align 1
@EBT_VLAN_ID = common dso_local global i32 0, align 4
@VLAN_GROUP_ARRAY_LEN = common dso_local global i16 0, align 2
@.str.3 = private unnamed_addr constant [32 x i8] c"id %d is out of range (1-4096)\0A\00", align 1
@EBT_VLAN_PRIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"prio %d is out of range (0-7)\0A\00", align 1
@EBT_VLAN_ENCAP = common dso_local global i32 0, align 4
@ETH_ZLEN = common dso_local global i16 0, align 2
@.str.5 = private unnamed_addr constant [44 x i8] c"encap frame length %d is less than minimal\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_mtchk_param*)* @ebt_vlan_mt_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_vlan_mt_check(%struct.xt_mtchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_mtchk_param*, align 8
  %4 = alloca %struct.ebt_vlan_info*, align 8
  %5 = alloca %struct.ebt_entry*, align 8
  store %struct.xt_mtchk_param* %0, %struct.xt_mtchk_param** %3, align 8
  %6 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %7 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %6, i32 0, i32 1
  %8 = load %struct.ebt_vlan_info*, %struct.ebt_vlan_info** %7, align 8
  store %struct.ebt_vlan_info* %8, %struct.ebt_vlan_info** %4, align 8
  %9 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %10 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %9, i32 0, i32 0
  %11 = load %struct.ebt_entry*, %struct.ebt_entry** %10, align 8
  store %struct.ebt_entry* %11, %struct.ebt_entry** %5, align 8
  %12 = load %struct.ebt_entry*, %struct.ebt_entry** %5, align 8
  %13 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @ETH_P_8021Q, align 4
  %16 = call i64 @htons(i32 %15)
  %17 = icmp ne i64 %14, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.ebt_entry*, %struct.ebt_entry** %5, align 8
  %20 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call zeroext i16 @ntohs(i64 %21)
  %23 = call i32 (i8*, i16, ...) @DEBUG_MSG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i16 zeroext %22)
  store i32 0, i32* %2, align 4
  br label %122

24:                                               ; preds = %1
  %25 = load %struct.ebt_vlan_info*, %struct.ebt_vlan_info** %4, align 8
  %26 = getelementptr inbounds %struct.ebt_vlan_info, %struct.ebt_vlan_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @EBT_VLAN_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %24
  %33 = load %struct.ebt_vlan_info*, %struct.ebt_vlan_info** %4, align 8
  %34 = getelementptr inbounds %struct.ebt_vlan_info, %struct.ebt_vlan_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = trunc i32 %35 to i16
  %37 = load i32, i32* @EBT_VLAN_MASK, align 4
  %38 = call i32 (i8*, i16, ...) @DEBUG_MSG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %36, i32 %37)
  store i32 0, i32* %2, align 4
  br label %122

39:                                               ; preds = %24
  %40 = load %struct.ebt_vlan_info*, %struct.ebt_vlan_info** %4, align 8
  %41 = getelementptr inbounds %struct.ebt_vlan_info, %struct.ebt_vlan_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @EBT_VLAN_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %39
  %48 = load %struct.ebt_vlan_info*, %struct.ebt_vlan_info** %4, align 8
  %49 = getelementptr inbounds %struct.ebt_vlan_info, %struct.ebt_vlan_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = trunc i32 %50 to i16
  %52 = load i32, i32* @EBT_VLAN_MASK, align 4
  %53 = call i32 (i8*, i16, ...) @DEBUG_MSG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i16 zeroext %51, i32 %52)
  store i32 0, i32* %2, align 4
  br label %122

54:                                               ; preds = %39
  %55 = load i32, i32* @EBT_VLAN_ID, align 4
  %56 = call i64 @GET_BITMASK(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %84

58:                                               ; preds = %54
  %59 = load %struct.ebt_vlan_info*, %struct.ebt_vlan_info** %4, align 8
  %60 = getelementptr inbounds %struct.ebt_vlan_info, %struct.ebt_vlan_info* %59, i32 0, i32 2
  %61 = load i16, i16* %60, align 8
  %62 = icmp ne i16 %61, 0
  br i1 %62, label %63, label %83

63:                                               ; preds = %58
  %64 = load %struct.ebt_vlan_info*, %struct.ebt_vlan_info** %4, align 8
  %65 = getelementptr inbounds %struct.ebt_vlan_info, %struct.ebt_vlan_info* %64, i32 0, i32 2
  %66 = load i16, i16* %65, align 8
  %67 = zext i16 %66 to i32
  %68 = load i16, i16* @VLAN_GROUP_ARRAY_LEN, align 2
  %69 = zext i16 %68 to i32
  %70 = icmp sgt i32 %67, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %63
  %72 = load %struct.ebt_vlan_info*, %struct.ebt_vlan_info** %4, align 8
  %73 = getelementptr inbounds %struct.ebt_vlan_info, %struct.ebt_vlan_info* %72, i32 0, i32 2
  %74 = load i16, i16* %73, align 8
  %75 = call i32 (i8*, i16, ...) @DEBUG_MSG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i16 zeroext %74)
  store i32 0, i32* %2, align 4
  br label %122

76:                                               ; preds = %63
  %77 = load i32, i32* @EBT_VLAN_PRIO, align 4
  %78 = xor i32 %77, -1
  %79 = load %struct.ebt_vlan_info*, %struct.ebt_vlan_info** %4, align 8
  %80 = getelementptr inbounds %struct.ebt_vlan_info, %struct.ebt_vlan_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = and i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %76, %58
  br label %84

84:                                               ; preds = %83, %54
  %85 = load i32, i32* @EBT_VLAN_PRIO, align 4
  %86 = call i64 @GET_BITMASK(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %84
  %89 = load %struct.ebt_vlan_info*, %struct.ebt_vlan_info** %4, align 8
  %90 = getelementptr inbounds %struct.ebt_vlan_info, %struct.ebt_vlan_info* %89, i32 0, i32 3
  %91 = load i16, i16* %90, align 2
  %92 = trunc i16 %91 to i8
  %93 = zext i8 %92 to i32
  %94 = icmp sgt i32 %93, 7
  br i1 %94, label %95, label %100

95:                                               ; preds = %88
  %96 = load %struct.ebt_vlan_info*, %struct.ebt_vlan_info** %4, align 8
  %97 = getelementptr inbounds %struct.ebt_vlan_info, %struct.ebt_vlan_info* %96, i32 0, i32 3
  %98 = load i16, i16* %97, align 2
  %99 = call i32 (i8*, i16, ...) @DEBUG_MSG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i16 zeroext %98)
  store i32 0, i32* %2, align 4
  br label %122

100:                                              ; preds = %88
  br label %101

101:                                              ; preds = %100, %84
  %102 = load i32, i32* @EBT_VLAN_ENCAP, align 4
  %103 = call i64 @GET_BITMASK(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %121

105:                                              ; preds = %101
  %106 = load %struct.ebt_vlan_info*, %struct.ebt_vlan_info** %4, align 8
  %107 = getelementptr inbounds %struct.ebt_vlan_info, %struct.ebt_vlan_info* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = call zeroext i16 @ntohs(i64 %108)
  %110 = zext i16 %109 to i32
  %111 = load i16, i16* @ETH_ZLEN, align 2
  %112 = zext i16 %111 to i32
  %113 = icmp slt i32 %110, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %105
  %115 = load %struct.ebt_vlan_info*, %struct.ebt_vlan_info** %4, align 8
  %116 = getelementptr inbounds %struct.ebt_vlan_info, %struct.ebt_vlan_info* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = call zeroext i16 @ntohs(i64 %117)
  %119 = call i32 (i8*, i16, ...) @DEBUG_MSG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i16 zeroext %118)
  store i32 0, i32* %2, align 4
  br label %122

120:                                              ; preds = %105
  br label %121

121:                                              ; preds = %120, %101
  store i32 1, i32* %2, align 4
  br label %122

122:                                              ; preds = %121, %114, %95, %71, %47, %32, %18
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @DEBUG_MSG(i8*, i16 zeroext, ...) #1

declare dso_local zeroext i16 @ntohs(i64) #1

declare dso_local i64 @GET_BITMASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
