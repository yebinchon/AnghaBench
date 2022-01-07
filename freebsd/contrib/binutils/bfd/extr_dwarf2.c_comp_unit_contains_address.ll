; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_dwarf2.c_comp_unit_contains_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_dwarf2.c_comp_unit_contains_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comp_unit = type { %struct.arange, i64 }
%struct.arange = type { i64, i64, %struct.arange* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comp_unit*, i64)* @comp_unit_contains_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comp_unit_contains_address(%struct.comp_unit* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comp_unit*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.arange*, align 8
  store %struct.comp_unit* %0, %struct.comp_unit** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.comp_unit*, %struct.comp_unit** %4, align 8
  %8 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %3, align 4
  br label %39

13:                                               ; preds = %2
  %14 = load %struct.comp_unit*, %struct.comp_unit** %4, align 8
  %15 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %14, i32 0, i32 0
  store %struct.arange* %15, %struct.arange** %6, align 8
  br label %16

16:                                               ; preds = %34, %13
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.arange*, %struct.arange** %6, align 8
  %19 = getelementptr inbounds %struct.arange, %struct.arange* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %17, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.arange*, %struct.arange** %6, align 8
  %25 = getelementptr inbounds %struct.arange, %struct.arange* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @TRUE, align 4
  store i32 %29, i32* %3, align 4
  br label %39

30:                                               ; preds = %22, %16
  %31 = load %struct.arange*, %struct.arange** %6, align 8
  %32 = getelementptr inbounds %struct.arange, %struct.arange* %31, i32 0, i32 2
  %33 = load %struct.arange*, %struct.arange** %32, align 8
  store %struct.arange* %33, %struct.arange** %6, align 8
  br label %34

34:                                               ; preds = %30
  %35 = load %struct.arange*, %struct.arange** %6, align 8
  %36 = icmp ne %struct.arange* %35, null
  br i1 %36, label %16, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %28, %11
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
