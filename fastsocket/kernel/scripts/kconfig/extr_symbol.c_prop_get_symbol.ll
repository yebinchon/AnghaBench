; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_symbol.c_prop_get_symbol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_symbol.c_prop_get_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.property = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.symbol* }

@E_SYMBOL = common dso_local global i64 0, align 8
@E_LIST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.symbol* @prop_get_symbol(%struct.property* %0) #0 {
  %2 = alloca %struct.symbol*, align 8
  %3 = alloca %struct.property*, align 8
  store %struct.property* %0, %struct.property** %3, align 8
  %4 = load %struct.property*, %struct.property** %3, align 8
  %5 = getelementptr inbounds %struct.property, %struct.property* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = icmp ne %struct.TYPE_4__* %6, null
  br i1 %7, label %8, label %31

8:                                                ; preds = %1
  %9 = load %struct.property*, %struct.property** %3, align 8
  %10 = getelementptr inbounds %struct.property, %struct.property* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @E_SYMBOL, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %8
  %17 = load %struct.property*, %struct.property** %3, align 8
  %18 = getelementptr inbounds %struct.property, %struct.property* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @E_LIST, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %16, %8
  %25 = load %struct.property*, %struct.property** %3, align 8
  %26 = getelementptr inbounds %struct.property, %struct.property* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.symbol*, %struct.symbol** %29, align 8
  store %struct.symbol* %30, %struct.symbol** %2, align 8
  br label %32

31:                                               ; preds = %16, %1
  store %struct.symbol* null, %struct.symbol** %2, align 8
  br label %32

32:                                               ; preds = %31, %24
  %33 = load %struct.symbol*, %struct.symbol** %2, align 8
  ret %struct.symbol* %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
