; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_cordic.c_cordic_calc_iq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_cordic.c_cordic_calc_iq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cordic_iq = type { i32, i32 }

@CORDIC_ANGLE_GEN = common dso_local global i32 0, align 4
@CORDIC_NUM_ITER = common dso_local global i32 0, align 4
@arctan_table = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cordic_calc_iq(i32 %0) #0 {
  %2 = alloca %struct.cordic_iq, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 1, i32* %7, align 4
  %9 = load i32, i32* @CORDIC_ANGLE_GEN, align 4
  %10 = getelementptr inbounds %struct.cordic_iq, %struct.cordic_iq* %2, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds %struct.cordic_iq, %struct.cordic_iq* %2, i32 0, i32 1
  store i32 0, i32* %11, align 4
  store i32 0, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @FIXED(i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 -1, i32 1
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @FIXED(i32 180)
  %20 = load i32, i32* %8, align 4
  %21 = mul nsw i32 %19, %20
  %22 = add nsw i32 %18, %21
  %23 = call i32 @FIXED(i32 360)
  %24 = srem i32 %22, %23
  %25 = call i32 @FIXED(i32 180)
  %26 = load i32, i32* %8, align 4
  %27 = mul nsw i32 %25, %26
  %28 = sub nsw i32 %24, %27
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @FLOAT(i32 %29)
  %31 = icmp sgt i32 %30, 90
  br i1 %31, label %32, label %36

32:                                               ; preds = %1
  %33 = call i32 @FIXED(i32 180)
  %34 = load i32, i32* %3, align 4
  %35 = sub nsw i32 %34, %33
  store i32 %35, i32* %3, align 4
  store i32 -1, i32* %7, align 4
  br label %45

36:                                               ; preds = %1
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @FLOAT(i32 %37)
  %39 = icmp slt i32 %38, -90
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = call i32 @FIXED(i32 180)
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %3, align 4
  store i32 -1, i32* %7, align 4
  br label %44

44:                                               ; preds = %40, %36
  br label %45

45:                                               ; preds = %44, %32
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %105, %45
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @CORDIC_NUM_ITER, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %108

50:                                               ; preds = %46
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %78

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.cordic_iq, %struct.cordic_iq* %2, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.cordic_iq, %struct.cordic_iq* %2, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %6, align 4
  %60 = lshr i32 %58, %59
  %61 = sub i32 %56, %60
  store i32 %61, i32* %5, align 4
  %62 = getelementptr inbounds %struct.cordic_iq, %struct.cordic_iq* %2, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %6, align 4
  %65 = lshr i32 %63, %64
  %66 = getelementptr inbounds %struct.cordic_iq, %struct.cordic_iq* %2, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = add i32 %67, %65
  store i32 %68, i32* %66, align 4
  %69 = load i64*, i64** @arctan_table, align 8
  %70 = load i32, i32* %6, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %4, align 4
  br label %102

78:                                               ; preds = %50
  %79 = getelementptr inbounds %struct.cordic_iq, %struct.cordic_iq* %2, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.cordic_iq, %struct.cordic_iq* %2, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %6, align 4
  %84 = lshr i32 %82, %83
  %85 = add i32 %80, %84
  store i32 %85, i32* %5, align 4
  %86 = getelementptr inbounds %struct.cordic_iq, %struct.cordic_iq* %2, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %6, align 4
  %89 = lshr i32 %87, %88
  %90 = getelementptr inbounds %struct.cordic_iq, %struct.cordic_iq* %2, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sub i32 %91, %89
  store i32 %92, i32* %90, align 4
  %93 = load i64*, i64** @arctan_table, align 8
  %94 = load i32, i32* %6, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = sub nsw i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %78, %54
  %103 = load i32, i32* %5, align 4
  %104 = getelementptr inbounds %struct.cordic_iq, %struct.cordic_iq* %2, i32 0, i32 0
  store i32 %103, i32* %104, align 4
  br label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %6, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %46

108:                                              ; preds = %46
  %109 = load i32, i32* %7, align 4
  %110 = getelementptr inbounds %struct.cordic_iq, %struct.cordic_iq* %2, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = mul i32 %111, %109
  store i32 %112, i32* %110, align 4
  %113 = load i32, i32* %7, align 4
  %114 = getelementptr inbounds %struct.cordic_iq, %struct.cordic_iq* %2, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = mul i32 %115, %113
  store i32 %116, i32* %114, align 4
  %117 = bitcast %struct.cordic_iq* %2 to i64*
  %118 = load i64, i64* %117, align 4
  ret i64 %118
}

declare dso_local i32 @FIXED(i32) #1

declare dso_local i32 @FLOAT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
