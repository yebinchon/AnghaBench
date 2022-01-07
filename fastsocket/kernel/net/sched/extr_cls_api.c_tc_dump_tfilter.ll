; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_api.c_tc_dump_tfilter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_api.c_tc_dump_tfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.netlink_callback = type { i32*, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i64, i32 }
%struct.net_device = type { %struct.Qdisc* }
%struct.Qdisc = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.Qdisc_class_ops* }
%struct.Qdisc_class_ops = type { i64 (%struct.Qdisc*, i32)*, i32 (%struct.Qdisc*, i64)*, %struct.tcf_proto** (%struct.Qdisc*, i64)* }
%struct.tcf_proto = type { i64, i64, %struct.TYPE_7__*, %struct.tcf_proto* }
%struct.TYPE_7__ = type { i32 (%struct.tcf_proto*, %struct.TYPE_8__*)* }
%struct.TYPE_8__ = type { i32, i32, i64, i32 }
%struct.tcmsg = type { i32, i32, i32 }
%struct.tcf_dump_args = type { %struct.TYPE_8__, %struct.netlink_callback*, %struct.sk_buff* }
%struct.TYPE_10__ = type { i32 }

@init_net = common dso_local global %struct.net zeroinitializer, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@RTM_NEWTFILTER = common dso_local global i32 0, align 4
@tcf_node_dump = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*)* @tc_dump_tfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_dump_tfilter(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.netlink_callback*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.Qdisc*, align 8
  %11 = alloca %struct.tcf_proto*, align 8
  %12 = alloca %struct.tcf_proto**, align 8
  %13 = alloca %struct.tcmsg*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.Qdisc_class_ops*, align 8
  %16 = alloca %struct.tcf_dump_args, align 8
  %17 = alloca %struct.TYPE_10__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %5, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.net* @sock_net(i32 %20)
  store %struct.net* %21, %struct.net** %6, align 8
  %22 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %23 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %22, i32 0, i32 1
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = call i64 @NLMSG_DATA(%struct.TYPE_9__* %24)
  %26 = inttoptr i64 %25 to %struct.tcmsg*
  store %struct.tcmsg* %26, %struct.tcmsg** %13, align 8
  store i64 0, i64* %14, align 8
  %27 = load %struct.net*, %struct.net** %6, align 8
  %28 = icmp ne %struct.net* %27, @init_net
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %284

30:                                               ; preds = %2
  %31 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %32 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %31, i32 0, i32 1
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @NLMSG_LENGTH(i32 12)
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %3, align 4
  br label %284

42:                                               ; preds = %30
  %43 = load %struct.tcmsg*, %struct.tcmsg** %13, align 8
  %44 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.net_device* @dev_get_by_index(%struct.net* @init_net, i32 %45)
  store %struct.net_device* %46, %struct.net_device** %9, align 8
  %47 = icmp eq %struct.net_device* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %3, align 4
  br label %284

52:                                               ; preds = %42
  %53 = load %struct.tcmsg*, %struct.tcmsg** %13, align 8
  %54 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = load %struct.net_device*, %struct.net_device** %9, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 0
  %60 = load %struct.Qdisc*, %struct.Qdisc** %59, align 8
  store %struct.Qdisc* %60, %struct.Qdisc** %10, align 8
  br label %68

61:                                               ; preds = %52
  %62 = load %struct.net_device*, %struct.net_device** %9, align 8
  %63 = load %struct.tcmsg*, %struct.tcmsg** %13, align 8
  %64 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @TC_H_MAJ(i32 %65)
  %67 = call %struct.Qdisc* @qdisc_lookup(%struct.net_device* %62, i64 %66)
  store %struct.Qdisc* %67, %struct.Qdisc** %10, align 8
  br label %68

68:                                               ; preds = %61, %57
  %69 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %70 = icmp ne %struct.Qdisc* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  br label %278

72:                                               ; preds = %68
  %73 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %74 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %76, align 8
  store %struct.Qdisc_class_ops* %77, %struct.Qdisc_class_ops** %15, align 8
  %78 = icmp eq %struct.Qdisc_class_ops* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %267

80:                                               ; preds = %72
  %81 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %15, align 8
  %82 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %81, i32 0, i32 2
  %83 = load %struct.tcf_proto** (%struct.Qdisc*, i64)*, %struct.tcf_proto** (%struct.Qdisc*, i64)** %82, align 8
  %84 = icmp eq %struct.tcf_proto** (%struct.Qdisc*, i64)* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %267

86:                                               ; preds = %80
  %87 = load %struct.tcmsg*, %struct.tcmsg** %13, align 8
  %88 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @TC_H_MIN(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %86
  %93 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %15, align 8
  %94 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %93, i32 0, i32 0
  %95 = load i64 (%struct.Qdisc*, i32)*, i64 (%struct.Qdisc*, i32)** %94, align 8
  %96 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %97 = load %struct.tcmsg*, %struct.tcmsg** %13, align 8
  %98 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i64 %95(%struct.Qdisc* %96, i32 %99)
  store i64 %100, i64* %14, align 8
  %101 = load i64, i64* %14, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %92
  br label %267

104:                                              ; preds = %92
  br label %105

105:                                              ; preds = %104, %86
  %106 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %15, align 8
  %107 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %106, i32 0, i32 2
  %108 = load %struct.tcf_proto** (%struct.Qdisc*, i64)*, %struct.tcf_proto** (%struct.Qdisc*, i64)** %107, align 8
  %109 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %110 = load i64, i64* %14, align 8
  %111 = call %struct.tcf_proto** %108(%struct.Qdisc* %109, i64 %110)
  store %struct.tcf_proto** %111, %struct.tcf_proto*** %12, align 8
  %112 = load %struct.tcf_proto**, %struct.tcf_proto*** %12, align 8
  %113 = icmp eq %struct.tcf_proto** %112, null
  br i1 %113, label %114, label %115

114:                                              ; preds = %105
  br label %267

115:                                              ; preds = %105
  %116 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %117 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %8, align 4
  %121 = load %struct.tcf_proto**, %struct.tcf_proto*** %12, align 8
  %122 = load %struct.tcf_proto*, %struct.tcf_proto** %121, align 8
  store %struct.tcf_proto* %122, %struct.tcf_proto** %11, align 8
  store i32 0, i32* %7, align 4
  br label %123

123:                                              ; preds = %255, %115
  %124 = load %struct.tcf_proto*, %struct.tcf_proto** %11, align 8
  %125 = icmp ne %struct.tcf_proto* %124, null
  br i1 %125, label %126, label %261

126:                                              ; preds = %123
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  br label %255

131:                                              ; preds = %126
  %132 = load %struct.tcmsg*, %struct.tcmsg** %13, align 8
  %133 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @TC_H_MAJ(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %131
  %138 = load %struct.tcmsg*, %struct.tcmsg** %13, align 8
  %139 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i64 @TC_H_MAJ(i32 %140)
  %142 = load %struct.tcf_proto*, %struct.tcf_proto** %11, align 8
  %143 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %141, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %137
  br label %255

147:                                              ; preds = %137, %131
  %148 = load %struct.tcmsg*, %struct.tcmsg** %13, align 8
  %149 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i64 @TC_H_MIN(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %163

153:                                              ; preds = %147
  %154 = load %struct.tcmsg*, %struct.tcmsg** %13, align 8
  %155 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i64 @TC_H_MIN(i32 %156)
  %158 = load %struct.tcf_proto*, %struct.tcf_proto** %11, align 8
  %159 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %157, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %153
  br label %255

163:                                              ; preds = %153, %147
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* %8, align 4
  %166 = icmp sgt i32 %164, %165
  br i1 %166, label %167, label %173

167:                                              ; preds = %163
  %168 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %169 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 1
  %172 = call i32 @memset(i32* %171, i32 0, i32 4)
  br label %173

173:                                              ; preds = %167, %163
  %174 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %175 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 1
  %178 = load i32, i32* %177, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %205

180:                                              ; preds = %173
  %181 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %182 = load %struct.tcf_proto*, %struct.tcf_proto** %11, align 8
  %183 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %184 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @NETLINK_CB(i32 %185)
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  store i32 %186, i32* %187, align 4
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %191 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %190, i32 0, i32 1
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @NLM_F_MULTI, align 4
  %196 = load i32, i32* @RTM_NEWTFILTER, align 4
  %197 = call i64 @tcf_fill_node(%struct.sk_buff* %181, %struct.tcf_proto* %182, i32 0, i32 %189, i32 %194, i32 %195, i32 %196)
  %198 = icmp sle i64 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %180
  br label %261

200:                                              ; preds = %180
  %201 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %202 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 1
  store i32 1, i32* %204, align 4
  br label %205

205:                                              ; preds = %200, %173
  %206 = load %struct.tcf_proto*, %struct.tcf_proto** %11, align 8
  %207 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %206, i32 0, i32 2
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 0
  %210 = load i32 (%struct.tcf_proto*, %struct.TYPE_8__*)*, i32 (%struct.tcf_proto*, %struct.TYPE_8__*)** %209, align 8
  %211 = icmp eq i32 (%struct.tcf_proto*, %struct.TYPE_8__*)* %210, null
  br i1 %211, label %212, label %213

212:                                              ; preds = %205
  br label %255

213:                                              ; preds = %205
  %214 = load i32, i32* @tcf_node_dump, align 4
  %215 = getelementptr inbounds %struct.tcf_dump_args, %struct.tcf_dump_args* %16, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 3
  store i32 %214, i32* %216, align 8
  %217 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %218 = getelementptr inbounds %struct.tcf_dump_args, %struct.tcf_dump_args* %16, i32 0, i32 2
  store %struct.sk_buff* %217, %struct.sk_buff** %218, align 8
  %219 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %220 = getelementptr inbounds %struct.tcf_dump_args, %struct.tcf_dump_args* %16, i32 0, i32 1
  store %struct.netlink_callback* %219, %struct.netlink_callback** %220, align 8
  %221 = getelementptr inbounds %struct.tcf_dump_args, %struct.tcf_dump_args* %16, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 2
  store i64 0, i64* %222, align 8
  %223 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %224 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %223, i32 0, i32 0
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 1
  %227 = load i32, i32* %226, align 4
  %228 = sub nsw i32 %227, 1
  %229 = getelementptr inbounds %struct.tcf_dump_args, %struct.tcf_dump_args* %16, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 0
  store i32 %228, i32* %230, align 8
  %231 = getelementptr inbounds %struct.tcf_dump_args, %struct.tcf_dump_args* %16, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 1
  store i32 0, i32* %232, align 4
  %233 = load %struct.tcf_proto*, %struct.tcf_proto** %11, align 8
  %234 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %233, i32 0, i32 2
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 0
  %237 = load i32 (%struct.tcf_proto*, %struct.TYPE_8__*)*, i32 (%struct.tcf_proto*, %struct.TYPE_8__*)** %236, align 8
  %238 = load %struct.tcf_proto*, %struct.tcf_proto** %11, align 8
  %239 = getelementptr inbounds %struct.tcf_dump_args, %struct.tcf_dump_args* %16, i32 0, i32 0
  %240 = call i32 %237(%struct.tcf_proto* %238, %struct.TYPE_8__* %239)
  %241 = getelementptr inbounds %struct.tcf_dump_args, %struct.tcf_dump_args* %16, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = add nsw i32 %243, 1
  %245 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %246 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %245, i32 0, i32 0
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 1
  store i32 %244, i32* %248, align 4
  %249 = getelementptr inbounds %struct.tcf_dump_args, %struct.tcf_dump_args* %16, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 2
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %213
  br label %261

254:                                              ; preds = %213
  br label %255

255:                                              ; preds = %254, %212, %162, %146, %130
  %256 = load %struct.tcf_proto*, %struct.tcf_proto** %11, align 8
  %257 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %256, i32 0, i32 3
  %258 = load %struct.tcf_proto*, %struct.tcf_proto** %257, align 8
  store %struct.tcf_proto* %258, %struct.tcf_proto** %11, align 8
  %259 = load i32, i32* %7, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %7, align 4
  br label %123

261:                                              ; preds = %253, %199, %123
  %262 = load i32, i32* %7, align 4
  %263 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %264 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %263, i32 0, i32 0
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 0
  store i32 %262, i32* %266, align 4
  br label %267

267:                                              ; preds = %261, %114, %103, %85, %79
  %268 = load i64, i64* %14, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %277

270:                                              ; preds = %267
  %271 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %15, align 8
  %272 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %271, i32 0, i32 1
  %273 = load i32 (%struct.Qdisc*, i64)*, i32 (%struct.Qdisc*, i64)** %272, align 8
  %274 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %275 = load i64, i64* %14, align 8
  %276 = call i32 %273(%struct.Qdisc* %274, i64 %275)
  br label %277

277:                                              ; preds = %270, %267
  br label %278

278:                                              ; preds = %277, %71
  %279 = load %struct.net_device*, %struct.net_device** %9, align 8
  %280 = call i32 @dev_put(%struct.net_device* %279)
  %281 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %282 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  store i32 %283, i32* %3, align 4
  br label %284

284:                                              ; preds = %278, %48, %38, %29
  %285 = load i32, i32* %3, align 4
  ret i32 %285
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i64 @NLMSG_DATA(%struct.TYPE_9__*) #1

declare dso_local i64 @NLMSG_LENGTH(i32) #1

declare dso_local %struct.net_device* @dev_get_by_index(%struct.net*, i32) #1

declare dso_local %struct.Qdisc* @qdisc_lookup(%struct.net_device*, i64) #1

declare dso_local i64 @TC_H_MAJ(i32) #1

declare dso_local i64 @TC_H_MIN(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @tcf_fill_node(%struct.sk_buff*, %struct.tcf_proto*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
