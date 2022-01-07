; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_send_restart_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_send_restart_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sctp_addr = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sctp_chunk = type { i32 }
%struct.sctp_packet = type { i32 }
%union.sctp_addr_param = type { i32 }
%struct.sctp_errhdr = type { i32, i32, i64 }
%struct.sctp_endpoint = type { i32 }
%struct.sctp_af = type { i32 (%union.sctp_addr*, %union.sctp_addr_param*)* }
%struct.TYPE_4__ = type { %struct.sctp_endpoint* }

@SCTP_ERROR_RESTART = common dso_local global i32 0, align 4
@SCTP_CMD_SEND_PKT = common dso_local global i32 0, align 4
@SCTP_MIB_OUTCTRLCHUNKS = common dso_local global i32 0, align 4
@SCTP_CMD_DISCARD_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.sctp_addr*, %struct.sctp_chunk*, i32*)* @sctp_sf_send_restart_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_sf_send_restart_abort(%union.sctp_addr* %0, %struct.sctp_chunk* %1, i32* %2) #0 {
  %4 = alloca %union.sctp_addr*, align 8
  %5 = alloca %struct.sctp_chunk*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sctp_packet*, align 8
  %9 = alloca %union.sctp_addr_param*, align 8
  %10 = alloca %struct.sctp_errhdr*, align 8
  %11 = alloca %struct.sctp_endpoint*, align 8
  %12 = alloca [20 x i8], align 16
  %13 = alloca %struct.sctp_af*, align 8
  store %union.sctp_addr* %0, %union.sctp_addr** %4, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %15 = bitcast %union.sctp_addr* %14 to %struct.TYPE_3__*
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.sctp_af* @sctp_get_af_specific(i32 %17)
  store %struct.sctp_af* %18, %struct.sctp_af** %13, align 8
  %19 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %20 = bitcast i8* %19 to %struct.sctp_errhdr*
  store %struct.sctp_errhdr* %20, %struct.sctp_errhdr** %10, align 8
  %21 = load %struct.sctp_errhdr*, %struct.sctp_errhdr** %10, align 8
  %22 = getelementptr inbounds %struct.sctp_errhdr, %struct.sctp_errhdr* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %union.sctp_addr_param*
  store %union.sctp_addr_param* %24, %union.sctp_addr_param** %9, align 8
  %25 = load %struct.sctp_af*, %struct.sctp_af** %13, align 8
  %26 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %25, i32 0, i32 0
  %27 = load i32 (%union.sctp_addr*, %union.sctp_addr_param*)*, i32 (%union.sctp_addr*, %union.sctp_addr_param*)** %26, align 8
  %28 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %29 = load %union.sctp_addr_param*, %union.sctp_addr_param** %9, align 8
  %30 = call i32 %27(%union.sctp_addr* %28, %union.sctp_addr_param* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = add i64 %32, 4
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* @SCTP_ERROR_RESTART, align 4
  %36 = load %struct.sctp_errhdr*, %struct.sctp_errhdr** %10, align 8
  %37 = getelementptr inbounds %struct.sctp_errhdr, %struct.sctp_errhdr* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @htons(i32 %38)
  %40 = load %struct.sctp_errhdr*, %struct.sctp_errhdr** %10, align 8
  %41 = getelementptr inbounds %struct.sctp_errhdr, %struct.sctp_errhdr* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = call i32 (...) @sctp_get_ctl_sock()
  %43 = call %struct.TYPE_4__* @sctp_sk(i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %44, align 8
  store %struct.sctp_endpoint* %45, %struct.sctp_endpoint** %11, align 8
  %46 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %11, align 8
  %47 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %48 = load %struct.sctp_errhdr*, %struct.sctp_errhdr** %10, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call %struct.sctp_packet* @sctp_abort_pkt_new(%struct.sctp_endpoint* %46, i32* null, %struct.sctp_chunk* %47, %struct.sctp_errhdr* %48, i32 %49)
  store %struct.sctp_packet* %50, %struct.sctp_packet** %8, align 8
  %51 = load %struct.sctp_packet*, %struct.sctp_packet** %8, align 8
  %52 = icmp ne %struct.sctp_packet* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %3
  br label %66

54:                                               ; preds = %3
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* @SCTP_CMD_SEND_PKT, align 4
  %57 = load %struct.sctp_packet*, %struct.sctp_packet** %8, align 8
  %58 = call i32 @SCTP_PACKET(%struct.sctp_packet* %57)
  %59 = call i32 @sctp_add_cmd_sf(i32* %55, i32 %56, i32 %58)
  %60 = load i32, i32* @SCTP_MIB_OUTCTRLCHUNKS, align 4
  %61 = call i32 @SCTP_INC_STATS(i32 %60)
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* @SCTP_CMD_DISCARD_PACKET, align 4
  %64 = call i32 (...) @SCTP_NULL()
  %65 = call i32 @sctp_add_cmd_sf(i32* %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %54, %53
  ret i32 0
}

declare dso_local %struct.sctp_af* @sctp_get_af_specific(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local %struct.TYPE_4__* @sctp_sk(i32) #1

declare dso_local i32 @sctp_get_ctl_sock(...) #1

declare dso_local %struct.sctp_packet* @sctp_abort_pkt_new(%struct.sctp_endpoint*, i32*, %struct.sctp_chunk*, %struct.sctp_errhdr*, i32) #1

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_PACKET(%struct.sctp_packet*) #1

declare dso_local i32 @SCTP_INC_STATS(i32) #1

declare dso_local i32 @SCTP_NULL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
