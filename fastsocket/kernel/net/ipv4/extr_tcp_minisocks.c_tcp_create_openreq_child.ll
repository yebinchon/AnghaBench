; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_minisocks.c_tcp_create_openreq_child.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_minisocks.c_tcp_create_openreq_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.request_sock = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.inet_request_sock = type { i32, i32, i64, i32, i64 }
%struct.tcp_request_sock = type { i64, i64 }
%struct.inet_connection_sock = type { %struct.TYPE_6__, i32*, i8* }
%struct.TYPE_6__ = type { i64 }
%struct.tcp_sock = type { i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_5__*, i32*, i32, i32, i32, i64, i64, i64, i32, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i8*, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i64, i32, i64, i64, i32, i64, i64, i64 }
%struct.TYPE_5__ = type { i64 (%struct.sock*, %struct.sock*)* }
%struct.TYPE_8__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@TCP_TIMEOUT_INIT = common dso_local global i8* null, align 8
@TCP_INFINITE_SSTHRESH = common dso_local global i32 0, align 4
@TCP_INIT_CWND = common dso_local global i32 0, align 4
@tcp_init_congestion_ops = common dso_local global i32 0, align 4
@TCP_CA_Open = common dso_local global i32 0, align 4
@SOCK_KEEPOPEN = common dso_local global i32 0, align 4
@sysctl_tcp_fack = common dso_local global i64 0, align 8
@TCPOLEN_TSTAMP_ALIGNED = common dso_local global i32 0, align 4
@TCP_MIN_RCVMSS = common dso_local global i64 0, align 8
@SOCK_PASSIVE_OPEN = common dso_local global i32 0, align 4
@TCP_MIB_PASSIVEOPENS = common dso_local global i32 0, align 4
@TCPOLEN_MD5SIG_ALIGNED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @tcp_create_openreq_child(%struct.sock* %0, %struct.request_sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.request_sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.inet_request_sock*, align 8
  %9 = alloca %struct.tcp_request_sock*, align 8
  %10 = alloca %struct.inet_connection_sock*, align 8
  %11 = alloca %struct.tcp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.request_sock* %1, %struct.request_sock** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call %struct.sock* @inet_csk_clone(%struct.sock* %12, %struct.request_sock* %13, i32 %14)
  store %struct.sock* %15, %struct.sock** %7, align 8
  %16 = load %struct.sock*, %struct.sock** %7, align 8
  %17 = icmp ne %struct.sock* %16, null
  br i1 %17, label %18, label %296

18:                                               ; preds = %3
  %19 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %20 = call %struct.inet_request_sock* @inet_rsk(%struct.request_sock* %19)
  store %struct.inet_request_sock* %20, %struct.inet_request_sock** %8, align 8
  %21 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %22 = call %struct.tcp_request_sock* @tcp_rsk(%struct.request_sock* %21)
  store %struct.tcp_request_sock* %22, %struct.tcp_request_sock** %9, align 8
  %23 = load %struct.sock*, %struct.sock** %7, align 8
  %24 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %23)
  store %struct.inet_connection_sock* %24, %struct.inet_connection_sock** %10, align 8
  %25 = load %struct.sock*, %struct.sock** %7, align 8
  %26 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %25)
  store %struct.tcp_sock* %26, %struct.tcp_sock** %11, align 8
  %27 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %28 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %27, i32 0, i32 33
  store i64 0, i64* %28, align 8
  %29 = load %struct.tcp_request_sock*, %struct.tcp_request_sock** %9, align 8
  %30 = getelementptr inbounds %struct.tcp_request_sock, %struct.tcp_request_sock* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  %33 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %34 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %33, i32 0, i32 30
  store i64 %32, i64* %34, align 8
  %35 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %36 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %35, i32 0, i32 31
  store i64 %32, i64* %36, align 8
  %37 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %38 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %37, i32 0, i32 32
  store i64 %32, i64* %38, align 8
  %39 = load %struct.tcp_request_sock*, %struct.tcp_request_sock** %9, align 8
  %40 = getelementptr inbounds %struct.tcp_request_sock, %struct.tcp_request_sock* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 1
  %43 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %44 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %43, i32 0, i32 27
  store i64 %42, i64* %44, align 8
  %45 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %46 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %45, i32 0, i32 28
  store i64 %42, i64* %46, align 8
  %47 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %48 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %47, i32 0, i32 29
  store i64 %42, i64* %48, align 8
  %49 = load %struct.tcp_request_sock*, %struct.tcp_request_sock** %9, align 8
  %50 = getelementptr inbounds %struct.tcp_request_sock, %struct.tcp_request_sock* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 1
  %53 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %54 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %53, i32 0, i32 26
  store i64 %52, i64* %54, align 8
  %55 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %56 = call i32 @tcp_prequeue_init(%struct.tcp_sock* %55)
  %57 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %58 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %57, i32 0, i32 25
  %59 = call i32 @INIT_LIST_HEAD(i32* %58)
  %60 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %61 = load %struct.tcp_request_sock*, %struct.tcp_request_sock** %9, align 8
  %62 = getelementptr inbounds %struct.tcp_request_sock, %struct.tcp_request_sock* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @tcp_init_wl(%struct.tcp_sock* %60, i64 %63)
  %65 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %66 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %65, i32 0, i32 24
  store i64 0, i64* %66, align 8
  %67 = load i8*, i8** @TCP_TIMEOUT_INIT, align 8
  %68 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %69 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %68, i32 0, i32 23
  store i8* %67, i8** %69, align 8
  %70 = load i8*, i8** @TCP_TIMEOUT_INIT, align 8
  %71 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %10, align 8
  %72 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %71, i32 0, i32 2
  store i8* %70, i8** %72, align 8
  %73 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %74 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %73, i32 0, i32 22
  store i64 0, i64* %74, align 8
  %75 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %76 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %75, i32 0, i32 21
  store i64 0, i64* %76, align 8
  %77 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %78 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %77, i32 0, i32 20
  store i64 0, i64* %78, align 8
  %79 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %80 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %79, i32 0, i32 19
  store i64 0, i64* %80, align 8
  %81 = load i32, i32* @TCP_INFINITE_SSTHRESH, align 4
  %82 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %83 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %82, i32 0, i32 18
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @TCP_INIT_CWND, align 4
  %85 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %86 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %85, i32 0, i32 17
  store i32 %84, i32* %86, align 8
  %87 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %88 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %87, i32 0, i32 16
  store i64 0, i64* %88, align 8
  %89 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %90 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %89, i32 0, i32 15
  store i64 0, i64* %90, align 8
  %91 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %92 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %91, i32 0, i32 14
  store i64 0, i64* %92, align 8
  %93 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %94 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %93, i32 0, i32 13
  store i64 0, i64* %94, align 8
  %95 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %10, align 8
  %96 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %95, i32 0, i32 1
  store i32* @tcp_init_congestion_ops, i32** %96, align 8
  %97 = load %struct.sock*, %struct.sock** %7, align 8
  %98 = load i32, i32* @TCP_CA_Open, align 4
  %99 = call i32 @tcp_set_ca_state(%struct.sock* %97, i32 %98)
  %100 = load %struct.sock*, %struct.sock** %7, align 8
  %101 = call i32 @tcp_init_xmit_timers(%struct.sock* %100)
  %102 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %103 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %102, i32 0, i32 12
  %104 = call i32 @skb_queue_head_init(i32* %103)
  %105 = load %struct.tcp_request_sock*, %struct.tcp_request_sock** %9, align 8
  %106 = getelementptr inbounds %struct.tcp_request_sock, %struct.tcp_request_sock* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, 1
  %109 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %110 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %109, i32 0, i32 10
  store i64 %108, i64* %110, align 8
  %111 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %112 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %111, i32 0, i32 10
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %115 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %114, i32 0, i32 11
  store i64 %113, i64* %115, align 8
  %116 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %117 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 10
  store i64 0, i64* %118, align 8
  %119 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %120 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 9
  store i64 0, i64* %121, align 8
  %122 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %123 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 8
  store i64 0, i64* %124, align 8
  %125 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %126 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %125, i32 0, i32 9
  store i64 0, i64* %126, align 8
  %127 = load %struct.sock*, %struct.sock** %7, align 8
  %128 = load i32, i32* @SOCK_KEEPOPEN, align 4
  %129 = call i64 @sock_flag(%struct.sock* %127, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %18
  %132 = load %struct.sock*, %struct.sock** %7, align 8
  %133 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %134 = call i32 @keepalive_time_when(%struct.tcp_sock* %133)
  %135 = call i32 @inet_csk_reset_keepalive_timer(%struct.sock* %132, i32 %134)
  br label %136

136:                                              ; preds = %131, %18
  %137 = load %struct.inet_request_sock*, %struct.inet_request_sock** %8, align 8
  %138 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %141 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 5
  store i64 %139, i64* %142, align 8
  %143 = load %struct.inet_request_sock*, %struct.inet_request_sock** %8, align 8
  %144 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %147 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 7
  store i32 %145, i32* %148, align 8
  %149 = icmp ne i32 %145, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %136
  %151 = load i64, i64* @sysctl_tcp_fack, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %155 = call i32 @tcp_enable_fack(%struct.tcp_sock* %154)
  br label %156

156:                                              ; preds = %153, %150
  br label %157

157:                                              ; preds = %156, %136
  %158 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %159 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %162 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %161, i32 0, i32 6
  store i32 %160, i32* %162, align 8
  %163 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %164 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %167 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %166, i32 0, i32 8
  store i32 %165, i32* %167, align 8
  %168 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %169 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %172 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %171, i32 0, i32 7
  store i32 %170, i32* %172, align 4
  %173 = load %struct.inet_request_sock*, %struct.inet_request_sock** %8, align 8
  %174 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %177 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 6
  store i64 %175, i64* %178, align 8
  %179 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %180 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 6
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %197

184:                                              ; preds = %157
  %185 = load %struct.inet_request_sock*, %struct.inet_request_sock** %8, align 8
  %186 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %189 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  store i32 %187, i32* %190, align 8
  %191 = load %struct.inet_request_sock*, %struct.inet_request_sock** %8, align 8
  %192 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %195 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %194, i32 0, i32 3
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 1
  store i32 %193, i32* %196, align 4
  br label %210

197:                                              ; preds = %157
  %198 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %199 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %198, i32 0, i32 3
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 1
  store i32 0, i32* %200, align 4
  %201 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %202 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %201, i32 0, i32 3
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 0
  store i32 0, i32* %203, align 8
  %204 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %205 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %204, i32 0, i32 6
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @min(i32 %206, i32 65535)
  %208 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %209 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %208, i32 0, i32 6
  store i32 %207, i32* %209, align 8
  br label %210

210:                                              ; preds = %197, %184
  %211 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %212 = call %struct.TYPE_8__* @tcp_hdr(%struct.sk_buff* %211)
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @ntohs(i32 %214)
  %216 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %217 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %216, i32 0, i32 3
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = shl i32 %215, %219
  %221 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %222 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %221, i32 0, i32 0
  store i32 %220, i32* %222, align 8
  %223 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %224 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %227 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %226, i32 0, i32 1
  store i32 %225, i32* %227, align 4
  %228 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %229 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %228, i32 0, i32 3
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 5
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %250

233:                                              ; preds = %210
  %234 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %235 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %238 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %237, i32 0, i32 3
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 4
  store i32 %236, i32* %239, align 8
  %240 = call i64 (...) @get_seconds()
  %241 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %242 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %241, i32 0, i32 3
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 3
  store i64 %240, i64* %243, align 8
  %244 = load i32, i32* @TCPOLEN_TSTAMP_ALIGNED, align 4
  %245 = sext i32 %244 to i64
  %246 = add i64 4, %245
  %247 = trunc i64 %246 to i32
  %248 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %249 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %248, i32 0, i32 2
  store i32 %247, i32* %249, align 8
  br label %256

250:                                              ; preds = %210
  %251 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %252 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %251, i32 0, i32 3
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 3
  store i64 0, i64* %253, align 8
  %254 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %255 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %254, i32 0, i32 2
  store i32 4, i32* %255, align 8
  br label %256

256:                                              ; preds = %250, %233
  %257 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %258 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @TCP_MIN_RCVMSS, align 8
  %261 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %262 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = sext i32 %263 to i64
  %265 = add nsw i64 %260, %264
  %266 = icmp sge i64 %259, %265
  br i1 %266, label %267, label %279

267:                                              ; preds = %256
  %268 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %269 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %272 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = sext i32 %273 to i64
  %275 = sub nsw i64 %270, %274
  %276 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %10, align 8
  %277 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 0
  store i64 %275, i64* %278, align 8
  br label %279

279:                                              ; preds = %267, %256
  %280 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %281 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %284 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %283, i32 0, i32 3
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 2
  store i32 %282, i32* %285, align 8
  %286 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %287 = load %struct.request_sock*, %struct.request_sock** %5, align 8
  %288 = call i32 @TCP_ECN_openreq_child(%struct.tcp_sock* %286, %struct.request_sock* %287)
  %289 = load %struct.sock*, %struct.sock** %7, align 8
  %290 = load i32, i32* @SOCK_PASSIVE_OPEN, align 4
  %291 = call i32 @sock_set_flag(%struct.sock* %289, i32 %290)
  %292 = load %struct.sock*, %struct.sock** %4, align 8
  %293 = call i32 @sock_net(%struct.sock* %292)
  %294 = load i32, i32* @TCP_MIB_PASSIVEOPENS, align 4
  %295 = call i32 @TCP_INC_STATS_BH(i32 %293, i32 %294)
  br label %296

296:                                              ; preds = %279, %3
  %297 = load %struct.sock*, %struct.sock** %7, align 8
  ret %struct.sock* %297
}

declare dso_local %struct.sock* @inet_csk_clone(%struct.sock*, %struct.request_sock*, i32) #1

declare dso_local %struct.inet_request_sock* @inet_rsk(%struct.request_sock*) #1

declare dso_local %struct.tcp_request_sock* @tcp_rsk(%struct.request_sock*) #1

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @tcp_prequeue_init(%struct.tcp_sock*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @tcp_init_wl(%struct.tcp_sock*, i64) #1

declare dso_local i32 @tcp_set_ca_state(%struct.sock*, i32) #1

declare dso_local i32 @tcp_init_xmit_timers(%struct.sock*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @inet_csk_reset_keepalive_timer(%struct.sock*, i32) #1

declare dso_local i32 @keepalive_time_when(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_enable_fack(%struct.tcp_sock*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.TYPE_8__* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i64 @get_seconds(...) #1

declare dso_local i32 @TCP_ECN_openreq_child(%struct.tcp_sock*, %struct.request_sock*) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

declare dso_local i32 @TCP_INC_STATS_BH(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
