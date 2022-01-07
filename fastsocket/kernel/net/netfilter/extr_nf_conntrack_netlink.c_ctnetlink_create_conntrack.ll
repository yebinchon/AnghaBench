; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_create_conntrack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_create_conntrack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { %struct.TYPE_2__, %struct.nf_conn*, i32, i8* }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }
%struct.nf_conntrack_tuple = type { i32 }
%struct.nf_conntrack_helper = type { i32 }
%struct.nf_conn_help = type { i32 }
%struct.nf_conntrack_tuple_hash = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CTA_TIMEOUT = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@IPS_CONFIRMED = common dso_local global i32 0, align 4
@CTA_HELP = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@CTA_STATUS = common dso_local global i64 0, align 8
@CTA_NAT_SRC = common dso_local global i64 0, align 8
@CTA_NAT_DST = common dso_local global i64 0, align 8
@CTA_PROTOINFO = common dso_local global i64 0, align 8
@CTA_TUPLE_MASTER = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@IPS_EXPECTED_BIT = common dso_local global i32 0, align 4
@CTA_MARK = common dso_local global i64 0, align 8
@CTA_NAT_SEQ_ADJ_ORIG = common dso_local global i64 0, align 8
@CTA_NAT_SEQ_ADJ_REPLY = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nf_conn* (%struct.nlattr**, %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple*, i32)* @ctnetlink_create_conntrack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nf_conn* @ctnetlink_create_conntrack(%struct.nlattr** %0, %struct.nf_conntrack_tuple* %1, %struct.nf_conntrack_tuple* %2, i32 %3) #0 {
  %5 = alloca %struct.nf_conn*, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.nf_conntrack_tuple*, align 8
  %8 = alloca %struct.nf_conntrack_tuple*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nf_conn*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nf_conntrack_helper*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.nf_conn_help*, align 8
  %15 = alloca %struct.nf_conntrack_tuple, align 4
  %16 = alloca %struct.nf_conntrack_tuple_hash*, align 8
  %17 = alloca %struct.nf_conn*, align 8
  store %struct.nlattr** %0, %struct.nlattr*** %6, align 8
  store %struct.nf_conntrack_tuple* %1, %struct.nf_conntrack_tuple** %7, align 8
  store %struct.nf_conntrack_tuple* %2, %struct.nf_conntrack_tuple** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %11, align 4
  %20 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %7, align 8
  %21 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %8, align 8
  %22 = load i32, i32* @GFP_ATOMIC, align 4
  %23 = call %struct.nf_conn* @nf_conntrack_alloc(i32* @init_net, %struct.nf_conntrack_tuple* %20, %struct.nf_conntrack_tuple* %21, i32 %22)
  store %struct.nf_conn* %23, %struct.nf_conn** %10, align 8
  %24 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %25 = call i64 @IS_ERR(%struct.nf_conn* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %4
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.nf_conn* @ERR_PTR(i32 %29)
  store %struct.nf_conn* %30, %struct.nf_conn** %5, align 8
  br label %213

31:                                               ; preds = %4
  %32 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %33 = load i64, i64* @CTA_TIMEOUT, align 8
  %34 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %32, i64 %33
  %35 = load %struct.nlattr*, %struct.nlattr** %34, align 8
  %36 = icmp ne %struct.nlattr* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  br label %208

38:                                               ; preds = %31
  %39 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %40 = load i64, i64* @CTA_TIMEOUT, align 8
  %41 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %40
  %42 = load %struct.nlattr*, %struct.nlattr** %41, align 8
  %43 = call i32 @nla_get_be32(%struct.nlattr* %42)
  %44 = call i8* @ntohl(i32 %43)
  %45 = ptrtoint i8* %44 to i32
  %46 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %47 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load i32, i32* @jiffies, align 4
  %50 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %51 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @HZ, align 4
  %55 = mul nsw i32 %53, %54
  %56 = add nsw i32 %49, %55
  %57 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %58 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load i32, i32* @IPS_CONFIRMED, align 4
  %61 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %62 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = call i32 (...) @rcu_read_lock()
  %66 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %67 = load i64, i64* @CTA_HELP, align 8
  %68 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %66, i64 %67
  %69 = load %struct.nlattr*, %struct.nlattr** %68, align 8
  %70 = icmp ne %struct.nlattr* %69, null
  br i1 %70, label %71, label %105

71:                                               ; preds = %38
  store i8* null, i8** %13, align 8
  %72 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %73 = load i64, i64* @CTA_HELP, align 8
  %74 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %72, i64 %73
  %75 = load %struct.nlattr*, %struct.nlattr** %74, align 8
  %76 = call i32 @ctnetlink_parse_help(%struct.nlattr* %75, i8** %13)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %206

80:                                               ; preds = %71
  %81 = load i8*, i8** %13, align 8
  %82 = call %struct.nf_conntrack_helper* @__nf_conntrack_helper_find_byname(i8* %81)
  store %struct.nf_conntrack_helper* %82, %struct.nf_conntrack_helper** %12, align 8
  %83 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %12, align 8
  %84 = icmp eq %struct.nf_conntrack_helper* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = call i32 (...) @rcu_read_unlock()
  %87 = load i32, i32* @EOPNOTSUPP, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %11, align 4
  br label %208

89:                                               ; preds = %80
  %90 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %91 = load i32, i32* @GFP_ATOMIC, align 4
  %92 = call %struct.nf_conn_help* @nf_ct_helper_ext_add(%struct.nf_conn* %90, i32 %91)
  store %struct.nf_conn_help* %92, %struct.nf_conn_help** %14, align 8
  %93 = load %struct.nf_conn_help*, %struct.nf_conn_help** %14, align 8
  %94 = icmp eq %struct.nf_conn_help* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %11, align 4
  br label %206

98:                                               ; preds = %89
  %99 = load %struct.nf_conn_help*, %struct.nf_conn_help** %14, align 8
  %100 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %12, align 8
  %103 = call i32 @rcu_assign_pointer(i32 %101, %struct.nf_conntrack_helper* %102)
  br label %104

104:                                              ; preds = %98
  br label %113

105:                                              ; preds = %38
  %106 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %107 = load i32, i32* @GFP_ATOMIC, align 4
  %108 = call i32 @__nf_ct_try_assign_helper(%struct.nf_conn* %106, i32 %107)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  br label %206

112:                                              ; preds = %105
  br label %113

113:                                              ; preds = %112, %104
  %114 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %115 = load i64, i64* @CTA_STATUS, align 8
  %116 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %114, i64 %115
  %117 = load %struct.nlattr*, %struct.nlattr** %116, align 8
  %118 = icmp ne %struct.nlattr* %117, null
  br i1 %118, label %119, label %127

119:                                              ; preds = %113
  %120 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %121 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %122 = call i32 @ctnetlink_change_status(%struct.nf_conn* %120, %struct.nlattr** %121)
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %11, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  br label %206

126:                                              ; preds = %119
  br label %127

127:                                              ; preds = %126, %113
  %128 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %129 = load i64, i64* @CTA_NAT_SRC, align 8
  %130 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %128, i64 %129
  %131 = load %struct.nlattr*, %struct.nlattr** %130, align 8
  %132 = icmp ne %struct.nlattr* %131, null
  br i1 %132, label %139, label %133

133:                                              ; preds = %127
  %134 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %135 = load i64, i64* @CTA_NAT_DST, align 8
  %136 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %134, i64 %135
  %137 = load %struct.nlattr*, %struct.nlattr** %136, align 8
  %138 = icmp ne %struct.nlattr* %137, null
  br i1 %138, label %139, label %147

139:                                              ; preds = %133, %127
  %140 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %141 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %142 = call i32 @ctnetlink_change_nat(%struct.nf_conn* %140, %struct.nlattr** %141)
  store i32 %142, i32* %11, align 4
  %143 = load i32, i32* %11, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  br label %206

146:                                              ; preds = %139
  br label %147

147:                                              ; preds = %146, %133
  %148 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %149 = load i64, i64* @CTA_PROTOINFO, align 8
  %150 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %148, i64 %149
  %151 = load %struct.nlattr*, %struct.nlattr** %150, align 8
  %152 = icmp ne %struct.nlattr* %151, null
  br i1 %152, label %153, label %161

153:                                              ; preds = %147
  %154 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %155 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %156 = call i32 @ctnetlink_change_protoinfo(%struct.nf_conn* %154, %struct.nlattr** %155)
  store i32 %156, i32* %11, align 4
  %157 = load i32, i32* %11, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %153
  br label %206

160:                                              ; preds = %153
  br label %161

161:                                              ; preds = %160, %147
  %162 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %163 = load i32, i32* @GFP_ATOMIC, align 4
  %164 = call i32 @nf_ct_acct_ext_add(%struct.nf_conn* %162, i32 %163)
  %165 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %166 = load i32, i32* @GFP_ATOMIC, align 4
  %167 = call i32 @nf_ct_ecache_ext_add(%struct.nf_conn* %165, i32 %166)
  %168 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %169 = load i64, i64* @CTA_TUPLE_MASTER, align 8
  %170 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %168, i64 %169
  %171 = load %struct.nlattr*, %struct.nlattr** %170, align 8
  %172 = icmp ne %struct.nlattr* %171, null
  br i1 %172, label %173, label %198

173:                                              ; preds = %161
  %174 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %175 = load i64, i64* @CTA_TUPLE_MASTER, align 8
  %176 = load i32, i32* %9, align 4
  %177 = call i32 @ctnetlink_parse_tuple(%struct.nlattr** %174, %struct.nf_conntrack_tuple* %15, i64 %175, i32 %176)
  store i32 %177, i32* %11, align 4
  %178 = load i32, i32* %11, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %173
  br label %206

181:                                              ; preds = %173
  %182 = call %struct.nf_conntrack_tuple_hash* @nf_conntrack_find_get(i32* @init_net, %struct.nf_conntrack_tuple* %15)
  store %struct.nf_conntrack_tuple_hash* %182, %struct.nf_conntrack_tuple_hash** %16, align 8
  %183 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %16, align 8
  %184 = icmp eq %struct.nf_conntrack_tuple_hash* %183, null
  br i1 %184, label %185, label %188

185:                                              ; preds = %181
  %186 = load i32, i32* @ENOENT, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %11, align 4
  br label %206

188:                                              ; preds = %181
  %189 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %16, align 8
  %190 = call %struct.nf_conn* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash* %189)
  store %struct.nf_conn* %190, %struct.nf_conn** %17, align 8
  %191 = load i32, i32* @IPS_EXPECTED_BIT, align 4
  %192 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %193 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %192, i32 0, i32 2
  %194 = call i32 @__set_bit(i32 %191, i32* %193)
  %195 = load %struct.nf_conn*, %struct.nf_conn** %17, align 8
  %196 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %197 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %196, i32 0, i32 1
  store %struct.nf_conn* %195, %struct.nf_conn** %197, align 8
  br label %198

