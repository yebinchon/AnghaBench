; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctdaio.c_dao_clear_right_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctdaio.c_dao_clear_right_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dao = type { %struct.imapper**, %struct.TYPE_7__*, %struct.daio }
%struct.imapper = type { i32 }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*, %struct.imapper*)* }
%struct.daio = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dao*)* @dao_clear_right_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dao_clear_right_input(%struct.dao* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dao*, align 8
  %4 = alloca %struct.imapper*, align 8
  %5 = alloca %struct.daio*, align 8
  %6 = alloca i32, align 4
  store %struct.dao* %0, %struct.dao** %3, align 8
  %7 = load %struct.dao*, %struct.dao** %3, align 8
  %8 = getelementptr inbounds %struct.dao, %struct.dao* %7, i32 0, i32 2
  store %struct.daio* %8, %struct.daio** %5, align 8
  %9 = load %struct.dao*, %struct.dao** %3, align 8
  %10 = getelementptr inbounds %struct.dao, %struct.dao* %9, i32 0, i32 0
  %11 = load %struct.imapper**, %struct.imapper*** %10, align 8
  %12 = load %struct.daio*, %struct.daio** %5, align 8
  %13 = getelementptr inbounds %struct.daio, %struct.daio* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.imapper*, %struct.imapper** %11, i64 %15
  %17 = load %struct.imapper*, %struct.imapper** %16, align 8
  %18 = icmp ne %struct.imapper* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %103

20:                                               ; preds = %1
  %21 = load %struct.dao*, %struct.dao** %3, align 8
  %22 = getelementptr inbounds %struct.dao, %struct.dao* %21, i32 0, i32 0
  %23 = load %struct.imapper**, %struct.imapper*** %22, align 8
  %24 = load %struct.daio*, %struct.daio** %5, align 8
  %25 = getelementptr inbounds %struct.daio, %struct.daio* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.imapper*, %struct.imapper** %23, i64 %27
  %29 = load %struct.imapper*, %struct.imapper** %28, align 8
  store %struct.imapper* %29, %struct.imapper** %4, align 8
  %30 = load %struct.dao*, %struct.dao** %3, align 8
  %31 = getelementptr inbounds %struct.dao, %struct.dao* %30, i32 0, i32 1
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_7__*, %struct.imapper*)*, i32 (%struct.TYPE_7__*, %struct.imapper*)** %33, align 8
  %35 = load %struct.dao*, %struct.dao** %3, align 8
  %36 = getelementptr inbounds %struct.dao, %struct.dao* %35, i32 0, i32 1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = load %struct.imapper*, %struct.imapper** %4, align 8
  %39 = call i32 %34(%struct.TYPE_7__* %37, %struct.imapper* %38)
  store i32 1, i32* %6, align 4
  br label %40

40:                                               ; preds = %81, %20
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.daio*, %struct.daio** %5, align 8
  %43 = getelementptr inbounds %struct.daio, %struct.daio* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %41, %45
  br i1 %46, label %47, label %84

47:                                               ; preds = %40
  %48 = load %struct.dao*, %struct.dao** %3, align 8
  %49 = getelementptr inbounds %struct.dao, %struct.dao* %48, i32 0, i32 0
  %50 = load %struct.imapper**, %struct.imapper*** %49, align 8
  %51 = load %struct.daio*, %struct.daio** %5, align 8
  %52 = getelementptr inbounds %struct.daio, %struct.daio* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 %54, %56
  %58 = getelementptr inbounds %struct.imapper*, %struct.imapper** %50, i64 %57
  %59 = load %struct.imapper*, %struct.imapper** %58, align 8
  store %struct.imapper* %59, %struct.imapper** %4, align 8
  %60 = load %struct.dao*, %struct.dao** %3, align 8
  %61 = getelementptr inbounds %struct.dao, %struct.dao* %60, i32 0, i32 1
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32 (%struct.TYPE_7__*, %struct.imapper*)*, i32 (%struct.TYPE_7__*, %struct.imapper*)** %63, align 8
  %65 = load %struct.dao*, %struct.dao** %3, align 8
  %66 = getelementptr inbounds %struct.dao, %struct.dao* %65, i32 0, i32 1
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = load %struct.imapper*, %struct.imapper** %4, align 8
  %69 = call i32 %64(%struct.TYPE_7__* %67, %struct.imapper* %68)
  %70 = load %struct.dao*, %struct.dao** %3, align 8
  %71 = getelementptr inbounds %struct.dao, %struct.dao* %70, i32 0, i32 0
  %72 = load %struct.imapper**, %struct.imapper*** %71, align 8
  %73 = load %struct.daio*, %struct.daio** %5, align 8
  %74 = getelementptr inbounds %struct.daio, %struct.daio* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = add i64 %76, %78
  %80 = getelementptr inbounds %struct.imapper*, %struct.imapper** %72, i64 %79
  store %struct.imapper* null, %struct.imapper** %80, align 8
  br label %81

81:                                               ; preds = %47
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %40

84:                                               ; preds = %40
  %85 = load %struct.dao*, %struct.dao** %3, align 8
  %86 = getelementptr inbounds %struct.dao, %struct.dao* %85, i32 0, i32 0
  %87 = load %struct.imapper**, %struct.imapper*** %86, align 8
  %88 = load %struct.daio*, %struct.daio** %5, align 8
  %89 = getelementptr inbounds %struct.daio, %struct.daio* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.imapper*, %struct.imapper** %87, i64 %91
  %93 = load %struct.imapper*, %struct.imapper** %92, align 8
  %94 = call i32 @kfree(%struct.imapper* %93)
  %95 = load %struct.dao*, %struct.dao** %3, align 8
  %96 = getelementptr inbounds %struct.dao, %struct.dao* %95, i32 0, i32 0
  %97 = load %struct.imapper**, %struct.imapper*** %96, align 8
  %98 = load %struct.daio*, %struct.daio** %5, align 8
  %99 = getelementptr inbounds %struct.daio, %struct.daio* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.imapper*, %struct.imapper** %97, i64 %101
  store %struct.imapper* null, %struct.imapper** %102, align 8
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %84, %19
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @kfree(%struct.imapper*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
