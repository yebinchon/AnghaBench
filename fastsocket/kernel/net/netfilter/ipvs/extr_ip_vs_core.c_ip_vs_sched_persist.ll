; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_core.c_ip_vs_sched_persist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_core.c_ip_vs_sched_persist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn = type { %struct.ip_vs_dest*, i32 }
%struct.ip_vs_dest = type { i64, i32 }
%struct.ip_vs_service = type { i64, i32, i64, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { %struct.ip_vs_dest* (%struct.ip_vs_service*, %struct.sk_buff*)* }
%struct.sk_buff = type { i32 }
%struct.ip_vs_iphdr = type { i32, %union.nf_inet_addr, %union.nf_inet_addr }
%union.nf_inet_addr = type { i32 }
%struct.ip_vs_conn_param = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"p-schedule: src %s:%u dest %s:%u mnet %s\0A\00", align 1
@FTPPORT = common dso_local global i64 0, align 8
@IPPROTO_IP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"p-schedule: no dest found.\0A\00", align 1
@IP_VS_CONN_F_TEMPLATE = common dso_local global i32 0, align 4
@IP_VS_SVC_F_ONEPACKET = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@IP_VS_CONN_F_ONE_PACKET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip_vs_conn* (%struct.ip_vs_service*, %struct.sk_buff*, i64, i64)* @ip_vs_sched_persist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip_vs_conn* @ip_vs_sched_persist(%struct.ip_vs_service* %0, %struct.sk_buff* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.ip_vs_conn*, align 8
  %6 = alloca %struct.ip_vs_service*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ip_vs_conn*, align 8
  %11 = alloca %struct.ip_vs_iphdr, align 4
  %12 = alloca %struct.ip_vs_dest*, align 8
  %13 = alloca %struct.ip_vs_conn*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ip_vs_conn_param, align 4
  %17 = alloca %union.nf_inet_addr, align 4
  %18 = alloca %union.nf_inet_addr, align 4
  %19 = alloca i32, align 4
  %20 = alloca %union.nf_inet_addr*, align 8
  %21 = alloca i64, align 8
  store %struct.ip_vs_service* %0, %struct.ip_vs_service** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.ip_vs_conn* null, %struct.ip_vs_conn** %10, align 8
  store i64 0, i64* %14, align 8
  %22 = bitcast %union.nf_inet_addr* %17 to i32*
  %23 = load %struct.ip_vs_service*, %struct.ip_vs_service** %6, align 8
  %24 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %23, i32 0, i32 6
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @htonl(i64 %25)
  store i32 %26, i32* %22, align 4
  %27 = load %struct.ip_vs_service*, %struct.ip_vs_service** %6, align 8
  %28 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = call i32 @skb_network_header(%struct.sk_buff* %30)
  %32 = call i32 @ip_vs_fill_iphdr(i64 %29, i32 %31, %struct.ip_vs_iphdr* %11)
  %33 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %11, i32 0, i32 2
  %34 = bitcast %union.nf_inet_addr* %33 to i32*
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ip_vs_service*, %struct.ip_vs_service** %6, align 8
  %37 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %35, %38
  %40 = bitcast %union.nf_inet_addr* %18 to i32*
  store i32 %39, i32* %40, align 4
  %41 = load %struct.ip_vs_service*, %struct.ip_vs_service** %6, align 8
  %42 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %11, i32 0, i32 2
  %45 = call i32 @IP_VS_DBG_ADDR(i64 %43, %union.nf_inet_addr* %44)
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @ntohs(i64 %46)
  %48 = load %struct.ip_vs_service*, %struct.ip_vs_service** %6, align 8
  %49 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %11, i32 0, i32 1
  %52 = call i32 @IP_VS_DBG_ADDR(i64 %50, %union.nf_inet_addr* %51)
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @ntohs(i64 %53)
  %55 = load %struct.ip_vs_service*, %struct.ip_vs_service** %6, align 8
  %56 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @IP_VS_DBG_ADDR(i64 %57, %union.nf_inet_addr* %18)
  %59 = call i32 @IP_VS_DBG_BUF(i32 6, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %47, i32 %52, i32 %54, i32 %58)
  %60 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %11, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %19, align 4
  %62 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %11, i32 0, i32 1
  store %union.nf_inet_addr* %62, %union.nf_inet_addr** %20, align 8
  store i64 0, i64* %21, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load %struct.ip_vs_service*, %struct.ip_vs_service** %6, align 8
  %65 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %4
  %69 = load %struct.ip_vs_service*, %struct.ip_vs_service** %6, align 8
  %70 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @FTPPORT, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i64, i64* %9, align 8
  store i64 %75, i64* %21, align 8
  br label %76

76:                                               ; preds = %74, %68
  br label %85

77:                                               ; preds = %4
  %78 = load %struct.ip_vs_service*, %struct.ip_vs_service** %6, align 8
  %79 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %78, i32 0, i32 6
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* @IPPROTO_IP, align 4
  store i32 %83, i32* %19, align 4
  store %union.nf_inet_addr* %17, %union.nf_inet_addr** %20, align 8
  br label %84

84:                                               ; preds = %82, %77
  br label %85

85:                                               ; preds = %84, %76
  %86 = load %struct.ip_vs_service*, %struct.ip_vs_service** %6, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %88 = load i32, i32* %19, align 4
  %89 = load %union.nf_inet_addr*, %union.nf_inet_addr** %20, align 8
  %90 = load i64, i64* %21, align 8
  %91 = call i32 @ip_vs_conn_fill_param_persist(%struct.ip_vs_service* %86, %struct.sk_buff* %87, i32 %88, %union.nf_inet_addr* %18, i32 0, %union.nf_inet_addr* %89, i64 %90, %struct.ip_vs_conn_param* %16)
  %92 = call %struct.ip_vs_conn* @ip_vs_ct_in_get(%struct.ip_vs_conn_param* %16)
  store %struct.ip_vs_conn* %92, %struct.ip_vs_conn** %13, align 8
  %93 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %13, align 8
  %94 = icmp ne %struct.ip_vs_conn* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %85
  %96 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %13, align 8
  %97 = call i32 @ip_vs_check_template(%struct.ip_vs_conn* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %153, label %99

99:                                               ; preds = %95, %85
  %100 = load %struct.ip_vs_service*, %struct.ip_vs_service** %6, align 8
  %101 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %100, i32 0, i32 5
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load %struct.ip_vs_dest* (%struct.ip_vs_service*, %struct.sk_buff*)*, %struct.ip_vs_dest* (%struct.ip_vs_service*, %struct.sk_buff*)** %103, align 8
  %105 = load %struct.ip_vs_service*, %struct.ip_vs_service** %6, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %107 = call %struct.ip_vs_dest* %104(%struct.ip_vs_service* %105, %struct.sk_buff* %106)
  store %struct.ip_vs_dest* %107, %struct.ip_vs_dest** %12, align 8
  %108 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %12, align 8
  %109 = icmp ne %struct.ip_vs_dest* %108, null
  br i1 %109, label %115, label %110

110:                                              ; preds = %99
  %111 = call i32 @IP_VS_DBG(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %112 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %16, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @kfree(i32 %113)
  store %struct.ip_vs_conn* null, %struct.ip_vs_conn** %5, align 8
  br label %227

115:                                              ; preds = %99
  %116 = load i64, i64* %9, align 8
  %117 = load %struct.ip_vs_service*, %struct.ip_vs_service** %6, align 8
  %118 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %116, %119
  br i1 %120, label %121, label %131

121:                                              ; preds = %115
  %122 = load %struct.ip_vs_service*, %struct.ip_vs_service** %6, align 8
  %123 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @FTPPORT, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %121
  %128 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %12, align 8
  %129 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %14, align 8
  br label %131

131:                                              ; preds = %127, %121, %115
  %132 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %12, align 8
  %133 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %132, i32 0, i32 1
  %134 = load i64, i64* %14, align 8
  %135 = load i32, i32* @IP_VS_CONN_F_TEMPLATE, align 4
  %136 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %12, align 8
  %137 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %138 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call %struct.ip_vs_conn* @ip_vs_conn_new(%struct.ip_vs_conn_param* %16, i32* %133, i64 %134, i32 %135, %struct.ip_vs_dest* %136, i32 %139)
  store %struct.ip_vs_conn* %140, %struct.ip_vs_conn** %13, align 8
  %141 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %13, align 8
  %142 = icmp eq %struct.ip_vs_conn* %141, null
  br i1 %142, label %143, label %147

143:                                              ; preds = %131
  %144 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %16, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @kfree(i32 %145)
  store %struct.ip_vs_conn* null, %struct.ip_vs_conn** %5, align 8
  br label %227

147:                                              ; preds = %131
  %148 = load %struct.ip_vs_service*, %struct.ip_vs_service** %6, align 8
  %149 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %13, align 8
  %152 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 8
  br label %160

153:                                              ; preds = %95
  %154 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %13, align 8
  %155 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %154, i32 0, i32 0
  %156 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %155, align 8
  store %struct.ip_vs_dest* %156, %struct.ip_vs_dest** %12, align 8
  %157 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %16, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @kfree(i32 %158)
  br label %160

160:                                              ; preds = %153, %147
  %161 = load i64, i64* %9, align 8
  store i64 %161, i64* %14, align 8
  %162 = load i64, i64* %14, align 8
  %163 = load %struct.ip_vs_service*, %struct.ip_vs_service** %6, align 8
  %164 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = icmp eq i64 %162, %165
  br i1 %166, label %167, label %176

167:                                              ; preds = %160
  %168 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %12, align 8
  %169 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %167
  %173 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %12, align 8
  %174 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  store i64 %175, i64* %14, align 8
  br label %176

176:                                              ; preds = %172, %167, %160
  %177 = load %struct.ip_vs_service*, %struct.ip_vs_service** %6, align 8
  %178 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @IP_VS_SVC_F_ONEPACKET, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %190

183:                                              ; preds = %176
  %184 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %11, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @IPPROTO_UDP, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %183
  %189 = load i32, i32* @IP_VS_CONN_F_ONE_PACKET, align 4
  br label %191

190:                                              ; preds = %183, %176
  br label %191

191:                                              ; preds = %190, %188
  %192 = phi i32 [ %189, %188 ], [ 0, %190 ]
  store i32 %192, i32* %15, align 4
  %193 = load %struct.ip_vs_service*, %struct.ip_vs_service** %6, align 8
  %194 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %11, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %11, i32 0, i32 2
  %199 = load i64, i64* %8, align 8
  %200 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %11, i32 0, i32 1
  %201 = load i64, i64* %9, align 8
  %202 = call i32 @ip_vs_conn_fill_param(i64 %195, i32 %197, %union.nf_inet_addr* %198, i64 %199, %union.nf_inet_addr* %200, i64 %201, %struct.ip_vs_conn_param* %16)
  %203 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %12, align 8
  %204 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %203, i32 0, i32 1
  %205 = load i64, i64* %14, align 8
  %206 = load i32, i32* %15, align 4
  %207 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %12, align 8
  %208 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %209 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call %struct.ip_vs_conn* @ip_vs_conn_new(%struct.ip_vs_conn_param* %16, i32* %204, i64 %205, i32 %206, %struct.ip_vs_dest* %207, i32 %210)
  store %struct.ip_vs_conn* %211, %struct.ip_vs_conn** %10, align 8
  %212 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %10, align 8
  %213 = icmp eq %struct.ip_vs_conn* %212, null
  br i1 %213, label %214, label %217

214:                                              ; preds = %191
  %215 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %13, align 8
  %216 = call i32 @ip_vs_conn_put(%struct.ip_vs_conn* %215)
  store %struct.ip_vs_conn* null, %struct.ip_vs_conn** %5, align 8
  br label %227

217:                                              ; preds = %191
  %218 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %10, align 8
  %219 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %13, align 8
  %220 = call i32 @ip_vs_control_add(%struct.ip_vs_conn* %218, %struct.ip_vs_conn* %219)
  %221 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %13, align 8
  %222 = call i32 @ip_vs_conn_put(%struct.ip_vs_conn* %221)
  %223 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %10, align 8
  %224 = load %struct.ip_vs_service*, %struct.ip_vs_service** %6, align 8
  %225 = call i32 @ip_vs_conn_stats(%struct.ip_vs_conn* %223, %struct.ip_vs_service* %224)
  %226 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %10, align 8
  store %struct.ip_vs_conn* %226, %struct.ip_vs_conn** %5, align 8
  br label %227

227:                                              ; preds = %217, %214, %143, %110
  %228 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  ret %struct.ip_vs_conn* %228
}

declare dso_local i32 @htonl(i64) #1

declare dso_local i32 @ip_vs_fill_iphdr(i64, i32, %struct.ip_vs_iphdr*) #1

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @IP_VS_DBG_BUF(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @IP_VS_DBG_ADDR(i64, %union.nf_inet_addr*) #1

declare dso_local i32 @ntohs(i64) #1

declare dso_local i32 @ip_vs_conn_fill_param_persist(%struct.ip_vs_service*, %struct.sk_buff*, i32, %union.nf_inet_addr*, i32, %union.nf_inet_addr*, i64, %struct.ip_vs_conn_param*) #1

declare dso_local %struct.ip_vs_conn* @ip_vs_ct_in_get(%struct.ip_vs_conn_param*) #1

declare dso_local i32 @ip_vs_check_template(%struct.ip_vs_conn*) #1

declare dso_local i32 @IP_VS_DBG(i32, i8*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local %struct.ip_vs_conn* @ip_vs_conn_new(%struct.ip_vs_conn_param*, i32*, i64, i32, %struct.ip_vs_dest*, i32) #1

declare dso_local i32 @ip_vs_conn_fill_param(i64, i32, %union.nf_inet_addr*, i64, %union.nf_inet_addr*, i64, %struct.ip_vs_conn_param*) #1

declare dso_local i32 @ip_vs_conn_put(%struct.ip_vs_conn*) #1

declare dso_local i32 @ip_vs_control_add(%struct.ip_vs_conn*, %struct.ip_vs_conn*) #1

declare dso_local i32 @ip_vs_conn_stats(%struct.ip_vs_conn*, %struct.ip_vs_service*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
