; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_outqueue.c_sctp_retransmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_outqueue.c_sctp_retransmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_outq = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.sctp_transport = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.sctp_transport* }

@SCTP_MIB_T3_RETRANSMITS = common dso_local global i32 0, align 4
@SCTP_LOWER_CWND_T3_RTX = common dso_local global i32 0, align 4
@SCTP_MIB_FAST_RETRANSMITS = common dso_local global i32 0, align 4
@SCTP_LOWER_CWND_FAST_RTX = common dso_local global i32 0, align 4
@SCTP_MIB_PMTUD_RETRANSMITS = common dso_local global i32 0, align 4
@SCTP_MIB_T1_RETRANSMITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_retransmit(%struct.sctp_outq* %0, %struct.sctp_transport* %1, i32 %2) #0 {
  %4 = alloca %struct.sctp_outq*, align 8
  %5 = alloca %struct.sctp_transport*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sctp_outq* %0, %struct.sctp_outq** %4, align 8
  store %struct.sctp_transport* %1, %struct.sctp_transport** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %60 [
    i32 128, label %9
    i32 131, label %40
    i32 130, label %48
    i32 129, label %51
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* @SCTP_MIB_T3_RETRANSMITS, align 4
  %11 = call i32 @SCTP_INC_STATS(i32 %10)
  %12 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %13 = load i32, i32* @SCTP_LOWER_CWND_T3_RTX, align 4
  %14 = call i32 @sctp_transport_lower_cwnd(%struct.sctp_transport* %12, i32 %13)
  %15 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %16 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %17 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.sctp_transport*, %struct.sctp_transport** %20, align 8
  %22 = icmp eq %struct.sctp_transport* %15, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %9
  %24 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %25 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %24, i32 0, i32 0
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = call i32 @sctp_assoc_update_retran_path(%struct.TYPE_10__* %26)
  br label %28

28:                                               ; preds = %23, %9
  %29 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %30 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %29, i32 0, i32 0
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %35 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %34, i32 0, i32 0
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, %33
  store i32 %39, i32* %37, align 8
  br label %62

40:                                               ; preds = %3
  %41 = load i32, i32* @SCTP_MIB_FAST_RETRANSMITS, align 4
  %42 = call i32 @SCTP_INC_STATS(i32 %41)
  %43 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %44 = load i32, i32* @SCTP_LOWER_CWND_FAST_RTX, align 4
  %45 = call i32 @sctp_transport_lower_cwnd(%struct.sctp_transport* %43, i32 %44)
  %46 = load %struct.sctp_outq*, %struct.sctp_outq** %4, align 8
  %47 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  br label %62

48:                                               ; preds = %3
  %49 = load i32, i32* @SCTP_MIB_PMTUD_RETRANSMITS, align 4
  %50 = call i32 @SCTP_INC_STATS(i32 %49)
  br label %62

51:                                               ; preds = %3
  %52 = load i32, i32* @SCTP_MIB_T1_RETRANSMITS, align 4
  %53 = call i32 @SCTP_INC_STATS(i32 %52)
  %54 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %55 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %54, i32 0, i32 0
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  br label %62

60:                                               ; preds = %3
  %61 = call i32 (...) @BUG()
  br label %62

62:                                               ; preds = %60, %51, %48, %40, %28
  %63 = load %struct.sctp_outq*, %struct.sctp_outq** %4, align 8
  %64 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @sctp_retransmit_mark(%struct.sctp_outq* %63, %struct.sctp_transport* %64, i32 %65)
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %67, 128
  br i1 %68, label %69, label %77

69:                                               ; preds = %62
  %70 = load %struct.sctp_outq*, %struct.sctp_outq** %4, align 8
  %71 = load %struct.sctp_outq*, %struct.sctp_outq** %4, align 8
  %72 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %71, i32 0, i32 1
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @sctp_generate_fwdtsn(%struct.sctp_outq* %70, i32 %75)
  br label %77

77:                                               ; preds = %69, %62
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 131
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load %struct.sctp_outq*, %struct.sctp_outq** %4, align 8
  %82 = call i32 @sctp_outq_flush(%struct.sctp_outq* %81, i32 1)
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = load i32, i32* %7, align 4
  %88 = sub nsw i32 0, %87
  %89 = load %struct.sctp_outq*, %struct.sctp_outq** %4, align 8
  %90 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %89, i32 0, i32 1
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  store i32 %88, i32* %95, align 4
  br label %96

96:                                               ; preds = %86, %83
  ret void
}

declare dso_local i32 @SCTP_INC_STATS(i32) #1

declare dso_local i32 @sctp_transport_lower_cwnd(%struct.sctp_transport*, i32) #1

declare dso_local i32 @sctp_assoc_update_retran_path(%struct.TYPE_10__*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @sctp_retransmit_mark(%struct.sctp_outq*, %struct.sctp_transport*, i32) #1

declare dso_local i32 @sctp_generate_fwdtsn(%struct.sctp_outq*, i32) #1

declare dso_local i32 @sctp_outq_flush(%struct.sctp_outq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
