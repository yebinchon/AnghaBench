; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdsp.c_hdsp_write_gain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdsp.c_hdsp_write_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdsp = type { i64, i16* }

@HDSP_MATRIX_MIXER_SIZE = common dso_local global i32 0, align 4
@H9652 = common dso_local global i64 0, align 8
@H9632 = common dso_local global i64 0, align 8
@HDSP_LONG_WAIT = common dso_local global i32 0, align 4
@HDSP_fifoData = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdsp*, i32, i16)* @hdsp_write_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdsp_write_gain(%struct.hdsp* %0, i32 %1, i16 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdsp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  store %struct.hdsp* %0, %struct.hdsp** %5, align 8
  store i32 %1, i32* %6, align 4
  store i16 %2, i16* %7, align 2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @HDSP_MATRIX_MIXER_SIZE, align 4
  %11 = icmp uge i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %105

13:                                               ; preds = %3
  %14 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %15 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @H9652, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %21 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @H9632, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %81

25:                                               ; preds = %19, %13
  %26 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %27 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @H9632, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32, i32* %6, align 4
  %33 = icmp uge i32 %32, 512
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %105

35:                                               ; preds = %31, %25
  %36 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %37 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @H9652, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32, i32* %6, align 4
  %43 = icmp uge i32 %42, 1352
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %105

45:                                               ; preds = %41, %35
  %46 = load i16, i16* %7, align 2
  %47 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %48 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %47, i32 0, i32 1
  %49 = load i16*, i16** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i16, i16* %49, i64 %51
  store i16 %46, i16* %52, align 2
  %53 = load i32, i32* %6, align 4
  %54 = udiv i32 %53, 2
  store i32 %54, i32* %8, align 4
  %55 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %56 = load i32, i32* %8, align 4
  %57 = mul i32 %56, 4
  %58 = add i32 4096, %57
  %59 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %60 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %59, i32 0, i32 1
  %61 = load i16*, i16** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = and i32 %62, 2046
  %64 = add i32 %63, 1
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i16, i16* %61, i64 %65
  %67 = load i16, i16* %66, align 2
  %68 = zext i16 %67 to i32
  %69 = shl i32 %68, 16
  %70 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %71 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %70, i32 0, i32 1
  %72 = load i16*, i16** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = and i32 %73, 2046
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i16, i16* %72, i64 %75
  %77 = load i16, i16* %76, align 2
  %78 = zext i16 %77 to i32
  %79 = add nsw i32 %69, %78
  %80 = call i32 @hdsp_write(%struct.hdsp* %55, i32 %58, i32 %79)
  store i32 0, i32* %4, align 4
  br label %105

81:                                               ; preds = %19
  %82 = load i32, i32* %6, align 4
  %83 = shl i32 %82, 16
  %84 = load i16, i16* %7, align 2
  %85 = zext i16 %84 to i32
  %86 = add i32 %83, %85
  store i32 %86, i32* %8, align 4
  %87 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %88 = load i32, i32* @HDSP_LONG_WAIT, align 4
  %89 = call i64 @hdsp_fifo_wait(%struct.hdsp* %87, i32 127, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  store i32 -1, i32* %4, align 4
  br label %105

92:                                               ; preds = %81
  %93 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %94 = load i32, i32* @HDSP_fifoData, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @hdsp_write(%struct.hdsp* %93, i32 %94, i32 %95)
  %97 = load i16, i16* %7, align 2
  %98 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %99 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %98, i32 0, i32 1
  %100 = load i16*, i16** %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i16, i16* %100, i64 %102
  store i16 %97, i16* %103, align 2
  br label %104

104:                                              ; preds = %92
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %104, %91, %45, %44, %34, %12
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @hdsp_write(%struct.hdsp*, i32, i32) #1

declare dso_local i64 @hdsp_fifo_wait(%struct.hdsp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