198:                                              ; preds = %188, %161
  %199 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %200 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %199, i32 0, i32 0
  %201 = call i32 @add_timer(%struct.TYPE_2__* %200)
  %202 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %203 = call i32 @nf_conntrack_hash_insert(%struct.nf_conn* %202)
  %204 = call i32 (...) @rcu_read_unlock()
  %205 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  store %struct.nf_conn* %205, %struct.nf_conn** %5, align 8
  br label %213

206:                                              ; preds = %185, %180, %159, %145, %125, %111, %95, %79
  %207 = call i32 (...) @rcu_read_unlock()
  br label %208

208:                                              ; preds = %206, %85, %37
  %209 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %210 = call i32 @nf_conntrack_free(%struct.nf_conn* %209)
  %211 = load i32, i32* %11, align 4
  %212 = call %struct.nf_conn* @ERR_PTR(i32 %211)
  store %struct.nf_conn* %212, %struct.nf_conn** %5, align 8
  br label %213

213:                                              ; preds = %208, %198, %27
  %214 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  ret %struct.nf_conn* %214
}

declare dso_local %struct.nf_conn* @nf_conntrack_alloc(i32*, %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple*, i32) #1

declare dso_local i64 @IS_ERR(%struct.nf_conn*) #1

declare dso_local %struct.nf_conn* @ERR_PTR(i32) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @ctnetlink_parse_help(%struct.nlattr*, i8**) #1

