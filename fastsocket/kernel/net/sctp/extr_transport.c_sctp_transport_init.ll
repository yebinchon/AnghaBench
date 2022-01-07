; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_transport.c_sctp_transport_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_transport.c_sctp_transport_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_transport = type { i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__, i32, i32, i32, i32, i32, i8*, i8*, i32, i64, i32, i32, %union.sctp_addr }
%struct.TYPE_5__ = type { i64, i32 }
%union.sctp_addr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@sctp_rto_initial = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@SPP_HB_DISABLE = common dso_local global i32 0, align 4
@SPP_PMTUD_ENABLE = common dso_local global i32 0, align 4
@SPP_SACKDELAY_ENABLE = common dso_local global i32 0, align 4
@sctp_max_retrans_path = common dso_local global i32 0, align 4
@sctp_pf_retrans = common dso_local global i32 0, align 4
@sctp_generate_t3_rtx_event = common dso_local global i32 0, align 4
@sctp_generate_heartbeat_event = common dso_local global i32 0, align 4
@sctp_generate_proto_unreach_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_transport* (%struct.sctp_transport*, %union.sctp_addr*, i32)* @sctp_transport_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_transport* @sctp_transport_init(%struct.sctp_transport* %0, %union.sctp_addr* %1, i32 %2) #0 {
  %4 = alloca %struct.sctp_transport*, align 8
  %5 = alloca %union.sctp_addr*, align 8
  %6 = alloca i32, align 4
  store %struct.sctp_transport* %0, %struct.sctp_transport** %4, align 8
  store %union.sctp_addr* %1, %union.sctp_addr** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %8 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %7, i32 0, i32 17
  %9 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %10 = bitcast %union.sctp_addr* %8 to i8*
  %11 = bitcast %union.sctp_addr* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 4 %11, i64 4, i1 false)
  %12 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %13 = bitcast %union.sctp_addr* %12 to %struct.TYPE_4__*
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @sctp_get_af_specific(i32 %15)
  %17 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %18 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %17, i32 0, i32 16
  store i32 %16, i32* %18, align 4
  %19 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %20 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %19, i32 0, i32 15
  %21 = call i32 @memset(i32* %20, i32 0, i32 4)
  %22 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %23 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %22, i32 0, i32 14
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @sctp_rto_initial, align 4
  %25 = call i32 @msecs_to_jiffies(i32 %24)
  %26 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %27 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %26, i32 0, i32 13
  store i32 %25, i32* %27, align 8
  %28 = load i8*, i8** @jiffies, align 8
  %29 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %30 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %29, i32 0, i32 12
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** @jiffies, align 8
  %32 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %33 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %32, i32 0, i32 11
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* @SPP_HB_DISABLE, align 4
  %35 = load i32, i32* @SPP_PMTUD_ENABLE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @SPP_SACKDELAY_ENABLE, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %40 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @sctp_max_retrans_path, align 4
  %42 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %43 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %42, i32 0, i32 10
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @sctp_pf_retrans, align 4
  %45 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %46 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %45, i32 0, i32 9
  store i32 %44, i32* %46, align 4
  %47 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %48 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %47, i32 0, i32 8
  %49 = call i32 @INIT_LIST_HEAD(i32* %48)
  %50 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %51 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %50, i32 0, i32 7
  %52 = call i32 @INIT_LIST_HEAD(i32* %51)
  %53 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %54 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %53, i32 0, i32 6
  %55 = call i32 @INIT_LIST_HEAD(i32* %54)
  %56 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %57 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %56, i32 0, i32 5
  %58 = load i32, i32* @sctp_generate_t3_rtx_event, align 4
  %59 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %60 = ptrtoint %struct.sctp_transport* %59 to i64
  %61 = call i32 @setup_timer(%struct.TYPE_5__* %57, i32 %58, i64 %60)
  %62 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %63 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %62, i32 0, i32 4
  %64 = load i32, i32* @sctp_generate_heartbeat_event, align 4
  %65 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %66 = ptrtoint %struct.sctp_transport* %65 to i64
  %67 = call i32 @setup_timer(%struct.TYPE_5__* %63, i32 %64, i64 %66)
  %68 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %69 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %68, i32 0, i32 3
  %70 = load i32, i32* @sctp_generate_proto_unreach_event, align 4
  %71 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %72 = ptrtoint %struct.sctp_transport* %71 to i64
  %73 = call i32 @setup_timer(%struct.TYPE_5__* %69, i32 %70, i64 %72)
  %74 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %75 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %74, i32 0, i32 3
  %76 = call i32 @init_timer(%struct.TYPE_5__* %75)
  %77 = load i32, i32* @sctp_generate_proto_unreach_event, align 4
  %78 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %79 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 8
  %81 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %82 = ptrtoint %struct.sctp_transport* %81 to i64
  %83 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %84 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  store i64 %82, i64* %85, align 8
  %86 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %87 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %86, i32 0, i32 2
  %88 = call i32 @get_random_bytes(i32* %87, i32 4)
  %89 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %90 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %89, i32 0, i32 1
  %91 = call i32 @atomic_set(i32* %90, i32 1)
  %92 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  ret %struct.sctp_transport* %92
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @sctp_get_af_specific(i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @msecs_to_jiffies(i32) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

declare dso_local i32 @setup_timer(%struct.TYPE_5__*, i32, i64) #2

declare dso_local i32 @init_timer(%struct.TYPE_5__*) #2

declare dso_local i32 @get_random_bytes(i32*, i32) #2

declare dso_local i32 @atomic_set(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
