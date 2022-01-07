; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_qmi.c_qmi_minor_to_ctxt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_qmi.c_qmi_minor_to_ctxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qmi_ctxt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@qmi_device0 = common dso_local global %struct.qmi_ctxt zeroinitializer, align 4
@qmi_device1 = common dso_local global %struct.qmi_ctxt zeroinitializer, align 4
@qmi_device2 = common dso_local global %struct.qmi_ctxt zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qmi_ctxt* (i32)* @qmi_minor_to_ctxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qmi_ctxt* @qmi_minor_to_ctxt(i32 %0) #0 {
  %2 = alloca %struct.qmi_ctxt*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.qmi_ctxt, %struct.qmi_ctxt* @qmi_device0, i32 0, i32 0, i32 0), align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.qmi_ctxt* @qmi_device0, %struct.qmi_ctxt** %2, align 8
  br label %19

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.qmi_ctxt, %struct.qmi_ctxt* @qmi_device1, i32 0, i32 0, i32 0), align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store %struct.qmi_ctxt* @qmi_device1, %struct.qmi_ctxt** %2, align 8
  br label %19

13:                                               ; preds = %8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.qmi_ctxt, %struct.qmi_ctxt* @qmi_device2, i32 0, i32 0, i32 0), align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store %struct.qmi_ctxt* @qmi_device2, %struct.qmi_ctxt** %2, align 8
  br label %19

18:                                               ; preds = %13
  store %struct.qmi_ctxt* null, %struct.qmi_ctxt** %2, align 8
  br label %19

19:                                               ; preds = %18, %17, %12, %7
  %20 = load %struct.qmi_ctxt*, %struct.qmi_ctxt** %2, align 8
  ret %struct.qmi_ctxt* %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
