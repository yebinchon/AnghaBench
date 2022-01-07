; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/soundbus/i2sbus/extr_core.c_alloc_dbdma_descriptor_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/soundbus/i2sbus/extr_core.c_alloc_dbdma_descriptor_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2sbus_dev = type { i32 }
%struct.dbdma_command_mem = type { i32, i64, i8*, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2sbus_dev*, %struct.dbdma_command_mem*, i32)* @alloc_dbdma_descriptor_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_dbdma_descriptor_ring(%struct.i2sbus_dev* %0, %struct.dbdma_command_mem* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2sbus_dev*, align 8
  %6 = alloca %struct.dbdma_command_mem*, align 8
  %7 = alloca i32, align 4
  store %struct.i2sbus_dev* %0, %struct.i2sbus_dev** %5, align 8
  store %struct.dbdma_command_mem* %1, %struct.dbdma_command_mem** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = add nsw i32 %8, 3
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 4
  %12 = trunc i64 %11 to i32
  %13 = load %struct.dbdma_command_mem*, %struct.dbdma_command_mem** %6, align 8
  %14 = getelementptr inbounds %struct.dbdma_command_mem, %struct.dbdma_command_mem* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %16 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.TYPE_2__* @macio_get_pci_dev(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.dbdma_command_mem*, %struct.dbdma_command_mem** %6, align 8
  %21 = getelementptr inbounds %struct.dbdma_command_mem, %struct.dbdma_command_mem* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.dbdma_command_mem*, %struct.dbdma_command_mem** %6, align 8
  %24 = getelementptr inbounds %struct.dbdma_command_mem, %struct.dbdma_command_mem* %23, i32 0, i32 3
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i64 @dma_alloc_coherent(i32* %19, i32 %22, i64* %24, i32 %25)
  %27 = load %struct.dbdma_command_mem*, %struct.dbdma_command_mem** %6, align 8
  %28 = getelementptr inbounds %struct.dbdma_command_mem, %struct.dbdma_command_mem* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.dbdma_command_mem*, %struct.dbdma_command_mem** %6, align 8
  %30 = getelementptr inbounds %struct.dbdma_command_mem, %struct.dbdma_command_mem* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %3
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %67

36:                                               ; preds = %3
  %37 = load %struct.dbdma_command_mem*, %struct.dbdma_command_mem** %6, align 8
  %38 = getelementptr inbounds %struct.dbdma_command_mem, %struct.dbdma_command_mem* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.dbdma_command_mem*, %struct.dbdma_command_mem** %6, align 8
  %41 = getelementptr inbounds %struct.dbdma_command_mem, %struct.dbdma_command_mem* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @memset(i64 %39, i32 0, i32 %42)
  %44 = load %struct.dbdma_command_mem*, %struct.dbdma_command_mem** %6, align 8
  %45 = getelementptr inbounds %struct.dbdma_command_mem, %struct.dbdma_command_mem* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @DBDMA_ALIGN(i64 %46)
  %48 = inttoptr i64 %47 to i8*
  %49 = load %struct.dbdma_command_mem*, %struct.dbdma_command_mem** %6, align 8
  %50 = getelementptr inbounds %struct.dbdma_command_mem, %struct.dbdma_command_mem* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load %struct.dbdma_command_mem*, %struct.dbdma_command_mem** %6, align 8
  %52 = getelementptr inbounds %struct.dbdma_command_mem, %struct.dbdma_command_mem* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.dbdma_command_mem*, %struct.dbdma_command_mem** %6, align 8
  %55 = getelementptr inbounds %struct.dbdma_command_mem, %struct.dbdma_command_mem* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.dbdma_command_mem*, %struct.dbdma_command_mem** %6, align 8
  %58 = getelementptr inbounds %struct.dbdma_command_mem, %struct.dbdma_command_mem* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = ptrtoint i8* %56 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = add nsw i64 %53, %63
  %65 = load %struct.dbdma_command_mem*, %struct.dbdma_command_mem** %6, align 8
  %66 = getelementptr inbounds %struct.dbdma_command_mem, %struct.dbdma_command_mem* %65, i32 0, i32 4
  store i64 %64, i64* %66, align 8
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %36, %33
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i64 @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local %struct.TYPE_2__* @macio_get_pci_dev(i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i64 @DBDMA_ALIGN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
