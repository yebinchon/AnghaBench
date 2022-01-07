; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_tabort_8_4_8.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_tabort_8_4_8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_packet = type { i32 }
%struct.sctp_chunk = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@SCTP_DISPOSITION_NOMEM = common dso_local global i32 0, align 4
@SCTP_CMD_SEND_PKT = common dso_local global i32 0, align 4
@SCTP_MIB_OUTCTRLCHUNKS = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*)* @sctp_sf_tabort_8_4_8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_sf_tabort_8_4_8(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_endpoint*, align 8
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.sctp_packet*, align 8
  %13 = alloca %struct.sctp_chunk*, align 8
  %14 = alloca %struct.sctp_chunk*, align 8
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %7, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.sctp_packet* null, %struct.sctp_packet** %12, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = bitcast i8* %15 to %struct.sctp_chunk*
  store %struct.sctp_chunk* %16, %struct.sctp_chunk** %13, align 8
  %17 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %18 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %19 = call %struct.sctp_packet* @sctp_ootb_pkt_new(%struct.sctp_association* %17, %struct.sctp_chunk* %18)
  store %struct.sctp_packet* %19, %struct.sctp_packet** %12, align 8
  %20 = load %struct.sctp_packet*, %struct.sctp_packet** %12, align 8
  %21 = icmp ne %struct.sctp_packet* %20, null
  br i1 %21, label %22, label %71

22:                                               ; preds = %5
  %23 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %24 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %25 = call %struct.sctp_chunk* @sctp_make_abort(%struct.sctp_association* %23, %struct.sctp_chunk* %24, i32 0)
  store %struct.sctp_chunk* %25, %struct.sctp_chunk** %14, align 8
  %26 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %27 = icmp ne %struct.sctp_chunk* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = load %struct.sctp_packet*, %struct.sctp_packet** %12, align 8
  %30 = call i32 @sctp_ootb_pkt_free(%struct.sctp_packet* %29)
  %31 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %31, i32* %6, align 4
  br label %73

32:                                               ; preds = %22
  %33 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %34 = call i64 @sctp_test_T_bit(%struct.sctp_chunk* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %38 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ntohl(i32 %41)
  %43 = load %struct.sctp_packet*, %struct.sctp_packet** %12, align 8
  %44 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %36, %32
  %46 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %47 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %51 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 4
  %54 = load %struct.sctp_packet*, %struct.sctp_packet** %12, align 8
  %55 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %56 = call i32 @sctp_packet_append_chunk(%struct.sctp_packet* %54, %struct.sctp_chunk* %55)
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* @SCTP_CMD_SEND_PKT, align 4
  %59 = load %struct.sctp_packet*, %struct.sctp_packet** %12, align 8
  %60 = call i32 @SCTP_PACKET(%struct.sctp_packet* %59)
  %61 = call i32 @sctp_add_cmd_sf(i32* %57, i32 %58, i32 %60)
  %62 = load i32, i32* @SCTP_MIB_OUTCTRLCHUNKS, align 4
  %63 = call i32 @SCTP_INC_STATS(i32 %62)
  %64 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %65 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i8*, i8** %10, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = call i32 @sctp_sf_pdiscard(%struct.sctp_endpoint* %64, %struct.sctp_association* %65, i32 %66, i8* %67, i32* %68)
  %70 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %70, i32* %6, align 4
  br label %73

71:                                               ; preds = %5
  %72 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %71, %45, %28
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local %struct.sctp_packet* @sctp_ootb_pkt_new(%struct.sctp_association*, %struct.sctp_chunk*) #1

declare dso_local %struct.sctp_chunk* @sctp_make_abort(%struct.sctp_association*, %struct.sctp_chunk*, i32) #1

declare dso_local i32 @sctp_ootb_pkt_free(%struct.sctp_packet*) #1

declare dso_local i64 @sctp_test_T_bit(%struct.sctp_chunk*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @sctp_packet_append_chunk(%struct.sctp_packet*, %struct.sctp_chunk*) #1

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_PACKET(%struct.sctp_packet*) #1

declare dso_local i32 @SCTP_INC_STATS(i32) #1

declare dso_local i32 @sctp_sf_pdiscard(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
