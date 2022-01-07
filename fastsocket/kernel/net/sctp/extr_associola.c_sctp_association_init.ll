; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_associola.c_sctp_association_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_associola.c_sctp_association_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32, i32, i32, i32*, i32, i32, %struct.TYPE_16__, %struct.sctp_endpoint*, %struct.TYPE_15__, i64, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_26__, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i32*, i8*, i32, i32*, i32, i32, i32, i32, i32, i8*, i64, i8*, i32, i32, i32, i64, %struct.TYPE_19__, i32 }
%struct.TYPE_16__ = type { %struct.sock*, i32, i32, i64, i64, i32, i32 }
%struct.TYPE_15__ = type { i64, i32, i32, i64, i32, i64, i64, i64, i32, i32, i32 }
%struct.TYPE_26__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i32, %struct.TYPE_23__, i32 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.sctp_endpoint = type { %struct.TYPE_18__*, %struct.TYPE_18__*, i32, %struct.TYPE_25__ }
%struct.TYPE_18__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.sock = type { i32, i64 }
%struct.sctp_sock = type { i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_22__, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_21__, %struct.TYPE_20__, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }

@SCTP_EP_TYPE_ASSOCIATION = common dso_local global i32 0, align 4
@SCTP_STATE_CLOSED = common dso_local global i32 0, align 4
@sctp_pf_retrans = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_NONE = common dso_local global i64 0, align 8
@SCTP_EVENT_TIMEOUT_T1_COOKIE = common dso_local global i64 0, align 8
@SCTP_EVENT_TIMEOUT_T1_INIT = common dso_local global i64 0, align 8
@SCTP_EVENT_TIMEOUT_T2_SHUTDOWN = common dso_local global i64 0, align 8
@SCTP_EVENT_TIMEOUT_T3_RTX = common dso_local global i64 0, align 8
@SCTP_EVENT_TIMEOUT_T4_RTO = common dso_local global i64 0, align 8
@SCTP_EVENT_TIMEOUT_T5_SHUTDOWN_GUARD = common dso_local global i64 0, align 8
@SCTP_EVENT_TIMEOUT_HEARTBEAT = common dso_local global i64 0, align 8
@SCTP_EVENT_TIMEOUT_SACK = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@SCTP_EVENT_TIMEOUT_AUTOCLOSE = common dso_local global i64 0, align 8
@SCTP_NUM_TIMEOUT_TYPES = common dso_local global i32 0, align 4
@sctp_timer_events = common dso_local global i32* null, align 8
@SCTP_DEFAULT_MINWINDOW = common dso_local global i32 0, align 4
@SCTP_DEFAULT_MAXWINDOW = common dso_local global i32 0, align 4
@sctp_addip_noauth = common dso_local global i64 0, align 8
@sctp_assoc_bh_rcv = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i64 0, align 8
@SCTP_PARAM_RANDOM = common dso_local global i32 0, align 4
@SCTP_AUTH_RANDOM_LENGTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_association* (%struct.sctp_association*, %struct.sctp_endpoint*, %struct.sock*, i32, i32)* @sctp_association_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_association* @sctp_association_init(%struct.sctp_association* %0, %struct.sctp_endpoint* %1, %struct.sock* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sctp_association*, align 8
  %7 = alloca %struct.sctp_association*, align 8
  %8 = alloca %struct.sctp_endpoint*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sctp_sock*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca i32, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %7, align 8
  store %struct.sctp_endpoint* %1, %struct.sctp_endpoint** %8, align 8
  store %struct.sock* %2, %struct.sock** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.sock*, %struct.sock** %9, align 8
  %17 = call %struct.sctp_sock* @sctp_sk(%struct.sock* %16)
  store %struct.sctp_sock* %17, %struct.sctp_sock** %12, align 8
  %18 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %19 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %20 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %19, i32 0, i32 7
  store %struct.sctp_endpoint* %18, %struct.sctp_endpoint** %20, align 8
  %21 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %22 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %21, i32 0, i32 7
  %23 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %22, align 8
  %24 = call i32 @sctp_endpoint_hold(%struct.sctp_endpoint* %23)
  %25 = load %struct.sock*, %struct.sock** %9, align 8
  %26 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %27 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %26, i32 0, i32 6
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  store %struct.sock* %25, %struct.sock** %28, align 8
  %29 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %30 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %29, i32 0, i32 6
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load %struct.sock*, %struct.sock** %31, align 8
  %33 = call i32 @sock_hold(%struct.sock* %32)
  %34 = load i32, i32* @SCTP_EP_TYPE_ASSOCIATION, align 4
  %35 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %36 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %35, i32 0, i32 6
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 6
  store i32 %34, i32* %37, align 4
  %38 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %39 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 5
  %41 = call i32 @atomic_set(i32* %40, i32 1)
  %42 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %43 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %42, i32 0, i32 6
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 4
  store i64 0, i64* %44, align 8
  %45 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %46 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 3
  store i64 0, i64* %47, align 8
  %48 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %49 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %48, i32 0, i32 6
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 2
  %51 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %52 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @sctp_bind_addr_init(i32* %50, i32 %55)
  %57 = load i32, i32* @SCTP_STATE_CLOSED, align 4
  %58 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %59 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %58, i32 0, i32 58
  store i32 %57, i32* %59, align 8
  %60 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %61 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %60, i32 0, i32 16
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sdiv i32 %63, 1000
  %65 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %66 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %65, i32 0, i32 57
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  %68 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %69 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %68, i32 0, i32 16
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = srem i32 %71, 1000
  %73 = mul nsw i32 %72, 1000
  %74 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %75 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %74, i32 0, i32 57
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 4
  %77 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %78 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %77, i32 0, i32 56
  store i64 0, i64* %78, align 8
  %79 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %80 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %79, i32 0, i32 17
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %83 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %82, i32 0, i32 55
  store i32 %81, i32* %83, align 8
  %84 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %85 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %84, i32 0, i32 16
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %89 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %88, i32 0, i32 54
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @sctp_pf_retrans, align 4
  %91 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %92 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %91, i32 0, i32 53
  store i32 %90, i32* %92, align 8
  %93 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %94 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %93, i32 0, i32 15
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @msecs_to_jiffies(i32 %96)
  %98 = ptrtoint i8* %97 to i32
  %99 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %100 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %102 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %101, i32 0, i32 15
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @msecs_to_jiffies(i32 %104)
  %106 = ptrtoint i8* %105 to i32
  %107 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %108 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %110 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %109, i32 0, i32 15
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i8* @msecs_to_jiffies(i32 %112)
  %114 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %115 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %114, i32 0, i32 52
  store i8* %113, i8** %115, align 8
  %116 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %117 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %116, i32 0, i32 51
  store i64 0, i64* %117, align 8
  %118 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %119 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %118, i32 0, i32 14
  %120 = load i32, i32* %119, align 8
  %121 = call i8* @msecs_to_jiffies(i32 %120)
  %122 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %123 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %122, i32 0, i32 50
  store i8* %121, i8** %123, align 8
  %124 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %125 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %124, i32 0, i32 13
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %128 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %127, i32 0, i32 49
  store i32 %126, i32* %128, align 8
  %129 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %130 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %129, i32 0, i32 12
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %133 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %132, i32 0, i32 48
  store i32 %131, i32* %133, align 4
  %134 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %135 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %134, i32 0, i32 11
  %136 = load i32, i32* %135, align 4
  %137 = call i8* @msecs_to_jiffies(i32 %136)
  %138 = ptrtoint i8* %137 to i32
  %139 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %140 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 8
  %141 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %142 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %141, i32 0, i32 10
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %145 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %144, i32 0, i32 47
  store i32 %143, i32* %145, align 8
  %146 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %147 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %146, i32 0, i32 9
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %150 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %149, i32 0, i32 46
  store i32 %148, i32* %150, align 4
  %151 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %152 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %151, i32 0, i32 8
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %155 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %154, i32 0, i32 45
  store i32 %153, i32* %155, align 8
  %156 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %157 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %156, i32 0, i32 3
  %158 = load i32*, i32** %157, align 8
  %159 = load i64, i64* @SCTP_EVENT_TIMEOUT_NONE, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  store i32 0, i32* %160, align 4
  %161 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %162 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %165 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %164, i32 0, i32 3
  %166 = load i32*, i32** %165, align 8
  %167 = load i64, i64* @SCTP_EVENT_TIMEOUT_T1_COOKIE, align 8
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  store i32 %163, i32* %168, align 4
  %169 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %170 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %173 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %172, i32 0, i32 3
  %174 = load i32*, i32** %173, align 8
  %175 = load i64, i64* @SCTP_EVENT_TIMEOUT_T1_INIT, align 8
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  store i32 %171, i32* %176, align 4
  %177 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %178 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %181 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %180, i32 0, i32 3
  %182 = load i32*, i32** %181, align 8
  %183 = load i64, i64* @SCTP_EVENT_TIMEOUT_T2_SHUTDOWN, align 8
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  store i32 %179, i32* %184, align 4
  %185 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %186 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %185, i32 0, i32 3
  %187 = load i32*, i32** %186, align 8
  %188 = load i64, i64* @SCTP_EVENT_TIMEOUT_T3_RTX, align 8
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  store i32 0, i32* %189, align 4
  %190 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %191 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %190, i32 0, i32 3
  %192 = load i32*, i32** %191, align 8
  %193 = load i64, i64* @SCTP_EVENT_TIMEOUT_T4_RTO, align 8
  %194 = getelementptr inbounds i32, i32* %192, i64 %193
  store i32 0, i32* %194, align 4
  %195 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %196 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = mul nsw i32 5, %197
  %199 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %200 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %199, i32 0, i32 3
  %201 = load i32*, i32** %200, align 8
  %202 = load i64, i64* @SCTP_EVENT_TIMEOUT_T5_SHUTDOWN_GUARD, align 8
  %203 = getelementptr inbounds i32, i32* %201, i64 %202
  store i32 %198, i32* %203, align 4
  %204 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %205 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %204, i32 0, i32 3
  %206 = load i32*, i32** %205, align 8
  %207 = load i64, i64* @SCTP_EVENT_TIMEOUT_HEARTBEAT, align 8
  %208 = getelementptr inbounds i32, i32* %206, i64 %207
  store i32 0, i32* %208, align 4
  %209 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %210 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %213 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %212, i32 0, i32 3
  %214 = load i32*, i32** %213, align 8
  %215 = load i64, i64* @SCTP_EVENT_TIMEOUT_SACK, align 8
  %216 = getelementptr inbounds i32, i32* %214, i64 %215
  store i32 %211, i32* %216, align 4
  %217 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %218 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %217, i32 0, i32 6
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @HZ, align 8
  %221 = mul i64 %219, %220
  %222 = trunc i64 %221 to i32
  %223 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %224 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %223, i32 0, i32 3
  %225 = load i32*, i32** %224, align 8
  %226 = load i64, i64* @SCTP_EVENT_TIMEOUT_AUTOCLOSE, align 8
  %227 = getelementptr inbounds i32, i32* %225, i64 %226
  store i32 %222, i32* %227, align 4
  %228 = load i64, i64* @SCTP_EVENT_TIMEOUT_NONE, align 8
  %229 = trunc i64 %228 to i32
  store i32 %229, i32* %13, align 4
  br label %230

230:                                              ; preds = %249, %5
  %231 = load i32, i32* %13, align 4
  %232 = load i32, i32* @SCTP_NUM_TIMEOUT_TYPES, align 4
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %252

234:                                              ; preds = %230
  %235 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %236 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %235, i32 0, i32 44
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %13, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32*, i32** @sctp_timer_events, align 8
  %242 = load i32, i32* %13, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %247 = ptrtoint %struct.sctp_association* %246 to i64
  %248 = call i32 @setup_timer(i32* %240, i32 %245, i64 %247)
  br label %249

249:                                              ; preds = %234
  %250 = load i32, i32* %13, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %13, align 4
  br label %230

252:                                              ; preds = %230
  %253 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %254 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %253, i32 0, i32 7
  %255 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %258 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %257, i32 0, i32 8
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 10
  store i32 %256, i32* %259, align 8
  %260 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %261 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %260, i32 0, i32 7
  %262 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %265 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %264, i32 0, i32 8
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i32 0, i32 9
  store i32 %263, i32* %266, align 4
  %267 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %268 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %267, i32 0, i32 7
  %269 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %272 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %271, i32 0, i32 43
  store i32 %270, i32* %272, align 8
  %273 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %274 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %273, i32 0, i32 7
  %275 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = call i8* @msecs_to_jiffies(i32 %276)
  %278 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %279 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %278, i32 0, i32 42
  store i8* %277, i8** %279, align 8
  %280 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %281 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %280, i32 0, i32 41
  store i32* null, i32** %281, align 8
  %282 = load %struct.sock*, %struct.sock** %9, align 8
  %283 = getelementptr inbounds %struct.sock, %struct.sock* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = sdiv i32 %284, 2
  %286 = load i32, i32* @SCTP_DEFAULT_MINWINDOW, align 4
  %287 = icmp slt i32 %285, %286
  br i1 %287, label %288, label %292

288:                                              ; preds = %252
  %289 = load i32, i32* @SCTP_DEFAULT_MINWINDOW, align 4
  %290 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %291 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %290, i32 0, i32 4
  store i32 %289, i32* %291, align 8
  br label %299

292:                                              ; preds = %252
  %293 = load %struct.sock*, %struct.sock** %9, align 8
  %294 = getelementptr inbounds %struct.sock, %struct.sock* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = sdiv i32 %295, 2
  %297 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %298 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %297, i32 0, i32 4
  store i32 %296, i32* %298, align 8
  br label %299

299:                                              ; preds = %292, %288
  %300 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %301 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %300, i32 0, i32 4
  %302 = load i32, i32* %301, align 8
  %303 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %304 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %303, i32 0, i32 5
  store i32 %302, i32* %304, align 4
  %305 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %306 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %305, i32 0, i32 40
  store i64 0, i64* %306, align 8
  %307 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %308 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %307, i32 0, i32 39
  store i64 0, i64* %308, align 8
  %309 = load i32, i32* @SCTP_DEFAULT_MAXWINDOW, align 4
  %310 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %311 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %310, i32 0, i32 22
  %312 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %311, i32 0, i32 10
  store i32 %309, i32* %312, align 8
  %313 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %314 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %313, i32 0, i32 38
  store i64 0, i64* %314, align 8
  %315 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %316 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %315, i32 0, i32 37
  %317 = call i32 @atomic_set(i32* %316, i32 0)
  %318 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %319 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %318, i32 0, i32 36
  %320 = call i32 @init_waitqueue_head(i32* %319)
  %321 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %322 = call i32 @sctp_generate_tag(%struct.sctp_endpoint* %321)
  %323 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %324 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %323, i32 0, i32 8
  %325 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %324, i32 0, i32 8
  store i32 %322, i32* %325, align 8
  %326 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %327 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %326, i32 0, i32 22
  %328 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %327, i32 0, i32 9
  %329 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %328, i32 0, i32 0
  store i64 0, i64* %329, align 8
  %330 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %331 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %330, i32 0, i32 8
  %332 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %331, i32 0, i32 7
  store i64 0, i64* %332, align 8
  %333 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %334 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %333, i32 0, i32 8
  %335 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %334, i32 0, i32 6
  store i64 0, i64* %335, align 8
  %336 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %337 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %336, i32 0, i32 8
  %338 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %337, i32 0, i32 5
  store i64 0, i64* %338, align 8
  %339 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %340 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %339, i32 0, i32 3
  %341 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %345 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %344, i32 0, i32 8
  %346 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %345, i32 0, i32 4
  store i32 %343, i32* %346, align 8
  %347 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %348 = call i64 @sctp_generate_tsn(%struct.sctp_endpoint* %347)
  %349 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %350 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %349, i32 0, i32 8
  %351 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %350, i32 0, i32 3
  store i64 %348, i64* %351, align 8
  %352 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %353 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %352, i32 0, i32 8
  %354 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %353, i32 0, i32 3
  %355 = load i64, i64* %354, align 8
  %356 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %357 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %356, i32 0, i32 35
  store i64 %355, i64* %357, align 8
  %358 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %359 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %358, i32 0, i32 35
  %360 = load i64, i64* %359, align 8
  %361 = sub nsw i64 %360, 1
  %362 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %363 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %362, i32 0, i32 31
  store i64 %361, i64* %363, align 8
  %364 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %365 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %364, i32 0, i32 31
  %366 = load i64, i64* %365, align 8
  %367 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %368 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %367, i32 0, i32 34
  store i64 %366, i64* %368, align 8
  %369 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %370 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %369, i32 0, i32 31
  %371 = load i64, i64* %370, align 8
  %372 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %373 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %372, i32 0, i32 33
  store i64 %371, i64* %373, align 8
  %374 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %375 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %374, i32 0, i32 31
  %376 = load i64, i64* %375, align 8
  %377 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %378 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %377, i32 0, i32 32
  store i64 %376, i64* %378, align 8
  %379 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %380 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %379, i32 0, i32 30
  store i64 0, i64* %380, align 8
  %381 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %382 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %381, i32 0, i32 8
  %383 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %382, i32 0, i32 3
  %384 = load i64, i64* %383, align 8
  %385 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %386 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %385, i32 0, i32 29
  store i64 %384, i64* %386, align 8
  %387 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %388 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %387, i32 0, i32 28
  %389 = call i32 @INIT_LIST_HEAD(i32* %388)
  %390 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %391 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %390, i32 0, i32 27
  %392 = call i32 @INIT_LIST_HEAD(i32* %391)
  %393 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %394 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %393, i32 0, i32 22
  %395 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %394, i32 0, i32 8
  %396 = call i32 @INIT_LIST_HEAD(i32* %395)
  %397 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %398 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %397, i32 0, i32 22
  %399 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %398, i32 0, i32 7
  store i64 0, i64* %399, align 8
  %400 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %401 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %400, i32 0, i32 22
  %402 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %401, i32 0, i32 0
  store i32 1, i32* %402, align 8
  %403 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %404 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %403, i32 0, i32 22
  %405 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %404, i32 0, i32 6
  store i64 0, i64* %405, align 8
  %406 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %407 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %406, i32 0, i32 22
  %408 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %407, i32 0, i32 1
  store i32 1, i32* %408, align 4
  %409 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %410 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %409, i32 0, i32 22
  %411 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %410, i32 0, i32 2
  store i32 0, i32* %411, align 8
  %412 = load i64, i64* @sctp_addip_noauth, align 8
  %413 = icmp ne i64 %412, 0
  br i1 %413, label %414, label %418

414:                                              ; preds = %299
  %415 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %416 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %415, i32 0, i32 22
  %417 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %416, i32 0, i32 2
  store i32 1, i32* %417, align 8
  br label %418

418:                                              ; preds = %414, %299
  %419 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %420 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %419, i32 0, i32 6
  %421 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %420, i32 0, i32 1
  %422 = call i32 @sctp_inq_init(i32* %421)
  %423 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %424 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %423, i32 0, i32 6
  %425 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %424, i32 0, i32 1
  %426 = load i32, i32* @sctp_assoc_bh_rcv, align 4
  %427 = call i32 @sctp_inq_set_th_handler(i32* %425, i32 %426)
  %428 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %429 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %430 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %429, i32 0, i32 26
  %431 = call i32 @sctp_outq_init(%struct.sctp_association* %428, i32* %430)
  %432 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %433 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %432, i32 0, i32 25
  %434 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %435 = call i32 @sctp_ulpq_init(i32* %433, %struct.sctp_association* %434)
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %438, label %437

437:                                              ; preds = %418
  br label %584

438:                                              ; preds = %418
  %439 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %440 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %439, i32 0, i32 22
  %441 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %440, i32 0, i32 5
  %442 = call i32 @memset(i32* %441, i32 0, i32 4)
  %443 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %444 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %443, i32 0, i32 24
  store i64 0, i64* %444, align 8
  %445 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %446 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %445, i32 0, i32 23
  store i64 0, i64* %446, align 8
  %447 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %448 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %447, i32 0, i32 22
  %449 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %448, i32 0, i32 3
  store i32 1, i32* %449, align 4
  %450 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %451 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %450, i32 0, i32 6
  %452 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %451, i32 0, i32 0
  %453 = load %struct.sock*, %struct.sock** %452, align 8
  %454 = getelementptr inbounds %struct.sock, %struct.sock* %453, i32 0, i32 1
  %455 = load i64, i64* %454, align 8
  %456 = load i64, i64* @PF_INET6, align 8
  %457 = icmp eq i64 %455, %456
  br i1 %457, label %458, label %462

458:                                              ; preds = %438
  %459 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %460 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %459, i32 0, i32 22
  %461 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %460, i32 0, i32 4
  store i32 1, i32* %461, align 8
  br label %462

462:                                              ; preds = %458, %438
  %463 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %464 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %463, i32 0, i32 21
  %465 = call i32 @INIT_LIST_HEAD(i32* %464)
  %466 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %467 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %466, i32 0, i32 6
  %468 = load i64, i64* %467, align 8
  %469 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %470 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %469, i32 0, i32 20
  store i64 %468, i64* %470, align 8
  %471 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %472 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %471, i32 0, i32 5
  %473 = load i32, i32* %472, align 4
  %474 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %475 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %474, i32 0, i32 19
  store i32 %473, i32* %475, align 8
  %476 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %477 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %476, i32 0, i32 4
  %478 = load i32, i32* %477, align 8
  %479 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %480 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %479, i32 0, i32 18
  store i32 %478, i32* %480, align 4
  %481 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %482 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %481, i32 0, i32 3
  %483 = load i32, i32* %482, align 4
  %484 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %485 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %484, i32 0, i32 17
  store i32 %483, i32* %485, align 8
  %486 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %487 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %486, i32 0, i32 2
  %488 = load i32, i32* %487, align 8
  %489 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %490 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %489, i32 0, i32 16
  store i32 %488, i32* %490, align 4
  %491 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %492 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %491, i32 0, i32 1
  %493 = load i32, i32* %492, align 4
  %494 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %495 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %494, i32 0, i32 15
  store i32 %493, i32* %495, align 8
  %496 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %497 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %496, i32 0, i32 0
  %498 = load i32, i32* %497, align 8
  %499 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %500 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %499, i32 0, i32 14
  store i32 %498, i32* %500, align 4
  %501 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %502 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %501, i32 0, i32 13
  %503 = call i32 @memset(i32* %502, i32 0, i32 4)
  %504 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %505 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %504, i32 0, i32 12
  %506 = call i32 @INIT_LIST_HEAD(i32* %505)
  %507 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %508 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %509 = load i32, i32* %11, align 4
  %510 = call i32 @sctp_auth_asoc_copy_shkeys(%struct.sctp_endpoint* %507, %struct.sctp_association* %508, i32 %509)
  store i32 %510, i32* %15, align 4
  %511 = load i32, i32* %15, align 4
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %513, label %514

513:                                              ; preds = %462
  br label %584

514:                                              ; preds = %462
  %515 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %516 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %515, i32 0, i32 2
  %517 = load i32, i32* %516, align 8
  %518 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %519 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %518, i32 0, i32 11
  store i32 %517, i32* %519, align 8
  %520 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %521 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %520, i32 0, i32 10
  store i32* null, i32** %521, align 8
  %522 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %523 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %522, i32 0, i32 9
  store i64 0, i64* %523, align 8
  %524 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %525 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %524, i32 0, i32 1
  %526 = load %struct.TYPE_18__*, %struct.TYPE_18__** %525, align 8
  %527 = icmp ne %struct.TYPE_18__* %526, null
  br i1 %527, label %528, label %544

528:                                              ; preds = %514
  %529 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %530 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %529, i32 0, i32 8
  %531 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %530, i32 0, i32 2
  %532 = load i32, i32* %531, align 4
  %533 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %534 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %533, i32 0, i32 1
  %535 = load %struct.TYPE_18__*, %struct.TYPE_18__** %534, align 8
  %536 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %537 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %536, i32 0, i32 1
  %538 = load %struct.TYPE_18__*, %struct.TYPE_18__** %537, align 8
  %539 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %538, i32 0, i32 0
  %540 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %539, i32 0, i32 0
  %541 = load i32, i32* %540, align 4
  %542 = call i32 @ntohs(i32 %541)
  %543 = call i32 @memcpy(i32 %532, %struct.TYPE_18__* %535, i32 %542)
  br label %544

544:                                              ; preds = %528, %514
  %545 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %546 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %545, i32 0, i32 0
  %547 = load %struct.TYPE_18__*, %struct.TYPE_18__** %546, align 8
  %548 = icmp ne %struct.TYPE_18__* %547, null
  br i1 %548, label %549, label %565

549:                                              ; preds = %544
  %550 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %551 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %550, i32 0, i32 8
  %552 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %551, i32 0, i32 1
  %553 = load i32, i32* %552, align 8
  %554 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %555 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %554, i32 0, i32 0
  %556 = load %struct.TYPE_18__*, %struct.TYPE_18__** %555, align 8
  %557 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %558 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %557, i32 0, i32 0
  %559 = load %struct.TYPE_18__*, %struct.TYPE_18__** %558, align 8
  %560 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %559, i32 0, i32 0
  %561 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %560, i32 0, i32 0
  %562 = load i32, i32* %561, align 4
  %563 = call i32 @ntohs(i32 %562)
  %564 = call i32 @memcpy(i32 %553, %struct.TYPE_18__* %556, i32 %563)
  br label %565

565:                                              ; preds = %549, %544
  %566 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %567 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %566, i32 0, i32 8
  %568 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %567, i32 0, i32 0
  %569 = load i64, i64* %568, align 8
  %570 = inttoptr i64 %569 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %570, %struct.TYPE_17__** %14, align 8
  %571 = load i32, i32* @SCTP_PARAM_RANDOM, align 4
  %572 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %573 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %572, i32 0, i32 1
  store i32 %571, i32* %573, align 4
  %574 = load i64, i64* @SCTP_AUTH_RANDOM_LENGTH, align 8
  %575 = add i64 8, %574
  %576 = call i32 @htons(i64 %575)
  %577 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %578 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %577, i32 0, i32 0
  store i32 %576, i32* %578, align 4
  %579 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %580 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %579, i64 1
  %581 = load i64, i64* @SCTP_AUTH_RANDOM_LENGTH, align 8
  %582 = call i32 @get_random_bytes(%struct.TYPE_17__* %580, i64 %581)
  %583 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  store %struct.sctp_association* %583, %struct.sctp_association** %6, align 8
  br label %594

584:                                              ; preds = %513, %437
  %585 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %586 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %585, i32 0, i32 7
  %587 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %586, align 8
  %588 = call i32 @sctp_endpoint_put(%struct.sctp_endpoint* %587)
  %589 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %590 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %589, i32 0, i32 6
  %591 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %590, i32 0, i32 0
  %592 = load %struct.sock*, %struct.sock** %591, align 8
  %593 = call i32 @sock_put(%struct.sock* %592)
  store %struct.sctp_association* null, %struct.sctp_association** %6, align 8
  br label %594

594:                                              ; preds = %584, %565
  %595 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  ret %struct.sctp_association* %595
}

declare dso_local %struct.sctp_sock* @sctp_sk(%struct.sock*) #1

declare dso_local i32 @sctp_endpoint_hold(%struct.sctp_endpoint*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @sctp_bind_addr_init(i32*, i32) #1

declare dso_local i8* @msecs_to_jiffies(i32) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @sctp_generate_tag(%struct.sctp_endpoint*) #1

declare dso_local i64 @sctp_generate_tsn(%struct.sctp_endpoint*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @sctp_inq_init(i32*) #1

declare dso_local i32 @sctp_inq_set_th_handler(i32*, i32) #1

declare dso_local i32 @sctp_outq_init(%struct.sctp_association*, i32*) #1

declare dso_local i32 @sctp_ulpq_init(i32*, %struct.sctp_association*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @sctp_auth_asoc_copy_shkeys(%struct.sctp_endpoint*, %struct.sctp_association*, i32) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @get_random_bytes(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @sctp_endpoint_put(%struct.sctp_endpoint*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
