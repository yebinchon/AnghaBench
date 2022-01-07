; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctdaio.c_dao_set_left_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctdaio.c_dao_set_left_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dao = type { %struct.imapper**, %struct.TYPE_11__*, %struct.daio }
%struct.imapper = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_11__*, %struct.imapper*)* }
%struct.daio = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)* }
%struct.rsc = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.rsc*)*, i32 (%struct.rsc*)*, i32 (%struct.rsc*)* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dao*, %struct.rsc*)* @dao_set_left_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dao_set_left_input(%struct.dao* %0, %struct.rsc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dao*, align 8
  %5 = alloca %struct.rsc*, align 8
  %6 = alloca %struct.imapper*, align 8
  %7 = alloca %struct.daio*, align 8
  %8 = alloca i32, align 4
  store %struct.dao* %0, %struct.dao** %4, align 8
  store %struct.rsc* %1, %struct.rsc** %5, align 8
  %9 = load %struct.dao*, %struct.dao** %4, align 8
  %10 = getelementptr inbounds %struct.dao, %struct.dao* %9, i32 0, i32 2
  store %struct.daio* %10, %struct.daio** %7, align 8
  %11 = load %struct.daio*, %struct.daio** %7, align 8
  %12 = getelementptr inbounds %struct.daio, %struct.daio* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = mul i64 12, %15
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.imapper* @kzalloc(i32 %17, i32 %18)
  store %struct.imapper* %19, %struct.imapper** %6, align 8
  %20 = load %struct.imapper*, %struct.imapper** %6, align 8
  %21 = icmp ne %struct.imapper* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %127

25:                                               ; preds = %2
  %26 = load %struct.rsc*, %struct.rsc** %5, align 8
  %27 = getelementptr inbounds %struct.rsc, %struct.rsc* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32 (%struct.rsc*)*, i32 (%struct.rsc*)** %29, align 8
  %31 = load %struct.rsc*, %struct.rsc** %5, align 8
  %32 = call i32 %30(%struct.rsc* %31)
  %33 = load %struct.daio*, %struct.daio** %7, align 8
  %34 = getelementptr inbounds %struct.daio, %struct.daio* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %37, align 8
  %39 = load %struct.daio*, %struct.daio** %7, align 8
  %40 = getelementptr inbounds %struct.daio, %struct.daio* %39, i32 0, i32 0
  %41 = call i32 %38(%struct.TYPE_10__* %40)
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %105, %25
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.daio*, %struct.daio** %7, align 8
  %45 = getelementptr inbounds %struct.daio, %struct.daio* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %43, %47
  br i1 %48, label %49, label %110

49:                                               ; preds = %42
  %50 = load %struct.rsc*, %struct.rsc** %5, align 8
  %51 = getelementptr inbounds %struct.rsc, %struct.rsc* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = load i32 (%struct.rsc*)*, i32 (%struct.rsc*)** %53, align 8
  %55 = load %struct.rsc*, %struct.rsc** %5, align 8
  %56 = call i32 %54(%struct.rsc* %55)
  %57 = load %struct.imapper*, %struct.imapper** %6, align 8
  %58 = getelementptr inbounds %struct.imapper, %struct.imapper* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.daio*, %struct.daio** %7, align 8
  %60 = getelementptr inbounds %struct.daio, %struct.daio* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  %64 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %63, align 8
  %65 = load %struct.daio*, %struct.daio** %7, align 8
  %66 = getelementptr inbounds %struct.daio, %struct.daio* %65, i32 0, i32 0
  %67 = call i32 %64(%struct.TYPE_10__* %66)
  %68 = load %struct.imapper*, %struct.imapper** %6, align 8
  %69 = getelementptr inbounds %struct.imapper, %struct.imapper* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.imapper*, %struct.imapper** %6, align 8
  %71 = getelementptr inbounds %struct.imapper, %struct.imapper* %70, i32 0, i32 1
  store i32 %67, i32* %71, align 4
  %72 = load %struct.dao*, %struct.dao** %4, align 8
  %73 = getelementptr inbounds %struct.dao, %struct.dao* %72, i32 0, i32 1
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32 (%struct.TYPE_11__*, %struct.imapper*)*, i32 (%struct.TYPE_11__*, %struct.imapper*)** %75, align 8
  %77 = load %struct.dao*, %struct.dao** %4, align 8
  %78 = getelementptr inbounds %struct.dao, %struct.dao* %77, i32 0, i32 1
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = load %struct.imapper*, %struct.imapper** %6, align 8
  %81 = call i32 %76(%struct.TYPE_11__* %79, %struct.imapper* %80)
  %82 = load %struct.imapper*, %struct.imapper** %6, align 8
  %83 = load %struct.dao*, %struct.dao** %4, align 8
  %84 = getelementptr inbounds %struct.dao, %struct.dao* %83, i32 0, i32 0
  %85 = load %struct.imapper**, %struct.imapper*** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.imapper*, %struct.imapper** %85, i64 %87
  store %struct.imapper* %82, %struct.imapper** %88, align 8
  %89 = load %struct.rsc*, %struct.rsc** %5, align 8
  %90 = getelementptr inbounds %struct.rsc, %struct.rsc* %89, i32 0, i32 0
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i32 (%struct.rsc*)*, i32 (%struct.rsc*)** %92, align 8
  %94 = load %struct.rsc*, %struct.rsc** %5, align 8
  %95 = call i32 %93(%struct.rsc* %94)
  %96 = load %struct.daio*, %struct.daio** %7, align 8
  %97 = getelementptr inbounds %struct.daio, %struct.daio* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %100, align 8
  %102 = load %struct.daio*, %struct.daio** %7, align 8
  %103 = getelementptr inbounds %struct.daio, %struct.daio* %102, i32 0, i32 0
  %104 = call i32 %101(%struct.TYPE_10__* %103)
  br label %105

105:                                              ; preds = %49
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  %108 = load %struct.imapper*, %struct.imapper** %6, align 8
  %109 = getelementptr inbounds %struct.imapper, %struct.imapper* %108, i32 1
  store %struct.imapper* %109, %struct.imapper** %6, align 8
  br label %42

110:                                              ; preds = %42
  %111 = load %struct.rsc*, %struct.rsc** %5, align 8
  %112 = getelementptr inbounds %struct.rsc, %struct.rsc* %111, i32 0, i32 0
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32 (%struct.rsc*)*, i32 (%struct.rsc*)** %114, align 8
  %116 = load %struct.rsc*, %struct.rsc** %5, align 8
  %117 = call i32 %115(%struct.rsc* %116)
  %118 = load %struct.daio*, %struct.daio** %7, align 8
  %119 = getelementptr inbounds %struct.daio, %struct.daio* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %122, align 8
  %124 = load %struct.daio*, %struct.daio** %7, align 8
  %125 = getelementptr inbounds %struct.daio, %struct.daio* %124, i32 0, i32 0
  %126 = call i32 %123(%struct.TYPE_10__* %125)
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %110, %22
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local %struct.imapper* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
