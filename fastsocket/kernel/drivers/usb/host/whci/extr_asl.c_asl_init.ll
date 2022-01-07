; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_asl.c_asl_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_asl.c_asl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.whc = type { i32 }
%struct.whc_qset = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asl_init(%struct.whc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.whc*, align 8
  %4 = alloca %struct.whc_qset*, align 8
  store %struct.whc* %0, %struct.whc** %3, align 8
  %5 = load %struct.whc*, %struct.whc** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.whc_qset* @qset_alloc(%struct.whc* %5, i32 %6)
  store %struct.whc_qset* %7, %struct.whc_qset** %4, align 8
  %8 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %9 = icmp eq %struct.whc_qset* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %20

13:                                               ; preds = %1
  %14 = load %struct.whc*, %struct.whc** %3, align 8
  %15 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %16 = call i32 @asl_qset_insert_begin(%struct.whc* %14, %struct.whc_qset* %15)
  %17 = load %struct.whc*, %struct.whc** %3, align 8
  %18 = load %struct.whc_qset*, %struct.whc_qset** %4, align 8
  %19 = call i32 @asl_qset_insert(%struct.whc* %17, %struct.whc_qset* %18)
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %13, %10
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local %struct.whc_qset* @qset_alloc(%struct.whc*, i32) #1

declare dso_local i32 @asl_qset_insert_begin(%struct.whc*, %struct.whc_qset*) #1

declare dso_local i32 @asl_qset_insert(%struct.whc*, %struct.whc_qset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
