; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_proto_tcp.c_tcp_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_proto_tcp.c_tcp_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, %struct.ip_ct_tcp_state* }
%struct.ip_ct_tcp_state = type { i32, i32, i32, i32, i64 }
%struct.sk_buff = type { i32 }
%struct.tcphdr = type { i32, i32 }

@tcp_conntracks = common dso_local global i32*** null, align 8
@TCP_CONNTRACK_NONE = common dso_local global i64 0, align 8
@TCP_CONNTRACK_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"nf_ct_tcp: invalid new deleting.\0A\00", align 1
@TCP_CONNTRACK_SYN_SENT = common dso_local global i32 0, align 4
@nf_ct_tcp_loose = common dso_local global i64 0, align 8
@IP_CT_TCP_FLAG_SACK_PERM = common dso_local global i32 0, align 4
@IP_CT_TCP_FLAG_BE_LIBERAL = common dso_local global i32 0, align 4
@TCP_NONE_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [98 x i8] c"tcp_new: sender end=%u maxend=%u maxwin=%u scale=%i receiver end=%u maxend=%u maxwin=%u scale=%i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conn*, %struct.sk_buff*, i32)* @tcp_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_new(%struct.nf_conn* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nf_conn*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tcphdr*, align 8
  %10 = alloca %struct.tcphdr, align 4
  %11 = alloca %struct.ip_ct_tcp_state*, align 8
  %12 = alloca %struct.ip_ct_tcp_state*, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %14 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %16, align 8
  %18 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %17, i64 0
  store %struct.ip_ct_tcp_state* %18, %struct.ip_ct_tcp_state** %11, align 8
  %19 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %20 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %22, align 8
  %24 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %23, i64 1
  store %struct.ip_ct_tcp_state* %24, %struct.ip_ct_tcp_state** %12, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call %struct.tcphdr* @skb_header_pointer(%struct.sk_buff* %25, i32 %26, i32 8, %struct.tcphdr* %10)
  store %struct.tcphdr* %27, %struct.tcphdr** %9, align 8
  %28 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %29 = icmp eq %struct.tcphdr* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load i32***, i32**** @tcp_conntracks, align 8
  %33 = getelementptr inbounds i32**, i32*** %32, i64 0
  %34 = load i32**, i32*** %33, align 8
  %35 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %36 = call i64 @get_conntrack_index(%struct.tcphdr* %35)
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @TCP_CONNTRACK_NONE, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @TCP_CONNTRACK_MAX, align 4
  %44 = icmp uge i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %3
  %46 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %298

47:                                               ; preds = %3
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @TCP_CONNTRACK_SYN_SENT, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %132

51:                                               ; preds = %47
  %52 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %53 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ntohl(i32 %54)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %61 = call i8* @segment_seq_plus_len(i32 %55, i32 %58, i32 %59, %struct.tcphdr* %60)
  %62 = ptrtoint i8* %61 to i32
  %63 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %64 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %66, align 8
  %68 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %67, i64 0
  %69 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %68, i32 0, i32 0
  store i32 %62, i32* %69, align 8
  %70 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %71 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @ntohs(i32 %72)
  %74 = ptrtoint i8* %73 to i32
  %75 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %76 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  %79 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %78, align 8
  %80 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %79, i64 0
  %81 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %80, i32 0, i32 1
  store i32 %74, i32* %81, align 4
  %82 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %83 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  %86 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %85, align 8
  %87 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %86, i64 0
  %88 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %51
  %92 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %93 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 2
  %96 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %95, align 8
  %97 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %96, i64 0
  %98 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %97, i32 0, i32 1
  store i32 1, i32* %98, align 4
  br label %99

99:                                               ; preds = %91, %51
  %100 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %101 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  %104 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %103, align 8
  %105 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %104, i64 0
  %106 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %109 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 2
  %112 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %111, align 8
  %113 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %112, i64 0
  %114 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %113, i32 0, i32 2
  store i32 %107, i32* %114, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %116 = load i32, i32* %7, align 4
  %117 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %118 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %119 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 2
  %122 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %121, align 8
  %123 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %122, i64 0
  %124 = call i32 @tcp_options(%struct.sk_buff* %115, i32 %116, %struct.tcphdr* %117, %struct.ip_ct_tcp_state* %123)
  %125 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %126 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 2
  %129 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %128, align 8
  %130 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %129, i64 1
  %131 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %130, i32 0, i32 3
  store i32 0, i32* %131, align 4
  br label %234

132:                                              ; preds = %47
  %133 = load i64, i64* @nf_ct_tcp_loose, align 8
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  store i32 0, i32* %4, align 4
  br label %298

