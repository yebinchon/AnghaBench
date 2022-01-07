; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_api.c_tc_get_qdisc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_api.c_tc_get_qdisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i64 }
%struct.tcmsg = type { i64, i64, i32 }
%struct.net_device = type { %struct.Qdisc*, %struct.TYPE_3__ }
%struct.Qdisc = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.Qdisc* }
%struct.nlattr = type { i32 }

@TCA_MAX = common dso_local global i32 0, align 4
@init_net = common dso_local global %struct.net zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@TC_H_ROOT = common dso_local global i64 0, align 8
@TC_H_INGRESS = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@TCA_KIND = common dso_local global i64 0, align 8
@RTM_DELQDISC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, i8*)* @tc_get_qdisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_get_qdisc(%struct.sk_buff* %0, %struct.nlmsghdr* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.tcmsg*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.Qdisc*, align 8
  %15 = alloca %struct.Qdisc*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store i8* %2, i8** %7, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.net* @sock_net(i32 %20)
  store %struct.net* %21, %struct.net** %8, align 8
  %22 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %23 = call %struct.tcmsg* @NLMSG_DATA(%struct.nlmsghdr* %22)
  store %struct.tcmsg* %23, %struct.tcmsg** %9, align 8
  %24 = load i32, i32* @TCA_MAX, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %10, align 8
  %28 = alloca %struct.nlattr*, i64 %26, align 16
  store i64 %26, i64* %11, align 8
  %29 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %30 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %13, align 8
  store %struct.Qdisc* null, %struct.Qdisc** %14, align 8
  store %struct.Qdisc* null, %struct.Qdisc** %15, align 8
  %32 = load %struct.net*, %struct.net** %8, align 8
  %33 = icmp ne %struct.net* %32, @init_net
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %182

37:                                               ; preds = %3
  %38 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %39 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.net_device* @__dev_get_by_index(%struct.net* @init_net, i32 %40)
  store %struct.net_device* %41, %struct.net_device** %12, align 8
  %42 = icmp eq %struct.net_device* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %182

46:                                               ; preds = %37
  %47 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %48 = load i32, i32* @TCA_MAX, align 4
  %49 = call i32 @nlmsg_parse(%struct.nlmsghdr* %47, i32 24, %struct.nlattr** %28, i32 %48, i32* null)
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %16, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %16, align 4
  store i32 %53, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %182

54:                                               ; preds = %46
  %55 = load i64, i64* %13, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %113

57:                                               ; preds = %54
  %58 = load i64, i64* %13, align 8
  %59 = load i64, i64* @TC_H_ROOT, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %86

61:                                               ; preds = %57
  %62 = load i64, i64* %13, align 8
  %63 = call i64 @TC_H_MAJ(i64 %62)
  %64 = load i64, i64* @TC_H_INGRESS, align 8
  %65 = call i64 @TC_H_MAJ(i64 %64)
  %66 = icmp ne i64 %63, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %61
  %68 = load %struct.net_device*, %struct.net_device** %12, align 8
  %69 = load i64, i64* %13, align 8
  %70 = call i64 @TC_H_MAJ(i64 %69)
  %71 = call %struct.Qdisc* @qdisc_lookup(%struct.net_device* %68, i64 %70)
  store %struct.Qdisc* %71, %struct.Qdisc** %15, align 8
  %72 = icmp eq %struct.Qdisc* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32, i32* @ENOENT, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %182

76:                                               ; preds = %67
  %77 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %78 = load i64, i64* %13, align 8
  %79 = call %struct.Qdisc* @qdisc_leaf(%struct.Qdisc* %77, i64 %78)
  store %struct.Qdisc* %79, %struct.Qdisc** %14, align 8
  br label %85

80:                                               ; preds = %61
  %81 = load %struct.net_device*, %struct.net_device** %12, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load %struct.Qdisc*, %struct.Qdisc** %83, align 8
  store %struct.Qdisc* %84, %struct.Qdisc** %14, align 8
  br label %85

85:                                               ; preds = %80, %76
  br label %90

86:                                               ; preds = %57
  %87 = load %struct.net_device*, %struct.net_device** %12, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 0
  %89 = load %struct.Qdisc*, %struct.Qdisc** %88, align 8
  store %struct.Qdisc* %89, %struct.Qdisc** %14, align 8
  br label %90

90:                                               ; preds = %86, %85
  %91 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %92 = icmp ne %struct.Qdisc* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* @ENOENT, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %182

96:                                               ; preds = %90
  %97 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %98 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %96
  %102 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %103 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %106 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %104, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %101
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %182

112:                                              ; preds = %101, %96
  br label %124

113:                                              ; preds = %54
  %114 = load %struct.net_device*, %struct.net_device** %12, align 8
  %115 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %116 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = call %struct.Qdisc* @qdisc_lookup(%struct.net_device* %114, i64 %117)
  store %struct.Qdisc* %118, %struct.Qdisc** %14, align 8
  %119 = icmp eq %struct.Qdisc* %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %113
  %121 = load i32, i32* @ENOENT, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %182

123:                                              ; preds = %113
  br label %124

124:                                              ; preds = %123, %112
  %125 = load i64, i64* @TCA_KIND, align 8
  %126 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %125
  %127 = load %struct.nlattr*, %struct.nlattr** %126, align 8
  %128 = icmp ne %struct.nlattr* %127, null
  br i1 %128, label %129, label %143

129:                                              ; preds = %124
  %130 = load i64, i64* @TCA_KIND, align 8
  %131 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %130
  %132 = load %struct.nlattr*, %struct.nlattr** %131, align 8
  %133 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %134 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %133, i32 0, i32 1
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @nla_strcmp(%struct.nlattr* %132, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %129
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %182

143:                                              ; preds = %129, %124
  %144 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %145 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @RTM_DELQDISC, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %175

149:                                              ; preds = %143
  %150 = load i64, i64* %13, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %149
  %153 = load i32, i32* @EINVAL, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %182

155:                                              ; preds = %149
  %156 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %157 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = load i32, i32* @ENOENT, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %182

163:                                              ; preds = %155
  %164 = load %struct.net_device*, %struct.net_device** %12, align 8
  %165 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %166 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %167 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %168 = load i64, i64* %13, align 8
  %169 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %170 = call i32 @qdisc_graft(%struct.net_device* %164, %struct.Qdisc* %165, %struct.sk_buff* %166, %struct.nlmsghdr* %167, i64 %168, i32* null, %struct.Qdisc* %169)
  store i32 %170, i32* %16, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %163
  %173 = load i32, i32* %16, align 4
  store i32 %173, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %182

174:                                              ; preds = %163
  br label %181

175:                                              ; preds = %143
  %176 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %177 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %178 = load i64, i64* %13, align 8
  %179 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %180 = call i32 @qdisc_notify(%struct.sk_buff* %176, %struct.nlmsghdr* %177, i64 %178, i32* null, %struct.Qdisc* %179)
  br label %181

181:                                              ; preds = %175, %174
  store i32 0, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %182

182:                                              ; preds = %181, %172, %160, %152, %140, %120, %109, %93, %73, %52, %43, %34
  %183 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %183)
  %184 = load i32, i32* %4, align 4
  ret i32 %184
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local %struct.tcmsg* @NLMSG_DATA(%struct.nlmsghdr*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i32) #1

declare dso_local i32 @nlmsg_parse(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32*) #1

declare dso_local i64 @TC_H_MAJ(i64) #1

declare dso_local %struct.Qdisc* @qdisc_lookup(%struct.net_device*, i64) #1

declare dso_local %struct.Qdisc* @qdisc_leaf(%struct.Qdisc*, i64) #1

declare dso_local i64 @nla_strcmp(%struct.nlattr*, i32) #1

declare dso_local i32 @qdisc_graft(%struct.net_device*, %struct.Qdisc*, %struct.sk_buff*, %struct.nlmsghdr*, i64, i32*, %struct.Qdisc*) #1

declare dso_local i32 @qdisc_notify(%struct.sk_buff*, %struct.nlmsghdr*, i64, i32*, %struct.Qdisc*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
