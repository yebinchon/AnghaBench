; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_ootb_pkt_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_ootb_pkt_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_packet = type { i32 }
%struct.sctp_association = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.sctp_chunk = type { i32, %struct.TYPE_14__*, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.sctp_transport = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%union.sctp_addr = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_packet* (%struct.sctp_association*, %struct.sctp_chunk*)* @sctp_ootb_pkt_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_packet* @sctp_ootb_pkt_new(%struct.sctp_association* %0, %struct.sctp_chunk* %1) #0 {
  %3 = alloca %struct.sctp_packet*, align 8
  %4 = alloca %struct.sctp_association*, align 8
  %5 = alloca %struct.sctp_chunk*, align 8
  %6 = alloca %struct.sctp_packet*, align 8
  %7 = alloca %struct.sctp_transport*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %4, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %5, align 8
  %13 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %14 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %13, i32 0, i32 1
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ntohs(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %20 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %19, i32 0, i32 1
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ntohs(i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %26 = icmp ne %struct.sctp_association* %25, null
  br i1 %26, label %27, label %50

27:                                               ; preds = %2
  %28 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %29 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %28, i32 0, i32 2
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %43 [
    i32 128, label %33
  ]

33:                                               ; preds = %27
  %34 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %35 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %34, i32 0, i32 2
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = bitcast %struct.TYPE_12__* %36 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %37, %struct.TYPE_15__** %11, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ntohl(i32 %41)
  store i32 %42, i32* %10, align 4
  br label %49

43:                                               ; preds = %27
  %44 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %45 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %43, %33
  br label %74

50:                                               ; preds = %2
  %51 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %52 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %51, i32 0, i32 2
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %66 [
    i32 129, label %56
  ]

56:                                               ; preds = %50
  %57 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %58 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %57, i32 0, i32 2
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = bitcast %struct.TYPE_12__* %59 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %60, %struct.TYPE_16__** %12, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ntohl(i32 %64)
  store i32 %65, i32* %10, align 4
  br label %73

66:                                               ; preds = %50
  %67 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %68 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %67, i32 0, i32 1
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ntohl(i32 %71)
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %66, %56
  br label %74

74:                                               ; preds = %73, %49
  %75 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %76 = call i32 @sctp_source(%struct.sctp_chunk* %75)
  %77 = load i32, i32* @GFP_ATOMIC, align 4
  %78 = call %struct.sctp_transport* @sctp_transport_new(i32 %76, i32 %77)
  store %struct.sctp_transport* %78, %struct.sctp_transport** %7, align 8
  %79 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %80 = icmp ne %struct.sctp_transport* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %74
  br label %100

82:                                               ; preds = %74
  %83 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %84 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %85 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %84, i32 0, i32 0
  %86 = bitcast i32* %85 to %union.sctp_addr*
  %87 = call i32 (...) @sctp_get_ctl_sock()
  %88 = call i32 @sctp_sk(i32 %87)
  %89 = call i32 @sctp_transport_route(%struct.sctp_transport* %83, %union.sctp_addr* %86, i32 %88)
  %90 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %91 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %90, i32 0, i32 0
  %92 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call %struct.sctp_packet* @sctp_packet_init(i32* %91, %struct.sctp_transport* %92, i32 %93, i32 %94)
  store %struct.sctp_packet* %95, %struct.sctp_packet** %6, align 8
  %96 = load %struct.sctp_packet*, %struct.sctp_packet** %6, align 8
  %97 = load i32, i32* %10, align 4
  %98 = call %struct.sctp_packet* @sctp_packet_config(%struct.sctp_packet* %96, i32 %97, i32 0)
  store %struct.sctp_packet* %98, %struct.sctp_packet** %6, align 8
  %99 = load %struct.sctp_packet*, %struct.sctp_packet** %6, align 8
  store %struct.sctp_packet* %99, %struct.sctp_packet** %3, align 8
  br label %101

100:                                              ; preds = %81
  store %struct.sctp_packet* null, %struct.sctp_packet** %3, align 8
  br label %101

101:                                              ; preds = %100, %82
  %102 = load %struct.sctp_packet*, %struct.sctp_packet** %3, align 8
  ret %struct.sctp_packet* %102
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local %struct.sctp_transport* @sctp_transport_new(i32, i32) #1

declare dso_local i32 @sctp_source(%struct.sctp_chunk*) #1

declare dso_local i32 @sctp_transport_route(%struct.sctp_transport*, %union.sctp_addr*, i32) #1

declare dso_local i32 @sctp_sk(i32) #1

declare dso_local i32 @sctp_get_ctl_sock(...) #1

declare dso_local %struct.sctp_packet* @sctp_packet_init(i32*, %struct.sctp_transport*, i32, i32) #1

declare dso_local %struct.sctp_packet* @sctp_packet_config(%struct.sctp_packet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