136:                                              ; preds = %132
  %137 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %138 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @ntohl(i32 %139)
  %141 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %142 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %7, align 4
  %145 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %146 = call i8* @segment_seq_plus_len(i32 %140, i32 %143, i32 %144, %struct.tcphdr* %145)
  %147 = ptrtoint i8* %146 to i32
  %148 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %149 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 2
  %152 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %151, align 8
  %153 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %152, i64 0
  %154 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %153, i32 0, i32 0
  store i32 %147, i32* %154, align 8
  %155 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %156 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i8* @ntohs(i32 %157)
  %159 = ptrtoint i8* %158 to i32
  %160 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %161 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 2
  %164 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %163, align 8
  %165 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %164, i64 0
  %166 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %165, i32 0, i32 1
  store i32 %159, i32* %166, align 4
  %167 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %168 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 2
  %171 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %170, align 8
  %172 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %171, i64 0
  %173 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %184

176:                                              ; preds = %136
  %177 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %178 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 2
  %181 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %180, align 8
  %182 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %181, i64 0
  %183 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %182, i32 0, i32 1
  store i32 1, i32* %183, align 4
  br label %184

184:                                              ; preds = %176, %136
  %185 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %186 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 2
  %189 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %188, align 8
  %190 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %189, i64 0
  %191 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %194 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 2
  %197 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %196, align 8
  %198 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %197, i64 0
  %199 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %192, %200
  %202 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %203 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 2
  %206 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %205, align 8
  %207 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %206, i64 0
  %208 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %207, i32 0, i32 2
  store i32 %201, i32* %208, align 8
  %209 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %210 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 2
  %213 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %212, align 8
  %214 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %213, i64 0
  %215 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %214, i32 0, i32 4
  store i64 0, i64* %215, align 8
  %216 = load i32, i32* @IP_CT_TCP_FLAG_SACK_PERM, align 4
  %217 = load i32, i32* @IP_CT_TCP_FLAG_BE_LIBERAL, align 4
  %218 = or i32 %216, %217
  %219 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %220 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 2
  %223 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %222, align 8
  %224 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %223, i64 1
  %225 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %224, i32 0, i32 3
  store i32 %218, i32* %225, align 4
  %226 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %227 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 2
  %230 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %229, align 8
  %231 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %230, i64 0
  %232 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %231, i32 0, i32 3
  store i32 %218, i32* %232, align 4
  br label %233

233:                                              ; preds = %184
  br label %234

234:                                              ; preds = %233, %99
  %235 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %236 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 2
  %239 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %238, align 8
  %240 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %239, i64 1
  %241 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %240, i32 0, i32 0
  store i32 0, i32* %241, align 8
  %242 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %243 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 2
  %246 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %245, align 8
  %247 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %246, i64 1
  %248 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %247, i32 0, i32 2
  store i32 0, i32* %248, align 8
  %249 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %250 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 2
  %253 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %252, align 8
  %254 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %253, i64 1
  %255 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %254, i32 0, i32 1
  store i32 0, i32* %255, align 4
  %256 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %257 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 2
  %260 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %259, align 8
  %261 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %260, i64 1
  %262 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %261, i32 0, i32 4
  store i64 0, i64* %262, align 8
  %263 = load i64, i64* @TCP_CONNTRACK_NONE, align 8
  %264 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %265 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %266, i32 0, i32 0
  store i64 %263, i64* %267, align 8
  %268 = load i32, i32* @TCP_NONE_SET, align 4
  %269 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %270 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i32 0, i32 1
  store i32 %268, i32* %272, align 8
  %273 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %11, align 8
  %274 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %11, align 8
  %277 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %11, align 8
  %280 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %11, align 8
  %283 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %282, i32 0, i32 4
  %284 = load i64, i64* %283, align 8
  %285 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %12, align 8
  %286 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %12, align 8
  %289 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %12, align 8
  %292 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.ip_ct_tcp_state*, %struct.ip_ct_tcp_state** %12, align 8
  %295 = getelementptr inbounds %struct.ip_ct_tcp_state, %struct.ip_ct_tcp_state* %294, i32 0, i32 4
  %296 = load i64, i64* %295, align 8
  %297 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i64 0, i64 0), i32 %275, i32 %278, i32 %281, i64 %284, i32 %287, i32 %290, i32 %293, i64 %296)
  store i32 1, i32* %4, align 4
  br label %298

298:                                              ; preds = %234, %135, %45
  %299 = load i32, i32* %4, align 4
  ret i32 %299
}

declare dso_local %struct.tcphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.tcphdr*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @get_conntrack_index(%struct.tcphdr*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i8* @segment_seq_plus_len(i32, i32, i32, %struct.tcphdr*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i8* @ntohs(i32) #1

declare dso_local i32 @tcp_options(%struct.sk_buff*, i32, %struct.tcphdr*, %struct.ip_ct_tcp_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
