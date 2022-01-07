; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_flow.c_ovs_ipv4_tun_to_nlattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_flow.c_ovs_ipv4_tun_to_nlattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ovs_key_ipv4_tunnel = type { i32, i64, i64, i64, i64, i32 }
%struct.nlattr = type { i32 }

@OVS_KEY_ATTR_TUNNEL = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@TUNNEL_KEY = common dso_local global i32 0, align 4
@OVS_TUNNEL_KEY_ATTR_ID = common dso_local global i32 0, align 4
@OVS_TUNNEL_KEY_ATTR_IPV4_SRC = common dso_local global i32 0, align 4
@OVS_TUNNEL_KEY_ATTR_IPV4_DST = common dso_local global i32 0, align 4
@OVS_TUNNEL_KEY_ATTR_TOS = common dso_local global i32 0, align 4
@OVS_TUNNEL_KEY_ATTR_TTL = common dso_local global i32 0, align 4
@TUNNEL_DONT_FRAGMENT = common dso_local global i32 0, align 4
@OVS_TUNNEL_KEY_ATTR_DONT_FRAGMENT = common dso_local global i32 0, align 4
@TUNNEL_CSUM = common dso_local global i32 0, align 4
@OVS_TUNNEL_KEY_ATTR_CSUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovs_ipv4_tun_to_nlattr(%struct.sk_buff* %0, %struct.ovs_key_ipv4_tunnel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ovs_key_ipv4_tunnel*, align 8
  %6 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.ovs_key_ipv4_tunnel* %1, %struct.ovs_key_ipv4_tunnel** %5, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = load i32, i32* @OVS_KEY_ATTR_TUNNEL, align 4
  %9 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %7, i32 %8)
  store %struct.nlattr* %9, %struct.nlattr** %6, align 8
  %10 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %11 = icmp ne %struct.nlattr* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EMSGSIZE, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %121

15:                                               ; preds = %2
  %16 = load %struct.ovs_key_ipv4_tunnel*, %struct.ovs_key_ipv4_tunnel** %5, align 8
  %17 = getelementptr inbounds %struct.ovs_key_ipv4_tunnel, %struct.ovs_key_ipv4_tunnel* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @TUNNEL_KEY, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %15
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = load i32, i32* @OVS_TUNNEL_KEY_ATTR_ID, align 4
  %25 = load %struct.ovs_key_ipv4_tunnel*, %struct.ovs_key_ipv4_tunnel** %5, align 8
  %26 = getelementptr inbounds %struct.ovs_key_ipv4_tunnel, %struct.ovs_key_ipv4_tunnel* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @nla_put_be64(%struct.sk_buff* %23, i32 %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* @EMSGSIZE, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %121

33:                                               ; preds = %22, %15
  %34 = load %struct.ovs_key_ipv4_tunnel*, %struct.ovs_key_ipv4_tunnel** %5, align 8
  %35 = getelementptr inbounds %struct.ovs_key_ipv4_tunnel, %struct.ovs_key_ipv4_tunnel* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = load i32, i32* @OVS_TUNNEL_KEY_ATTR_IPV4_SRC, align 4
  %41 = load %struct.ovs_key_ipv4_tunnel*, %struct.ovs_key_ipv4_tunnel** %5, align 8
  %42 = getelementptr inbounds %struct.ovs_key_ipv4_tunnel, %struct.ovs_key_ipv4_tunnel* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @nla_put_be32(%struct.sk_buff* %39, i32 %40, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32, i32* @EMSGSIZE, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %121

49:                                               ; preds = %38, %33
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = load i32, i32* @OVS_TUNNEL_KEY_ATTR_IPV4_DST, align 4
  %52 = load %struct.ovs_key_ipv4_tunnel*, %struct.ovs_key_ipv4_tunnel** %5, align 8
  %53 = getelementptr inbounds %struct.ovs_key_ipv4_tunnel, %struct.ovs_key_ipv4_tunnel* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @nla_put_be32(%struct.sk_buff* %50, i32 %51, i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load i32, i32* @EMSGSIZE, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %121

60:                                               ; preds = %49
  %61 = load %struct.ovs_key_ipv4_tunnel*, %struct.ovs_key_ipv4_tunnel** %5, align 8
  %62 = getelementptr inbounds %struct.ovs_key_ipv4_tunnel, %struct.ovs_key_ipv4_tunnel* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %60
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = load i32, i32* @OVS_TUNNEL_KEY_ATTR_TOS, align 4
  %68 = load %struct.ovs_key_ipv4_tunnel*, %struct.ovs_key_ipv4_tunnel** %5, align 8
  %69 = getelementptr inbounds %struct.ovs_key_ipv4_tunnel, %struct.ovs_key_ipv4_tunnel* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @nla_put_u8(%struct.sk_buff* %66, i32 %67, i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load i32, i32* @EMSGSIZE, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %121

76:                                               ; preds = %65, %60
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = load i32, i32* @OVS_TUNNEL_KEY_ATTR_TTL, align 4
  %79 = load %struct.ovs_key_ipv4_tunnel*, %struct.ovs_key_ipv4_tunnel** %5, align 8
  %80 = getelementptr inbounds %struct.ovs_key_ipv4_tunnel, %struct.ovs_key_ipv4_tunnel* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @nla_put_u8(%struct.sk_buff* %77, i32 %78, i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %76
  %85 = load i32, i32* @EMSGSIZE, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %121

87:                                               ; preds = %76
  %88 = load %struct.ovs_key_ipv4_tunnel*, %struct.ovs_key_ipv4_tunnel** %5, align 8
  %89 = getelementptr inbounds %struct.ovs_key_ipv4_tunnel, %struct.ovs_key_ipv4_tunnel* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @TUNNEL_DONT_FRAGMENT, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %87
  %95 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %96 = load i32, i32* @OVS_TUNNEL_KEY_ATTR_DONT_FRAGMENT, align 4
  %97 = call i64 @nla_put_flag(%struct.sk_buff* %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i32, i32* @EMSGSIZE, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %121

102:                                              ; preds = %94, %87
  %103 = load %struct.ovs_key_ipv4_tunnel*, %struct.ovs_key_ipv4_tunnel** %5, align 8
  %104 = getelementptr inbounds %struct.ovs_key_ipv4_tunnel, %struct.ovs_key_ipv4_tunnel* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @TUNNEL_CSUM, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %102
  %110 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %111 = load i32, i32* @OVS_TUNNEL_KEY_ATTR_CSUM, align 4
  %112 = call i64 @nla_put_flag(%struct.sk_buff* %110, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load i32, i32* @EMSGSIZE, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %3, align 4
  br label %121

117:                                              ; preds = %109, %102
  %118 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %119 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %120 = call i32 @nla_nest_end(%struct.sk_buff* %118, %struct.nlattr* %119)
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %117, %114, %99, %84, %73, %57, %46, %30, %12
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_be64(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
