; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_qmi.c_qmi_request_wds_cid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_qmi.c_qmi_request_wds_cid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qmi_ctxt = type { i32 }
%struct.qmi_msg = type { i32, i32, i8*, i64, i32, i32 }

@QMUX_OVERHEAD = common dso_local global i32 0, align 4
@QMI_CTL = common dso_local global i32 0, align 4
@qmi_ctl_client_id = common dso_local global i32 0, align 4
@QMUX_HEADER = common dso_local global i32 0, align 4
@QMI_WDS = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qmi_ctxt*)* @qmi_request_wds_cid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qmi_request_wds_cid(%struct.qmi_ctxt* %0) #0 {
  %2 = alloca %struct.qmi_ctxt*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.qmi_msg, align 8
  %6 = alloca i8, align 1
  store %struct.qmi_ctxt* %0, %struct.qmi_ctxt** %2, align 8
  %7 = load i32, i32* @QMUX_OVERHEAD, align 4
  %8 = add nsw i32 64, %7
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = load i32, i32* @QMI_CTL, align 4
  %13 = getelementptr inbounds %struct.qmi_msg, %struct.qmi_msg* %5, i32 0, i32 5
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @qmi_ctl_client_id, align 4
  %15 = getelementptr inbounds %struct.qmi_msg, %struct.qmi_msg* %5, i32 0, i32 4
  store i32 %14, i32* %15, align 8
  %16 = load %struct.qmi_ctxt*, %struct.qmi_ctxt** %2, align 8
  %17 = getelementptr inbounds %struct.qmi_ctxt, %struct.qmi_ctxt* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.qmi_msg, %struct.qmi_msg* %5, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.qmi_msg, %struct.qmi_msg* %5, i32 0, i32 1
  store i32 34, i32* %20, align 4
  %21 = getelementptr inbounds %struct.qmi_msg, %struct.qmi_msg* %5, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* @QMUX_HEADER, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %11, i64 %23
  %25 = getelementptr inbounds %struct.qmi_msg, %struct.qmi_msg* %5, i32 0, i32 2
  store i8* %24, i8** %25, align 8
  %26 = load %struct.qmi_ctxt*, %struct.qmi_ctxt** %2, align 8
  %27 = getelementptr inbounds %struct.qmi_ctxt, %struct.qmi_ctxt* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 2
  store i32 %29, i32* %27, align 4
  %30 = load i8, i8* @QMI_WDS, align 1
  store i8 %30, i8* %6, align 1
  %31 = call i32 @qmi_add_tlv(%struct.qmi_msg* %5, i32 1, i32 1, i8* %6)
  %32 = load %struct.qmi_ctxt*, %struct.qmi_ctxt** %2, align 8
  %33 = call i32 @qmi_send(%struct.qmi_ctxt* %32, %struct.qmi_msg* %5)
  %34 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %34)
  ret i32 %33
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @qmi_add_tlv(%struct.qmi_msg*, i32, i32, i8*) #2

declare dso_local i32 @qmi_send(%struct.qmi_ctxt*, %struct.qmi_msg*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
