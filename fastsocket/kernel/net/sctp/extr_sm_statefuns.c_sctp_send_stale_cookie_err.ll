; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_send_stale_cookie_err.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_send_stale_cookie_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_chunk = type { %struct.TYPE_6__*, %struct.TYPE_8__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.sctp_signed_cookie* }
%struct.sctp_signed_cookie = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sctp_packet = type { i32 }

@SCTP_CMD_SEND_PKT = common dso_local global i32 0, align 4
@SCTP_MIB_OUTCTRLCHUNKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_endpoint*, %struct.sctp_association*, %struct.sctp_chunk*, i32*, %struct.sctp_chunk*)* @sctp_send_stale_cookie_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_send_stale_cookie_err(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, %struct.sctp_chunk* %2, i32* %3, %struct.sctp_chunk* %4) #0 {
  %6 = alloca %struct.sctp_endpoint*, align 8
  %7 = alloca %struct.sctp_association*, align 8
  %8 = alloca %struct.sctp_chunk*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.sctp_chunk*, align 8
  %11 = alloca %struct.sctp_packet*, align 8
  %12 = alloca %struct.sctp_signed_cookie*, align 8
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %6, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %7, align 8
  store %struct.sctp_chunk* %2, %struct.sctp_chunk** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.sctp_chunk* %4, %struct.sctp_chunk** %10, align 8
  %13 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %14 = icmp ne %struct.sctp_chunk* %13, null
  br i1 %14, label %15, label %54

15:                                               ; preds = %5
  %16 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %17 = load %struct.sctp_chunk*, %struct.sctp_chunk** %8, align 8
  %18 = call %struct.sctp_packet* @sctp_ootb_pkt_new(%struct.sctp_association* %16, %struct.sctp_chunk* %17)
  store %struct.sctp_packet* %18, %struct.sctp_packet** %11, align 8
  %19 = load %struct.sctp_packet*, %struct.sctp_packet** %11, align 8
  %20 = icmp ne %struct.sctp_packet* %19, null
  br i1 %20, label %21, label %50

21:                                               ; preds = %15
  %22 = load %struct.sctp_chunk*, %struct.sctp_chunk** %8, align 8
  %23 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.sctp_signed_cookie*, %struct.sctp_signed_cookie** %24, align 8
  store %struct.sctp_signed_cookie* %25, %struct.sctp_signed_cookie** %12, align 8
  %26 = load %struct.sctp_signed_cookie*, %struct.sctp_signed_cookie** %12, align 8
  %27 = getelementptr inbounds %struct.sctp_signed_cookie, %struct.sctp_signed_cookie* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sctp_packet*, %struct.sctp_packet** %11, align 8
  %31 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %6, align 8
  %33 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %37 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32 %35, i32* %39, align 4
  %40 = load %struct.sctp_packet*, %struct.sctp_packet** %11, align 8
  %41 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %42 = call i32 @sctp_packet_append_chunk(%struct.sctp_packet* %40, %struct.sctp_chunk* %41)
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* @SCTP_CMD_SEND_PKT, align 4
  %45 = load %struct.sctp_packet*, %struct.sctp_packet** %11, align 8
  %46 = call i32 @SCTP_PACKET(%struct.sctp_packet* %45)
  %47 = call i32 @sctp_add_cmd_sf(i32* %43, i32 %44, i32 %46)
  %48 = load i32, i32* @SCTP_MIB_OUTCTRLCHUNKS, align 4
  %49 = call i32 @SCTP_INC_STATS(i32 %48)
  br label %53

50:                                               ; preds = %15
  %51 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %52 = call i32 @sctp_chunk_free(%struct.sctp_chunk* %51)
  br label %53

53:                                               ; preds = %50, %21
  br label %54

54:                                               ; preds = %53, %5
  ret void
}

declare dso_local %struct.sctp_packet* @sctp_ootb_pkt_new(%struct.sctp_association*, %struct.sctp_chunk*) #1

declare dso_local i32 @sctp_packet_append_chunk(%struct.sctp_packet*, %struct.sctp_chunk*) #1

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_PACKET(%struct.sctp_packet*) #1

declare dso_local i32 @SCTP_INC_STATS(i32) #1

declare dso_local i32 @sctp_chunk_free(%struct.sctp_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
