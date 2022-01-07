; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_genl_get_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_genl_get_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ip_vs_service = type { i32 }
%struct.ip_vs_timeout_user = type { i32, i32, i32 }

@IPVS_CMD_NEW_SERVICE = common dso_local global i32 0, align 4
@IPVS_CMD_SET_INFO = common dso_local global i32 0, align 4
@IPVS_CMD_SET_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unknown Generic Netlink command\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@__ip_vs_mutex = common dso_local global i32 0, align 4
@ip_vs_genl_family = common dso_local global i32 0, align 4
@IPVS_CMD_ATTR_SERVICE = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i32 0, align 4
@IPVS_INFO_ATTR_VERSION = common dso_local global i32 0, align 4
@IP_VS_VERSION_CODE = common dso_local global i32 0, align 4
@IPVS_INFO_ATTR_CONN_TAB_SIZE = common dso_local global i32 0, align 4
@ip_vs_conn_tab_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"not enough space in Netlink message\0A\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@IPVS_CMD_ATTR_TIMEOUT_TCP = common dso_local global i32 0, align 4
@IPVS_CMD_ATTR_TIMEOUT_TCP_FIN = common dso_local global i32 0, align 4
@IPVS_CMD_ATTR_TIMEOUT_UDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @ip_vs_genl_get_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_genl_get_cmd(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ip_vs_service*, align 8
  %12 = alloca %struct.ip_vs_timeout_user, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %13 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %14 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp eq i32 %18, 128
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @IPVS_CMD_NEW_SERVICE, align 4
  store i32 %21, i32* %10, align 4
  br label %38

22:                                               ; preds = %2
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %23, 129
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @IPVS_CMD_SET_INFO, align 4
  store i32 %26, i32* %10, align 4
  br label %37

27:                                               ; preds = %22
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %28, 130
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @IPVS_CMD_SET_CONFIG, align 4
  store i32 %31, i32* %10, align 4
  br label %36

32:                                               ; preds = %27
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %118

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36, %25
  br label %38

38:                                               ; preds = %37, %20
  %39 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.sk_buff* @nlmsg_new(i32 %39, i32 %40)
  store %struct.sk_buff* %41, %struct.sk_buff** %6, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = icmp ne %struct.sk_buff* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %118

47:                                               ; preds = %38
  %48 = call i32 @mutex_lock(i32* @__ip_vs_mutex)
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i8* @genlmsg_put_reply(%struct.sk_buff* %49, %struct.genl_info* %50, i32* @ip_vs_genl_family, i32 0, i32 %51)
  store i8* %52, i8** %7, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %108

56:                                               ; preds = %47
  %57 = load i32, i32* %9, align 4
  switch i32 %57, label %101 [
    i32 128, label %58
    i32 130, label %90
    i32 129, label %92
  ]

58:                                               ; preds = %56
  %59 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %60 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @IPVS_CMD_ATTR_SERVICE, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call %struct.ip_vs_service* @ip_vs_genl_find_service(i32 %64)
  store %struct.ip_vs_service* %65, %struct.ip_vs_service** %11, align 8
  %66 = load %struct.ip_vs_service*, %struct.ip_vs_service** %11, align 8
  %67 = call i32 @IS_ERR(%struct.ip_vs_service* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %58
  %70 = load %struct.ip_vs_service*, %struct.ip_vs_service** %11, align 8
  %71 = call i32 @PTR_ERR(%struct.ip_vs_service* %70)
  store i32 %71, i32* %8, align 4
  br label %112

72:                                               ; preds = %58
  %73 = load %struct.ip_vs_service*, %struct.ip_vs_service** %11, align 8
  %74 = icmp ne %struct.ip_vs_service* %73, null
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %77 = load %struct.ip_vs_service*, %struct.ip_vs_service** %11, align 8
  %78 = call i32 @ip_vs_genl_fill_service(%struct.sk_buff* %76, %struct.ip_vs_service* %77)
  store i32 %78, i32* %8, align 4
  %79 = load %struct.ip_vs_service*, %struct.ip_vs_service** %11, align 8
  %80 = call i32 @ip_vs_service_put(%struct.ip_vs_service* %79)
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %108

84:                                               ; preds = %75
  br label %88

85:                                               ; preds = %72
  %86 = load i32, i32* @ESRCH, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %8, align 4
  br label %112

88:                                               ; preds = %84
  br label %89

89:                                               ; preds = %88
  br label %101

90:                                               ; preds = %56
  %91 = call i32 @__ip_vs_get_timeouts(%struct.ip_vs_timeout_user* %12)
  br label %101

92:                                               ; preds = %56
  %93 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %94 = load i32, i32* @IPVS_INFO_ATTR_VERSION, align 4
  %95 = load i32, i32* @IP_VS_VERSION_CODE, align 4
  %96 = call i32 @NLA_PUT_U32(%struct.sk_buff* %93, i32 %94, i32 %95)
  %97 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %98 = load i32, i32* @IPVS_INFO_ATTR_CONN_TAB_SIZE, align 4
  %99 = load i32, i32* @ip_vs_conn_tab_size, align 4
  %100 = call i32 @NLA_PUT_U32(%struct.sk_buff* %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %56, %92, %90, %89
  %102 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %103 = load i8*, i8** %7, align 8
  %104 = call i32 @genlmsg_end(%struct.sk_buff* %102, i8* %103)
  %105 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %106 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %107 = call i32 @genlmsg_reply(%struct.sk_buff* %105, %struct.genl_info* %106)
  store i32 %107, i32* %8, align 4
  br label %115

108:                                              ; preds = %83, %55
  %109 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %110 = load i32, i32* @EMSGSIZE, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %8, align 4
  br label %112

112:                                              ; preds = %108, %85, %69
  %113 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %114 = call i32 @nlmsg_free(%struct.sk_buff* %113)
  br label %115

115:                                              ; preds = %112, %101
  %116 = call i32 @mutex_unlock(i32* @__ip_vs_mutex)
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %115, %44, %32
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @genlmsg_put_reply(%struct.sk_buff*, %struct.genl_info*, i32*, i32, i32) #1

declare dso_local %struct.ip_vs_service* @ip_vs_genl_find_service(i32) #1

declare dso_local i32 @IS_ERR(%struct.ip_vs_service*) #1

declare dso_local i32 @PTR_ERR(%struct.ip_vs_service*) #1

declare dso_local i32 @ip_vs_genl_fill_service(%struct.sk_buff*, %struct.ip_vs_service*) #1

declare dso_local i32 @ip_vs_service_put(%struct.ip_vs_service*) #1

declare dso_local i32 @__ip_vs_get_timeouts(%struct.ip_vs_timeout_user*) #1

declare dso_local i32 @NLA_PUT_U32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
