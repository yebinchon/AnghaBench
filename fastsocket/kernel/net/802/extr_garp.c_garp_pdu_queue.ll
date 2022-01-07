; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/802/extr_garp.c_garp_pdu_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/802/extr_garp.c_garp_pdu_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.garp_applicant = type { i32*, i32, %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@LLC_PDU_TYPE_U = common dso_local global i32 0, align 4
@LLC_SAP_BSPAN = common dso_local global i32 0, align 4
@LLC_PDU_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.garp_applicant*)* @garp_pdu_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @garp_pdu_queue(%struct.garp_applicant* %0) #0 {
  %2 = alloca %struct.garp_applicant*, align 8
  store %struct.garp_applicant* %0, %struct.garp_applicant** %2, align 8
  %3 = load %struct.garp_applicant*, %struct.garp_applicant** %2, align 8
  %4 = getelementptr inbounds %struct.garp_applicant, %struct.garp_applicant* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %48

8:                                                ; preds = %1
  %9 = load %struct.garp_applicant*, %struct.garp_applicant** %2, align 8
  %10 = call i32 @garp_pdu_append_end_mark(%struct.garp_applicant* %9)
  %11 = load %struct.garp_applicant*, %struct.garp_applicant** %2, align 8
  %12 = call i32 @garp_pdu_append_end_mark(%struct.garp_applicant* %11)
  %13 = load %struct.garp_applicant*, %struct.garp_applicant** %2, align 8
  %14 = getelementptr inbounds %struct.garp_applicant, %struct.garp_applicant* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* @LLC_PDU_TYPE_U, align 4
  %17 = load i32, i32* @LLC_SAP_BSPAN, align 4
  %18 = load i32, i32* @LLC_SAP_BSPAN, align 4
  %19 = load i32, i32* @LLC_PDU_CMD, align 4
  %20 = call i32 @llc_pdu_header_init(i32* %15, i32 %16, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.garp_applicant*, %struct.garp_applicant** %2, align 8
  %22 = getelementptr inbounds %struct.garp_applicant, %struct.garp_applicant* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @llc_pdu_init_as_ui_cmd(i32* %23)
  %25 = load %struct.garp_applicant*, %struct.garp_applicant** %2, align 8
  %26 = getelementptr inbounds %struct.garp_applicant, %struct.garp_applicant* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.garp_applicant*, %struct.garp_applicant** %2, align 8
  %29 = getelementptr inbounds %struct.garp_applicant, %struct.garp_applicant* %28, i32 0, i32 3
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.garp_applicant*, %struct.garp_applicant** %2, align 8
  %34 = getelementptr inbounds %struct.garp_applicant, %struct.garp_applicant* %33, i32 0, i32 2
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @llc_mac_hdr_init(i32* %27, i32 %32, i32 %38)
  %40 = load %struct.garp_applicant*, %struct.garp_applicant** %2, align 8
  %41 = getelementptr inbounds %struct.garp_applicant, %struct.garp_applicant* %40, i32 0, i32 1
  %42 = load %struct.garp_applicant*, %struct.garp_applicant** %2, align 8
  %43 = getelementptr inbounds %struct.garp_applicant, %struct.garp_applicant* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @skb_queue_tail(i32* %41, i32* %44)
  %46 = load %struct.garp_applicant*, %struct.garp_applicant** %2, align 8
  %47 = getelementptr inbounds %struct.garp_applicant, %struct.garp_applicant* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @garp_pdu_append_end_mark(%struct.garp_applicant*) #1

declare dso_local i32 @llc_pdu_header_init(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @llc_pdu_init_as_ui_cmd(i32*) #1

declare dso_local i32 @llc_mac_hdr_init(i32*, i32, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
