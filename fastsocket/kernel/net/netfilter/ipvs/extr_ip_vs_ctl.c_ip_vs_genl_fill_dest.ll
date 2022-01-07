; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_genl_fill_dest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_genl_fill_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ip_vs_dest = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nlattr = type { i32 }

@IPVS_CMD_ATTR_DEST = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@IPVS_DEST_ATTR_ADDR = common dso_local global i32 0, align 4
@IPVS_DEST_ATTR_PORT = common dso_local global i32 0, align 4
@IPVS_DEST_ATTR_FWD_METHOD = common dso_local global i32 0, align 4
@IP_VS_CONN_F_FWD_MASK = common dso_local global i32 0, align 4
@IPVS_DEST_ATTR_WEIGHT = common dso_local global i32 0, align 4
@IPVS_DEST_ATTR_U_THRESH = common dso_local global i32 0, align 4
@IPVS_DEST_ATTR_L_THRESH = common dso_local global i32 0, align 4
@IPVS_DEST_ATTR_ACTIVE_CONNS = common dso_local global i32 0, align 4
@IPVS_DEST_ATTR_INACT_CONNS = common dso_local global i32 0, align 4
@IPVS_DEST_ATTR_PERSIST_CONNS = common dso_local global i32 0, align 4
@IPVS_DEST_ATTR_STATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.ip_vs_dest*)* @ip_vs_genl_fill_dest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_genl_fill_dest(%struct.sk_buff* %0, %struct.ip_vs_dest* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ip_vs_dest*, align 8
  %6 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.ip_vs_dest* %1, %struct.ip_vs_dest** %5, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = load i32, i32* @IPVS_CMD_ATTR_DEST, align 4
  %9 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %7, i32 %8)
  store %struct.nlattr* %9, %struct.nlattr** %6, align 8
  %10 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %11 = icmp ne %struct.nlattr* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EMSGSIZE, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %88

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = load i32, i32* @IPVS_DEST_ATTR_ADDR, align 4
  %18 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %19 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %18, i32 0, i32 9
  %20 = call i32 @NLA_PUT(%struct.sk_buff* %16, i32 %17, i32 4, i32* %19)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = load i32, i32* @IPVS_DEST_ATTR_PORT, align 4
  %23 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %24 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @NLA_PUT_U16(%struct.sk_buff* %21, i32 %22, i32 %25)
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = load i32, i32* @IPVS_DEST_ATTR_FWD_METHOD, align 4
  %29 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %30 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %29, i32 0, i32 7
  %31 = call i32 @atomic_read(i32* %30)
  %32 = load i32, i32* @IP_VS_CONN_F_FWD_MASK, align 4
  %33 = and i32 %31, %32
  %34 = call i32 @NLA_PUT_U32(%struct.sk_buff* %27, i32 %28, i32 %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = load i32, i32* @IPVS_DEST_ATTR_WEIGHT, align 4
  %37 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %38 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %37, i32 0, i32 6
  %39 = call i32 @atomic_read(i32* %38)
  %40 = call i32 @NLA_PUT_U32(%struct.sk_buff* %35, i32 %36, i32 %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = load i32, i32* @IPVS_DEST_ATTR_U_THRESH, align 4
  %43 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %44 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @NLA_PUT_U32(%struct.sk_buff* %41, i32 %42, i32 %45)
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = load i32, i32* @IPVS_DEST_ATTR_L_THRESH, align 4
  %49 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %50 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @NLA_PUT_U32(%struct.sk_buff* %47, i32 %48, i32 %51)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = load i32, i32* @IPVS_DEST_ATTR_ACTIVE_CONNS, align 4
  %55 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %56 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %55, i32 0, i32 5
  %57 = call i32 @atomic_read(i32* %56)
  %58 = call i32 @NLA_PUT_U32(%struct.sk_buff* %53, i32 %54, i32 %57)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = load i32, i32* @IPVS_DEST_ATTR_INACT_CONNS, align 4
  %61 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %62 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %61, i32 0, i32 4
  %63 = call i32 @atomic_read(i32* %62)
  %64 = call i32 @NLA_PUT_U32(%struct.sk_buff* %59, i32 %60, i32 %63)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = load i32, i32* @IPVS_DEST_ATTR_PERSIST_CONNS, align 4
  %67 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %68 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %67, i32 0, i32 3
  %69 = call i32 @atomic_read(i32* %68)
  %70 = call i32 @NLA_PUT_U32(%struct.sk_buff* %65, i32 %66, i32 %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %72 = load i32, i32* @IPVS_DEST_ATTR_STATS, align 4
  %73 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %74 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %73, i32 0, i32 2
  %75 = call i64 @ip_vs_genl_fill_stats(%struct.sk_buff* %71, i32 %72, i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %15
  br label %82

78:                                               ; preds = %15
  %79 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %80 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %81 = call i32 @nla_nest_end(%struct.sk_buff* %79, %struct.nlattr* %80)
  store i32 0, i32* %3, align 4
  br label %88

82:                                               ; preds = %77
  %83 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %84 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %85 = call i32 @nla_nest_cancel(%struct.sk_buff* %83, %struct.nlattr* %84)
  %86 = load i32, i32* @EMSGSIZE, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %82, %78, %12
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @NLA_PUT(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i32 @NLA_PUT_U16(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @NLA_PUT_U32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @ip_vs_genl_fill_stats(%struct.sk_buff*, i32, i32*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
