; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_sane.c_help.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_sane.c_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcphdr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nf_conn = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.nf_conntrack_tuple }
%struct.nf_conntrack_tuple = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.nf_ct_sane_master = type { i64 }
%struct.nf_conntrack_expect = type { i32 }
%struct.sane_request = type { i64 }
%struct.sane_reply_net_start = type { i64, i64, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.nf_ct_sane_master }

@NF_ACCEPT = common dso_local global i32 0, align 4
@IP_CT_ESTABLISHED = common dso_local global i32 0, align 4
@IP_CT_IS_REPLY = common dso_local global i32 0, align 4
@nf_sane_lock = common dso_local global i32 0, align 4
@sane_buffer = common dso_local global %struct.tcphdr* null, align 8
@IP_CT_DIR_ORIGINAL = common dso_local global i32 0, align 4
@SANE_NET_START = common dso_local global i32 0, align 4
@SANE_STATE_NORMAL = common dso_local global i8* null, align 8
@SANE_STATE_START_REQUESTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"nf_ct_sane: NET_START reply too short\0A\00", align 1
@SANE_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"nf_ct_sane: unsuccessful SANE_STATUS = %u\0A\00", align 1
@NF_DROP = common dso_local global i32 0, align 4
@NF_CT_EXPECT_CLASS_DEFAULT = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"nf_ct_sane: expect: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.nf_conn*, i32)* @help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @help(%struct.sk_buff* %0, i32 %1, %struct.nf_conn* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nf_conn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tcphdr*, align 8
  %13 = alloca %struct.tcphdr, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.nf_ct_sane_master*, align 8
  %18 = alloca %struct.nf_conntrack_expect*, align 8
  %19 = alloca %struct.nf_conntrack_tuple*, align 8
  %20 = alloca %struct.sane_request*, align 8
  %21 = alloca %struct.sane_reply_net_start*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.nf_conn* %2, %struct.nf_conn** %8, align 8
  store i32 %3, i32* %9, align 4
  %22 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @CTINFO2DIR(i32 %23)
  store i32 %24, i32* %16, align 4
  %25 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %26 = call %struct.TYPE_10__* @nfct_help(%struct.nf_conn* %25)
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store %struct.nf_ct_sane_master* %28, %struct.nf_ct_sane_master** %17, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @IP_CT_ESTABLISHED, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @IP_CT_ESTABLISHED, align 4
  %35 = load i32, i32* @IP_CT_IS_REPLY, align 4
  %36 = add nsw i32 %34, %35
  %37 = icmp ne i32 %33, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %39, i32* %5, align 4
  br label %187

40:                                               ; preds = %32, %4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i8* @skb_header_pointer(%struct.sk_buff* %41, i32 %42, i32 4, %struct.tcphdr* %13)
  %44 = bitcast i8* %43 to %struct.tcphdr*
  store %struct.tcphdr* %44, %struct.tcphdr** %12, align 8
  %45 = load %struct.tcphdr*, %struct.tcphdr** %12, align 8
  %46 = icmp eq %struct.tcphdr* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %48, i32* %5, align 4
  br label %187

49:                                               ; preds = %40
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.tcphdr*, %struct.tcphdr** %12, align 8
  %52 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %53, 4
  %55 = add i32 %50, %54
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp uge i32 %56, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %49
  %62 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %62, i32* %5, align 4
  br label %187

63:                                               ; preds = %49
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %10, align 4
  %68 = sub i32 %66, %67
  store i32 %68, i32* %11, align 4
  %69 = call i32 @spin_lock_bh(i32* @nf_sane_lock)
  %70 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.tcphdr*, %struct.tcphdr** @sane_buffer, align 8
  %74 = call i8* @skb_header_pointer(%struct.sk_buff* %70, i32 %71, i32 %72, %struct.tcphdr* %73)
  store i8* %74, i8** %14, align 8
  %75 = load i8*, i8** %14, align 8
  %76 = icmp eq i8* %75, null
  %77 = zext i1 %76 to i32
  %78 = call i32 @BUG_ON(i32 %77)
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* @IP_CT_DIR_ORIGINAL, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %105

82:                                               ; preds = %63
  %83 = load i32, i32* %11, align 4
  %84 = zext i32 %83 to i64
  %85 = icmp ne i64 %84, 8
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %184

87:                                               ; preds = %82
  %88 = load i8*, i8** %14, align 8
  %89 = bitcast i8* %88 to %struct.sane_request*
  store %struct.sane_request* %89, %struct.sane_request** %20, align 8
  %90 = load %struct.sane_request*, %struct.sane_request** %20, align 8
  %91 = getelementptr inbounds %struct.sane_request, %struct.sane_request* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* @SANE_NET_START, align 4
  %94 = call i64 @htonl(i32 %93)
  %95 = icmp ne i64 %92, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %87
  %97 = load i8*, i8** @SANE_STATE_NORMAL, align 8
  %98 = ptrtoint i8* %97 to i64
  %99 = load %struct.nf_ct_sane_master*, %struct.nf_ct_sane_master** %17, align 8
  %100 = getelementptr inbounds %struct.nf_ct_sane_master, %struct.nf_ct_sane_master* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  br label %184

101:                                              ; preds = %87
  %102 = load i64, i64* @SANE_STATE_START_REQUESTED, align 8
  %103 = load %struct.nf_ct_sane_master*, %struct.nf_ct_sane_master** %17, align 8
  %104 = getelementptr inbounds %struct.nf_ct_sane_master, %struct.nf_ct_sane_master* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  br label %184

