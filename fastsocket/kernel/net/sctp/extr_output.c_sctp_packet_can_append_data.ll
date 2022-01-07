; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_output.c_sctp_packet_can_append_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_output.c_sctp_packet_can_append_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_packet = type { i32, %struct.sctp_transport* }
%struct.sctp_transport = type { i64, i64, i32, %struct.sctp_association* }
%struct.sctp_association = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.sctp_outq }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.sctp_outq = type { i64, i32 }
%struct.sctp_chunk = type { i64, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@SCTP_XMIT_OK = common dso_local global i32 0, align 4
@SCTP_XMIT_RWND_FULL = common dso_local global i32 0, align 4
@SCTP_NEED_FRTX = common dso_local global i64 0, align 8
@ESTABLISHED = common dso_local global i32 0, align 4
@SCTP_XMIT_NAGLE_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_packet*, %struct.sctp_chunk*)* @sctp_packet_can_append_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_packet_can_append_data(%struct.sctp_packet* %0, %struct.sctp_chunk* %1) #0 {
  %3 = alloca %struct.sctp_packet*, align 8
  %4 = alloca %struct.sctp_chunk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sctp_transport*, align 8
  %11 = alloca %struct.sctp_association*, align 8
  %12 = alloca %struct.sctp_outq*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sctp_packet* %0, %struct.sctp_packet** %3, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %4, align 8
  %15 = load i32, i32* @SCTP_XMIT_OK, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.sctp_packet*, %struct.sctp_packet** %3, align 8
  %17 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %16, i32 0, i32 1
  %18 = load %struct.sctp_transport*, %struct.sctp_transport** %17, align 8
  store %struct.sctp_transport* %18, %struct.sctp_transport** %10, align 8
  %19 = load %struct.sctp_transport*, %struct.sctp_transport** %10, align 8
  %20 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %19, i32 0, i32 3
  %21 = load %struct.sctp_association*, %struct.sctp_association** %20, align 8
  store %struct.sctp_association* %21, %struct.sctp_association** %11, align 8
  %22 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %23 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %22, i32 0, i32 2
  store %struct.sctp_outq* %23, %struct.sctp_outq** %12, align 8
  %24 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %25 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %7, align 8
  %28 = load %struct.sctp_outq*, %struct.sctp_outq** %12, align 8
  %29 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %8, align 8
  %31 = load %struct.sctp_transport*, %struct.sctp_transport** %10, align 8
  %32 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %9, align 8
  %34 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %35 = call i64 @sctp_data_size(%struct.sctp_chunk* %34)
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %2
  %40 = load i64, i64* %8, align 8
  %41 = icmp ugt i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @SCTP_XMIT_RWND_FULL, align 4
  store i32 %43, i32* %5, align 4
  br label %112

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %44, %2
  %46 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %47 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SCTP_NEED_FRTX, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = load i64, i64* %9, align 8
  %53 = load %struct.sctp_transport*, %struct.sctp_transport** %10, align 8
  %54 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp uge i64 %52, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @SCTP_XMIT_RWND_FULL, align 4
  store i32 %58, i32* %5, align 4
  br label %112

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %45
  %61 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %62 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call %struct.TYPE_10__* @sctp_sk(i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %111, label %69

69:                                               ; preds = %60
  %70 = load %struct.sctp_packet*, %struct.sctp_packet** %3, align 8
  %71 = call i64 @sctp_packet_empty(%struct.sctp_packet* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %111

73:                                               ; preds = %69
  %74 = load i64, i64* %8, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %111

76:                                               ; preds = %73
  %77 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %78 = load i32, i32* @ESTABLISHED, align 4
  %79 = call i64 @sctp_state(%struct.sctp_association* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %111

81:                                               ; preds = %76
  %82 = load %struct.sctp_transport*, %struct.sctp_transport** %10, align 8
  %83 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.sctp_packet*, %struct.sctp_packet** %3, align 8
  %86 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sub i32 %84, %87
  store i32 %88, i32* %13, align 4
  %89 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %90 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %89, i32 0, i32 2
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.sctp_outq*, %struct.sctp_outq** %12, align 8
  %95 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = add i32 %93, %96
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp ult i32 %98, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %81
  %102 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %103 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %102, i32 0, i32 1
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %101
  %109 = load i32, i32* @SCTP_XMIT_NAGLE_DELAY, align 4
  store i32 %109, i32* %5, align 4
  br label %112

110:                                              ; preds = %101, %81
  br label %111

111:                                              ; preds = %110, %76, %73, %69, %60
  br label %112

112:                                              ; preds = %111, %108, %57, %42
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i64 @sctp_data_size(%struct.sctp_chunk*) #1

declare dso_local %struct.TYPE_10__* @sctp_sk(i32) #1

declare dso_local i64 @sctp_packet_empty(%struct.sctp_packet*) #1

declare dso_local i64 @sctp_state(%struct.sctp_association*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
