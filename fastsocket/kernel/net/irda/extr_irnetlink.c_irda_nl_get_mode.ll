; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_irnetlink.c_irda_nl_get_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_irnetlink.c_irda_nl_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32 }
%struct.net_device = type { i32, i64 }
%struct.irlap_cb = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@irda_nl_family = common dso_local global i32 0, align 4
@IRDA_NL_CMD_GET_MODE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@IRDA_NL_ATTR_IFNAME = common dso_local global i32 0, align 4
@IRDA_NL_ATTR_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @irda_nl_get_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @irda_nl_get_mode(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.irlap_cb*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %11 = load i32, i32* @ENOBUFS, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %14 = call %struct.net_device* @ifname_to_netdev(i32* @init_net, %struct.genl_info* %13)
  store %struct.net_device* %14, %struct.net_device** %6, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = icmp ne %struct.net_device* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %87

20:                                               ; preds = %2
  %21 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.sk_buff* @nlmsg_new(i32 %21, i32 %22)
  store %struct.sk_buff* %23, %struct.sk_buff** %8, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  %27 = load %struct.net_device*, %struct.net_device** %6, align 8
  %28 = call i32 @dev_put(%struct.net_device* %27)
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %87

31:                                               ; preds = %20
  %32 = load %struct.net_device*, %struct.net_device** %6, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.irlap_cb*
  store %struct.irlap_cb* %35, %struct.irlap_cb** %7, align 8
  %36 = load %struct.irlap_cb*, %struct.irlap_cb** %7, align 8
  %37 = icmp ne %struct.irlap_cb* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %10, align 4
  br label %81

41:                                               ; preds = %31
  %42 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %43 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %44 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %47 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IRDA_NL_CMD_GET_MODE, align 4
  %50 = call i8* @genlmsg_put(%struct.sk_buff* %42, i32 %45, i32 %48, i32* @irda_nl_family, i32 0, i32 %49)
  store i8* %50, i8** %9, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %41
  %54 = load i32, i32* @EMSGSIZE, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %10, align 4
  br label %81

56:                                               ; preds = %41
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = load i32, i32* @IRDA_NL_ATTR_IFNAME, align 4
  %59 = load %struct.net_device*, %struct.net_device** %6, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @nla_put_string(%struct.sk_buff* %57, i32 %58, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %81

65:                                               ; preds = %56
  %66 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %67 = load i32, i32* @IRDA_NL_ATTR_MODE, align 4
  %68 = load %struct.irlap_cb*, %struct.irlap_cb** %7, align 8
  %69 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @nla_put_u32(%struct.sk_buff* %66, i32 %67, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %81

74:                                               ; preds = %65
  %75 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = call i32 @genlmsg_end(%struct.sk_buff* %75, i8* %76)
  %78 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %79 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %80 = call i32 @genlmsg_reply(%struct.sk_buff* %78, %struct.genl_info* %79)
  store i32 %80, i32* %3, align 4
  br label %87

81:                                               ; preds = %73, %64, %53, %38
  %82 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %83 = call i32 @nlmsg_free(%struct.sk_buff* %82)
  %84 = load %struct.net_device*, %struct.net_device** %6, align 8
  %85 = call i32 @dev_put(%struct.net_device* %84)
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %81, %74, %26, %17
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.net_device* @ifname_to_netdev(i32*, %struct.genl_info*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
