; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_whci.c_whci_del_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_whci.c_whci_del_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.whci_card = type { %struct.umc_dev** }
%struct.umc_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.whci_card*, i32)* @whci_del_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @whci_del_cap(%struct.whci_card* %0, i32 %1) #0 {
  %3 = alloca %struct.whci_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.umc_dev*, align 8
  store %struct.whci_card* %0, %struct.whci_card** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.whci_card*, %struct.whci_card** %3, align 8
  %7 = getelementptr inbounds %struct.whci_card, %struct.whci_card* %6, i32 0, i32 0
  %8 = load %struct.umc_dev**, %struct.umc_dev*** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.umc_dev*, %struct.umc_dev** %8, i64 %10
  %12 = load %struct.umc_dev*, %struct.umc_dev** %11, align 8
  store %struct.umc_dev* %12, %struct.umc_dev** %5, align 8
  %13 = load %struct.umc_dev*, %struct.umc_dev** %5, align 8
  %14 = icmp ne %struct.umc_dev* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.umc_dev*, %struct.umc_dev** %5, align 8
  %17 = call i32 @umc_device_unregister(%struct.umc_dev* %16)
  br label %18

18:                                               ; preds = %15, %2
  ret void
}

declare dso_local i32 @umc_device_unregister(%struct.umc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
