; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_api.c_qdisc_graft.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_api.c_qdisc_graft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.Qdisc_class_ops*, i32 (%struct.Qdisc*)* }
%struct.Qdisc_class_ops = type { i32 (%struct.Qdisc*, i64, %struct.Qdisc*, %struct.Qdisc**)*, i64 (%struct.Qdisc*, i32)*, i32 (%struct.Qdisc*, i64)* }
%struct.net_device = type { i32, i32, %struct.Qdisc*, %struct.netdev_queue }
%struct.netdev_queue = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }

@TCQ_F_INGRESS = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@noop_qdisc = common dso_local global %struct.Qdisc zeroinitializer, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.Qdisc*, %struct.sk_buff*, %struct.nlmsghdr*, i32, %struct.Qdisc*, %struct.Qdisc*)* @qdisc_graft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qdisc_graft(%struct.net_device* %0, %struct.Qdisc* %1, %struct.sk_buff* %2, %struct.nlmsghdr* %3, i32 %4, %struct.Qdisc* %5, %struct.Qdisc* %6) #0 {
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.Qdisc*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.nlmsghdr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.Qdisc*, align 8
  %14 = alloca %struct.Qdisc*, align 8
  %15 = alloca %struct.Qdisc*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.netdev_queue*, align 8
  %21 = alloca %struct.Qdisc_class_ops*, align 8
  %22 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %8, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %9, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store %struct.nlmsghdr* %3, %struct.nlmsghdr** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.Qdisc* %5, %struct.Qdisc** %13, align 8
  store %struct.Qdisc* %6, %struct.Qdisc** %14, align 8
  %23 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  store %struct.Qdisc* %23, %struct.Qdisc** %15, align 8
  store i32 0, i32* %16, align 4
  %24 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %25 = icmp eq %struct.Qdisc* %24, null
  br i1 %25, label %26, label %167

26:                                               ; preds = %7
  store i32 0, i32* %19, align 4
  %27 = load %struct.net_device*, %struct.net_device** %8, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %18, align 4
  %30 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %31 = icmp ne %struct.Qdisc* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %34 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @TCQ_F_INGRESS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %32, %26
  %40 = load %struct.Qdisc*, %struct.Qdisc** %13, align 8
  %41 = icmp ne %struct.Qdisc* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load %struct.Qdisc*, %struct.Qdisc** %13, align 8
  %44 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @TCQ_F_INGRESS, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42, %32
  store i32 1, i32* %18, align 4
  store i32 1, i32* %19, align 4
  br label %50

50:                                               ; preds = %49, %42, %39
  %51 = load %struct.net_device*, %struct.net_device** %8, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @IFF_UP, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.net_device*, %struct.net_device** %8, align 8
  %59 = call i32 @dev_deactivate(%struct.net_device* %58)
  br label %60

60:                                               ; preds = %57, %50
  %61 = load %struct.Qdisc*, %struct.Qdisc** %13, align 8
  %62 = icmp ne %struct.Qdisc* %61, null
  br i1 %62, label %63, label %78

63:                                               ; preds = %60
  %64 = load %struct.Qdisc*, %struct.Qdisc** %13, align 8
  %65 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32 (%struct.Qdisc*)*, i32 (%struct.Qdisc*)** %67, align 8
  %69 = icmp ne i32 (%struct.Qdisc*)* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %63
  %71 = load %struct.Qdisc*, %struct.Qdisc** %13, align 8
  %72 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32 (%struct.Qdisc*)*, i32 (%struct.Qdisc*)** %74, align 8
  %76 = load %struct.Qdisc*, %struct.Qdisc** %13, align 8
  %77 = call i32 %75(%struct.Qdisc* %76)
  store i32 0, i32* %18, align 4
  br label %78

78:                                               ; preds = %70, %63, %60
  store i32 0, i32* %17, align 4
  br label %79

79:                                               ; preds = %112, %78
  %80 = load i32, i32* %17, align 4
  %81 = load i32, i32* %18, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %83, label %115

