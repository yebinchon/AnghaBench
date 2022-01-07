; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_dwarf2.c_lookup_address_in_function_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_dwarf2.c_lookup_address_in_function_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comp_unit = type { %struct.funcinfo* }
%struct.funcinfo = type { i8*, %struct.arange, %struct.funcinfo* }
%struct.arange = type { i64, i64, %struct.arange* }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comp_unit*, i64, %struct.funcinfo**, i8**)* @lookup_address_in_function_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup_address_in_function_table(%struct.comp_unit* %0, i64 %1, %struct.funcinfo** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comp_unit*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.funcinfo**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.funcinfo*, align 8
  %11 = alloca %struct.funcinfo*, align 8
  %12 = alloca %struct.arange*, align 8
  store %struct.comp_unit* %0, %struct.comp_unit** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.funcinfo** %2, %struct.funcinfo*** %8, align 8
  store i8** %3, i8*** %9, align 8
  store %struct.funcinfo* null, %struct.funcinfo** %11, align 8
  %13 = load %struct.comp_unit*, %struct.comp_unit** %6, align 8
  %14 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %13, i32 0, i32 0
  %15 = load %struct.funcinfo*, %struct.funcinfo** %14, align 8
  store %struct.funcinfo* %15, %struct.funcinfo** %10, align 8
  br label %16

16:                                               ; preds = %67, %4
  %17 = load %struct.funcinfo*, %struct.funcinfo** %10, align 8
  %18 = icmp ne %struct.funcinfo* %17, null
  br i1 %18, label %19, label %71

19:                                               ; preds = %16
  %20 = load %struct.funcinfo*, %struct.funcinfo** %10, align 8
  %21 = getelementptr inbounds %struct.funcinfo, %struct.funcinfo* %20, i32 0, i32 1
  store %struct.arange* %21, %struct.arange** %12, align 8
  br label %22

22:                                               ; preds = %62, %19
  %23 = load %struct.arange*, %struct.arange** %12, align 8
  %24 = icmp ne %struct.arange* %23, null
  br i1 %24, label %25, label %66

25:                                               ; preds = %22
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.arange*, %struct.arange** %12, align 8
  %28 = getelementptr inbounds %struct.arange, %struct.arange* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %26, %29
  br i1 %30, label %31, label %61

31:                                               ; preds = %25
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.arange*, %struct.arange** %12, align 8
  %34 = getelementptr inbounds %struct.arange, %struct.arange* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %32, %35
  br i1 %36, label %37, label %61

37:                                               ; preds = %31
  %38 = load %struct.funcinfo*, %struct.funcinfo** %11, align 8
  %39 = icmp ne %struct.funcinfo* %38, null
  br i1 %39, label %40, label %58

40:                                               ; preds = %37
  %41 = load %struct.arange*, %struct.arange** %12, align 8
  %42 = getelementptr inbounds %struct.arange, %struct.arange* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.arange*, %struct.arange** %12, align 8
  %45 = getelementptr inbounds %struct.arange, %struct.arange* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %43, %46
  %48 = load %struct.funcinfo*, %struct.funcinfo** %11, align 8
  %49 = getelementptr inbounds %struct.funcinfo, %struct.funcinfo* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.arange, %struct.arange* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.funcinfo*, %struct.funcinfo** %11, align 8
  %53 = getelementptr inbounds %struct.funcinfo, %struct.funcinfo* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.arange, %struct.arange* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %51, %55
  %57 = icmp slt i64 %47, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %40, %37
  %59 = load %struct.funcinfo*, %struct.funcinfo** %10, align 8
  store %struct.funcinfo* %59, %struct.funcinfo** %11, align 8
  br label %60

60:                                               ; preds = %58, %40
  br label %61

61:                                               ; preds = %60, %31, %25
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.arange*, %struct.arange** %12, align 8
  %64 = getelementptr inbounds %struct.arange, %struct.arange* %63, i32 0, i32 2
  %65 = load %struct.arange*, %struct.arange** %64, align 8
  store %struct.arange* %65, %struct.arange** %12, align 8
  br label %22

66:                                               ; preds = %22
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.funcinfo*, %struct.funcinfo** %10, align 8
  %69 = getelementptr inbounds %struct.funcinfo, %struct.funcinfo* %68, i32 0, i32 2
  %70 = load %struct.funcinfo*, %struct.funcinfo** %69, align 8
  store %struct.funcinfo* %70, %struct.funcinfo** %10, align 8
  br label %16

71:                                               ; preds = %16
  %72 = load %struct.funcinfo*, %struct.funcinfo** %11, align 8
  %73 = icmp ne %struct.funcinfo* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load %struct.funcinfo*, %struct.funcinfo** %11, align 8
  %76 = getelementptr inbounds %struct.funcinfo, %struct.funcinfo* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load i8**, i8*** %9, align 8
  store i8* %77, i8** %78, align 8
  %79 = load %struct.funcinfo*, %struct.funcinfo** %11, align 8
  %80 = load %struct.funcinfo**, %struct.funcinfo*** %8, align 8
  store %struct.funcinfo* %79, %struct.funcinfo** %80, align 8
  %81 = load i32, i32* @TRUE, align 4
  store i32 %81, i32* %5, align 4
  br label %84

82:                                               ; preds = %71
  %83 = load i32, i32* @FALSE, align 4
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %82, %74
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
