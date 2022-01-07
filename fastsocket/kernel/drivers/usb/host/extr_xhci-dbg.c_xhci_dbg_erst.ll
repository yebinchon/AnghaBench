; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-dbg.c_xhci_dbg_erst.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-dbg.c_xhci_dbg_erst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_erst = type { i32, i32, %struct.xhci_erst_entry* }
%struct.xhci_erst_entry = type { i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"@%016llx %08x %08x %08x %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xhci_dbg_erst(%struct.xhci_hcd* %0, %struct.xhci_erst* %1) #0 {
  %3 = alloca %struct.xhci_hcd*, align 8
  %4 = alloca %struct.xhci_erst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.xhci_erst_entry*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %3, align 8
  store %struct.xhci_erst* %1, %struct.xhci_erst** %4, align 8
  %8 = load %struct.xhci_erst*, %struct.xhci_erst** %4, align 8
  %9 = getelementptr inbounds %struct.xhci_erst, %struct.xhci_erst* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %49, %2
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.xhci_erst*, %struct.xhci_erst** %4, align 8
  %14 = getelementptr inbounds %struct.xhci_erst, %struct.xhci_erst* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %52

17:                                               ; preds = %11
  %18 = load %struct.xhci_erst*, %struct.xhci_erst** %4, align 8
  %19 = getelementptr inbounds %struct.xhci_erst, %struct.xhci_erst* %18, i32 0, i32 2
  %20 = load %struct.xhci_erst_entry*, %struct.xhci_erst_entry** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.xhci_erst_entry, %struct.xhci_erst_entry* %20, i64 %22
  store %struct.xhci_erst_entry* %23, %struct.xhci_erst_entry** %7, align 8
  %24 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.xhci_erst_entry*, %struct.xhci_erst_entry** %7, align 8
  %27 = getelementptr inbounds %struct.xhci_erst_entry, %struct.xhci_erst_entry* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le64_to_cpu(i32 %28)
  %30 = call i32 @lower_32_bits(i32 %29)
  %31 = load %struct.xhci_erst_entry*, %struct.xhci_erst_entry** %7, align 8
  %32 = getelementptr inbounds %struct.xhci_erst_entry, %struct.xhci_erst_entry* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le64_to_cpu(i32 %33)
  %35 = call i32 @upper_32_bits(i32 %34)
  %36 = load %struct.xhci_erst_entry*, %struct.xhci_erst_entry** %7, align 8
  %37 = getelementptr inbounds %struct.xhci_erst_entry, %struct.xhci_erst_entry* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le32_to_cpu(i32 %38)
  %40 = load %struct.xhci_erst_entry*, %struct.xhci_erst_entry** %7, align 8
  %41 = getelementptr inbounds %struct.xhci_erst_entry, %struct.xhci_erst_entry* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le32_to_cpu(i32 %42)
  %44 = call i32 @xhci_dbg(%struct.xhci_hcd* %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %30, i32 %35, i32 %39, i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = add i64 %46, 12
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %17
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %11

52:                                               ; preds = %11
  ret void
}

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