105:                                              ; preds = %63
  %106 = load %struct.nf_ct_sane_master*, %struct.nf_ct_sane_master** %17, align 8
  %107 = getelementptr inbounds %struct.nf_ct_sane_master, %struct.nf_ct_sane_master* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @SANE_STATE_START_REQUESTED, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  br label %184

112:                                              ; preds = %105
  %113 = load i8*, i8** @SANE_STATE_NORMAL, align 8
  %114 = ptrtoint i8* %113 to i64
  %115 = load %struct.nf_ct_sane_master*, %struct.nf_ct_sane_master** %17, align 8
  %116 = getelementptr inbounds %struct.nf_ct_sane_master, %struct.nf_ct_sane_master* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load i32, i32* %11, align 4
  %118 = zext i32 %117 to i64
  %119 = icmp ult i64 %118, 24
  br i1 %119, label %120, label %122

120:                                              ; preds = %112
  %121 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %184

122:                                              ; preds = %112
  %123 = load i8*, i8** %14, align 8
  %124 = bitcast i8* %123 to %struct.sane_reply_net_start*
  store %struct.sane_reply_net_start* %124, %struct.sane_reply_net_start** %21, align 8
  %125 = load %struct.sane_reply_net_start*, %struct.sane_reply_net_start** %21, align 8
  %126 = getelementptr inbounds %struct.sane_reply_net_start, %struct.sane_reply_net_start* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* @SANE_STATUS_SUCCESS, align 4
  %129 = call i64 @htonl(i32 %128)
  %130 = icmp ne i64 %127, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %122
  %132 = load %struct.sane_reply_net_start*, %struct.sane_reply_net_start** %21, align 8
  %133 = getelementptr inbounds %struct.sane_reply_net_start, %struct.sane_reply_net_start* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @ntohl(i64 %134)
  %136 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %135)
  br label %184

137:                                              ; preds = %122
  %138 = load %struct.sane_reply_net_start*, %struct.sane_reply_net_start** %21, align 8
  %139 = getelementptr inbounds %struct.sane_reply_net_start, %struct.sane_reply_net_start* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  br label %184

143:                                              ; preds = %137
  %144 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %145 = call %struct.nf_conntrack_expect* @nf_ct_expect_alloc(%struct.nf_conn* %144)
  store %struct.nf_conntrack_expect* %145, %struct.nf_conntrack_expect** %18, align 8
  %146 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %18, align 8
  %147 = icmp eq %struct.nf_conntrack_expect* %146, null
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = load i32, i32* @NF_DROP, align 4
  store i32 %149, i32* %15, align 4
  br label %184

150:                                              ; preds = %143
  %151 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %152 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %151, i32 0, i32 0
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %152, align 8
  %154 = load i32, i32* @IP_CT_DIR_ORIGINAL, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  store %struct.nf_conntrack_tuple* %157, %struct.nf_conntrack_tuple** %19, align 8
  %158 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %18, align 8
  %159 = load i32, i32* @NF_CT_EXPECT_CLASS_DEFAULT, align 4
  %160 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %161 = call i32 @nf_ct_l3num(%struct.nf_conn* %160)
  %162 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %19, align 8
  %163 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %19, align 8
  %166 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = load i32, i32* @IPPROTO_TCP, align 4
  %169 = load %struct.sane_reply_net_start*, %struct.sane_reply_net_start** %21, align 8
  %170 = getelementptr inbounds %struct.sane_reply_net_start, %struct.sane_reply_net_start* %169, i32 0, i32 2
  %171 = call i32 @nf_ct_expect_init(%struct.nf_conntrack_expect* %158, i32 %159, i32 %161, i32* %164, i32* %167, i32 %168, i32* null, i32* %170)
  %172 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %173 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %18, align 8
  %174 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %173, i32 0, i32 0
  %175 = call i32 @nf_ct_dump_tuple(i32* %174)
  %176 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %18, align 8
  %177 = call i64 @nf_ct_expect_related(%struct.nf_conntrack_expect* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %150
  %180 = load i32, i32* @NF_DROP, align 4
  store i32 %180, i32* %15, align 4
  br label %181

181:                                              ; preds = %179, %150
  %182 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %18, align 8
  %183 = call i32 @nf_ct_expect_put(%struct.nf_conntrack_expect* %182)
  br label %184

184:                                              ; preds = %181, %148, %142, %131, %120, %111, %101, %96, %86
  %185 = call i32 @spin_unlock_bh(i32* @nf_sane_lock)
  %186 = load i32, i32* %15, align 4
  store i32 %186, i32* %5, align 4
  br label %187

187:                                              ; preds = %184, %61, %47, %38
  %188 = load i32, i32* %5, align 4
  ret i32 %188
}

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local %struct.TYPE_10__* @nfct_help(%struct.nf_conn*) #1

declare dso_local i8* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.tcphdr*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @htonl(i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @ntohl(i64) #1

declare dso_local %struct.nf_conntrack_expect* @nf_ct_expect_alloc(%struct.nf_conn*) #1

declare dso_local i32 @nf_ct_expect_init(%struct.nf_conntrack_expect*, i32, i32, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @nf_ct_l3num(%struct.nf_conn*) #1

declare dso_local i32 @nf_ct_dump_tuple(i32*) #1

declare dso_local i64 @nf_ct_expect_related(%struct.nf_conntrack_expect*) #1

declare dso_local i32 @nf_ct_expect_put(%struct.nf_conntrack_expect*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
