; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-core.c_cx25821_risc_databuffer_audio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-core.c_cx25821_risc_databuffer_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.btcx_riscmem = type { i32, i32*, i32* }
%struct.scatterlist = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@NO_SYNC_LINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx25821_risc_databuffer_audio(%struct.pci_dev* %0, %struct.btcx_riscmem* %1, %struct.scatterlist* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca %struct.btcx_riscmem*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %8, align 8
  store %struct.btcx_riscmem* %1, %struct.btcx_riscmem** %9, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %12, align 4
  %19 = mul i32 %17, %18
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = udiv i32 %19, %20
  %22 = add i32 1, %21
  %23 = load i32, i32* %12, align 4
  %24 = add i32 %22, %23
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %14, align 4
  %27 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %28 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %9, align 8
  %29 = load i32, i32* %14, align 4
  %30 = mul nsw i32 %29, 12
  %31 = call i32 @btcx_riscmem_alloc(%struct.pci_dev* %27, %struct.btcx_riscmem* %28, i32 %30)
  store i32 %31, i32* %16, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %6
  %34 = load i32, i32* %16, align 4
  store i32 %34, i32* %7, align 4
  br label %68

35:                                               ; preds = %6
  %36 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %9, align 8
  %37 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %15, align 8
  %39 = load i32*, i32** %15, align 8
  %40 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %41 = load i32, i32* @NO_SYNC_LINE, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %13, align 4
  %45 = call i32* @cx25821_risc_field_audio(i32* %39, %struct.scatterlist* %40, i32 0, i32 %41, i32 %42, i32 0, i32 %43, i32 %44)
  store i32* %45, i32** %15, align 8
  %46 = load i32*, i32** %15, align 8
  %47 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %9, align 8
  %48 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %47, i32 0, i32 2
  store i32* %46, i32** %48, align 8
  %49 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %9, align 8
  %50 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %9, align 8
  %53 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = ptrtoint i32* %51 to i64
  %56 = ptrtoint i32* %54 to i64
  %57 = sub i64 %55, %56
  %58 = sdiv exact i64 %57, 4
  %59 = add nsw i64 %58, 2
  %60 = mul i64 %59, 4
  %61 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %9, align 8
  %62 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = icmp ugt i64 %60, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @BUG_ON(i32 %66)
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %35, %33
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

declare dso_local i32 @btcx_riscmem_alloc(%struct.pci_dev*, %struct.btcx_riscmem*, i32) #1

declare dso_local i32* @cx25821_risc_field_audio(i32*, %struct.scatterlist*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
