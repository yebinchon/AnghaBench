; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_flow.c_ipv4_flow_from_nlattrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_flow.c_ipv4_flow_from_nlattrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.sw_flow_key = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_5__ = type { i32 }
%struct.nlattr = type { i32 }
%struct.ovs_key_icmp = type { i32, i32 }
%struct.ovs_key_tcp = type { i8*, i8* }
%struct.ovs_key_udp = type { i8*, i8* }

@OVS_KEY_ATTR_TCP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ipv4 = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@OVS_KEY_ATTR_UDP = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_ICMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sw_flow_key*, i32*, %struct.nlattr**, i32*)* @ipv4_flow_from_nlattrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv4_flow_from_nlattrs(%struct.sw_flow_key* %0, i32* %1, %struct.nlattr** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sw_flow_key*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ovs_key_icmp*, align 8
  %11 = alloca %struct.ovs_key_tcp*, align 8
  %12 = alloca %struct.ovs_key_udp*, align 8
  store %struct.sw_flow_key* %0, %struct.sw_flow_key** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %14 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %142 [
    i32 129, label %17
    i32 128, label %58
    i32 130, label %99
  ]

17:                                               ; preds = %4
  %18 = load i32*, i32** %9, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @OVS_KEY_ATTR_TCP, align 4
  %21 = shl i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %143

27:                                               ; preds = %17
  %28 = load i32, i32* @OVS_KEY_ATTR_TCP, align 4
  %29 = shl i32 1, %28
  %30 = xor i32 %29, -1
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %30
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ipv4, i32 0, i32 0), align 4
  %35 = call i32 @SW_FLOW_KEY_OFFSET(i32 %34)
  %36 = load i32*, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  %37 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %38 = load i32, i32* @OVS_KEY_ATTR_TCP, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %39
  %41 = load %struct.nlattr*, %struct.nlattr** %40, align 8
  %42 = call i8* @nla_data(%struct.nlattr* %41)
  %43 = bitcast i8* %42 to %struct.ovs_key_tcp*
  store %struct.ovs_key_tcp* %43, %struct.ovs_key_tcp** %11, align 8
  %44 = load %struct.ovs_key_tcp*, %struct.ovs_key_tcp** %11, align 8
  %45 = getelementptr inbounds %struct.ovs_key_tcp, %struct.ovs_key_tcp* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %48 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  store i8* %46, i8** %50, align 8
  %51 = load %struct.ovs_key_tcp*, %struct.ovs_key_tcp** %11, align 8
  %52 = getelementptr inbounds %struct.ovs_key_tcp, %struct.ovs_key_tcp* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %55 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i8* %53, i8** %57, align 8
  br label %142

58:                                               ; preds = %4
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @OVS_KEY_ATTR_UDP, align 4
  %62 = shl i32 1, %61
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %58
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %143

68:                                               ; preds = %58
  %69 = load i32, i32* @OVS_KEY_ATTR_UDP, align 4
  %70 = shl i32 1, %69
  %71 = xor i32 %70, -1
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, %71
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ipv4, i32 0, i32 0), align 4
  %76 = call i32 @SW_FLOW_KEY_OFFSET(i32 %75)
  %77 = load i32*, i32** %7, align 8
  store i32 %76, i32* %77, align 4
  %78 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %79 = load i32, i32* @OVS_KEY_ATTR_UDP, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %78, i64 %80
  %82 = load %struct.nlattr*, %struct.nlattr** %81, align 8
  %83 = call i8* @nla_data(%struct.nlattr* %82)
  %84 = bitcast i8* %83 to %struct.ovs_key_udp*
  store %struct.ovs_key_udp* %84, %struct.ovs_key_udp** %12, align 8
  %85 = load %struct.ovs_key_udp*, %struct.ovs_key_udp** %12, align 8
  %86 = getelementptr inbounds %struct.ovs_key_udp, %struct.ovs_key_udp* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %89 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  store i8* %87, i8** %91, align 8
  %92 = load %struct.ovs_key_udp*, %struct.ovs_key_udp** %12, align 8
  %93 = getelementptr inbounds %struct.ovs_key_udp, %struct.ovs_key_udp* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %96 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  store i8* %94, i8** %98, align 8
  br label %142

99:                                               ; preds = %4
  %100 = load i32*, i32** %9, align 8
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @OVS_KEY_ATTR_ICMP, align 4
  %103 = shl i32 1, %102
  %104 = and i32 %101, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %99
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %5, align 4
  br label %143

109:                                              ; preds = %99
  %110 = load i32, i32* @OVS_KEY_ATTR_ICMP, align 4
  %111 = shl i32 1, %110
  %112 = xor i32 %111, -1
  %113 = load i32*, i32** %9, align 8
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, %112
  store i32 %115, i32* %113, align 4
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ipv4, i32 0, i32 0), align 4
  %117 = call i32 @SW_FLOW_KEY_OFFSET(i32 %116)
  %118 = load i32*, i32** %7, align 8
  store i32 %117, i32* %118, align 4
  %119 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %120 = load i32, i32* @OVS_KEY_ATTR_ICMP, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %119, i64 %121
  %123 = load %struct.nlattr*, %struct.nlattr** %122, align 8
  %124 = call i8* @nla_data(%struct.nlattr* %123)
  %125 = bitcast i8* %124 to %struct.ovs_key_icmp*
  store %struct.ovs_key_icmp* %125, %struct.ovs_key_icmp** %10, align 8
  %126 = load %struct.ovs_key_icmp*, %struct.ovs_key_icmp** %10, align 8
  %127 = getelementptr inbounds %struct.ovs_key_icmp, %struct.ovs_key_icmp* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i8* @htons(i32 %128)
  %130 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %131 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  store i8* %129, i8** %133, align 8
  %134 = load %struct.ovs_key_icmp*, %struct.ovs_key_icmp** %10, align 8
  %135 = getelementptr inbounds %struct.ovs_key_icmp, %struct.ovs_key_icmp* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i8* @htons(i32 %136)
  %138 = load %struct.sw_flow_key*, %struct.sw_flow_key** %6, align 8
  %139 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  store i8* %137, i8** %141, align 8
  br label %142

142:                                              ; preds = %4, %109, %68, %27
  store i32 0, i32* %5, align 4
  br label %143

143:                                              ; preds = %142, %106, %65, %24
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local i32 @SW_FLOW_KEY_OFFSET(i32) #1

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local i8* @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
