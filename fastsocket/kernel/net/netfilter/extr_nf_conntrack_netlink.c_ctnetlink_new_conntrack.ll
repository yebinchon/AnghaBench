; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_new_conntrack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_new_conntrack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.nf_conntrack_tuple = type { i32 }
%struct.nf_conntrack_tuple_hash = type { i32 }
%struct.nfgenmsg = type { i32 }
%struct.nf_conn = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@CTA_TUPLE_ORIG = common dso_local global i64 0, align 8
@CTA_TUPLE_REPLY = common dso_local global i64 0, align 8
@nf_conntrack_lock = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@NLM_F_CREATE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IPS_EXPECTED_BIT = common dso_local global i32 0, align 4
@IPCT_RELATED = common dso_local global i32 0, align 4
@IPCT_NEW = common dso_local global i32 0, align 4
@IPCT_STATUS = common dso_local global i32 0, align 4
@IPCT_HELPER = common dso_local global i32 0, align 4
@IPCT_PROTOINFO = common dso_local global i32 0, align 4
@IPCT_NATSEQADJ = common dso_local global i32 0, align 4
@IPCT_MARK = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@NLM_F_EXCL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**)* @ctnetlink_new_conntrack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_new_conntrack(%struct.sock* %0, %struct.sk_buff* %1, %struct.nlmsghdr* %2, %struct.nlattr** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.nlmsghdr*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.nf_conntrack_tuple, align 4
  %11 = alloca %struct.nf_conntrack_tuple, align 4
  %12 = alloca %struct.nf_conntrack_tuple_hash*, align 8
  %13 = alloca %struct.nfgenmsg*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.nf_conn*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_2__, align 4
  %19 = alloca %struct.nf_conn*, align 8
  %20 = alloca %struct.TYPE_2__, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.nlmsghdr* %2, %struct.nlmsghdr** %8, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %9, align 8
  store %struct.nf_conntrack_tuple_hash* null, %struct.nf_conntrack_tuple_hash** %12, align 8
  %21 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %22 = call %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr* %21)
  store %struct.nfgenmsg* %22, %struct.nfgenmsg** %13, align 8
  %23 = load %struct.nfgenmsg*, %struct.nfgenmsg** %13, align 8
  %24 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %26 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %27 = load i64, i64* @CTA_TUPLE_ORIG, align 8
  %28 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %27
  %29 = load %struct.nlattr*, %struct.nlattr** %28, align 8
  %30 = icmp ne %struct.nlattr* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %4
  %32 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %33 = load i64, i64* @CTA_TUPLE_ORIG, align 8
  %34 = load i32, i32* %14, align 4
  %35 = call i32 @ctnetlink_parse_tuple(%struct.nlattr** %32, %struct.nf_conntrack_tuple* %10, i64 %33, i32 %34)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %15, align 4
  store i32 %39, i32* %5, align 4
  br label %213

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %4
  %42 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %43 = load i64, i64* @CTA_TUPLE_REPLY, align 8
  %44 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %42, i64 %43
  %45 = load %struct.nlattr*, %struct.nlattr** %44, align 8
  %46 = icmp ne %struct.nlattr* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %49 = load i64, i64* @CTA_TUPLE_REPLY, align 8
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @ctnetlink_parse_tuple(%struct.nlattr** %48, %struct.nf_conntrack_tuple* %11, i64 %49, i32 %50)
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %15, align 4
  store i32 %55, i32* %5, align 4
  br label %213

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %41
  %58 = call i32 @spin_lock_bh(i32* @nf_conntrack_lock)
  %59 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %60 = load i64, i64* @CTA_TUPLE_ORIG, align 8
  %61 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %59, i64 %60
  %62 = load %struct.nlattr*, %struct.nlattr** %61, align 8
  %63 = icmp ne %struct.nlattr* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = call %struct.nf_conntrack_tuple_hash* @__nf_conntrack_find(i32* @init_net, %struct.nf_conntrack_tuple* %10)
  store %struct.nf_conntrack_tuple_hash* %65, %struct.nf_conntrack_tuple_hash** %12, align 8
  br label %75

