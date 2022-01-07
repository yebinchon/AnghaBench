; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dcb/extr_dcbnl.c_dcbnl_cee_pg_fill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dcb/extr_dcbnl.c_dcbnl_cee_pg_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { %struct.dcbnl_rtnl_ops* }
%struct.dcbnl_rtnl_ops = type { i32 (%struct.net_device*, i32, i32*)*, i32 (%struct.net_device*, i32, i32*)*, i32 (%struct.net_device*, i32, i32*, i32*, i32*, i32*)*, i32 (%struct.net_device*, i32, i32*, i32*, i32*, i32*)* }
%struct.nlattr = type { i32 }

@DCB_ATTR_CEE_TX_PG = common dso_local global i32 0, align 4
@DCB_ATTR_CEE_RX_PG = common dso_local global i32 0, align 4
@DCB_PG_ATTR_TC_0 = common dso_local global i32 0, align 4
@DCB_PG_ATTR_TC_7 = common dso_local global i32 0, align 4
@DCB_ATTR_VALUE_UNDEFINED = common dso_local global i32 0, align 4
@DCB_TC_ATTR_PARAM_PGID = common dso_local global i32 0, align 4
@DCB_TC_ATTR_PARAM_UP_MAPPING = common dso_local global i32 0, align 4
@DCB_TC_ATTR_PARAM_STRICT_PRIO = common dso_local global i32 0, align 4
@DCB_TC_ATTR_PARAM_BW_PCT = common dso_local global i32 0, align 4
@DCB_PG_ATTR_BW_ID_0 = common dso_local global i32 0, align 4
@DCB_PG_ATTR_BW_ID_7 = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, i32)* @dcbnl_cee_pg_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcbnl_cee_pg_fill(%struct.sk_buff* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dcbnl_rtnl_ops*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.nlattr*, align 8
  %15 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load %struct.dcbnl_rtnl_ops*, %struct.dcbnl_rtnl_ops** %17, align 8
  store %struct.dcbnl_rtnl_ops* %18, %struct.dcbnl_rtnl_ops** %12, align 8
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @DCB_ATTR_CEE_TX_PG, align 4
  br label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @DCB_ATTR_CEE_RX_PG, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %13, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = load i32, i32* %13, align 4
  %29 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %27, i32 %28)
  store %struct.nlattr* %29, %struct.nlattr** %14, align 8
  %30 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %31 = icmp ne %struct.nlattr* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  br label %134

33:                                               ; preds = %25
  %34 = load i32, i32* @DCB_PG_ATTR_TC_0, align 4
  store i32 %34, i32* %13, align 4
  br label %35

35:                                               ; preds = %91, %33
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* @DCB_PG_ATTR_TC_7, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %94

39:                                               ; preds = %35
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = load i32, i32* %13, align 4
  %42 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %40, i32 %41)
  store %struct.nlattr* %42, %struct.nlattr** %15, align 8
  %43 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %44 = icmp ne %struct.nlattr* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  br label %134

46:                                               ; preds = %39
  %47 = load i32, i32* @DCB_ATTR_VALUE_UNDEFINED, align 4
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* @DCB_ATTR_VALUE_UNDEFINED, align 4
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* @DCB_ATTR_VALUE_UNDEFINED, align 4
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* @DCB_ATTR_VALUE_UNDEFINED, align 4
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %46
  %54 = load %struct.dcbnl_rtnl_ops*, %struct.dcbnl_rtnl_ops** %12, align 8
  %55 = getelementptr inbounds %struct.dcbnl_rtnl_ops, %struct.dcbnl_rtnl_ops* %54, i32 0, i32 3
  %56 = load i32 (%struct.net_device*, i32, i32*, i32*, i32*, i32*)*, i32 (%struct.net_device*, i32, i32*, i32*, i32*, i32*)** %55, align 8
  %57 = load %struct.net_device*, %struct.net_device** %6, align 8
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @DCB_PG_ATTR_TC_0, align 4
  %60 = sub nsw i32 %58, %59
  %61 = call i32 %56(%struct.net_device* %57, i32 %60, i32* %10, i32* %8, i32* %11, i32* %9)
  br label %71

