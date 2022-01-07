; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_tdo24m.c_tdo24m_writes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_tdo24m.c_tdo24m_writes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tdo24m = type { i32*, i32, i32, i32, %struct.spi_transfer }
%struct.spi_transfer = type { i32 }

@CMD_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tdo24m*, i32*)* @tdo24m_writes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tdo24m_writes(%struct.tdo24m* %0, i32* %1) #0 {
  %3 = alloca %struct.tdo24m*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.spi_transfer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tdo24m* %0, %struct.tdo24m** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.tdo24m*, %struct.tdo24m** %3, align 8
  %11 = getelementptr inbounds %struct.tdo24m, %struct.tdo24m* %10, i32 0, i32 4
  store %struct.spi_transfer* %11, %struct.spi_transfer** %5, align 8
  %12 = load i32*, i32** %4, align 8
  store i32* %12, i32** %7, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %119, %2
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CMD_NULL, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %122

18:                                               ; preds = %13
  %19 = load %struct.tdo24m*, %struct.tdo24m** %3, align 8
  %20 = getelementptr inbounds %struct.tdo24m, %struct.tdo24m* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @CMD0(i32 33)
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %119

29:                                               ; preds = %23, %18
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 30
  %33 = and i32 %32, 3
  store i32 %33, i32* %8, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = sub nsw i32 7, %36
  %38 = shl i32 %35, %37
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %8, align 4
  switch i32 %39, label %103 [
    i32 0, label %40
    i32 1, label %54
    i32 2, label %75
  ]

40:                                               ; preds = %29
  %41 = load i32, i32* %6, align 4
  %42 = ashr i32 %41, 8
  %43 = and i32 %42, 255
  %44 = load %struct.tdo24m*, %struct.tdo24m** %3, align 8
  %45 = getelementptr inbounds %struct.tdo24m, %struct.tdo24m* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 %43, i32* %47, align 4
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, 255
  %50 = load %struct.tdo24m*, %struct.tdo24m** %3, align 8
  %51 = getelementptr inbounds %struct.tdo24m, %struct.tdo24m* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 %49, i32* %53, align 4
  br label %104

54:                                               ; preds = %29
  %55 = load i32, i32* %6, align 4
  %56 = ashr i32 %55, 16
  %57 = and i32 %56, 255
  %58 = load %struct.tdo24m*, %struct.tdo24m** %3, align 8
  %59 = getelementptr inbounds %struct.tdo24m, %struct.tdo24m* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  store i32 %57, i32* %61, align 4
  %62 = load i32, i32* %6, align 4
  %63 = ashr i32 %62, 8
  %64 = and i32 %63, 255
  %65 = load %struct.tdo24m*, %struct.tdo24m** %3, align 8
  %66 = getelementptr inbounds %struct.tdo24m, %struct.tdo24m* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  store i32 %64, i32* %68, align 4
  %69 = load i32, i32* %6, align 4
  %70 = and i32 %69, 255
  %71 = load %struct.tdo24m*, %struct.tdo24m** %3, align 8
  %72 = getelementptr inbounds %struct.tdo24m, %struct.tdo24m* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  store i32 %70, i32* %74, align 4
  br label %104

75:                                               ; preds = %29
  %76 = load i32, i32* %6, align 4
  %77 = ashr i32 %76, 24
  %78 = and i32 %77, 255
  %79 = load %struct.tdo24m*, %struct.tdo24m** %3, align 8
  %80 = getelementptr inbounds %struct.tdo24m, %struct.tdo24m* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32 %78, i32* %82, align 4
  %83 = load i32, i32* %6, align 4
  %84 = ashr i32 %83, 16
  %85 = and i32 %84, 255
  %86 = load %struct.tdo24m*, %struct.tdo24m** %3, align 8
  %87 = getelementptr inbounds %struct.tdo24m, %struct.tdo24m* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  store i32 %85, i32* %89, align 4
  %90 = load i32, i32* %6, align 4
  %91 = ashr i32 %90, 8
  %92 = and i32 %91, 255
  %93 = load %struct.tdo24m*, %struct.tdo24m** %3, align 8
  %94 = getelementptr inbounds %struct.tdo24m, %struct.tdo24m* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  store i32 %92, i32* %96, align 4
  %97 = load i32, i32* %6, align 4
  %98 = and i32 %97, 255
  %99 = load %struct.tdo24m*, %struct.tdo24m** %3, align 8
  %100 = getelementptr inbounds %struct.tdo24m, %struct.tdo24m* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 3
  store i32 %98, i32* %102, align 4
  br label %104

103:                                              ; preds = %29
  br label %119

104:                                              ; preds = %75, %54, %40
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 2
  %107 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %108 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  %109 = load %struct.tdo24m*, %struct.tdo24m** %3, align 8
  %110 = getelementptr inbounds %struct.tdo24m, %struct.tdo24m* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.tdo24m*, %struct.tdo24m** %3, align 8
  %113 = getelementptr inbounds %struct.tdo24m, %struct.tdo24m* %112, i32 0, i32 1
  %114 = call i32 @spi_sync(i32 %111, i32* %113)
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %104
  br label %122

118:                                              ; preds = %104
  br label %119

119:                                              ; preds = %118, %103, %28
  %120 = load i32*, i32** %7, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %7, align 8
  br label %13

122:                                              ; preds = %117, %13
  %123 = load i32, i32* %9, align 4
  ret i32 %123
}

declare dso_local i32 @CMD0(i32) #1

declare dso_local i32 @spi_sync(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
