; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctdaio.c_dao_clear_left_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctdaio.c_dao_clear_left_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dao = type { %struct.imapper**, %struct.TYPE_5__*, %struct.daio }
%struct.imapper = type { i32 }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, %struct.imapper*)* }
%struct.daio = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dao*)* @dao_clear_left_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dao_clear_left_input(%struct.dao* %0) #0 {
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
  %12 = getelementptr inbounds %struct.imapper*, %struct.imapper** %11, i64 0
  %13 = load %struct.imapper*, %struct.imapper** %12, align 8
  %14 = icmp ne %struct.imapper* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %77

16:                                               ; preds = %1
  %17 = load %struct.dao*, %struct.dao** %3, align 8
  %18 = getelementptr inbounds %struct.dao, %struct.dao* %17, i32 0, i32 0
  %19 = load %struct.imapper**, %struct.imapper*** %18, align 8
  %20 = getelementptr inbounds %struct.imapper*, %struct.imapper** %19, i64 0
  %21 = load %struct.imapper*, %struct.imapper** %20, align 8
  store %struct.imapper* %21, %struct.imapper** %4, align 8
  %22 = load %struct.dao*, %struct.dao** %3, align 8
  %23 = getelementptr inbounds %struct.dao, %struct.dao* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32 (%struct.TYPE_5__*, %struct.imapper*)*, i32 (%struct.TYPE_5__*, %struct.imapper*)** %25, align 8
  %27 = load %struct.dao*, %struct.dao** %3, align 8
  %28 = getelementptr inbounds %struct.dao, %struct.dao* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load %struct.imapper*, %struct.imapper** %4, align 8
  %31 = call i32 %26(%struct.TYPE_5__* %29, %struct.imapper* %30)
  store i32 1, i32* %6, align 4
  br label %32

32:                                               ; preds = %63, %16
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.daio*, %struct.daio** %5, align 8
  %35 = getelementptr inbounds %struct.daio, %struct.daio* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %33, %37
  br i1 %38, label %39, label %66

39:                                               ; preds = %32
  %40 = load %struct.dao*, %struct.dao** %3, align 8
  %41 = getelementptr inbounds %struct.dao, %struct.dao* %40, i32 0, i32 0
  %42 = load %struct.imapper**, %struct.imapper*** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.imapper*, %struct.imapper** %42, i64 %44
  %46 = load %struct.imapper*, %struct.imapper** %45, align 8
  store %struct.imapper* %46, %struct.imapper** %4, align 8
  %47 = load %struct.dao*, %struct.dao** %3, align 8
  %48 = getelementptr inbounds %struct.dao, %struct.dao* %47, i32 0, i32 1
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32 (%struct.TYPE_5__*, %struct.imapper*)*, i32 (%struct.TYPE_5__*, %struct.imapper*)** %50, align 8
  %52 = load %struct.dao*, %struct.dao** %3, align 8
  %53 = getelementptr inbounds %struct.dao, %struct.dao* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = load %struct.imapper*, %struct.imapper** %4, align 8
  %56 = call i32 %51(%struct.TYPE_5__* %54, %struct.imapper* %55)
  %57 = load %struct.dao*, %struct.dao** %3, align 8
  %58 = getelementptr inbounds %struct.dao, %struct.dao* %57, i32 0, i32 0
  %59 = load %struct.imapper**, %struct.imapper*** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.imapper*, %struct.imapper** %59, i64 %61
  store %struct.imapper* null, %struct.imapper** %62, align 8
  br label %63

63:                                               ; preds = %39
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %32

66:                                               ; preds = %32
  %67 = load %struct.dao*, %struct.dao** %3, align 8
  %68 = getelementptr inbounds %struct.dao, %struct.dao* %67, i32 0, i32 0
  %69 = load %struct.imapper**, %struct.imapper*** %68, align 8
  %70 = getelementptr inbounds %struct.imapper*, %struct.imapper** %69, i64 0
  %71 = load %struct.imapper*, %struct.imapper** %70, align 8
  %72 = call i32 @kfree(%struct.imapper* %71)
  %73 = load %struct.dao*, %struct.dao** %3, align 8
  %74 = getelementptr inbounds %struct.dao, %struct.dao* %73, i32 0, i32 0
  %75 = load %struct.imapper**, %struct.imapper*** %74, align 8
  %76 = getelementptr inbounds %struct.imapper*, %struct.imapper** %75, i64 0
  store %struct.imapper* null, %struct.imapper** %76, align 8
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %66, %15
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @kfree(%struct.imapper*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
