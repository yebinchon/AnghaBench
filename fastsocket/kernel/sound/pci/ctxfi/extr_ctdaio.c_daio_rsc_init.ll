; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctdaio.c_daio_rsc_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctdaio.c_daio_rsc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.daio = type { i64, %struct.TYPE_5__, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.daio_desc = type { i64, i32 }
%struct.hw = type { i32 }

@idx_20k1 = common dso_local global %struct.TYPE_7__* null, align 8
@idx_20k2 = common dso_local global %struct.TYPE_6__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@DAIO = common dso_local global i32 0, align 4
@DAIO_OUT_MAX = common dso_local global i64 0, align 8
@daio_out_rsc_ops = common dso_local global i32 0, align 4
@daio_in_rsc_ops_20k1 = common dso_local global i32 0, align 4
@daio_in_rsc_ops_20k2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.daio*, %struct.daio_desc*, i8*)* @daio_rsc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @daio_rsc_init(%struct.daio* %0, %struct.daio_desc* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.daio*, align 8
  %6 = alloca %struct.daio_desc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.daio* %0, %struct.daio** %5, align 8
  store %struct.daio_desc* %1, %struct.daio_desc** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.hw*
  %13 = getelementptr inbounds %struct.hw, %struct.hw* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %45 [
    i32 129, label %15
    i32 128, label %30
  ]

15:                                               ; preds = %3
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** @idx_20k1, align 8
  %17 = load %struct.daio_desc*, %struct.daio_desc** %6, align 8
  %18 = getelementptr inbounds %struct.daio_desc, %struct.daio_desc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** @idx_20k1, align 8
  %24 = load %struct.daio_desc*, %struct.daio_desc** %6, align 8
  %25 = getelementptr inbounds %struct.daio_desc, %struct.daio_desc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %10, align 4
  br label %48

30:                                               ; preds = %3
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @idx_20k2, align 8
  %32 = load %struct.daio_desc*, %struct.daio_desc** %6, align 8
  %33 = getelementptr inbounds %struct.daio_desc, %struct.daio_desc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %9, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** @idx_20k2, align 8
  %39 = load %struct.daio_desc*, %struct.daio_desc** %6, align 8
  %40 = getelementptr inbounds %struct.daio_desc, %struct.daio_desc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %10, align 4
  br label %48

45:                                               ; preds = %3
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %120

48:                                               ; preds = %30, %15
  %49 = load %struct.daio*, %struct.daio** %5, align 8
  %50 = getelementptr inbounds %struct.daio, %struct.daio* %49, i32 0, i32 1
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @DAIO, align 4
  %53 = load %struct.daio_desc*, %struct.daio_desc** %6, align 8
  %54 = getelementptr inbounds %struct.daio_desc, %struct.daio_desc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @rsc_init(%struct.TYPE_5__* %50, i32 %51, i32 %52, i32 %55, i8* %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %4, align 4
  br label %120

62:                                               ; preds = %48
  %63 = load %struct.daio*, %struct.daio** %5, align 8
  %64 = getelementptr inbounds %struct.daio, %struct.daio* %63, i32 0, i32 2
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @DAIO, align 4
  %67 = load %struct.daio_desc*, %struct.daio_desc** %6, align 8
  %68 = getelementptr inbounds %struct.daio_desc, %struct.daio_desc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @rsc_init(%struct.TYPE_5__* %64, i32 %65, i32 %66, i32 %69, i8* %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  br label %115

75:                                               ; preds = %62
  %76 = load %struct.daio_desc*, %struct.daio_desc** %6, align 8
  %77 = getelementptr inbounds %struct.daio_desc, %struct.daio_desc* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @DAIO_OUT_MAX, align 8
  %80 = icmp ule i64 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %75
  %82 = load %struct.daio*, %struct.daio** %5, align 8
  %83 = getelementptr inbounds %struct.daio, %struct.daio* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  store i32* @daio_out_rsc_ops, i32** %84, align 8
  %85 = load %struct.daio*, %struct.daio** %5, align 8
  %86 = getelementptr inbounds %struct.daio, %struct.daio* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  store i32* @daio_out_rsc_ops, i32** %87, align 8
  br label %109

88:                                               ; preds = %75
  %89 = load i8*, i8** %7, align 8
  %90 = bitcast i8* %89 to %struct.hw*
  %91 = getelementptr inbounds %struct.hw, %struct.hw* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  switch i32 %92, label %107 [
    i32 129, label %93
    i32 128, label %100
  ]

93:                                               ; preds = %88
  %94 = load %struct.daio*, %struct.daio** %5, align 8
  %95 = getelementptr inbounds %struct.daio, %struct.daio* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  store i32* @daio_in_rsc_ops_20k1, i32** %96, align 8
  %97 = load %struct.daio*, %struct.daio** %5, align 8
  %98 = getelementptr inbounds %struct.daio, %struct.daio* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  store i32* @daio_in_rsc_ops_20k1, i32** %99, align 8
  br label %108

100:                                              ; preds = %88
  %101 = load %struct.daio*, %struct.daio** %5, align 8
  %102 = getelementptr inbounds %struct.daio, %struct.daio* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  store i32* @daio_in_rsc_ops_20k2, i32** %103, align 8
  %104 = load %struct.daio*, %struct.daio** %5, align 8
  %105 = getelementptr inbounds %struct.daio, %struct.daio* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  store i32* @daio_in_rsc_ops_20k2, i32** %106, align 8
  br label %108

107:                                              ; preds = %88
  br label %108

108:                                              ; preds = %107, %100, %93
  br label %109

109:                                              ; preds = %108, %81
  %110 = load %struct.daio_desc*, %struct.daio_desc** %6, align 8
  %111 = getelementptr inbounds %struct.daio_desc, %struct.daio_desc* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.daio*, %struct.daio** %5, align 8
  %114 = getelementptr inbounds %struct.daio, %struct.daio* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  store i32 0, i32* %4, align 4
  br label %120

115:                                              ; preds = %74
  %116 = load %struct.daio*, %struct.daio** %5, align 8
  %117 = getelementptr inbounds %struct.daio, %struct.daio* %116, i32 0, i32 1
  %118 = call i32 @rsc_uninit(%struct.TYPE_5__* %117)
  %119 = load i32, i32* %8, align 4
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %115, %109, %60, %45
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @rsc_init(%struct.TYPE_5__*, i32, i32, i32, i8*) #1

declare dso_local i32 @rsc_uninit(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
