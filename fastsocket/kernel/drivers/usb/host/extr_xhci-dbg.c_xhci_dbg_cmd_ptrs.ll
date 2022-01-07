; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-dbg.c_xhci_dbg_cmd_ptrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-dbg.c_xhci_dbg_cmd_ptrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"// xHC command ring deq ptr low bits + flags = @%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"// xHC command ring deq ptr high bits = @%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xhci_dbg_cmd_ptrs(%struct.xhci_hcd* %0) #0 {
  %2 = alloca %struct.xhci_hcd*, align 8
  %3 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %2, align 8
  %4 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %5 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %6 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @xhci_read_64(%struct.xhci_hcd* %4, i32* %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @lower_32_bits(i32 %11)
  %13 = call i32 @xhci_dbg(%struct.xhci_hcd* %10, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @upper_32_bits(i32 %15)
  %17 = call i32 @xhci_dbg(%struct.xhci_hcd* %14, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  ret void
}

declare dso_local i32 @xhci_read_64(%struct.xhci_hcd*, i32*) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
