; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan_netlink.c_vlan_validate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan_netlink.c_vlan_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.ifla_vlan_flags = type { i32, i32 }

@IFLA_ADDRESS = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@IFLA_VLAN_ID = common dso_local global i64 0, align 8
@VLAN_VID_MASK = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@IFLA_VLAN_FLAGS = common dso_local global i64 0, align 8
@VLAN_FLAG_REORDER_HDR = common dso_local global i32 0, align 4
@VLAN_FLAG_GVRP = common dso_local global i32 0, align 4
@IFLA_VLAN_INGRESS_QOS = common dso_local global i64 0, align 8
@IFLA_VLAN_EGRESS_QOS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**, %struct.nlattr**)* @vlan_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlan_validate(%struct.nlattr** %0, %struct.nlattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlattr**, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.ifla_vlan_flags*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.nlattr** %0, %struct.nlattr*** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %9 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %10 = load i64, i64* @IFLA_ADDRESS, align 8
  %11 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %9, i64 %10
  %12 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %13 = icmp ne %struct.nlattr* %12, null
  br i1 %13, label %14, label %37

14:                                               ; preds = %2
  %15 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %16 = load i64, i64* @IFLA_ADDRESS, align 8
  %17 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %16
  %18 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %19 = call i64 @nla_len(%struct.nlattr* %18)
  %20 = load i64, i64* @ETH_ALEN, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %112

25:                                               ; preds = %14
  %26 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %27 = load i64, i64* @IFLA_ADDRESS, align 8
  %28 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %27
  %29 = load %struct.nlattr*, %struct.nlattr** %28, align 8
  %30 = call %struct.ifla_vlan_flags* @nla_data(%struct.nlattr* %29)
  %31 = call i32 @is_valid_ether_addr(%struct.ifla_vlan_flags* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* @EADDRNOTAVAIL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %112

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36, %2
  %38 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %39 = icmp ne %struct.nlattr** %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %112

43:                                               ; preds = %37
  %44 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %45 = load i64, i64* @IFLA_VLAN_ID, align 8
  %46 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %44, i64 %45
  %47 = load %struct.nlattr*, %struct.nlattr** %46, align 8
  %48 = icmp ne %struct.nlattr* %47, null
  br i1 %48, label %49, label %62

49:                                               ; preds = %43
  %50 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %51 = load i64, i64* @IFLA_VLAN_ID, align 8
  %52 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %50, i64 %51
  %53 = load %struct.nlattr*, %struct.nlattr** %52, align 8
  %54 = call i64 @nla_get_u16(%struct.nlattr* %53)
  store i64 %54, i64* %7, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* @VLAN_VID_MASK, align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %49
  %59 = load i32, i32* @ERANGE, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %112

61:                                               ; preds = %49
  br label %62

62:                                               ; preds = %61, %43
  %63 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %64 = load i64, i64* @IFLA_VLAN_FLAGS, align 8
  %65 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %63, i64 %64
  %66 = load %struct.nlattr*, %struct.nlattr** %65, align 8
  %67 = icmp ne %struct.nlattr* %66, null
  br i1 %67, label %68, label %91

68:                                               ; preds = %62
  %69 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %70 = load i64, i64* @IFLA_VLAN_FLAGS, align 8
  %71 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %69, i64 %70
  %72 = load %struct.nlattr*, %struct.nlattr** %71, align 8
  %73 = call %struct.ifla_vlan_flags* @nla_data(%struct.nlattr* %72)
  store %struct.ifla_vlan_flags* %73, %struct.ifla_vlan_flags** %6, align 8
  %74 = load %struct.ifla_vlan_flags*, %struct.ifla_vlan_flags** %6, align 8
  %75 = getelementptr inbounds %struct.ifla_vlan_flags, %struct.ifla_vlan_flags* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ifla_vlan_flags*, %struct.ifla_vlan_flags** %6, align 8
  %78 = getelementptr inbounds %struct.ifla_vlan_flags, %struct.ifla_vlan_flags* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %76, %79
  %81 = load i32, i32* @VLAN_FLAG_REORDER_HDR, align 4
  %82 = load i32, i32* @VLAN_FLAG_GVRP, align 4
  %83 = or i32 %81, %82
  %84 = xor i32 %83, -1
  %85 = and i32 %80, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %68
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %112

90:                                               ; preds = %68
  br label %91

91:                                               ; preds = %90, %62
  %92 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %93 = load i64, i64* @IFLA_VLAN_INGRESS_QOS, align 8
  %94 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %92, i64 %93
  %95 = load %struct.nlattr*, %struct.nlattr** %94, align 8
  %96 = call i32 @vlan_validate_qos_map(%struct.nlattr* %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %3, align 4
  br label %112

101:                                              ; preds = %91
  %102 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %103 = load i64, i64* @IFLA_VLAN_EGRESS_QOS, align 8
  %104 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %102, i64 %103
  %105 = load %struct.nlattr*, %struct.nlattr** %104, align 8
  %106 = call i32 @vlan_validate_qos_map(%struct.nlattr* %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %101
  %110 = load i32, i32* %8, align 4
  store i32 %110, i32* %3, align 4
  br label %112

111:                                              ; preds = %101
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %111, %109, %99, %87, %58, %40, %33, %22
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i64 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @is_valid_ether_addr(%struct.ifla_vlan_flags*) #1

declare dso_local %struct.ifla_vlan_flags* @nla_data(%struct.nlattr*) #1

declare dso_local i64 @nla_get_u16(%struct.nlattr*) #1

declare dso_local i32 @vlan_validate_qos_map(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
