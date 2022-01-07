; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_encode_ieee_single.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_encode_ieee_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.real_format = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i32*, i32, i32, i32 }

@SIGSZ = common dso_local global i32 0, align 4
@SIG_MSB = common dso_local global i32 0, align 4
@HOST_BITS_PER_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.real_format*, i64*, %struct.TYPE_4__*)* @encode_ieee_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_ieee_single(%struct.real_format* %0, i64* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca %struct.real_format*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.real_format* %0, %struct.real_format** %4, align 8
  store i64* %1, i64** %5, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %6, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %10, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* @SIGSZ, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SIG_MSB, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %11, align 4
  %27 = load i64, i64* %10, align 8
  %28 = shl i64 %27, 31
  store i64 %28, i64* %7, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* @SIGSZ, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @HOST_BITS_PER_LONG, align 4
  %38 = sub nsw i32 %37, 24
  %39 = ashr i32 %36, %38
  %40 = and i32 %39, 8388607
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %8, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %129 [
    i32 128, label %45
    i32 131, label %46
    i32 130, label %58
    i32 129, label %111
  ]

45:                                               ; preds = %3
  br label %131

46:                                               ; preds = %3
  %47 = load %struct.real_format*, %struct.real_format** %4, align 8
  %48 = getelementptr inbounds %struct.real_format, %struct.real_format* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i64, i64* %7, align 8
  %53 = or i64 %52, 2139095040
  store i64 %53, i64* %7, align 8
  br label %57

54:                                               ; preds = %46
  %55 = load i64, i64* %7, align 8
  %56 = or i64 %55, 2147483647
  store i64 %56, i64* %7, align 8
  br label %57

57:                                               ; preds = %54, %51
  br label %131

58:                                               ; preds = %3
  %59 = load %struct.real_format*, %struct.real_format** %4, align 8
  %60 = getelementptr inbounds %struct.real_format, %struct.real_format* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %107

63:                                               ; preds = %58
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i64 0, i64* %8, align 8
  br label %69

69:                                               ; preds = %68, %63
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.real_format*, %struct.real_format** %4, align 8
  %74 = getelementptr inbounds %struct.real_format, %struct.real_format* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %72, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = load i64, i64* %8, align 8
  %79 = and i64 %78, -4194305
  store i64 %79, i64* %8, align 8
  br label %83

80:                                               ; preds = %69
  %81 = load i64, i64* %8, align 8
  %82 = or i64 %81, 4194304
  store i64 %82, i64* %8, align 8
  br label %83

83:                                               ; preds = %80, %77
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %83
  %89 = load %struct.real_format*, %struct.real_format** %4, align 8
  %90 = getelementptr inbounds %struct.real_format, %struct.real_format* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %88
  %94 = load i64, i64* %8, align 8
  %95 = or i64 %94, 4194303
  store i64 %95, i64* %8, align 8
  br label %101

96:                                               ; preds = %88, %83
  %97 = load i64, i64* %8, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i64 2097152, i64* %8, align 8
  br label %100

100:                                              ; preds = %99, %96
  br label %101

101:                                              ; preds = %100, %93
  %102 = load i64, i64* %7, align 8
  %103 = or i64 %102, 2139095040
  store i64 %103, i64* %7, align 8
  %104 = load i64, i64* %8, align 8
  %105 = load i64, i64* %7, align 8
  %106 = or i64 %105, %104
  store i64 %106, i64* %7, align 8
  br label %110

107:                                              ; preds = %58
  %108 = load i64, i64* %7, align 8
  %109 = or i64 %108, 2147483647
  store i64 %109, i64* %7, align 8
  br label %110

110:                                              ; preds = %107, %101
  br label %131

111:                                              ; preds = %3
  %112 = load i32, i32* %11, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  store i64 0, i64* %9, align 8
  br label %121

115:                                              ; preds = %111
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %117 = call i32 @REAL_EXP(%struct.TYPE_4__* %116)
  %118 = add nsw i32 %117, 127
  %119 = sub nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  store i64 %120, i64* %9, align 8
  br label %121

121:                                              ; preds = %115, %114
  %122 = load i64, i64* %9, align 8
  %123 = shl i64 %122, 23
  %124 = load i64, i64* %7, align 8
  %125 = or i64 %124, %123
  store i64 %125, i64* %7, align 8
  %126 = load i64, i64* %8, align 8
  %127 = load i64, i64* %7, align 8
  %128 = or i64 %127, %126
  store i64 %128, i64* %7, align 8
  br label %131

129:                                              ; preds = %3
  %130 = call i32 (...) @gcc_unreachable()
  br label %131

131:                                              ; preds = %129, %121, %110, %57, %45
  %132 = load i64, i64* %7, align 8
  %133 = load i64*, i64** %5, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 0
  store i64 %132, i64* %134, align 8
  ret void
}

declare dso_local i32 @REAL_EXP(%struct.TYPE_4__*) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
