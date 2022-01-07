; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_r8a66597-udc.h_r8a66597_write_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_r8a66597-udc.h_r8a66597_write_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597 = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@CFIFOSEL = common dso_local global i32 0, align 4
@BIGEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8a66597*, i64, i8*, i32)* @r8a66597_write_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r8a66597_write_fifo(%struct.r8a66597* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.r8a66597*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.r8a66597* %0, %struct.r8a66597** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.r8a66597*, %struct.r8a66597** %5, align 8
  %13 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %6, align 8
  %16 = add i64 %14, %15
  store i64 %16, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.r8a66597*, %struct.r8a66597** %5, align 8
  %18 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = icmp sge i32 %24, 4
  br i1 %25, label %26, label %44

26:                                               ; preds = %23
  %27 = load i8*, i8** %7, align 8
  %28 = ptrtoint i8* %27 to i64
  %29 = and i64 %28, 3
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %26
  %32 = load i64, i64* %9, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sdiv i32 %34, 4
  %36 = call i32 @outsl(i64 %32, i8* %33, i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, -4
  %39 = load i8*, i8** %7, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8* %41, i8** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %42, 3
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %31, %26, %23
  br label %67

45:                                               ; preds = %4
  %46 = load i32, i32* %8, align 4
  %47 = icmp sge i32 %46, 2
  br i1 %47, label %48, label %66

48:                                               ; preds = %45
  %49 = load i8*, i8** %7, align 8
  %50 = ptrtoint i8* %49 to i64
  %51 = and i64 %50, 1
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %66, label %53

53:                                               ; preds = %48
  %54 = load i64, i64* %9, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sdiv i32 %56, 2
  %58 = call i32 @outsw(i64 %54, i8* %55, i32 %57)
  %59 = load i32, i32* %8, align 4
  %60 = and i32 %59, -2
  %61 = load i8*, i8** %7, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8* %63, i8** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = and i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %53, %48, %45
  br label %67

67:                                               ; preds = %66, %44
  %68 = load %struct.r8a66597*, %struct.r8a66597** %5, align 8
  %69 = load i32, i32* @CFIFOSEL, align 4
  %70 = call i32 @r8a66597_read(%struct.r8a66597* %68, i32 %69)
  %71 = load i32, i32* @BIGEND, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %67
  %75 = load %struct.r8a66597*, %struct.r8a66597** %5, align 8
  %76 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  store i32 3, i32* %10, align 4
  br label %83

82:                                               ; preds = %74
  store i32 1, i32* %10, align 4
  br label %83

83:                                               ; preds = %82, %81
  br label %84

84:                                               ; preds = %83, %67
  store i32 0, i32* %11, align 4
  br label %85

85:                                               ; preds = %105, %84
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %108

89:                                               ; preds = %85
  %90 = load i8*, i8** %7, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = load i64, i64* %9, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = add i64 %95, %97
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %10, align 4
  %101 = and i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = sub i64 %98, %102
  %104 = call i32 @outb(i8 zeroext %94, i64 %103)
  br label %105

105:                                              ; preds = %89
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %11, align 4
  br label %85

108:                                              ; preds = %85
  ret void
}

declare dso_local i32 @outsl(i64, i8*, i32) #1

declare dso_local i32 @outsw(i64, i8*, i32) #1

declare dso_local i32 @r8a66597_read(%struct.r8a66597*, i32) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