83:                                               ; preds = %79
  %84 = load %struct.net_device*, %struct.net_device** %8, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 3
  store %struct.netdev_queue* %85, %struct.netdev_queue** %20, align 8
  %86 = load i32, i32* %19, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %83
  %89 = load %struct.net_device*, %struct.net_device** %8, align 8
  %90 = load i32, i32* %17, align 4
  %91 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %89, i32 %90)
  store %struct.netdev_queue* %91, %struct.netdev_queue** %20, align 8
  br label %92

92:                                               ; preds = %88, %83
  %93 = load %struct.netdev_queue*, %struct.netdev_queue** %20, align 8
  %94 = load %struct.Qdisc*, %struct.Qdisc** %13, align 8
  %95 = call %struct.Qdisc* @dev_graft_qdisc(%struct.netdev_queue* %93, %struct.Qdisc* %94)
  store %struct.Qdisc* %95, %struct.Qdisc** %14, align 8
  %96 = load %struct.Qdisc*, %struct.Qdisc** %13, align 8
  %97 = icmp ne %struct.Qdisc* %96, null
  br i1 %97, label %98, label %105

98:                                               ; preds = %92
  %99 = load i32, i32* %17, align 4
  %100 = icmp ugt i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load %struct.Qdisc*, %struct.Qdisc** %13, align 8
  %103 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %102, i32 0, i32 2
  %104 = call i32 @atomic_inc(i32* %103)
  br label %105

105:                                              ; preds = %101, %98, %92
  %106 = load i32, i32* %19, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %110 = call i32 @qdisc_destroy(%struct.Qdisc* %109)
  br label %111

111:                                              ; preds = %108, %105
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %17, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %17, align 4
  br label %79

115:                                              ; preds = %79
  %116 = load i32, i32* %19, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %149, label %118

118:                                              ; preds = %115
  %119 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %120 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %121 = load i32, i32* %12, align 4
  %122 = load %struct.net_device*, %struct.net_device** %8, align 8
  %123 = getelementptr inbounds %struct.net_device, %struct.net_device* %122, i32 0, i32 2
  %124 = load %struct.Qdisc*, %struct.Qdisc** %123, align 8
  %125 = load %struct.Qdisc*, %struct.Qdisc** %13, align 8
  %126 = call i32 @notify_and_destroy(%struct.sk_buff* %119, %struct.nlmsghdr* %120, i32 %121, %struct.Qdisc* %124, %struct.Qdisc* %125)
  %127 = load %struct.Qdisc*, %struct.Qdisc** %13, align 8
  %128 = icmp ne %struct.Qdisc* %127, null
  br i1 %128, label %129, label %140

129:                                              ; preds = %118
  %130 = load %struct.Qdisc*, %struct.Qdisc** %13, align 8
  %131 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %130, i32 0, i32 1
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i32 (%struct.Qdisc*)*, i32 (%struct.Qdisc*)** %133, align 8
  %135 = icmp ne i32 (%struct.Qdisc*)* %134, null
  br i1 %135, label %140, label %136

136:                                              ; preds = %129
  %137 = load %struct.Qdisc*, %struct.Qdisc** %13, align 8
  %138 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %137, i32 0, i32 2
  %139 = call i32 @atomic_inc(i32* %138)
  br label %140

140:                                              ; preds = %136, %129, %118
  %141 = load %struct.Qdisc*, %struct.Qdisc** %13, align 8
  %142 = icmp ne %struct.Qdisc* %141, null
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  br label %145

144:                                              ; preds = %140
  br label %145

145:                                              ; preds = %144, %143
  %146 = phi %struct.Qdisc* [ %141, %143 ], [ @noop_qdisc, %144 ]
  %147 = load %struct.net_device*, %struct.net_device** %8, align 8
  %148 = getelementptr inbounds %struct.net_device, %struct.net_device* %147, i32 0, i32 2
  store %struct.Qdisc* %146, %struct.Qdisc** %148, align 8
  br label %156

149:                                              ; preds = %115
  %150 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %151 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %152 = load i32, i32* %12, align 4
  %153 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %154 = load %struct.Qdisc*, %struct.Qdisc** %13, align 8
  %155 = call i32 @notify_and_destroy(%struct.sk_buff* %150, %struct.nlmsghdr* %151, i32 %152, %struct.Qdisc* %153, %struct.Qdisc* %154)
  br label %156

