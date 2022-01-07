; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sb_mixer.c_smw_mixer_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sb_mixer.c_smw_mixer_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@smw_mix_regs = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i32)* @smw_mixer_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smw_mixer_set(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %85 [
    i32 128, label %13
    i32 130, label %26
    i32 129, label %26
  ]

13:                                               ; preds = %4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = load i32, i32* %8, align 4
  %16 = mul nsw i32 96, %15
  %17 = sdiv i32 %16, 100
  %18 = sub nsw i32 96, %17
  %19 = call i32 @sb_setmixer(%struct.TYPE_4__* %14, i32 11, i32 %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %21 = load i32, i32* %9, align 4
  %22 = mul nsw i32 96, %21
  %23 = sdiv i32 %22, 100
  %24 = sub nsw i32 96, %23
  %25 = call i32 @sb_setmixer(%struct.TYPE_4__* %20, i32 12, i32 %24)
  br label %125

26:                                               ; preds = %4, %4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = shl i32 %28, 8
  %30 = or i32 %27, %29
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 %30, i32* %36, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 129
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 255
  %43 = mul nsw i32 %42, 16
  %44 = udiv i32 %43, 100
  %45 = shl i32 %44, 4
  store i32 %45, i32* %11, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 130
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 255
  %52 = mul nsw i32 %51, 16
  %53 = udiv i32 %52, 100
  %54 = and i32 %53, 15
  %55 = load i32, i32* %11, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %11, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @sb_setmixer(%struct.TYPE_4__* %57, i32 13, i32 %58)
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 129
  %64 = load i32, i32* %63, align 4
  %65 = ashr i32 %64, 8
  %66 = and i32 %65, 255
  %67 = mul nsw i32 %66, 16
  %68 = udiv i32 %67, 100
  %69 = shl i32 %68, 4
  store i32 %69, i32* %11, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 130
  %74 = load i32, i32* %73, align 4
  %75 = ashr i32 %74, 8
  %76 = and i32 %75, 255
  %77 = mul nsw i32 %76, 16
  %78 = udiv i32 %77, 100
  %79 = and i32 %78, 15
  %80 = load i32, i32* %11, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %11, align 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @sb_setmixer(%struct.TYPE_4__* %82, i32 14, i32 %83)
  br label %125

85:                                               ; preds = %4
  %86 = load i32, i32* %7, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %7, align 4
  %90 = load i32*, i32** @smw_mix_regs, align 8
  %91 = call i32 @ARRAY_SIZE(i32* %90)
  %92 = icmp sge i32 %89, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %88, %85
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %5, align 4
  br label %140

96:                                               ; preds = %88
  %97 = load i32*, i32** @smw_mix_regs, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %96
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %5, align 4
  br label %140

107:                                              ; preds = %96
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %8, align 4
  %111 = mul nsw i32 24, %110
  %112 = sdiv i32 %111, 100
  %113 = sub nsw i32 24, %112
  %114 = or i32 %113, 32
  %115 = call i32 @sb_setmixer(%struct.TYPE_4__* %108, i32 %109, i32 %114)
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  %119 = load i32, i32* %9, align 4
  %120 = mul nsw i32 24, %119
  %121 = sdiv i32 %120, 100
  %122 = sub nsw i32 24, %121
  %123 = or i32 %122, 64
  %124 = call i32 @sb_setmixer(%struct.TYPE_4__* %116, i32 %118, i32 %123)
  br label %125

125:                                              ; preds = %107, %26, %13
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %9, align 4
  %128 = shl i32 %127, 8
  %129 = or i32 %126, %128
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  store i32 %129, i32* %135, align 4
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* %9, align 4
  %138 = shl i32 %137, 8
  %139 = or i32 %136, %138
  store i32 %139, i32* %5, align 4
  br label %140

140:                                              ; preds = %125, %104, %93
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i32 @sb_setmixer(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
