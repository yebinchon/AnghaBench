; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_ovs_vport_cmd_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_ovs_vport_cmd_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32, %struct.ovs_header*, %struct.nlattr** }
%struct.ovs_header = type { i32 }
%struct.nlattr = type { i32 }
%struct.vport_parms = type { i32, i8*, %struct.datapath*, %struct.nlattr*, i8*, i32 }
%struct.datapath = type { i32 }
%struct.vport = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@OVS_VPORT_ATTR_NAME = common dso_local global i64 0, align 8
@OVS_VPORT_ATTR_TYPE = common dso_local global i64 0, align 8
@OVS_VPORT_ATTR_UPCALL_PID = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@OVS_VPORT_ATTR_PORT_NO = common dso_local global i64 0, align 8
@EFBIG = common dso_local global i32 0, align 4
@DP_MAX_PORTS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@OVS_VPORT_ATTR_OPTIONS = common dso_local global i64 0, align 8
@OVS_VPORT_CMD_NEW = common dso_local global i32 0, align 4
@ovs_dp_vport_multicast_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @ovs_vport_cmd_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovs_vport_cmd_new(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.ovs_header*, align 8
  %7 = alloca %struct.vport_parms, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.vport*, align 8
  %10 = alloca %struct.datapath*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.genl_info* %1, %struct.genl_info** %4, align 8
  %13 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %14 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %13, i32 0, i32 3
  %15 = load %struct.nlattr**, %struct.nlattr*** %14, align 8
  store %struct.nlattr** %15, %struct.nlattr*** %5, align 8
  %16 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %17 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %16, i32 0, i32 2
  %18 = load %struct.ovs_header*, %struct.ovs_header** %17, align 8
  store %struct.ovs_header* %18, %struct.ovs_header** %6, align 8
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %12, align 4
  %21 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %22 = load i64, i64* @OVS_VPORT_ATTR_NAME, align 8
  %23 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %22
  %24 = load %struct.nlattr*, %struct.nlattr** %23, align 8
  %25 = icmp ne %struct.nlattr* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %2
  %27 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %28 = load i64, i64* @OVS_VPORT_ATTR_TYPE, align 8
  %29 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %28
  %30 = load %struct.nlattr*, %struct.nlattr** %29, align 8
  %31 = icmp ne %struct.nlattr* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %34 = load i64, i64* @OVS_VPORT_ATTR_UPCALL_PID, align 8
  %35 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %33, i64 %34
  %36 = load %struct.nlattr*, %struct.nlattr** %35, align 8
  %37 = icmp ne %struct.nlattr* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %32, %26, %2
  br label %166

39:                                               ; preds = %32
  %40 = call i32 (...) @ovs_lock()
  %41 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @sock_net(i32 %43)
  %45 = load %struct.ovs_header*, %struct.ovs_header** %6, align 8
  %46 = getelementptr inbounds %struct.ovs_header, %struct.ovs_header* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.datapath* @get_dp(i32 %44, i32 %47)
  store %struct.datapath* %48, %struct.datapath** %10, align 8
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %12, align 4
  %51 = load %struct.datapath*, %struct.datapath** %10, align 8
  %52 = icmp ne %struct.datapath* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %39
  br label %164

54:                                               ; preds = %39
  %55 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %56 = load i64, i64* @OVS_VPORT_ATTR_PORT_NO, align 8
  %57 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %55, i64 %56
  %58 = load %struct.nlattr*, %struct.nlattr** %57, align 8
  %59 = icmp ne %struct.nlattr* %58, null
  br i1 %59, label %60, label %83

60:                                               ; preds = %54
  %61 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %62 = load i64, i64* @OVS_VPORT_ATTR_PORT_NO, align 8
  %63 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %61, i64 %62
  %64 = load %struct.nlattr*, %struct.nlattr** %63, align 8
  %65 = call i8* @nla_get_u32(%struct.nlattr* %64)
  %66 = ptrtoint i8* %65 to i32
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* @EFBIG, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @DP_MAX_PORTS, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %60
  br label %164

73:                                               ; preds = %60
  %74 = load %struct.datapath*, %struct.datapath** %10, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call %struct.vport* @ovs_vport_ovsl(%struct.datapath* %74, i32 %75)
  store %struct.vport* %76, %struct.vport** %9, align 8
  %77 = load i32, i32* @EBUSY, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %12, align 4
  %79 = load %struct.vport*, %struct.vport** %9, align 8
  %80 = icmp ne %struct.vport* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %164

82:                                               ; preds = %73
  br label %103

83:                                               ; preds = %54
  store i32 1, i32* %11, align 4
  br label %84

84:                                               ; preds = %99, %83
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @DP_MAX_PORTS, align 4
  %87 = icmp sge i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i32, i32* @EFBIG, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %12, align 4
  br label %164

91:                                               ; preds = %84
  %92 = load %struct.datapath*, %struct.datapath** %10, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call %struct.vport* @ovs_vport_ovsl(%struct.datapath* %92, i32 %93)
  store %struct.vport* %94, %struct.vport** %9, align 8
  %95 = load %struct.vport*, %struct.vport** %9, align 8
  %96 = icmp ne %struct.vport* %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %91
  br label %102

98:                                               ; preds = %91
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %11, align 4
  br label %84

102:                                              ; preds = %97
  br label %103

103:                                              ; preds = %102, %82
  %104 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %105 = load i64, i64* @OVS_VPORT_ATTR_NAME, align 8
  %106 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %104, i64 %105
  %107 = load %struct.nlattr*, %struct.nlattr** %106, align 8
  %108 = call i32 @nla_data(%struct.nlattr* %107)
  %109 = getelementptr inbounds %struct.vport_parms, %struct.vport_parms* %7, i32 0, i32 5
  store i32 %108, i32* %109, align 8
  %110 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %111 = load i64, i64* @OVS_VPORT_ATTR_TYPE, align 8
  %112 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %110, i64 %111
  %113 = load %struct.nlattr*, %struct.nlattr** %112, align 8
  %114 = call i8* @nla_get_u32(%struct.nlattr* %113)
  %115 = getelementptr inbounds %struct.vport_parms, %struct.vport_parms* %7, i32 0, i32 4
  store i8* %114, i8** %115, align 8
  %116 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %117 = load i64, i64* @OVS_VPORT_ATTR_OPTIONS, align 8
  %118 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %116, i64 %117
  %119 = load %struct.nlattr*, %struct.nlattr** %118, align 8
  %120 = getelementptr inbounds %struct.vport_parms, %struct.vport_parms* %7, i32 0, i32 3
  store %struct.nlattr* %119, %struct.nlattr** %120, align 8
  %121 = load %struct.datapath*, %struct.datapath** %10, align 8
  %122 = getelementptr inbounds %struct.vport_parms, %struct.vport_parms* %7, i32 0, i32 2
  store %struct.datapath* %121, %struct.datapath** %122, align 8
  %123 = load i32, i32* %11, align 4
  %124 = getelementptr inbounds %struct.vport_parms, %struct.vport_parms* %7, i32 0, i32 0
  store i32 %123, i32* %124, align 8
  %125 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %126 = load i64, i64* @OVS_VPORT_ATTR_UPCALL_PID, align 8
  %127 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %125, i64 %126
  %128 = load %struct.nlattr*, %struct.nlattr** %127, align 8
  %129 = call i8* @nla_get_u32(%struct.nlattr* %128)
  %130 = getelementptr inbounds %struct.vport_parms, %struct.vport_parms* %7, i32 0, i32 1
  store i8* %129, i8** %130, align 8
  %131 = call %struct.vport* @new_vport(%struct.vport_parms* %7)
  store %struct.vport* %131, %struct.vport** %9, align 8
  %132 = load %struct.vport*, %struct.vport** %9, align 8
  %133 = call i32 @PTR_ERR(%struct.vport* %132)
  store i32 %133, i32* %12, align 4
  %134 = load %struct.vport*, %struct.vport** %9, align 8
  %135 = call i64 @IS_ERR(%struct.vport* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %103
  br label %164

138:                                              ; preds = %103
  store i32 0, i32* %12, align 4
  %139 = load %struct.vport*, %struct.vport** %9, align 8
  %140 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %141 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %144 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @OVS_VPORT_CMD_NEW, align 4
  %147 = call %struct.vport* @ovs_vport_cmd_build_info(%struct.vport* %139, i32 %142, i32 %145, i32 %146)
  %148 = bitcast %struct.vport* %147 to %struct.sk_buff*
  store %struct.sk_buff* %148, %struct.sk_buff** %8, align 8
  %149 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %150 = bitcast %struct.sk_buff* %149 to %struct.vport*
  %151 = call i64 @IS_ERR(%struct.vport* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %138
  %154 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %155 = bitcast %struct.sk_buff* %154 to %struct.vport*
  %156 = call i32 @PTR_ERR(%struct.vport* %155)
  store i32 %156, i32* %12, align 4
  %157 = load %struct.vport*, %struct.vport** %9, align 8
  %158 = call i32 @ovs_dp_detach_port(%struct.vport* %157)
  br label %164

159:                                              ; preds = %138
  %160 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %161 = bitcast %struct.sk_buff* %160 to %struct.vport*
  %162 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %163 = call i32 @ovs_notify(%struct.vport* %161, %struct.genl_info* %162, i32* @ovs_dp_vport_multicast_group)
  br label %164

164:                                              ; preds = %159, %153, %137, %88, %81, %72, %53
  %165 = call i32 (...) @ovs_unlock()
  br label %166

166:                                              ; preds = %164, %38
  %167 = load i32, i32* %12, align 4
  ret i32 %167
}

declare dso_local i32 @ovs_lock(...) #1

declare dso_local %struct.datapath* @get_dp(i32, i32) #1

declare dso_local i32 @sock_net(i32) #1

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.vport* @ovs_vport_ovsl(%struct.datapath*, i32) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local %struct.vport* @new_vport(%struct.vport_parms*) #1

declare dso_local i32 @PTR_ERR(%struct.vport*) #1

declare dso_local i64 @IS_ERR(%struct.vport*) #1

declare dso_local %struct.vport* @ovs_vport_cmd_build_info(%struct.vport*, i32, i32, i32) #1

declare dso_local i32 @ovs_dp_detach_port(%struct.vport*) #1

declare dso_local i32 @ovs_notify(%struct.vport*, %struct.genl_info*, i32*) #1

declare dso_local i32 @ovs_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