66:                                               ; preds = %57
  %67 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %68 = load i64, i64* @CTA_TUPLE_REPLY, align 8
  %69 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %67, i64 %68
  %70 = load %struct.nlattr*, %struct.nlattr** %69, align 8
  %71 = icmp ne %struct.nlattr* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = call %struct.nf_conntrack_tuple_hash* @__nf_conntrack_find(i32* @init_net, %struct.nf_conntrack_tuple* %11)
  store %struct.nf_conntrack_tuple_hash* %73, %struct.nf_conntrack_tuple_hash** %12, align 8
  br label %74

74:                                               ; preds = %72, %66
  br label %75

75:                                               ; preds = %74, %64
  %76 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %12, align 8
  %77 = icmp eq %struct.nf_conntrack_tuple_hash* %76, null
  br i1 %77, label %78, label %158

78:                                               ; preds = %75
  %79 = load i32, i32* @ENOENT, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %15, align 4
  %81 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %82 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @NLM_F_CREATE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %154

87:                                               ; preds = %78
  %88 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %89 = load i64, i64* @CTA_TUPLE_ORIG, align 8
  %90 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %88, i64 %89
  %91 = load %struct.nlattr*, %struct.nlattr** %90, align 8
  %92 = icmp ne %struct.nlattr* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %95 = load i64, i64* @CTA_TUPLE_REPLY, align 8
  %96 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %94, i64 %95
  %97 = load %struct.nlattr*, %struct.nlattr** %96, align 8
  %98 = icmp ne %struct.nlattr* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %93, %87
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %15, align 4
  br label %210

