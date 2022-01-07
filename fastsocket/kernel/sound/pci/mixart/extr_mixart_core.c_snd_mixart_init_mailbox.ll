; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/mixart/extr_mixart_core.c_snd_mixart_init_mailbox.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/mixart/extr_mixart_core.c_snd_mixart_init_mailbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mixart_mgr = type { i64 }

@MSG_HOST_RSC_PROTECTION = common dso_local global i32 0, align 4
@MSG_AGENT_RSC_PROTECTION = common dso_local global i32 0, align 4
@MIXART_ALLOW_OUTBOUND_DOORBELL = common dso_local global i32 0, align 4
@MIXART_PCI_OMIMR_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_mixart_init_mailbox(%struct.mixart_mgr* %0) #0 {
  %2 = alloca %struct.mixart_mgr*, align 8
  store %struct.mixart_mgr* %0, %struct.mixart_mgr** %2, align 8
  %3 = load %struct.mixart_mgr*, %struct.mixart_mgr** %2, align 8
  %4 = load i32, i32* @MSG_HOST_RSC_PROTECTION, align 4
  %5 = call i32 @MIXART_MEM(%struct.mixart_mgr* %3, i32 %4)
  %6 = call i32 @writel(i32 0, i32 %5)
  %7 = load %struct.mixart_mgr*, %struct.mixart_mgr** %2, align 8
  %8 = load i32, i32* @MSG_AGENT_RSC_PROTECTION, align 4
  %9 = call i32 @MIXART_MEM(%struct.mixart_mgr* %7, i32 %8)
  %10 = call i32 @writel(i32 0, i32 %9)
  %11 = load %struct.mixart_mgr*, %struct.mixart_mgr** %2, align 8
  %12 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sge i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load i32, i32* @MIXART_ALLOW_OUTBOUND_DOORBELL, align 4
  %17 = load %struct.mixart_mgr*, %struct.mixart_mgr** %2, align 8
  %18 = load i32, i32* @MIXART_PCI_OMIMR_OFFSET, align 4
  %19 = call i32 @MIXART_REG(%struct.mixart_mgr* %17, i32 %18)
  %20 = call i32 @writel_le(i32 %16, i32 %19)
  br label %21

21:                                               ; preds = %15, %1
  ret void
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @MIXART_MEM(%struct.mixart_mgr*, i32) #1

declare dso_local i32 @writel_le(i32, i32) #1

declare dso_local i32 @MIXART_REG(%struct.mixart_mgr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
