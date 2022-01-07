; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctdaio.c_dai_rsc_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctdaio.c_dai_rsc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dai = type { %struct.TYPE_5__, i32, %struct.hw*, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.hw = type { i32 (i32*)*, i32 (%struct.hw*, i32, i32)*, i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32)* }
%struct.daio_desc = type { i32 }
%struct.daio_mgr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.hw* }

@dai_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dai*, %struct.daio_desc*, %struct.daio_mgr*)* @dai_rsc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dai_rsc_init(%struct.dai* %0, %struct.daio_desc* %1, %struct.daio_mgr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dai*, align 8
  %6 = alloca %struct.daio_desc*, align 8
  %7 = alloca %struct.daio_mgr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hw*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dai* %0, %struct.dai** %5, align 8
  store %struct.daio_desc* %1, %struct.daio_desc** %6, align 8
  store %struct.daio_mgr* %2, %struct.daio_mgr** %7, align 8
  %12 = load %struct.daio_mgr*, %struct.daio_mgr** %7, align 8
  %13 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.hw*, %struct.hw** %14, align 8
  store %struct.hw* %15, %struct.hw** %9, align 8
  %16 = load %struct.dai*, %struct.dai** %5, align 8
  %17 = getelementptr inbounds %struct.dai, %struct.dai* %16, i32 0, i32 0
  %18 = load %struct.daio_desc*, %struct.daio_desc** %6, align 8
  %19 = load %struct.daio_mgr*, %struct.daio_mgr** %7, align 8
  %20 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.hw*, %struct.hw** %21, align 8
  %23 = call i32 @daio_rsc_init(%struct.TYPE_5__* %17, %struct.daio_desc* %18, %struct.hw* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %110

28:                                               ; preds = %3
  %29 = load %struct.dai*, %struct.dai** %5, align 8
  %30 = getelementptr inbounds %struct.dai, %struct.dai* %29, i32 0, i32 3
  store i32* @dai_ops, i32** %30, align 8
  %31 = load %struct.daio_mgr*, %struct.daio_mgr** %7, align 8
  %32 = getelementptr inbounds %struct.daio_mgr, %struct.daio_mgr* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.hw*, %struct.hw** %33, align 8
  %35 = load %struct.dai*, %struct.dai** %5, align 8
  %36 = getelementptr inbounds %struct.dai, %struct.dai* %35, i32 0, i32 2
  store %struct.hw* %34, %struct.hw** %36, align 8
  %37 = load %struct.hw*, %struct.hw** %9, align 8
  %38 = getelementptr inbounds %struct.hw, %struct.hw* %37, i32 0, i32 0
  %39 = load i32 (i32*)*, i32 (i32*)** %38, align 8
  %40 = load %struct.dai*, %struct.dai** %5, align 8
  %41 = getelementptr inbounds %struct.dai, %struct.dai* %40, i32 0, i32 1
  %42 = call i32 %39(i32* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %28
  br label %105

46:                                               ; preds = %28
  store i32 0, i32* %10, align 4
  %47 = load %struct.daio_desc*, %struct.daio_desc** %6, align 8
  %48 = getelementptr inbounds %struct.daio_desc, %struct.daio_desc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %56, %46
  %51 = load i32, i32* %11, align 4
  %52 = icmp ugt i32 %51, 1
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i32, i32* %10, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %11, align 4
  %58 = lshr i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %50

59:                                               ; preds = %50
  %60 = load %struct.hw*, %struct.hw** %9, align 8
  %61 = getelementptr inbounds %struct.hw, %struct.hw* %60, i32 0, i32 5
  %62 = load i32 (i32, i32)*, i32 (i32, i32)** %61, align 8
  %63 = load %struct.dai*, %struct.dai** %5, align 8
  %64 = getelementptr inbounds %struct.dai, %struct.dai* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 %62(i32 %65, i32 %66)
  %68 = load %struct.hw*, %struct.hw** %9, align 8
  %69 = getelementptr inbounds %struct.hw, %struct.hw* %68, i32 0, i32 4
  %70 = load i32 (i32, i32)*, i32 (i32, i32)** %69, align 8
  %71 = load %struct.dai*, %struct.dai** %5, align 8
  %72 = getelementptr inbounds %struct.dai, %struct.dai* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 %70(i32 %73, i32 0)
  %75 = load %struct.hw*, %struct.hw** %9, align 8
  %76 = getelementptr inbounds %struct.hw, %struct.hw* %75, i32 0, i32 3
  %77 = load i32 (i32, i32)*, i32 (i32, i32)** %76, align 8
  %78 = load %struct.dai*, %struct.dai** %5, align 8
  %79 = getelementptr inbounds %struct.dai, %struct.dai* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 %77(i32 %80, i32 0)
  %82 = load %struct.hw*, %struct.hw** %9, align 8
  %83 = getelementptr inbounds %struct.hw, %struct.hw* %82, i32 0, i32 2
  %84 = load i32 (i32, i32)*, i32 (i32, i32)** %83, align 8
  %85 = load %struct.dai*, %struct.dai** %5, align 8
  %86 = getelementptr inbounds %struct.dai, %struct.dai* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 %84(i32 %87, i32 0)
  %89 = load %struct.hw*, %struct.hw** %9, align 8
  %90 = getelementptr inbounds %struct.hw, %struct.hw* %89, i32 0, i32 1
  %91 = load i32 (%struct.hw*, i32, i32)*, i32 (%struct.hw*, i32, i32)** %90, align 8
  %92 = load %struct.hw*, %struct.hw** %9, align 8
  %93 = load %struct.dai*, %struct.dai** %5, align 8
  %94 = getelementptr inbounds %struct.dai, %struct.dai* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.dai*, %struct.dai** %5, align 8
  %98 = getelementptr inbounds %struct.dai, %struct.dai* %97, i32 0, i32 2
  %99 = load %struct.hw*, %struct.hw** %98, align 8
  %100 = call i32 @daio_device_index(i32 %96, %struct.hw* %99)
  %101 = load %struct.dai*, %struct.dai** %5, align 8
  %102 = getelementptr inbounds %struct.dai, %struct.dai* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 %91(%struct.hw* %92, i32 %100, i32 %103)
  store i32 0, i32* %4, align 4
  br label %110

105:                                              ; preds = %45
  %106 = load %struct.dai*, %struct.dai** %5, align 8
  %107 = getelementptr inbounds %struct.dai, %struct.dai* %106, i32 0, i32 0
  %108 = call i32 @daio_rsc_uninit(%struct.TYPE_5__* %107)
  %109 = load i32, i32* %8, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %105, %59, %26
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @daio_rsc_init(%struct.TYPE_5__*, %struct.daio_desc*, %struct.hw*) #1

declare dso_local i32 @daio_device_index(i32, %struct.hw*) #1

declare dso_local i32 @daio_rsc_uninit(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
