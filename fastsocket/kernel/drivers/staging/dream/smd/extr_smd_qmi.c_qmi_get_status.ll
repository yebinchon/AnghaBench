; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_qmi.c_qmi_get_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_qmi.c_qmi_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qmi_msg = type { i32 }

@QMI_RESULT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qmi_msg*, i32*)* @qmi_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qmi_get_status(%struct.qmi_msg* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qmi_msg*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [2 x i16], align 2
  store %struct.qmi_msg* %0, %struct.qmi_msg** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.qmi_msg*, %struct.qmi_msg** %4, align 8
  %8 = getelementptr inbounds [2 x i16], [2 x i16]* %6, i64 0, i64 0
  %9 = call i64 @qmi_get_tlv(%struct.qmi_msg* %7, i32 2, i32 4, i16* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32*, i32** %5, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* @QMI_RESULT_FAILURE, align 4
  store i32 %13, i32* %3, align 4
  br label %22

14:                                               ; preds = %2
  %15 = getelementptr inbounds [2 x i16], [2 x i16]* %6, i64 0, i64 1
  %16 = load i16, i16* %15, align 2
  %17 = zext i16 %16 to i32
  %18 = load i32*, i32** %5, align 8
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds [2 x i16], [2 x i16]* %6, i64 0, i64 0
  %20 = load i16, i16* %19, align 2
  %21 = zext i16 %20 to i32
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %14, %11
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i64 @qmi_get_tlv(%struct.qmi_msg*, i32, i32, i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