62:                                               ; preds = %46
  %63 = load %struct.dcbnl_rtnl_ops*, %struct.dcbnl_rtnl_ops** %12, align 8
  %64 = getelementptr inbounds %struct.dcbnl_rtnl_ops, %struct.dcbnl_rtnl_ops* %63, i32 0, i32 2
  %65 = load i32 (%struct.net_device*, i32, i32*, i32*, i32*, i32*)*, i32 (%struct.net_device*, i32, i32*, i32*, i32*, i32*)** %64, align 8
  %66 = load %struct.net_device*, %struct.net_device** %6, align 8
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* @DCB_PG_ATTR_TC_0, align 4
  %69 = sub nsw i32 %67, %68
  %70 = call i32 %65(%struct.net_device* %66, i32 %69, i32* %10, i32* %8, i32* %11, i32* %9)
  br label %71

71:                                               ; preds = %62, %53
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = load i32, i32* @DCB_TC_ATTR_PARAM_PGID, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @NLA_PUT_U8(%struct.sk_buff* %72, i32 %73, i32 %74)
  %76 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %77 = load i32, i32* @DCB_TC_ATTR_PARAM_UP_MAPPING, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @NLA_PUT_U8(%struct.sk_buff* %76, i32 %77, i32 %78)
  %80 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %81 = load i32, i32* @DCB_TC_ATTR_PARAM_STRICT_PRIO, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @NLA_PUT_U8(%struct.sk_buff* %80, i32 %81, i32 %82)
  %84 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %85 = load i32, i32* @DCB_TC_ATTR_PARAM_BW_PCT, align 4
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @NLA_PUT_U8(%struct.sk_buff* %84, i32 %85, i32 %86)
  %88 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %89 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %90 = call i32 @nla_nest_end(%struct.sk_buff* %88, %struct.nlattr* %89)
  br label %91

91:                                               ; preds = %71
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %13, align 4
  br label %35

94:                                               ; preds = %35
  %95 = load i32, i32* @DCB_PG_ATTR_BW_ID_0, align 4
  store i32 %95, i32* %13, align 4
  br label %96

96:                                               ; preds = %127, %94
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* @DCB_PG_ATTR_BW_ID_7, align 4
  %99 = icmp sle i32 %97, %98
  br i1 %99, label %100, label %130

100:                                              ; preds = %96
  %101 = load i32, i32* @DCB_ATTR_VALUE_UNDEFINED, align 4
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %113, label %104

104:                                              ; preds = %100
  %105 = load %struct.dcbnl_rtnl_ops*, %struct.dcbnl_rtnl_ops** %12, align 8
  %106 = getelementptr inbounds %struct.dcbnl_rtnl_ops, %struct.dcbnl_rtnl_ops* %105, i32 0, i32 1
  %107 = load i32 (%struct.net_device*, i32, i32*)*, i32 (%struct.net_device*, i32, i32*)** %106, align 8
  %108 = load %struct.net_device*, %struct.net_device** %6, align 8
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* @DCB_PG_ATTR_BW_ID_0, align 4
  %111 = sub nsw i32 %109, %110
  %112 = call i32 %107(%struct.net_device* %108, i32 %111, i32* %11)
  br label %122

113:                                              ; preds = %100
  %114 = load %struct.dcbnl_rtnl_ops*, %struct.dcbnl_rtnl_ops** %12, align 8
  %115 = getelementptr inbounds %struct.dcbnl_rtnl_ops, %struct.dcbnl_rtnl_ops* %114, i32 0, i32 0
  %116 = load i32 (%struct.net_device*, i32, i32*)*, i32 (%struct.net_device*, i32, i32*)** %115, align 8
  %117 = load %struct.net_device*, %struct.net_device** %6, align 8
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* @DCB_PG_ATTR_BW_ID_0, align 4
  %120 = sub nsw i32 %118, %119
  %121 = call i32 %116(%struct.net_device* %117, i32 %120, i32* %11)
  br label %122

122:                                              ; preds = %113, %104
  %123 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %11, align 4
  %126 = call i32 @NLA_PUT_U8(%struct.sk_buff* %123, i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %122
  %128 = load i32, i32* %13, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %13, align 4
  br label %96

130:                                              ; preds = %96
  %131 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %132 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %133 = call i32 @nla_nest_end(%struct.sk_buff* %131, %struct.nlattr* %132)
  store i32 0, i32* %4, align 4
  br label %137

134:                                              ; preds = %45, %32
  %135 = load i32, i32* @EMSGSIZE, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %134, %130
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @NLA_PUT_U8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
