; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_validate_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_validate_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.sw_flow_key = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sw_flow_actions = type { i32 }
%struct.ovs_key_ipv4 = type { i32, i32 }
%struct.ovs_key_ipv6 = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_MAX = common dso_local global i32 0, align 4
@ovs_key_lens = common dso_local global i32* null, align 8
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, %struct.sw_flow_key*, %struct.sw_flow_actions**, i32*)* @validate_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_set(%struct.nlattr* %0, %struct.sw_flow_key* %1, %struct.sw_flow_actions** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.sw_flow_key*, align 8
  %8 = alloca %struct.sw_flow_actions**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.nlattr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ovs_key_ipv4*, align 8
  %13 = alloca %struct.ovs_key_ipv6*, align 8
  %14 = alloca i32, align 4
  store %struct.nlattr* %0, %struct.nlattr** %6, align 8
  store %struct.sw_flow_key* %1, %struct.sw_flow_key** %7, align 8
  store %struct.sw_flow_actions** %2, %struct.sw_flow_actions*** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %16 = call i8* @nla_data(%struct.nlattr* %15)
  %17 = bitcast i8* %16 to %struct.nlattr*
  store %struct.nlattr* %17, %struct.nlattr** %10, align 8
  %18 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %19 = call i32 @nla_type(%struct.nlattr* %18)
  store i32 %19, i32* %11, align 4
  %20 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %21 = call i32 @nla_len(%struct.nlattr* %20)
  %22 = call i64 @nla_total_size(i32 %21)
  %23 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %24 = call i32 @nla_len(%struct.nlattr* %23)
  %25 = sext i32 %24 to i64
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %202

30:                                               ; preds = %4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @OVS_KEY_ATTR_MAX, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %50, label %34

34:                                               ; preds = %30
  %35 = load i32*, i32** @ovs_key_lens, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %41 = call i32 @nla_len(%struct.nlattr* %40)
  %42 = icmp ne i32 %39, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %34
  %44 = load i32*, i32** @ovs_key_lens, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, -1
  br i1 %49, label %50, label %53

50:                                               ; preds = %43, %30
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %202

53:                                               ; preds = %43, %34
  %54 = load i32, i32* %11, align 4
  switch i32 %54, label %198 [
    i32 132, label %55
    i32 131, label %55
    i32 135, label %55
    i32 129, label %56
    i32 134, label %66
    i32 133, label %114
    i32 130, label %172
    i32 128, label %185
  ]

55:                                               ; preds = %53, %53, %53
  br label %201

56:                                               ; preds = %53
  %57 = load i32*, i32** %9, align 8
  store i32 1, i32* %57, align 4
  %58 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %59 = load %struct.sw_flow_actions**, %struct.sw_flow_actions*** %8, align 8
  %60 = call i32 @validate_and_copy_set_tun(%struct.nlattr* %58, %struct.sw_flow_actions** %59)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* %14, align 4
  store i32 %64, i32* %5, align 4
  br label %202

65:                                               ; preds = %56
  br label %201

66:                                               ; preds = %53
  %67 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %68 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @ETH_P_IP, align 4
  %72 = call i32 @htons(i32 %71)
  %73 = icmp ne i32 %70, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %202

77:                                               ; preds = %66
  %78 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %79 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %77
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %5, align 4
  br label %202

86:                                               ; preds = %77
  %87 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %88 = call i8* @nla_data(%struct.nlattr* %87)
  %89 = bitcast i8* %88 to %struct.ovs_key_ipv4*
  store %struct.ovs_key_ipv4* %89, %struct.ovs_key_ipv4** %12, align 8
  %90 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %12, align 8
  %91 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %94 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %92, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %86
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %5, align 4
  br label %202

101:                                              ; preds = %86
  %102 = load %struct.ovs_key_ipv4*, %struct.ovs_key_ipv4** %12, align 8
  %103 = getelementptr inbounds %struct.ovs_key_ipv4, %struct.ovs_key_ipv4* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %106 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %104, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %101
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %5, align 4
  br label %202

113:                                              ; preds = %101
  br label %201

114:                                              ; preds = %53
  %115 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %116 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @ETH_P_IPV6, align 4
  %120 = call i32 @htons(i32 %119)
  %121 = icmp ne i32 %118, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %114
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %5, align 4
  br label %202

125:                                              ; preds = %114
  %126 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %127 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %125
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %5, align 4
  br label %202

134:                                              ; preds = %125
  %135 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %136 = call i8* @nla_data(%struct.nlattr* %135)
  %137 = bitcast i8* %136 to %struct.ovs_key_ipv6*
  store %struct.ovs_key_ipv6* %137, %struct.ovs_key_ipv6** %13, align 8
  %138 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %13, align 8
  %139 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %142 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %140, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %134
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %5, align 4
  br label %202

149:                                              ; preds = %134
  %150 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %13, align 8
  %151 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %154 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %152, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %149
  %159 = load i32, i32* @EINVAL, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %5, align 4
  br label %202

161:                                              ; preds = %149
  %162 = load %struct.ovs_key_ipv6*, %struct.ovs_key_ipv6** %13, align 8
  %163 = getelementptr inbounds %struct.ovs_key_ipv6, %struct.ovs_key_ipv6* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @ntohl(i32 %164)
  %166 = and i32 %165, -1048576
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %161
  %169 = load i32, i32* @EINVAL, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %5, align 4
  br label %202

171:                                              ; preds = %161
  br label %201

172:                                              ; preds = %53
  %173 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %174 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @IPPROTO_TCP, align 4
  %178 = icmp ne i32 %176, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %172
  %180 = load i32, i32* @EINVAL, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %5, align 4
  br label %202

182:                                              ; preds = %172
  %183 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %184 = call i32 @validate_tp_port(%struct.sw_flow_key* %183)
  store i32 %184, i32* %5, align 4
  br label %202

185:                                              ; preds = %53
  %186 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %187 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @IPPROTO_UDP, align 4
  %191 = icmp ne i32 %189, %190
  br i1 %191, label %192, label %195

192:                                              ; preds = %185
  %193 = load i32, i32* @EINVAL, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %5, align 4
  br label %202

195:                                              ; preds = %185
  %196 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %197 = call i32 @validate_tp_port(%struct.sw_flow_key* %196)
  store i32 %197, i32* %5, align 4
  br label %202

198:                                              ; preds = %53
  %199 = load i32, i32* @EINVAL, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %5, align 4
  br label %202

201:                                              ; preds = %171, %113, %65, %55
  store i32 0, i32* %5, align 4
  br label %202

202:                                              ; preds = %201, %198, %195, %192, %182, %179, %168, %158, %146, %131, %122, %110, %98, %83, %74, %63, %50, %27
  %203 = load i32, i32* %5, align 4
  ret i32 %203
}

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nla_type(%struct.nlattr*) #1

declare dso_local i64 @nla_total_size(i32) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @validate_and_copy_set_tun(%struct.nlattr*, %struct.sw_flow_actions**) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @validate_tp_port(%struct.sw_flow_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