156:                                              ; preds = %149, %145
  %157 = load %struct.net_device*, %struct.net_device** %8, align 8
  %158 = getelementptr inbounds %struct.net_device, %struct.net_device* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @IFF_UP, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %156
  %164 = load %struct.net_device*, %struct.net_device** %8, align 8
  %165 = call i32 @dev_activate(%struct.net_device* %164)
  br label %166

166:                                              ; preds = %163, %156
  br label %220

167:                                              ; preds = %7
  %168 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %169 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %168, i32 0, i32 1
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  %172 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %171, align 8
  store %struct.Qdisc_class_ops* %172, %struct.Qdisc_class_ops** %21, align 8
  %173 = load i32, i32* @EOPNOTSUPP, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %16, align 4
  %175 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %21, align 8
  %176 = icmp ne %struct.Qdisc_class_ops* %175, null
  br i1 %176, label %177, label %209

177:                                              ; preds = %167
  %178 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %21, align 8
  %179 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %178, i32 0, i32 0
  %180 = load i32 (%struct.Qdisc*, i64, %struct.Qdisc*, %struct.Qdisc**)*, i32 (%struct.Qdisc*, i64, %struct.Qdisc*, %struct.Qdisc**)** %179, align 8
  %181 = icmp ne i32 (%struct.Qdisc*, i64, %struct.Qdisc*, %struct.Qdisc**)* %180, null
  br i1 %181, label %182, label %209

182:                                              ; preds = %177
  %183 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %21, align 8
  %184 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %183, i32 0, i32 1
  %185 = load i64 (%struct.Qdisc*, i32)*, i64 (%struct.Qdisc*, i32)** %184, align 8
  %186 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %187 = load i32, i32* %12, align 4
  %188 = call i64 %185(%struct.Qdisc* %186, i32 %187)
  store i64 %188, i64* %22, align 8
  %189 = load i64, i64* %22, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %205

191:                                              ; preds = %182
  %192 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %21, align 8
  %193 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %192, i32 0, i32 0
  %194 = load i32 (%struct.Qdisc*, i64, %struct.Qdisc*, %struct.Qdisc**)*, i32 (%struct.Qdisc*, i64, %struct.Qdisc*, %struct.Qdisc**)** %193, align 8
  %195 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %196 = load i64, i64* %22, align 8
  %197 = load %struct.Qdisc*, %struct.Qdisc** %13, align 8
  %198 = call i32 %194(%struct.Qdisc* %195, i64 %196, %struct.Qdisc* %197, %struct.Qdisc** %14)
  store i32 %198, i32* %16, align 4
  %199 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %21, align 8
  %200 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %199, i32 0, i32 2
  %201 = load i32 (%struct.Qdisc*, i64)*, i32 (%struct.Qdisc*, i64)** %200, align 8
  %202 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %203 = load i64, i64* %22, align 8
  %204 = call i32 %201(%struct.Qdisc* %202, i64 %203)
  br label %208

205:                                              ; preds = %182
  %206 = load i32, i32* @ENOENT, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %16, align 4
  br label %208

208:                                              ; preds = %205, %191
  br label %209

209:                                              ; preds = %208, %177, %167
  %210 = load i32, i32* %16, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %219, label %212

212:                                              ; preds = %209
  %213 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %214 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %215 = load i32, i32* %12, align 4
  %216 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %217 = load %struct.Qdisc*, %struct.Qdisc** %13, align 8
  %218 = call i32 @notify_and_destroy(%struct.sk_buff* %213, %struct.nlmsghdr* %214, i32 %215, %struct.Qdisc* %216, %struct.Qdisc* %217)
  br label %219

219:                                              ; preds = %212, %209
  br label %220

220:                                              ; preds = %219, %166
  %221 = load i32, i32* %16, align 4
  ret i32 %221
}

declare dso_local i32 @dev_deactivate(%struct.net_device*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local %struct.Qdisc* @dev_graft_qdisc(%struct.netdev_queue*, %struct.Qdisc*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @qdisc_destroy(%struct.Qdisc*) #1

declare dso_local i32 @notify_and_destroy(%struct.sk_buff*, %struct.nlmsghdr*, i32, %struct.Qdisc*, %struct.Qdisc*) #1

declare dso_local i32 @dev_activate(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
