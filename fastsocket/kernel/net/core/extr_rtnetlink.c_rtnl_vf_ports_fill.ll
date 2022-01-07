; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_rtnetlink.c_rtnl_vf_ports_fill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_rtnetlink.c_rtnl_vf_ports_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 (%struct.net_device*, i32, %struct.sk_buff*)* }
%struct.TYPE_4__ = type { i32 }
%struct.nlattr = type { i32 }

@IFLA_VF_PORTS = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@IFLA_VF_PORT = common dso_local global i32 0, align 4
@IFLA_PORT_VF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @rtnl_vf_ports_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtnl_vf_ports_fill(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = load i32, i32* @IFLA_VF_PORTS, align 4
  %12 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %10, i32 %11)
  store %struct.nlattr* %12, %struct.nlattr** %6, align 8
  %13 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %14 = icmp ne %struct.nlattr* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EMSGSIZE, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %77

18:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %64, %18
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dev_num_vf(i32 %24)
  %26 = icmp slt i32 %20, %25
  br i1 %26, label %27, label %67

27:                                               ; preds = %19
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = load i32, i32* @IFLA_VF_PORT, align 4
  %30 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %28, i32 %29)
  store %struct.nlattr* %30, %struct.nlattr** %7, align 8
  %31 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %32 = icmp ne %struct.nlattr* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  br label %71

34:                                               ; preds = %27
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = load i32, i32* @IFLA_PORT_VF, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @NLA_PUT_U32(%struct.sk_buff* %35, i32 %36, i32 %37)
  %39 = load %struct.net_device*, %struct.net_device** %5, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32 (%struct.net_device*, i32, %struct.sk_buff*)*, i32 (%struct.net_device*, i32, %struct.sk_buff*)** %42, align 8
  %44 = load %struct.net_device*, %struct.net_device** %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = call i32 %43(%struct.net_device* %44, i32 %45, %struct.sk_buff* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @EMSGSIZE, align 4
  %50 = sub nsw i32 0, %49
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %34
  br label %71

53:                                               ; preds = %34
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %59 = call i32 @nla_nest_cancel(%struct.sk_buff* %57, %struct.nlattr* %58)
  br label %64

60:                                               ; preds = %53
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %63 = call i32 @nla_nest_end(%struct.sk_buff* %61, %struct.nlattr* %62)
  br label %64

64:                                               ; preds = %60, %56
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %19

67:                                               ; preds = %19
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %70 = call i32 @nla_nest_end(%struct.sk_buff* %68, %struct.nlattr* %69)
  store i32 0, i32* %3, align 4
  br label %77

71:                                               ; preds = %52, %33
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %74 = call i32 @nla_nest_cancel(%struct.sk_buff* %72, %struct.nlattr* %73)
  %75 = load i32, i32* @EMSGSIZE, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %71, %67, %15
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @dev_num_vf(i32) #1

declare dso_local i32 @NLA_PUT_U32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
