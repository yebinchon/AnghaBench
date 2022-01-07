; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_if.c_br_add_if.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_if.c_br_add_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i32, %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.net_device = type { i32, i64, i64, i32, i32*, i32, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.net_bridge_port = type { i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@IFF_LOOPBACK = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@br_dev_xmit = common dso_local global i64 0, align 8
@ELOOP = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IFF_DONT_BRIDGE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NETDEV_JOIN = common dso_local global i32 0, align 4
@brport_ktype = common dso_local global i32 0, align 4
@SYSFS_BRIDGE_PORT_ATTR = common dso_local global i32 0, align 4
@IFF_BRIDGE_PORT = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@RTM_NEWLINK = common dso_local global i32 0, align 4
@KOBJ_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_add_if(%struct.net_bridge* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_bridge*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_bridge_port*, align 8
  %7 = alloca i32, align 4
  store %struct.net_bridge* %0, %struct.net_bridge** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @IFF_LOOPBACK, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %2
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ARPHRD_ETHER, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ETH_ALEN, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20, %14, %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %208

29:                                               ; preds = %20
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 7
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @br_dev_xmit, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load i32, i32* @ELOOP, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %208

40:                                               ; preds = %29
  %41 = load %struct.net_device*, %struct.net_device** %5, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %208

48:                                               ; preds = %40
  %49 = load %struct.net_device*, %struct.net_device** %5, align 8
  %50 = call %struct.TYPE_9__* @netdev_extended(%struct.net_device* %49)
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @IFF_DONT_BRIDGE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i32, i32* @EOPNOTSUPP, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %208

59:                                               ; preds = %48
  %60 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %61 = load %struct.net_device*, %struct.net_device** %5, align 8
  %62 = call %struct.net_bridge_port* @new_nbp(%struct.net_bridge* %60, %struct.net_device* %61)
  store %struct.net_bridge_port* %62, %struct.net_bridge_port** %6, align 8
  %63 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %64 = call i64 @IS_ERR(%struct.net_bridge_port* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %68 = call i32 @PTR_ERR(%struct.net_bridge_port* %67)
  store i32 %68, i32* %3, align 4
  br label %208

69:                                               ; preds = %59
  %70 = load %struct.net_device*, %struct.net_device** %5, align 8
  %71 = call i32 @dev_set_promiscuity(%struct.net_device* %70, i32 1)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %202

75:                                               ; preds = %69
  %76 = load i32, i32* @NETDEV_JOIN, align 4
  %77 = load %struct.net_device*, %struct.net_device** %5, align 8
  %78 = call i32 @call_netdevice_notifiers(i32 %76, %struct.net_device* %77)
  %79 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %80 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %79, i32 0, i32 0
  %81 = load %struct.net_device*, %struct.net_device** %5, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 6
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* @SYSFS_BRIDGE_PORT_ATTR, align 4
  %85 = call i32 @kobject_init_and_add(i32* %80, i32* @brport_ktype, i32* %83, i32 %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %75
  br label %199

89:                                               ; preds = %75
  %90 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %91 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %92 = load %struct.net_device*, %struct.net_device** %5, align 8
  %93 = getelementptr inbounds %struct.net_device, %struct.net_device* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @br_fdb_insert(%struct.net_bridge* %90, %struct.net_bridge_port* %91, i32 %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %89
  br label %195

99:                                               ; preds = %89
  %100 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %101 = call i32 @br_sysfs_addif(%struct.net_bridge_port* %100)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %191

105:                                              ; preds = %99
  %106 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %107 = call i64 @br_netpoll_info(%struct.net_bridge* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %105
  %110 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %111 = call i32 @br_netpoll_enable(%struct.net_bridge_port* %110)
  store i32 %111, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  br label %181

114:                                              ; preds = %109, %105
  %115 = load %struct.net_device*, %struct.net_device** %5, align 8
  %116 = getelementptr inbounds %struct.net_device, %struct.net_device* %115, i32 0, i32 4
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %119 = call i32 @rcu_assign_pointer(i32* %117, %struct.net_bridge_port* %118)
  %120 = load %struct.net_device*, %struct.net_device** %5, align 8
  %121 = call i32 @dev_disable_lro(%struct.net_device* %120)
  %122 = load i32, i32* @IFF_BRIDGE_PORT, align 4
  %123 = load %struct.net_device*, %struct.net_device** %5, align 8
  %124 = getelementptr inbounds %struct.net_device, %struct.net_device* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  %127 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %128 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %127, i32 0, i32 2
  %129 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %130 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %129, i32 0, i32 3
  %131 = call i32 @list_add_rcu(i32* %128, i32* %130)
  %132 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %133 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %134 = call i32 @br_add_vlans_to_port(%struct.net_bridge* %132, %struct.net_bridge_port* %133)
  %135 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %136 = call i32 @br_features_recompute(%struct.net_bridge* %135)
  %137 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %138 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %137, i32 0, i32 2
  %139 = call i32 @spin_lock_bh(i32* %138)
  %140 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %141 = call i32 @br_stp_recalculate_bridge_id(%struct.net_bridge* %140)
  %142 = load %struct.net_device*, %struct.net_device** %5, align 8
  %143 = getelementptr inbounds %struct.net_device, %struct.net_device* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @IFF_UP, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %164

148:                                              ; preds = %114
  %149 = load %struct.net_device*, %struct.net_device** %5, align 8
  %150 = call i64 @netif_carrier_ok(%struct.net_device* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %164

152:                                              ; preds = %148
  %153 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %154 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %153, i32 0, i32 1
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @IFF_UP, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %152
  %162 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %163 = call i32 @br_stp_enable_port(%struct.net_bridge_port* %162)
  br label %164

164:                                              ; preds = %161, %152, %148, %114
  %165 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %166 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %165, i32 0, i32 2
  %167 = call i32 @spin_unlock_bh(i32* %166)
  %168 = load i32, i32* @RTM_NEWLINK, align 4
  %169 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %170 = call i32 @br_ifinfo_notify(i32 %168, %struct.net_bridge_port* %169)
  %171 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %172 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %171, i32 0, i32 1
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %172, align 8
  %174 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %175 = call i32 @br_min_mtu(%struct.net_bridge* %174)
  %176 = call i32 @dev_set_mtu(%struct.TYPE_10__* %173, i32 %175)
  %177 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %178 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %177, i32 0, i32 0
  %179 = load i32, i32* @KOBJ_ADD, align 4
  %180 = call i32 @kobject_uevent(i32* %178, i32 %179)
  store i32 0, i32* %3, align 4
  br label %208

181:                                              ; preds = %113
  %182 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %183 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %186 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %185, i32 0, i32 1
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @sysfs_remove_link(i32 %184, i32 %189)
  br label %191

191:                                              ; preds = %181, %104
  %192 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %193 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %194 = call i32 @br_fdb_delete_by_port(%struct.net_bridge* %192, %struct.net_bridge_port* %193, i32 1)
  br label %195

195:                                              ; preds = %191, %98
  %196 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %197 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %196, i32 0, i32 0
  %198 = call i32 @kobject_put(i32* %197)
  store %struct.net_bridge_port* null, %struct.net_bridge_port** %6, align 8
  br label %199

199:                                              ; preds = %195, %88
  %200 = load %struct.net_device*, %struct.net_device** %5, align 8
  %201 = call i32 @dev_set_promiscuity(%struct.net_device* %200, i32 -1)
  br label %202

202:                                              ; preds = %199, %74
  %203 = load %struct.net_device*, %struct.net_device** %5, align 8
  %204 = call i32 @dev_put(%struct.net_device* %203)
  %205 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %206 = call i32 @kfree(%struct.net_bridge_port* %205)
  %207 = load i32, i32* %7, align 4
  store i32 %207, i32* %3, align 4
  br label %208

208:                                              ; preds = %202, %164, %66, %56, %45, %37, %26
  %209 = load i32, i32* %3, align 4
  ret i32 %209
}

declare dso_local %struct.TYPE_9__* @netdev_extended(%struct.net_device*) #1

declare dso_local %struct.net_bridge_port* @new_nbp(%struct.net_bridge*, %struct.net_device*) #1

declare dso_local i64 @IS_ERR(%struct.net_bridge_port*) #1

declare dso_local i32 @PTR_ERR(%struct.net_bridge_port*) #1

declare dso_local i32 @dev_set_promiscuity(%struct.net_device*, i32) #1

declare dso_local i32 @call_netdevice_notifiers(i32, %struct.net_device*) #1

declare dso_local i32 @kobject_init_and_add(i32*, i32*, i32*, i32) #1

declare dso_local i32 @br_fdb_insert(%struct.net_bridge*, %struct.net_bridge_port*, i32) #1

declare dso_local i32 @br_sysfs_addif(%struct.net_bridge_port*) #1

declare dso_local i64 @br_netpoll_info(%struct.net_bridge*) #1

declare dso_local i32 @br_netpoll_enable(%struct.net_bridge_port*) #1

declare dso_local i32 @rcu_assign_pointer(i32*, %struct.net_bridge_port*) #1

declare dso_local i32 @dev_disable_lro(%struct.net_device*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @br_add_vlans_to_port(%struct.net_bridge*, %struct.net_bridge_port*) #1

declare dso_local i32 @br_features_recompute(%struct.net_bridge*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @br_stp_recalculate_bridge_id(%struct.net_bridge*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @br_stp_enable_port(%struct.net_bridge_port*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @br_ifinfo_notify(i32, %struct.net_bridge_port*) #1

declare dso_local i32 @dev_set_mtu(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @br_min_mtu(%struct.net_bridge*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @sysfs_remove_link(i32, i32) #1

declare dso_local i32 @br_fdb_delete_by_port(%struct.net_bridge*, %struct.net_bridge_port*, i32) #1

declare dso_local i32 @kobject_put(i32*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @kfree(%struct.net_bridge_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