102:                                              ; preds = %93
  %103 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %104 = load i32, i32* %14, align 4
  %105 = call %struct.nf_conn* @ctnetlink_create_conntrack(%struct.nlattr** %103, %struct.nf_conntrack_tuple* %10, %struct.nf_conntrack_tuple* %11, i32 %104)
  store %struct.nf_conn* %105, %struct.nf_conn** %16, align 8
  %106 = load %struct.nf_conn*, %struct.nf_conn** %16, align 8
  %107 = call i64 @IS_ERR(%struct.nf_conn* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load %struct.nf_conn*, %struct.nf_conn** %16, align 8
  %111 = call i32 @PTR_ERR(%struct.nf_conn* %110)
  store i32 %111, i32* %15, align 4
  br label %210

112:                                              ; preds = %102
  store i32 0, i32* %15, align 4
  %113 = load %struct.nf_conn*, %struct.nf_conn** %16, align 8
  %114 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %113, i32 0, i32 0
  %115 = call i32 @nf_conntrack_get(i32* %114)
  %116 = call i32 @spin_unlock_bh(i32* @nf_conntrack_lock)
  %117 = load i32, i32* @IPS_EXPECTED_BIT, align 4
  %118 = load %struct.nf_conn*, %struct.nf_conn** %16, align 8
  %119 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %118, i32 0, i32 1
  %120 = call i64 @test_bit(i32 %117, i32* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %112
  %123 = load i32, i32* @IPCT_RELATED, align 4
  store i32 %123, i32* %17, align 4
  br label %126

124:                                              ; preds = %112
  %125 = load i32, i32* @IPCT_NEW, align 4
  store i32 %125, i32* %17, align 4
  br label %126

126:                                              ; preds = %124, %122
  %127 = load i32, i32* @IPCT_STATUS, align 4
  %128 = shl i32 1, %127
  %129 = load i32, i32* @IPCT_HELPER, align 4
  %130 = shl i32 1, %129
  %131 = or i32 %128, %130
  %132 = load i32, i32* @IPCT_PROTOINFO, align 4
  %133 = shl i32 1, %132
  %134 = or i32 %131, %133
  %135 = load i32, i32* @IPCT_NATSEQADJ, align 4
  %136 = shl i32 1, %135
  %137 = or i32 %134, %136
  %138 = load i32, i32* @IPCT_MARK, align 4
  %139 = shl i32 1, %138
  %140 = or i32 %137, %139
  %141 = load i32, i32* %17, align 4
  %142 = or i32 %140, %141
  %143 = load %struct.nf_conn*, %struct.nf_conn** %16, align 8
  %144 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %145 = call i32 @NETLINK_CB(%struct.sk_buff* %144)
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %145, i32* %146, align 4
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %150 = call i32 @nlmsg_report(%struct.nlmsghdr* %149)
  %151 = call i32 @nf_conntrack_eventmask_report(i32 %142, %struct.nf_conn* %143, i32 %148, i32 %150)
  %152 = load %struct.nf_conn*, %struct.nf_conn** %16, align 8
  %153 = call i32 @nf_ct_put(%struct.nf_conn* %152)
  br label %156

154:                                              ; preds = %78
  %155 = call i32 @spin_unlock_bh(i32* @nf_conntrack_lock)
  br label %156

156:                                              ; preds = %154, %126
  %157 = load i32, i32* %15, align 4
  store i32 %157, i32* %5, align 4
  br label %213

158:                                              ; preds = %75
  %159 = load i32, i32* @EEXIST, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %15, align 4
  %161 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %162 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @NLM_F_EXCL, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %209, label %167

167:                                              ; preds = %158
  %168 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %12, align 8
  %169 = call %struct.nf_conn* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash* %168)
  store %struct.nf_conn* %169, %struct.nf_conn** %19, align 8
  %170 = load %struct.nf_conn*, %struct.nf_conn** %19, align 8
  %171 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %172 = call i32 @ctnetlink_change_conntrack(%struct.nf_conn* %170, %struct.nlattr** %171)
  store i32 %172, i32* %15, align 4
  %173 = load i32, i32* %15, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %205

175:                                              ; preds = %167
  %176 = load %struct.nf_conn*, %struct.nf_conn** %19, align 8
  %177 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %176, i32 0, i32 0
  %178 = call i32 @nf_conntrack_get(i32* %177)
  %179 = call i32 @spin_unlock_bh(i32* @nf_conntrack_lock)
  %180 = load i32, i32* @IPCT_STATUS, align 4
  %181 = shl i32 1, %180
  %182 = load i32, i32* @IPCT_HELPER, align 4
  %183 = shl i32 1, %182
  %184 = or i32 %181, %183
  %185 = load i32, i32* @IPCT_PROTOINFO, align 4
  %186 = shl i32 1, %185
  %187 = or i32 %184, %186
  %188 = load i32, i32* @IPCT_NATSEQADJ, align 4
  %189 = shl i32 1, %188
  %190 = or i32 %187, %189
  %191 = load i32, i32* @IPCT_MARK, align 4
  %192 = shl i32 1, %191
  %193 = or i32 %190, %192
  %194 = load %struct.nf_conn*, %struct.nf_conn** %19, align 8
  %195 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %196 = call i32 @NETLINK_CB(%struct.sk_buff* %195)
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %196, i32* %197, align 4
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %201 = call i32 @nlmsg_report(%struct.nlmsghdr* %200)
  %202 = call i32 @nf_conntrack_eventmask_report(i32 %193, %struct.nf_conn* %194, i32 %199, i32 %201)
  %203 = load %struct.nf_conn*, %struct.nf_conn** %19, align 8
  %204 = call i32 @nf_ct_put(%struct.nf_conn* %203)
  br label %207

205:                                              ; preds = %167
  %206 = call i32 @spin_unlock_bh(i32* @nf_conntrack_lock)
  br label %207

207:                                              ; preds = %205, %175
  %208 = load i32, i32* %15, align 4
  store i32 %208, i32* %5, align 4
  br label %213

209:                                              ; preds = %158
  br label %210

210:                                              ; preds = %209, %109, %99
  %211 = call i32 @spin_unlock_bh(i32* @nf_conntrack_lock)
  %212 = load i32, i32* %15, align 4
  store i32 %212, i32* %5, align 4
  br label %213

213:                                              ; preds = %210, %207, %156, %54, %38
  %214 = load i32, i32* %5, align 4
  ret i32 %214
}

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @ctnetlink_parse_tuple(%struct.nlattr**, %struct.nf_conntrack_tuple*, i64, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.nf_conntrack_tuple_hash* @__nf_conntrack_find(i32*, %struct.nf_conntrack_tuple*) #1

declare dso_local %struct.nf_conn* @ctnetlink_create_conntrack(%struct.nlattr**, %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple*, i32) #1

declare dso_local i64 @IS_ERR(%struct.nf_conn*) #1

declare dso_local i32 @PTR_ERR(%struct.nf_conn*) #1

declare dso_local i32 @nf_conntrack_get(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @nf_conntrack_eventmask_report(i32, %struct.nf_conn*, i32, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @nlmsg_report(%struct.nlmsghdr*) #1

declare dso_local i32 @nf_ct_put(%struct.nf_conn*) #1

declare dso_local %struct.nf_conn* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash*) #1

declare dso_local i32 @ctnetlink_change_conntrack(%struct.nf_conn*, %struct.nlattr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
