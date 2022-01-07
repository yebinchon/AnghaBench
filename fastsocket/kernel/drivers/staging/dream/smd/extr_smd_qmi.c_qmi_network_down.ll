; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_qmi.c_qmi_network_down.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_qmi.c_qmi_network_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qmi_ctxt = type { i32, i32, i32 }
%struct.qmi_msg = type { i32, i32, i8*, i64, i32, i32 }

@QMUX_OVERHEAD = common dso_local global i32 0, align 4
@QMI_WDS = common dso_local global i32 0, align 4
@QMUX_HEADER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qmi_ctxt*)* @qmi_network_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qmi_network_down(%struct.qmi_ctxt* %0) #0 {
  %2 = alloca %struct.qmi_ctxt*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.qmi_msg, align 8
  store %struct.qmi_ctxt* %0, %struct.qmi_ctxt** %2, align 8
  %6 = load i32, i32* @QMUX_OVERHEAD, align 4
  %7 = add nsw i32 16, %6
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = load i32, i32* @QMI_WDS, align 4
  %12 = getelementptr inbounds %struct.qmi_msg, %struct.qmi_msg* %5, i32 0, i32 5
  store i32 %11, i32* %12, align 4
  %13 = load %struct.qmi_ctxt*, %struct.qmi_ctxt** %2, align 8
  %14 = getelementptr inbounds %struct.qmi_ctxt, %struct.qmi_ctxt* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.qmi_msg, %struct.qmi_msg* %5, i32 0, i32 4
  store i32 %15, i32* %16, align 8
  %17 = load %struct.qmi_ctxt*, %struct.qmi_ctxt** %2, align 8
  %18 = getelementptr inbounds %struct.qmi_ctxt, %struct.qmi_ctxt* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.qmi_msg, %struct.qmi_msg* %5, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds %struct.qmi_msg, %struct.qmi_msg* %5, i32 0, i32 1
  store i32 33, i32* %21, align 4
  %22 = getelementptr inbounds %struct.qmi_msg, %struct.qmi_msg* %5, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* @QMUX_HEADER, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %10, i64 %24
  %26 = getelementptr inbounds %struct.qmi_msg, %struct.qmi_msg* %5, i32 0, i32 2
  store i8* %25, i8** %26, align 8
  %27 = load %struct.qmi_ctxt*, %struct.qmi_ctxt** %2, align 8
  %28 = getelementptr inbounds %struct.qmi_ctxt, %struct.qmi_ctxt* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 2
  store i32 %30, i32* %28, align 4
  %31 = load %struct.qmi_ctxt*, %struct.qmi_ctxt** %2, align 8
  %32 = getelementptr inbounds %struct.qmi_ctxt, %struct.qmi_ctxt* %31, i32 0, i32 1
  %33 = call i32 @qmi_add_tlv(%struct.qmi_msg* %5, i32 1, i32 4, i32* %32)
  %34 = load %struct.qmi_ctxt*, %struct.qmi_ctxt** %2, align 8
  %35 = call i32 @qmi_send(%struct.qmi_ctxt* %34, %struct.qmi_msg* %5)
  %36 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %36)
  ret i32 %35
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @qmi_add_tlv(%struct.qmi_msg*, i32, i32, i32*) #2

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
