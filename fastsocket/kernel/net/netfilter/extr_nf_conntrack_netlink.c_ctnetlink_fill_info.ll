; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_fill_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nfgenmsg = type { i64, i32, i32 }
%struct.nlattr = type { i32 }

@NLM_F_MULTI = common dso_local global i32 0, align 4
@NFNL_SUBSYS_CTNETLINK = common dso_local global i32 0, align 4
@NFNETLINK_V0 = common dso_local global i32 0, align 4
@CTA_TUPLE_ORIG = common dso_local global i32 0, align 4
@NLA_F_NESTED = common dso_local global i32 0, align 4
@IP_CT_DIR_ORIGINAL = common dso_local global i32 0, align 4
@CTA_TUPLE_REPLY = common dso_local global i32 0, align 4
@IP_CT_DIR_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i64, i64, i32, %struct.nf_conn*)* @ctnetlink_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_fill_info(%struct.sk_buff* %0, i64 %1, i64 %2, i32 %3, %struct.nf_conn* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nf_conn*, align 8
  %12 = alloca %struct.nlmsghdr*, align 8
  %13 = alloca %struct.nfgenmsg*, align 8
  %14 = alloca %struct.nlattr*, align 8
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.nf_conn* %4, %struct.nf_conn** %11, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* @NLM_F_MULTI, align 4
  br label %21

20:                                               ; preds = %5
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ 0, %20 ]
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* @NFNL_SUBSYS_CTNETLINK, align 4
  %24 = shl i32 %23, 8
  %25 = load i32, i32* %10, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %10, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %15, align 4
  %32 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %27, i64 %28, i64 %29, i32 %30, i32 16, i32 %31)
  store %struct.nlmsghdr* %32, %struct.nlmsghdr** %12, align 8
  %33 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %34 = icmp eq %struct.nlmsghdr* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  br label %157

36:                                               ; preds = %21
  %37 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %38 = call %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr* %37)
  store %struct.nfgenmsg* %38, %struct.nfgenmsg** %13, align 8
  %39 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %40 = call i32 @nf_ct_l3num(%struct.nf_conn* %39)
  %41 = load %struct.nfgenmsg*, %struct.nfgenmsg** %13, align 8
  %42 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @NFNETLINK_V0, align 4
  %44 = load %struct.nfgenmsg*, %struct.nfgenmsg** %13, align 8
  %45 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.nfgenmsg*, %struct.nfgenmsg** %13, align 8
  %47 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %49 = load i32, i32* @CTA_TUPLE_ORIG, align 4
  %50 = load i32, i32* @NLA_F_NESTED, align 4
  %51 = or i32 %49, %50
  %52 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %48, i32 %51)
  store %struct.nlattr* %52, %struct.nlattr** %14, align 8
  %53 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %54 = icmp ne %struct.nlattr* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %36
  br label %158

