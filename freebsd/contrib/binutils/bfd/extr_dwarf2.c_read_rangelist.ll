; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_dwarf2.c_read_rangelist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_dwarf2.c_read_rangelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comp_unit = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.arange = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comp_unit*, %struct.arange*, i32)* @read_rangelist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_rangelist(%struct.comp_unit* %0, %struct.arange* %1, i32 %2) #0 {
  %4 = alloca %struct.comp_unit*, align 8
  %5 = alloca %struct.arange*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.comp_unit* %0, %struct.comp_unit** %4, align 8
  store %struct.arange* %1, %struct.arange** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.comp_unit*, %struct.comp_unit** %4, align 8
  %12 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  %14 = load %struct.comp_unit*, %struct.comp_unit** %4, align 8
  %15 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %3
  %21 = load %struct.comp_unit*, %struct.comp_unit** %4, align 8
  %22 = call i32 @read_debug_ranges(%struct.comp_unit* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  br label %98

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25, %3
  %27 = load %struct.comp_unit*, %struct.comp_unit** %4, align 8
  %28 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %27, i32 0, i32 3
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32* %34, i32** %7, align 8
  br label %35

35:                                               ; preds = %97, %26
  %36 = load %struct.comp_unit*, %struct.comp_unit** %4, align 8
  %37 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 4
  br i1 %39, label %40, label %55

40:                                               ; preds = %35
  %41 = load %struct.comp_unit*, %struct.comp_unit** %4, align 8
  %42 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = call i64 @read_4_bytes(i32 %43, i32* %44)
  store i64 %45, i64* %9, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  store i32* %47, i32** %7, align 8
  %48 = load %struct.comp_unit*, %struct.comp_unit** %4, align 8
  %49 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = call i64 @read_4_bytes(i32 %50, i32* %51)
  store i64 %52, i64* %10, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 4
  store i32* %54, i32** %7, align 8
  br label %70

55:                                               ; preds = %35
  %56 = load %struct.comp_unit*, %struct.comp_unit** %4, align 8
  %57 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = call i64 @read_8_bytes(i32 %58, i32* %59)
  store i64 %60, i64* %9, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 8
  store i32* %62, i32** %7, align 8
  %63 = load %struct.comp_unit*, %struct.comp_unit** %4, align 8
  %64 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = call i64 @read_8_bytes(i32 %65, i32* %66)
  store i64 %67, i64* %10, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 8
  store i32* %69, i32** %7, align 8
  br label %70

70:                                               ; preds = %55, %40
  %71 = load i64, i64* %9, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i64, i64* %10, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %98

77:                                               ; preds = %73, %70
  %78 = load i64, i64* %9, align 8
  %79 = icmp eq i64 %78, -1
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load i64, i64* %10, align 8
  %82 = icmp ne i64 %81, -1
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i64, i64* %10, align 8
  store i64 %84, i64* %8, align 8
  br label %97

85:                                               ; preds = %80, %77
  %86 = load %struct.comp_unit*, %struct.comp_unit** %4, align 8
  %87 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.arange*, %struct.arange** %5, align 8
  %90 = load i64, i64* %8, align 8
  %91 = load i64, i64* %9, align 8
  %92 = add i64 %90, %91
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* %10, align 8
  %95 = add i64 %93, %94
  %96 = call i32 @arange_add(i32 %88, %struct.arange* %89, i64 %92, i64 %95)
  br label %97

97:                                               ; preds = %85, %83
  br label %35

98:                                               ; preds = %24, %76
  ret void
}

declare dso_local i32 @read_debug_ranges(%struct.comp_unit*) #1

declare dso_local i64 @read_4_bytes(i32, i32*) #1

declare dso_local i64 @read_8_bytes(i32, i32*) #1

declare dso_local i32 @arange_add(i32, %struct.arange*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
