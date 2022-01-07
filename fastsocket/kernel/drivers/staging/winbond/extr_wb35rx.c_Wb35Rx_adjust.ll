; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35rx.c_Wb35Rx_adjust.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35rx.c_Wb35Rx_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wb35_descriptor = type { i32**, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wb35_descriptor*)* @Wb35Rx_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Wb35Rx_adjust(%struct.wb35_descriptor* %0) #0 {
  %2 = alloca %struct.wb35_descriptor*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wb35_descriptor* %0, %struct.wb35_descriptor** %2, align 8
  %7 = load %struct.wb35_descriptor*, %struct.wb35_descriptor** %2, align 8
  %8 = getelementptr inbounds %struct.wb35_descriptor, %struct.wb35_descriptor* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.wb35_descriptor*, %struct.wb35_descriptor** %2, align 8
  %12 = getelementptr inbounds %struct.wb35_descriptor, %struct.wb35_descriptor* %11, i32 0, i32 0
  %13 = load i32**, i32*** %12, align 8
  %14 = getelementptr inbounds i32*, i32** %13, i64 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %3, align 8
  %16 = load %struct.wb35_descriptor*, %struct.wb35_descriptor** %2, align 8
  %17 = getelementptr inbounds %struct.wb35_descriptor, %struct.wb35_descriptor* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sub nsw i32 %21, 4
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 %26, 4
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %25, %1
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 %32, 4
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %64

37:                                               ; preds = %34
  store i32 6, i32* %5, align 4
  br label %38

38:                                               ; preds = %52, %37
  %39 = load i32, i32* %5, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %47, i32* %51, align 4
  br label %52

52:                                               ; preds = %41
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %5, align 4
  br label %38

55:                                               ; preds = %38
  %56 = load i32*, i32** %3, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load %struct.wb35_descriptor*, %struct.wb35_descriptor** %2, align 8
  %59 = getelementptr inbounds %struct.wb35_descriptor, %struct.wb35_descriptor* %58, i32 0, i32 0
  %60 = load i32**, i32*** %59, align 8
  %61 = getelementptr inbounds i32*, i32** %60, i64 0
  store i32* %57, i32** %61, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sub nsw i32 %62, 4
  store i32 %63, i32* %6, align 4
  br label %95

64:                                               ; preds = %34
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %94

67:                                               ; preds = %64
  store i32 7, i32* %5, align 4
  br label %68

68:                                               ; preds = %82, %67
  %69 = load i32, i32* %5, align 4
  %70 = icmp sgt i32 %69, 1
  br i1 %70, label %71, label %85

71:                                               ; preds = %68
  %72 = load i32*, i32** %3, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sub nsw i32 %73, 2
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %3, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %77, i32* %81, align 4
  br label %82

82:                                               ; preds = %71
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %5, align 4
  br label %68

85:                                               ; preds = %68
  %86 = load i32*, i32** %3, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = load %struct.wb35_descriptor*, %struct.wb35_descriptor** %2, align 8
  %89 = getelementptr inbounds %struct.wb35_descriptor, %struct.wb35_descriptor* %88, i32 0, i32 0
  %90 = load i32**, i32*** %89, align 8
  %91 = getelementptr inbounds i32*, i32** %90, i64 0
  store i32* %87, i32** %91, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sub nsw i32 %92, 8
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %85, %64
  br label %95

95:                                               ; preds = %94, %55
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.wb35_descriptor*, %struct.wb35_descriptor** %2, align 8
  %98 = getelementptr inbounds %struct.wb35_descriptor, %struct.wb35_descriptor* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  store i32 %96, i32* %100, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