56:                                               ; preds = %36
  %57 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %58 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %59 = load i32, i32* @IP_CT_DIR_ORIGINAL, align 4
  %60 = call i32 @nf_ct_tuple(%struct.nf_conn* %58, i32 %59)
  %61 = call i64 @ctnetlink_dump_tuples(%struct.sk_buff* %57, i32 %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %158

64:                                               ; preds = %56
  %65 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %66 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %67 = call i32 @nla_nest_end(%struct.sk_buff* %65, %struct.nlattr* %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %69 = load i32, i32* @CTA_TUPLE_REPLY, align 4
  %70 = load i32, i32* @NLA_F_NESTED, align 4
  %71 = or i32 %69, %70
  %72 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %68, i32 %71)
  store %struct.nlattr* %72, %struct.nlattr** %14, align 8
  %73 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %74 = icmp ne %struct.nlattr* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %64
  br label %158

76:                                               ; preds = %64
  %77 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %78 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %79 = load i32, i32* @IP_CT_DIR_REPLY, align 4
  %80 = call i32 @nf_ct_tuple(%struct.nf_conn* %78, i32 %79)
  %81 = call i64 @ctnetlink_dump_tuples(%struct.sk_buff* %77, i32 %80)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %158

84:                                               ; preds = %76
  %85 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %86 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %87 = call i32 @nla_nest_end(%struct.sk_buff* %85, %struct.nlattr* %86)
  %88 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %89 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %90 = call i64 @ctnetlink_dump_status(%struct.sk_buff* %88, %struct.nf_conn* %89)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %149, label %92

92:                                               ; preds = %84
  %93 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %94 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %95 = call i64 @ctnetlink_dump_timeout(%struct.sk_buff* %93, %struct.nf_conn* %94)
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %149, label %97

97:                                               ; preds = %92
  %98 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %99 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %100 = load i32, i32* @IP_CT_DIR_ORIGINAL, align 4
  %101 = call i64 @ctnetlink_dump_counters(%struct.sk_buff* %98, %struct.nf_conn* %99, i32 %100)
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %149, label %103

103:                                              ; preds = %97
  %104 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %105 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %106 = load i32, i32* @IP_CT_DIR_REPLY, align 4
  %107 = call i64 @ctnetlink_dump_counters(%struct.sk_buff* %104, %struct.nf_conn* %105, i32 %106)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %149, label %109

109:                                              ; preds = %103
  %110 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %111 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %112 = call i64 @ctnetlink_dump_protoinfo(%struct.sk_buff* %110, %struct.nf_conn* %111)
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %149, label %114

114:                                              ; preds = %109
  %115 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %116 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %117 = call i64 @ctnetlink_dump_helpinfo(%struct.sk_buff* %115, %struct.nf_conn* %116)
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %149, label %119

119:                                              ; preds = %114
  %120 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %121 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %122 = call i64 @ctnetlink_dump_mark(%struct.sk_buff* %120, %struct.nf_conn* %121)
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %149, label %124

124:                                              ; preds = %119
  %125 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %126 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %127 = call i64 @ctnetlink_dump_secmark(%struct.sk_buff* %125, %struct.nf_conn* %126)
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %149, label %129

129:                                              ; preds = %124
  %130 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %131 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %132 = call i64 @ctnetlink_dump_id(%struct.sk_buff* %130, %struct.nf_conn* %131)
  %133 = icmp slt i64 %132, 0
  br i1 %133, label %149, label %134

134:                                              ; preds = %129
  %135 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %136 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %137 = call i64 @ctnetlink_dump_use(%struct.sk_buff* %135, %struct.nf_conn* %136)
  %138 = icmp slt i64 %137, 0
  br i1 %138, label %149, label %139

139:                                              ; preds = %134
  %140 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %141 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %142 = call i64 @ctnetlink_dump_master(%struct.sk_buff* %140, %struct.nf_conn* %141)
  %143 = icmp slt i64 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %139
  %145 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %146 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %147 = call i64 @ctnetlink_dump_nat_seq_adj(%struct.sk_buff* %145, %struct.nf_conn* %146)
  %148 = icmp slt i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %144, %139, %134, %129, %124, %119, %114, %109, %103, %97, %92, %84
  br label %158

150:                                              ; preds = %144
  %151 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %152 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %153 = call i32 @nlmsg_end(%struct.sk_buff* %151, %struct.nlmsghdr* %152)
  %154 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %155 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %6, align 4
  br label %162

157:                                              ; preds = %35
  br label %158

158:                                              ; preds = %157, %149, %83, %75, %63, %55
  %159 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %160 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %161 = call i32 @nlmsg_cancel(%struct.sk_buff* %159, %struct.nlmsghdr* %160)
  store i32 -1, i32* %6, align 4
  br label %162

162:                                              ; preds = %158, %150
  %163 = load i32, i32* %6, align 4
  ret i32 %163
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i64, i64, i32, i32, i32) #1

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @nf_ct_l3num(%struct.nf_conn*) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i64 @ctnetlink_dump_tuples(%struct.sk_buff*, i32) #1

declare dso_local i32 @nf_ct_tuple(%struct.nf_conn*, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i64 @ctnetlink_dump_status(%struct.sk_buff*, %struct.nf_conn*) #1

declare dso_local i64 @ctnetlink_dump_timeout(%struct.sk_buff*, %struct.nf_conn*) #1

declare dso_local i64 @ctnetlink_dump_counters(%struct.sk_buff*, %struct.nf_conn*, i32) #1

declare dso_local i64 @ctnetlink_dump_protoinfo(%struct.sk_buff*, %struct.nf_conn*) #1

declare dso_local i64 @ctnetlink_dump_helpinfo(%struct.sk_buff*, %struct.nf_conn*) #1

declare dso_local i64 @ctnetlink_dump_mark(%struct.sk_buff*, %struct.nf_conn*) #1

declare dso_local i64 @ctnetlink_dump_secmark(%struct.sk_buff*, %struct.nf_conn*) #1

declare dso_local i64 @ctnetlink_dump_id(%struct.sk_buff*, %struct.nf_conn*) #1

declare dso_local i64 @ctnetlink_dump_use(%struct.sk_buff*, %struct.nf_conn*) #1

declare dso_local i64 @ctnetlink_dump_master(%struct.sk_buff*, %struct.nf_conn*) #1

declare dso_local i64 @ctnetlink_dump_nat_seq_adj(%struct.sk_buff*, %struct.nf_conn*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
