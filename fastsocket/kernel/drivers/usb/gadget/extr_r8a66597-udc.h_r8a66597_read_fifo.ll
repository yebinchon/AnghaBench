; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_r8a66597-udc.h_r8a66597_read_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_r8a66597-udc.h_r8a66597_read_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597 = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8a66597*, i64, i8*, i32)* @r8a66597_read_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r8a66597_read_fifo(%struct.r8a66597* %0, i64 %1, i8* %2, i32 %3) #0 {
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
  %17 = load %struct.r8a66597*, %struct.r8a66597** %5, align 8
  %18 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %72

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
  %36 = call i32 @insl(i64 %32, i8* %33, i32 %35)
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
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %68, %44
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %71

49:                                               ; preds = %45
  %50 = load i32, i32* %11, align 4
  %51 = and i32 %50, 3
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @inl(i64 %54)
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %53, %49
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = and i32 %58, 3
  %60 = mul nsw i32 %59, 8
  %61 = lshr i32 %57, %60
  %62 = and i32 %61, 255
  %63 = trunc i32 %62 to i8
  %64 = load i8*, i8** %7, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  store i8 %63, i8* %67, align 1
  br label %68

68:                                               ; preds = %56
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %11, align 4
  br label %45

71:                                               ; preds = %45
  br label %121

72:                                               ; preds = %4
  %73 = load i32, i32* %8, align 4
  %74 = icmp sge i32 %73, 2
  br i1 %74, label %75, label %93

75:                                               ; preds = %72
  %76 = load i8*, i8** %7, align 8
  %77 = ptrtoint i8* %76 to i64
  %78 = and i64 %77, 1
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %93, label %80

80:                                               ; preds = %75
  %81 = load i64, i64* %9, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sdiv i32 %83, 2
  %85 = call i32 @insw(i64 %81, i8* %82, i32 %84)
  %86 = load i32, i32* %8, align 4
  %87 = and i32 %86, -2
  %88 = load i8*, i8** %7, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %7, align 8
  %91 = load i32, i32* %8, align 4
  %92 = and i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %80, %75, %72
  store i32 0, i32* %11, align 4
  br label %94

94:                                               ; preds = %117, %93
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %120

98:                                               ; preds = %94
  %99 = load i32, i32* %11, align 4
  %100 = and i32 %99, 1
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %98
  %103 = load i64, i64* %9, align 8
  %104 = call i32 @inw(i64 %103)
  store i32 %104, i32* %10, align 4
  br label %105

105:                                              ; preds = %102, %98
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %11, align 4
  %108 = and i32 %107, 1
  %109 = mul nsw i32 %108, 8
  %110 = lshr i32 %106, %109
  %111 = and i32 %110, 255
  %112 = trunc i32 %111 to i8
  %113 = load i8*, i8** %7, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  store i8 %112, i8* %116, align 1
  br label %117

117:                                              ; preds = %105
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %11, align 4
  br label %94

120:                                              ; preds = %94
  br label %121

121:                                              ; preds = %120, %71
  ret void
}

declare dso_local i32 @insl(i64, i8*, i32) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @insw(i64, i8*, i32) #1

declare dso_local i32 @inw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
