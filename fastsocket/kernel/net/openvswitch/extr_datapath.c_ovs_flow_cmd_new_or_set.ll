; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_ovs_flow_cmd_new_or_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_datapath.c_ovs_flow_cmd_new_or_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.sk_buff = type { i32, i32, i32 }
%struct.genl_info = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.ovs_header*, %struct.nlattr** }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.ovs_header = type { i32 }
%struct.nlattr = type { i32 }
%struct.sw_flow_key = type { i32 }
%struct.sw_flow = type { i32, i32, i32 }
%struct.datapath = type { i32 }
%struct.flow_table = type { i32, i32, i32 }
%struct.sw_flow_actions = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@OVS_FLOW_ATTR_KEY = common dso_local global i64 0, align 8
@OVS_FLOW_ATTR_ACTIONS = common dso_local global i64 0, align 8
@OVS_FLOW_CMD_NEW = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@OVS_FLOW_CMD_SET = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4
@NLM_F_CREATE = common dso_local global i32 0, align 4
@NLM_F_EXCL = common dso_local global i32 0, align 4
@OVS_FLOW_ATTR_CLEAR = common dso_local global i64 0, align 8
@ovs_dp_flow_multicast_group = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @ovs_flow_cmd_new_or_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovs_flow_cmd_new_or_set(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.ovs_header*, align 8
  %8 = alloca %struct.sw_flow_key, align 4
  %9 = alloca %struct.sw_flow*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.datapath*, align 8
  %12 = alloca %struct.flow_table*, align 8
  %13 = alloca %struct.sw_flow_actions*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.flow_table*, align 8
  %17 = alloca %struct.sw_flow_actions*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %18 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %19 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %18, i32 0, i32 5
  %20 = load %struct.nlattr**, %struct.nlattr*** %19, align 8
  store %struct.nlattr** %20, %struct.nlattr*** %6, align 8
  %21 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %22 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %21, i32 0, i32 4
  %23 = load %struct.ovs_header*, %struct.ovs_header** %22, align 8
  store %struct.ovs_header* %23, %struct.ovs_header** %7, align 8
  store %struct.sw_flow_actions* null, %struct.sw_flow_actions** %13, align 8
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %14, align 4
  %26 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %27 = load i64, i64* @OVS_FLOW_ATTR_KEY, align 8
  %28 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %27
  %29 = load %struct.nlattr*, %struct.nlattr** %28, align 8
  %30 = icmp ne %struct.nlattr* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %2
  br label %280

32:                                               ; preds = %2
  %33 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %34 = load i64, i64* @OVS_FLOW_ATTR_KEY, align 8
  %35 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %33, i64 %34
  %36 = load %struct.nlattr*, %struct.nlattr** %35, align 8
  %37 = call i32 @ovs_flow_from_nlattrs(%struct.sw_flow_key* %8, i32* %15, %struct.nlattr* %36)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %280

41:                                               ; preds = %32
  %42 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %43 = load i64, i64* @OVS_FLOW_ATTR_ACTIONS, align 8
  %44 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %42, i64 %43
  %45 = load %struct.nlattr*, %struct.nlattr** %44, align 8
  %46 = icmp ne %struct.nlattr* %45, null
  br i1 %46, label %47, label %70

47:                                               ; preds = %41
  %48 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %49 = load i64, i64* @OVS_FLOW_ATTR_ACTIONS, align 8
  %50 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %48, i64 %49
  %51 = load %struct.nlattr*, %struct.nlattr** %50, align 8
  %52 = call i32 @nla_len(%struct.nlattr* %51)
  %53 = call %struct.sw_flow_actions* @ovs_flow_actions_alloc(i32 %52)
  store %struct.sw_flow_actions* %53, %struct.sw_flow_actions** %13, align 8
  %54 = load %struct.sw_flow_actions*, %struct.sw_flow_actions** %13, align 8
  %55 = call i32 @PTR_ERR(%struct.sw_flow_actions* %54)
  store i32 %55, i32* %14, align 4
  %56 = load %struct.sw_flow_actions*, %struct.sw_flow_actions** %13, align 8
  %57 = call i64 @IS_ERR(%struct.sw_flow_actions* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  br label %280

60:                                               ; preds = %47
  %61 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %62 = load i64, i64* @OVS_FLOW_ATTR_ACTIONS, align 8
  %63 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %61, i64 %62
  %64 = load %struct.nlattr*, %struct.nlattr** %63, align 8
  %65 = call i32 @validate_and_copy_actions(%struct.nlattr* %64, %struct.sw_flow_key* %8, i32 0, %struct.sw_flow_actions** %13)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %277

69:                                               ; preds = %60
  br label %82

70:                                               ; preds = %41
  %71 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %72 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %71, i32 0, i32 3
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @OVS_FLOW_CMD_NEW, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %14, align 4
  br label %280

81:                                               ; preds = %70
  br label %82

82:                                               ; preds = %81, %69
  %83 = call i32 (...) @ovs_lock()
  %84 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call %struct.TYPE_9__* @sock_net(i32 %86)
  %88 = load %struct.ovs_header*, %struct.ovs_header** %7, align 8
  %89 = getelementptr inbounds %struct.ovs_header, %struct.ovs_header* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call %struct.datapath* @get_dp(%struct.TYPE_9__* %87, i32 %90)
  store %struct.datapath* %91, %struct.datapath** %11, align 8
  %92 = load i32, i32* @ENODEV, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %14, align 4
  %94 = load %struct.datapath*, %struct.datapath** %11, align 8
  %95 = icmp ne %struct.datapath* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %82
  br label %275

97:                                               ; preds = %82
  %98 = load %struct.datapath*, %struct.datapath** %11, align 8
  %99 = getelementptr inbounds %struct.datapath, %struct.datapath* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call %struct.sw_flow_actions* @ovsl_dereference(i32 %100)
  %102 = bitcast %struct.sw_flow_actions* %101 to %struct.flow_table*
  store %struct.flow_table* %102, %struct.flow_table** %12, align 8
  %103 = load %struct.flow_table*, %struct.flow_table** %12, align 8
  %104 = bitcast %struct.flow_table* %103 to %struct.sw_flow_actions*
  %105 = load i32, i32* %15, align 4
  %106 = call %struct.sw_flow_actions* @ovs_flow_tbl_lookup(%struct.sw_flow_actions* %104, %struct.sw_flow_key* %8, i32 %105)
  %107 = bitcast %struct.sw_flow_actions* %106 to %struct.sw_flow*
  store %struct.sw_flow* %107, %struct.sw_flow** %9, align 8
  %108 = load %struct.sw_flow*, %struct.sw_flow** %9, align 8
  %109 = icmp ne %struct.sw_flow* %108, null
  br i1 %109, label %189, label %110

110:                                              ; preds = %97
  %111 = load i32, i32* @ENOENT, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %14, align 4
  %113 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %114 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %113, i32 0, i32 3
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @OVS_FLOW_CMD_SET, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %110
  br label %275

121:                                              ; preds = %110
  %122 = load %struct.flow_table*, %struct.flow_table** %12, align 8
  %123 = bitcast %struct.flow_table* %122 to %struct.sw_flow_actions*
  %124 = call i64 @ovs_flow_tbl_need_to_expand(%struct.sw_flow_actions* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %151

126:                                              ; preds = %121
  %127 = load %struct.flow_table*, %struct.flow_table** %12, align 8
  %128 = bitcast %struct.flow_table* %127 to %struct.sw_flow_actions*
  %129 = call %struct.sw_flow_actions* @ovs_flow_tbl_expand(%struct.sw_flow_actions* %128)
  %130 = bitcast %struct.sw_flow_actions* %129 to %struct.flow_table*
  store %struct.flow_table* %130, %struct.flow_table** %16, align 8
  %131 = load %struct.flow_table*, %struct.flow_table** %16, align 8
  %132 = bitcast %struct.flow_table* %131 to %struct.sw_flow_actions*
  %133 = call i64 @IS_ERR(%struct.sw_flow_actions* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %150, label %135

135:                                              ; preds = %126
  %136 = load %struct.datapath*, %struct.datapath** %11, align 8
  %137 = getelementptr inbounds %struct.datapath, %struct.datapath* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.flow_table*, %struct.flow_table** %16, align 8
  %140 = bitcast %struct.flow_table* %139 to %struct.sw_flow_actions*
  %141 = call i32 @rcu_assign_pointer(i32 %138, %struct.sw_flow_actions* %140)
  %142 = load %struct.flow_table*, %struct.flow_table** %12, align 8
  %143 = bitcast %struct.flow_table* %142 to %struct.sw_flow_actions*
  %144 = call i32 @ovs_flow_tbl_deferred_destroy(%struct.sw_flow_actions* %143)
  %145 = load %struct.datapath*, %struct.datapath** %11, align 8
  %146 = getelementptr inbounds %struct.datapath, %struct.datapath* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call %struct.sw_flow_actions* @ovsl_dereference(i32 %147)
  %149 = bitcast %struct.sw_flow_actions* %148 to %struct.flow_table*
  store %struct.flow_table* %149, %struct.flow_table** %12, align 8
  br label %150

150:                                              ; preds = %135, %126
  br label %151

151:                                              ; preds = %150, %121
  %152 = call %struct.sw_flow_actions* (...) @ovs_flow_alloc()
  %153 = bitcast %struct.sw_flow_actions* %152 to %struct.sw_flow*
  store %struct.sw_flow* %153, %struct.sw_flow** %9, align 8
  %154 = load %struct.sw_flow*, %struct.sw_flow** %9, align 8
  %155 = bitcast %struct.sw_flow* %154 to %struct.sw_flow_actions*
  %156 = call i64 @IS_ERR(%struct.sw_flow_actions* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %151
  %159 = load %struct.sw_flow*, %struct.sw_flow** %9, align 8
  %160 = bitcast %struct.sw_flow* %159 to %struct.sw_flow_actions*
  %161 = call i32 @PTR_ERR(%struct.sw_flow_actions* %160)
  store i32 %161, i32* %14, align 4
  br label %275

162:                                              ; preds = %151
  %163 = load %struct.sw_flow*, %struct.sw_flow** %9, align 8
  %164 = bitcast %struct.sw_flow* %163 to %struct.sw_flow_actions*
  %165 = call i32 @clear_stats(%struct.sw_flow_actions* %164)
  %166 = load %struct.sw_flow*, %struct.sw_flow** %9, align 8
  %167 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.sw_flow_actions*, %struct.sw_flow_actions** %13, align 8
  %170 = call i32 @rcu_assign_pointer(i32 %168, %struct.sw_flow_actions* %169)
  %171 = load %struct.flow_table*, %struct.flow_table** %12, align 8
  %172 = bitcast %struct.flow_table* %171 to %struct.sw_flow_actions*
  %173 = load %struct.sw_flow*, %struct.sw_flow** %9, align 8
  %174 = bitcast %struct.sw_flow* %173 to %struct.sw_flow_actions*
  %175 = load i32, i32* %15, align 4
  %176 = call i32 @ovs_flow_tbl_insert(%struct.sw_flow_actions* %172, %struct.sw_flow_actions* %174, %struct.sw_flow_key* %8, i32 %175)
  %177 = load %struct.sw_flow*, %struct.sw_flow** %9, align 8
  %178 = bitcast %struct.sw_flow* %177 to %struct.sw_flow_actions*
  %179 = load %struct.datapath*, %struct.datapath** %11, align 8
  %180 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %181 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %184 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i64, i64* @OVS_FLOW_CMD_NEW, align 8
  %187 = call %struct.sw_flow_actions* @ovs_flow_cmd_build_info(%struct.sw_flow_actions* %178, %struct.datapath* %179, i32 %182, i32 %185, i64 %186)
  %188 = bitcast %struct.sw_flow_actions* %187 to %struct.sk_buff*
  store %struct.sk_buff* %188, %struct.sk_buff** %10, align 8
  br label %251

189:                                              ; preds = %97
  %190 = load i32, i32* @EEXIST, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %14, align 4
  %192 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %193 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %192, i32 0, i32 3
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @OVS_FLOW_CMD_NEW, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %211

199:                                              ; preds = %189
  %200 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %201 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %200, i32 0, i32 2
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @NLM_F_CREATE, align 4
  %206 = load i32, i32* @NLM_F_EXCL, align 4
  %207 = or i32 %205, %206
  %208 = and i32 %204, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %199
  br label %275

211:                                              ; preds = %199, %189
  %212 = load %struct.sw_flow*, %struct.sw_flow** %9, align 8
  %213 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = call %struct.sw_flow_actions* @ovsl_dereference(i32 %214)
  store %struct.sw_flow_actions* %215, %struct.sw_flow_actions** %17, align 8
  %216 = load %struct.sw_flow*, %struct.sw_flow** %9, align 8
  %217 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.sw_flow_actions*, %struct.sw_flow_actions** %13, align 8
  %220 = call i32 @rcu_assign_pointer(i32 %218, %struct.sw_flow_actions* %219)
  %221 = load %struct.sw_flow_actions*, %struct.sw_flow_actions** %17, align 8
  %222 = call i32 @ovs_flow_deferred_free_acts(%struct.sw_flow_actions* %221)
  %223 = load %struct.sw_flow*, %struct.sw_flow** %9, align 8
  %224 = bitcast %struct.sw_flow* %223 to %struct.sw_flow_actions*
  %225 = load %struct.datapath*, %struct.datapath** %11, align 8
  %226 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %227 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %230 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load i64, i64* @OVS_FLOW_CMD_NEW, align 8
  %233 = call %struct.sw_flow_actions* @ovs_flow_cmd_build_info(%struct.sw_flow_actions* %224, %struct.datapath* %225, i32 %228, i32 %231, i64 %232)
  %234 = bitcast %struct.sw_flow_actions* %233 to %struct.sk_buff*
  store %struct.sk_buff* %234, %struct.sk_buff** %10, align 8
  %235 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %236 = load i64, i64* @OVS_FLOW_ATTR_CLEAR, align 8
  %237 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %235, i64 %236
  %238 = load %struct.nlattr*, %struct.nlattr** %237, align 8
  %239 = icmp ne %struct.nlattr* %238, null
  br i1 %239, label %240, label %250

240:                                              ; preds = %211
  %241 = load %struct.sw_flow*, %struct.sw_flow** %9, align 8
  %242 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %241, i32 0, i32 1
  %243 = call i32 @spin_lock_bh(i32* %242)
  %244 = load %struct.sw_flow*, %struct.sw_flow** %9, align 8
  %245 = bitcast %struct.sw_flow* %244 to %struct.sw_flow_actions*
  %246 = call i32 @clear_stats(%struct.sw_flow_actions* %245)
  %247 = load %struct.sw_flow*, %struct.sw_flow** %9, align 8
  %248 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %247, i32 0, i32 1
  %249 = call i32 @spin_unlock_bh(i32* %248)
  br label %250

250:                                              ; preds = %240, %211
  br label %251

251:                                              ; preds = %250, %162
  %252 = call i32 (...) @ovs_unlock()
  %253 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %254 = bitcast %struct.sk_buff* %253 to %struct.sw_flow_actions*
  %255 = call i64 @IS_ERR(%struct.sw_flow_actions* %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %262, label %257

257:                                              ; preds = %251
  %258 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %259 = bitcast %struct.sk_buff* %258 to %struct.sw_flow_actions*
  %260 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %261 = call i32 @ovs_notify(%struct.sw_flow_actions* %259, %struct.genl_info* %260, %struct.TYPE_10__* @ovs_dp_flow_multicast_group)
  br label %274

262:                                              ; preds = %251
  %263 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %264 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = call %struct.TYPE_9__* @sock_net(i32 %265)
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ovs_dp_flow_multicast_group, i32 0, i32 0), align 4
  %270 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %271 = bitcast %struct.sk_buff* %270 to %struct.sw_flow_actions*
  %272 = call i32 @PTR_ERR(%struct.sw_flow_actions* %271)
  %273 = call i32 @netlink_set_err(i32 %268, i32 0, i32 %269, i32 %272)
  br label %274

274:                                              ; preds = %262, %257
  store i32 0, i32* %3, align 4
  br label %282

275:                                              ; preds = %210, %158, %120, %96
  %276 = call i32 (...) @ovs_unlock()
  br label %277

277:                                              ; preds = %275, %68
  %278 = load %struct.sw_flow_actions*, %struct.sw_flow_actions** %13, align 8
  %279 = call i32 @kfree(%struct.sw_flow_actions* %278)
  br label %280

280:                                              ; preds = %277, %78, %59, %40, %31
  %281 = load i32, i32* %14, align 4
  store i32 %281, i32* %3, align 4
  br label %282

282:                                              ; preds = %280, %274
  %283 = load i32, i32* %3, align 4
  ret i32 %283
}

declare dso_local i32 @ovs_flow_from_nlattrs(%struct.sw_flow_key*, i32*, %struct.nlattr*) #1

declare dso_local %struct.sw_flow_actions* @ovs_flow_actions_alloc(i32) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @PTR_ERR(%struct.sw_flow_actions*) #1

declare dso_local i64 @IS_ERR(%struct.sw_flow_actions*) #1

declare dso_local i32 @validate_and_copy_actions(%struct.nlattr*, %struct.sw_flow_key*, i32, %struct.sw_flow_actions**) #1

declare dso_local i32 @ovs_lock(...) #1

declare dso_local %struct.datapath* @get_dp(%struct.TYPE_9__*, i32) #1

declare dso_local %struct.TYPE_9__* @sock_net(i32) #1

declare dso_local %struct.sw_flow_actions* @ovsl_dereference(i32) #1

declare dso_local %struct.sw_flow_actions* @ovs_flow_tbl_lookup(%struct.sw_flow_actions*, %struct.sw_flow_key*, i32) #1

declare dso_local i64 @ovs_flow_tbl_need_to_expand(%struct.sw_flow_actions*) #1

declare dso_local %struct.sw_flow_actions* @ovs_flow_tbl_expand(%struct.sw_flow_actions*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.sw_flow_actions*) #1

declare dso_local i32 @ovs_flow_tbl_deferred_destroy(%struct.sw_flow_actions*) #1

declare dso_local %struct.sw_flow_actions* @ovs_flow_alloc(...) #1

declare dso_local i32 @clear_stats(%struct.sw_flow_actions*) #1

declare dso_local i32 @ovs_flow_tbl_insert(%struct.sw_flow_actions*, %struct.sw_flow_actions*, %struct.sw_flow_key*, i32) #1

declare dso_local %struct.sw_flow_actions* @ovs_flow_cmd_build_info(%struct.sw_flow_actions*, %struct.datapath*, i32, i32, i64) #1

declare dso_local i32 @ovs_flow_deferred_free_acts(%struct.sw_flow_actions*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ovs_unlock(...) #1

declare dso_local i32 @ovs_notify(%struct.sw_flow_actions*, %struct.genl_info*, %struct.TYPE_10__*) #1

declare dso_local i32 @netlink_set_err(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.sw_flow_actions*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
