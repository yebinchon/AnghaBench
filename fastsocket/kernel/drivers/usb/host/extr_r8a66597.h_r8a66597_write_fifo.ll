; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597.h_r8a66597_write_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597.h_r8a66597_write_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597 = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@CFIFOSEL = common dso_local global i32 0, align 4
@BIGEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8a66597*, i64, i64*, i32)* @r8a66597_write_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r8a66597_write_fifo(%struct.r8a66597* %0, i64 %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.r8a66597*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.r8a66597* %0, %struct.r8a66597** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.r8a66597*, %struct.r8a66597** %5, align 8
  %15 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = add i64 %16, %17
  store i64 %18, i64* %9, align 8
  %19 = load %struct.r8a66597*, %struct.r8a66597** %5, align 8
  %20 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %83

25:                                               ; preds = %4
  %26 = load i32, i32* %8, align 4
  %27 = sdiv i32 %26, 4
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i64*, i64** %7, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @outsl(i64 %29, i64* %30, i64 %31)
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, 3
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %82

36:                                               ; preds = %25
  %37 = load i64*, i64** %7, align 8
  %38 = bitcast i64* %37 to i8*
  %39 = load i64, i64* %10, align 8
  %40 = mul i64 %39, 4
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  store i8* %41, i8** %11, align 8
  store i32 0, i32* %12, align 4
  br label %42

42:                                               ; preds = %78, %36
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %8, align 4
  %45 = and i32 %44, 3
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %81

47:                                               ; preds = %42
  %48 = load %struct.r8a66597*, %struct.r8a66597** %5, align 8
  %49 = load i32, i32* @CFIFOSEL, align 4
  %50 = call i32 @r8a66597_read(%struct.r8a66597* %48, i32 %49)
  %51 = load i32, i32* @BIGEND, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %47
  %55 = load i8*, i8** %11, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = load i64, i64* %9, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = add i64 %60, %62
  %64 = call i32 @outb(i8 zeroext %59, i64 %63)
  br label %77

65:                                               ; preds = %47
  %66 = load i8*, i8** %11, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = load i64, i64* %9, align 8
  %72 = add i64 %71, 3
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = sub i64 %72, %74
  %76 = call i32 @outb(i8 zeroext %70, i64 %75)
  br label %77

77:                                               ; preds = %65, %54
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %12, align 4
  br label %42

81:                                               ; preds = %42
  br label %82

82:                                               ; preds = %81, %25
  br label %106

83:                                               ; preds = %4
  %84 = load i32, i32* %8, align 4
  %85 = and i32 %84, 1
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %8, align 4
  %87 = sdiv i32 %86, 2
  store i32 %87, i32* %8, align 4
  %88 = load i64, i64* %9, align 8
  %89 = load i64*, i64** %7, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @outsw(i64 %88, i64* %89, i32 %90)
  %92 = load i32, i32* %13, align 4
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %83
  %96 = load i64*, i64** %7, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  store i64* %99, i64** %7, align 8
  %100 = load i64*, i64** %7, align 8
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i8
  %103 = load i64, i64* %9, align 8
  %104 = call i32 @outb(i8 zeroext %102, i64 %103)
  br label %105

105:                                              ; preds = %95, %83
  br label %106

106:                                              ; preds = %105, %82
  ret void
}

declare dso_local i32 @outsl(i64, i64*, i64) #1

declare dso_local i32 @r8a66597_read(%struct.r8a66597*, i32) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local i32 @outsw(i64, i64*, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
