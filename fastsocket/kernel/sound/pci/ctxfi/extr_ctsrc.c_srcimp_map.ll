; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctsrc.c_srcimp_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctsrc.c_srcimp_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srcimp = type { i32, %struct.TYPE_14__, %struct.TYPE_15__*, %struct.imapper* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)* }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_15__*, %struct.imapper*)* }
%struct.imapper = type { i32, i32, i32 }
%struct.src = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)* }
%struct.rsc = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.rsc*)*, i32 (%struct.rsc*)*, i32 (%struct.rsc*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srcimp*, %struct.src*, %struct.rsc*)* @srcimp_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srcimp_map(%struct.srcimp* %0, %struct.src* %1, %struct.rsc* %2) #0 {
  %4 = alloca %struct.srcimp*, align 8
  %5 = alloca %struct.src*, align 8
  %6 = alloca %struct.rsc*, align 8
  %7 = alloca %struct.imapper*, align 8
  %8 = alloca i32, align 4
  store %struct.srcimp* %0, %struct.srcimp** %4, align 8
  store %struct.src* %1, %struct.src** %5, align 8
  store %struct.rsc* %2, %struct.rsc** %6, align 8
  %9 = load %struct.srcimp*, %struct.srcimp** %4, align 8
  %10 = getelementptr inbounds %struct.srcimp, %struct.srcimp* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %13, align 8
  %15 = load %struct.srcimp*, %struct.srcimp** %4, align 8
  %16 = getelementptr inbounds %struct.srcimp, %struct.srcimp* %15, i32 0, i32 1
  %17 = call i32 %14(%struct.TYPE_14__* %16)
  %18 = load %struct.src*, %struct.src** %5, align 8
  %19 = getelementptr inbounds %struct.src, %struct.src* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %22, align 8
  %24 = load %struct.src*, %struct.src** %5, align 8
  %25 = getelementptr inbounds %struct.src, %struct.src* %24, i32 0, i32 0
  %26 = call i32 %23(%struct.TYPE_16__* %25)
  %27 = load %struct.rsc*, %struct.rsc** %6, align 8
  %28 = getelementptr inbounds %struct.rsc, %struct.rsc* %27, i32 0, i32 0
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32 (%struct.rsc*)*, i32 (%struct.rsc*)** %30, align 8
  %32 = load %struct.rsc*, %struct.rsc** %6, align 8
  %33 = call i32 %31(%struct.rsc* %32)
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %111, %3
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.srcimp*, %struct.srcimp** %4, align 8
  %37 = getelementptr inbounds %struct.srcimp, %struct.srcimp* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %35, %39
  br i1 %40, label %41, label %114

41:                                               ; preds = %34
  %42 = load %struct.srcimp*, %struct.srcimp** %4, align 8
  %43 = getelementptr inbounds %struct.srcimp, %struct.srcimp* %42, i32 0, i32 3
  %44 = load %struct.imapper*, %struct.imapper** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.imapper, %struct.imapper* %44, i64 %46
  store %struct.imapper* %47, %struct.imapper** %7, align 8
  %48 = load %struct.rsc*, %struct.rsc** %6, align 8
  %49 = getelementptr inbounds %struct.rsc, %struct.rsc* %48, i32 0, i32 0
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 2
  %52 = load i32 (%struct.rsc*)*, i32 (%struct.rsc*)** %51, align 8
  %53 = load %struct.rsc*, %struct.rsc** %6, align 8
  %54 = call i32 %52(%struct.rsc* %53)
  %55 = load %struct.imapper*, %struct.imapper** %7, align 8
  %56 = getelementptr inbounds %struct.imapper, %struct.imapper* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.src*, %struct.src** %5, align 8
  %58 = getelementptr inbounds %struct.src, %struct.src* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %61, align 8
  %63 = load %struct.src*, %struct.src** %5, align 8
  %64 = getelementptr inbounds %struct.src, %struct.src* %63, i32 0, i32 0
  %65 = call i32 %62(%struct.TYPE_16__* %64)
  %66 = load %struct.imapper*, %struct.imapper** %7, align 8
  %67 = getelementptr inbounds %struct.imapper, %struct.imapper* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.srcimp*, %struct.srcimp** %4, align 8
  %69 = getelementptr inbounds %struct.srcimp, %struct.srcimp* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 2
  %73 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %72, align 8
  %74 = load %struct.srcimp*, %struct.srcimp** %4, align 8
  %75 = getelementptr inbounds %struct.srcimp, %struct.srcimp* %74, i32 0, i32 1
  %76 = call i32 %73(%struct.TYPE_14__* %75)
  %77 = load %struct.imapper*, %struct.imapper** %7, align 8
  %78 = getelementptr inbounds %struct.imapper, %struct.imapper* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load %struct.srcimp*, %struct.srcimp** %4, align 8
  %80 = getelementptr inbounds %struct.srcimp, %struct.srcimp* %79, i32 0, i32 2
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load i32 (%struct.TYPE_15__*, %struct.imapper*)*, i32 (%struct.TYPE_15__*, %struct.imapper*)** %82, align 8
  %84 = load %struct.srcimp*, %struct.srcimp** %4, align 8
  %85 = getelementptr inbounds %struct.srcimp, %struct.srcimp* %84, i32 0, i32 2
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %85, align 8
  %87 = load %struct.imapper*, %struct.imapper** %7, align 8
  %88 = call i32 %83(%struct.TYPE_15__* %86, %struct.imapper* %87)
  %89 = load i32, i32* %8, align 4
  %90 = shl i32 1, %89
  %91 = load %struct.srcimp*, %struct.srcimp** %4, align 8
  %92 = getelementptr inbounds %struct.srcimp, %struct.srcimp* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 8
  %95 = load %struct.srcimp*, %struct.srcimp** %4, align 8
  %96 = getelementptr inbounds %struct.srcimp, %struct.srcimp* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %99, align 8
  %101 = load %struct.srcimp*, %struct.srcimp** %4, align 8
  %102 = getelementptr inbounds %struct.srcimp, %struct.srcimp* %101, i32 0, i32 1
  %103 = call i32 %100(%struct.TYPE_14__* %102)
  %104 = load %struct.rsc*, %struct.rsc** %6, align 8
  %105 = getelementptr inbounds %struct.rsc, %struct.rsc* %104, i32 0, i32 0
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  %108 = load i32 (%struct.rsc*)*, i32 (%struct.rsc*)** %107, align 8
  %109 = load %struct.rsc*, %struct.rsc** %6, align 8
  %110 = call i32 %108(%struct.rsc* %109)
  br label %111

111:                                              ; preds = %41
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %8, align 4
  br label %34

114:                                              ; preds = %34
  %115 = load %struct.srcimp*, %struct.srcimp** %4, align 8
  %116 = getelementptr inbounds %struct.srcimp, %struct.srcimp* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %119, align 8
  %121 = load %struct.srcimp*, %struct.srcimp** %4, align 8
  %122 = getelementptr inbounds %struct.srcimp, %struct.srcimp* %121, i32 0, i32 1
  %123 = call i32 %120(%struct.TYPE_14__* %122)
  %124 = load %struct.rsc*, %struct.rsc** %6, align 8
  %125 = getelementptr inbounds %struct.rsc, %struct.rsc* %124, i32 0, i32 0
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = load i32 (%struct.rsc*)*, i32 (%struct.rsc*)** %127, align 8
  %129 = load %struct.rsc*, %struct.rsc** %6, align 8
  %130 = call i32 %128(%struct.rsc* %129)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
