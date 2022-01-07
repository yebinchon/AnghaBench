; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_genetlink.c_ctrl_fill_mcgrp_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_genetlink.c_ctrl_fill_mcgrp_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_multicast_group = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }

@genl_ctrl = common dso_local global i32 0, align 4
@CTRL_ATTR_FAMILY_NAME = common dso_local global i32 0, align 4
@CTRL_ATTR_FAMILY_ID = common dso_local global i32 0, align 4
@CTRL_ATTR_MCAST_GROUPS = common dso_local global i32 0, align 4
@CTRL_ATTR_MCAST_GRP_ID = common dso_local global i32 0, align 4
@CTRL_ATTR_MCAST_GRP_NAME = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genl_multicast_group*, i32, i32, i32, %struct.sk_buff*, i32)* @ctrl_fill_mcgrp_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_fill_mcgrp_info(%struct.genl_multicast_group* %0, i32 %1, i32 %2, i32 %3, %struct.sk_buff* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.genl_multicast_group*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.nlattr*, align 8
  %16 = alloca %struct.nlattr*, align 8
  store %struct.genl_multicast_group* %0, %struct.genl_multicast_group** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.sk_buff* %4, %struct.sk_buff** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %13, align 4
  %22 = call i8* @genlmsg_put(%struct.sk_buff* %17, i32 %18, i32 %19, i32* @genl_ctrl, i32 %20, i32 %21)
  store i8* %22, i8** %14, align 8
  %23 = load i8*, i8** %14, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %83

26:                                               ; preds = %6
  %27 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %28 = load i32, i32* @CTRL_ATTR_FAMILY_NAME, align 4
  %29 = load %struct.genl_multicast_group*, %struct.genl_multicast_group** %8, align 8
  %30 = getelementptr inbounds %struct.genl_multicast_group, %struct.genl_multicast_group* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @NLA_PUT_STRING(%struct.sk_buff* %27, i32 %28, i32 %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %36 = load i32, i32* @CTRL_ATTR_FAMILY_ID, align 4
  %37 = load %struct.genl_multicast_group*, %struct.genl_multicast_group** %8, align 8
  %38 = getelementptr inbounds %struct.genl_multicast_group, %struct.genl_multicast_group* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @NLA_PUT_U16(%struct.sk_buff* %35, i32 %36, i32 %41)
  %43 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %44 = load i32, i32* @CTRL_ATTR_MCAST_GROUPS, align 4
  %45 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %43, i32 %44)
  store %struct.nlattr* %45, %struct.nlattr** %15, align 8
  %46 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %47 = icmp eq %struct.nlattr* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %26
  br label %77

49:                                               ; preds = %26
  %50 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %51 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %50, i32 1)
  store %struct.nlattr* %51, %struct.nlattr** %16, align 8
  %52 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %53 = icmp eq %struct.nlattr* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %77

55:                                               ; preds = %49
  %56 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %57 = load i32, i32* @CTRL_ATTR_MCAST_GRP_ID, align 4
  %58 = load %struct.genl_multicast_group*, %struct.genl_multicast_group** %8, align 8
  %59 = getelementptr inbounds %struct.genl_multicast_group, %struct.genl_multicast_group* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @NLA_PUT_U32(%struct.sk_buff* %56, i32 %57, i32 %60)
  %62 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %63 = load i32, i32* @CTRL_ATTR_MCAST_GRP_NAME, align 4
  %64 = load %struct.genl_multicast_group*, %struct.genl_multicast_group** %8, align 8
  %65 = getelementptr inbounds %struct.genl_multicast_group, %struct.genl_multicast_group* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @NLA_PUT_STRING(%struct.sk_buff* %62, i32 %63, i32 %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %69 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %70 = call i32 @nla_nest_end(%struct.sk_buff* %68, %struct.nlattr* %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %72 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %73 = call i32 @nla_nest_end(%struct.sk_buff* %71, %struct.nlattr* %72)
  %74 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %75 = load i8*, i8** %14, align 8
  %76 = call i32 @genlmsg_end(%struct.sk_buff* %74, i8* %75)
  store i32 %76, i32* %7, align 4
  br label %83

77:                                               ; preds = %54, %48
  %78 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %79 = load i8*, i8** %14, align 8
  %80 = call i32 @genlmsg_cancel(%struct.sk_buff* %78, i8* %79)
  %81 = load i32, i32* @EMSGSIZE, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %77, %55, %25
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @NLA_PUT_STRING(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @NLA_PUT_U16(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @NLA_PUT_U32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