declare dso_local %struct.nf_conntrack_helper* @__nf_conntrack_helper_find_byname(i8*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.nf_conn_help* @nf_ct_helper_ext_add(%struct.nf_conn*, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.nf_conntrack_helper*) #1

declare dso_local i32 @__nf_ct_try_assign_helper(%struct.nf_conn*, i32) #1

declare dso_local i32 @ctnetlink_change_status(%struct.nf_conn*, %struct.nlattr**) #1

declare dso_local i32 @ctnetlink_change_nat(%struct.nf_conn*, %struct.nlattr**) #1

declare dso_local i32 @ctnetlink_change_protoinfo(%struct.nf_conn*, %struct.nlattr**) #1

declare dso_local i32 @nf_ct_acct_ext_add(%struct.nf_conn*, i32) #1

declare dso_local i32 @nf_ct_ecache_ext_add(%struct.nf_conn*, i32) #1

declare dso_local i32 @ctnetlink_parse_tuple(%struct.nlattr**, %struct.nf_conntrack_tuple*, i64, i32) #1

declare dso_local %struct.nf_conntrack_tuple_hash* @nf_conntrack_find_get(i32*, %struct.nf_conntrack_tuple*) #1

declare dso_local %struct.nf_conn* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

declare dso_local i32 @nf_conntrack_hash_insert(%struct.nf_conn*) #1

declare dso_local i32 @nf_conntrack_free(%struct.nf_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
