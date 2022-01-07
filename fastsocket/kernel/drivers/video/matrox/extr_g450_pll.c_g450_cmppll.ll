; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_g450_pll.c_g450_cmppll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_g450_pll.c_g450_cmppll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrox_fb_info = type { i32 }

@M1064_XPIXPLLAM = common dso_local global i32 0, align 4
@M1064_XPIXPLLAN = common dso_local global i32 0, align 4
@M1064_XPIXPLLAP = common dso_local global i32 0, align 4
@M1064_XPIXPLLBM = common dso_local global i32 0, align 4
@M1064_XPIXPLLBN = common dso_local global i32 0, align 4
@M1064_XPIXPLLBP = common dso_local global i32 0, align 4
@M1064_XPIXPLLCM = common dso_local global i32 0, align 4
@M1064_XPIXPLLCN = common dso_local global i32 0, align 4
@M1064_XPIXPLLCP = common dso_local global i32 0, align 4
@DAC1064_XSYSPLLM = common dso_local global i32 0, align 4
@DAC1064_XSYSPLLN = common dso_local global i32 0, align 4
@DAC1064_XSYSPLLP = common dso_local global i32 0, align 4
@M1064_XVIDPLLM = common dso_local global i32 0, align 4
@M1064_XVIDPLLN = common dso_local global i32 0, align 4
@M1064_XVIDPLLP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.matrox_fb_info*, i32, i32)* @g450_cmppll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g450_cmppll(%struct.matrox_fb_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.matrox_fb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  store %struct.matrox_fb_info* %0, %struct.matrox_fb_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = lshr i32 %11, 16
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %8, align 1
  %14 = load i32, i32* %6, align 4
  %15 = lshr i32 %14, 8
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %9, align 1
  %17 = load i32, i32* %6, align 4
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %10, align 1
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %155 [
    i32 132, label %20
    i32 131, label %47
    i32 130, label %74
    i32 129, label %101
    i32 128, label %128
  ]

20:                                               ; preds = %3
  %21 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %5, align 8
  %22 = load i32, i32* @M1064_XPIXPLLAM, align 4
  %23 = call zeroext i8 @matroxfb_DAC_in(%struct.matrox_fb_info* %21, i32 %22)
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* %8, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp ne i32 %24, %26
  br i1 %27, label %44, label %28

28:                                               ; preds = %20
  %29 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %5, align 8
  %30 = load i32, i32* @M1064_XPIXPLLAN, align 4
  %31 = call zeroext i8 @matroxfb_DAC_in(%struct.matrox_fb_info* %29, i32 %30)
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* %9, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %28
  %37 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %5, align 8
  %38 = load i32, i32* @M1064_XPIXPLLAP, align 4
  %39 = call zeroext i8 @matroxfb_DAC_in(%struct.matrox_fb_info* %37, i32 %38)
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* %10, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp ne i32 %40, %42
  br label %44

44:                                               ; preds = %36, %28, %20
  %45 = phi i1 [ true, %28 ], [ true, %20 ], [ %43, %36 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %4, align 4
  br label %156

47:                                               ; preds = %3
  %48 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %5, align 8
  %49 = load i32, i32* @M1064_XPIXPLLBM, align 4
  %50 = call zeroext i8 @matroxfb_DAC_in(%struct.matrox_fb_info* %48, i32 %49)
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* %8, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp ne i32 %51, %53
  br i1 %54, label %71, label %55

55:                                               ; preds = %47
  %56 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %5, align 8
  %57 = load i32, i32* @M1064_XPIXPLLBN, align 4
  %58 = call zeroext i8 @matroxfb_DAC_in(%struct.matrox_fb_info* %56, i32 %57)
  %59 = zext i8 %58 to i32
  %60 = load i8, i8* %9, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp ne i32 %59, %61
  br i1 %62, label %71, label %63

63:                                               ; preds = %55
  %64 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %5, align 8
  %65 = load i32, i32* @M1064_XPIXPLLBP, align 4
  %66 = call zeroext i8 @matroxfb_DAC_in(%struct.matrox_fb_info* %64, i32 %65)
  %67 = zext i8 %66 to i32
  %68 = load i8, i8* %10, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp ne i32 %67, %69
  br label %71

71:                                               ; preds = %63, %55, %47
  %72 = phi i1 [ true, %55 ], [ true, %47 ], [ %70, %63 ]
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %4, align 4
  br label %156

74:                                               ; preds = %3
  %75 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %5, align 8
  %76 = load i32, i32* @M1064_XPIXPLLCM, align 4
  %77 = call zeroext i8 @matroxfb_DAC_in(%struct.matrox_fb_info* %75, i32 %76)
  %78 = zext i8 %77 to i32
  %79 = load i8, i8* %8, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp ne i32 %78, %80
  br i1 %81, label %98, label %82

82:                                               ; preds = %74
  %83 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %5, align 8
  %84 = load i32, i32* @M1064_XPIXPLLCN, align 4
  %85 = call zeroext i8 @matroxfb_DAC_in(%struct.matrox_fb_info* %83, i32 %84)
  %86 = zext i8 %85 to i32
  %87 = load i8, i8* %9, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp ne i32 %86, %88
  br i1 %89, label %98, label %90

90:                                               ; preds = %82
  %91 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %5, align 8
  %92 = load i32, i32* @M1064_XPIXPLLCP, align 4
  %93 = call zeroext i8 @matroxfb_DAC_in(%struct.matrox_fb_info* %91, i32 %92)
  %94 = zext i8 %93 to i32
  %95 = load i8, i8* %10, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp ne i32 %94, %96
  br label %98

98:                                               ; preds = %90, %82, %74
  %99 = phi i1 [ true, %82 ], [ true, %74 ], [ %97, %90 ]
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %4, align 4
  br label %156

101:                                              ; preds = %3
  %102 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %5, align 8
  %103 = load i32, i32* @DAC1064_XSYSPLLM, align 4
  %104 = call zeroext i8 @matroxfb_DAC_in(%struct.matrox_fb_info* %102, i32 %103)
  %105 = zext i8 %104 to i32
  %106 = load i8, i8* %8, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp ne i32 %105, %107
  br i1 %108, label %125, label %109

109:                                              ; preds = %101
  %110 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %5, align 8
  %111 = load i32, i32* @DAC1064_XSYSPLLN, align 4
  %112 = call zeroext i8 @matroxfb_DAC_in(%struct.matrox_fb_info* %110, i32 %111)
  %113 = zext i8 %112 to i32
  %114 = load i8, i8* %9, align 1
  %115 = zext i8 %114 to i32
  %116 = icmp ne i32 %113, %115
  br i1 %116, label %125, label %117

117:                                              ; preds = %109
  %118 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %5, align 8
  %119 = load i32, i32* @DAC1064_XSYSPLLP, align 4
  %120 = call zeroext i8 @matroxfb_DAC_in(%struct.matrox_fb_info* %118, i32 %119)
  %121 = zext i8 %120 to i32
  %122 = load i8, i8* %10, align 1
  %123 = zext i8 %122 to i32
  %124 = icmp ne i32 %121, %123
  br label %125

125:                                              ; preds = %117, %109, %101
  %126 = phi i1 [ true, %109 ], [ true, %101 ], [ %124, %117 ]
  %127 = zext i1 %126 to i32
  store i32 %127, i32* %4, align 4
  br label %156

128:                                              ; preds = %3
  %129 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %5, align 8
  %130 = load i32, i32* @M1064_XVIDPLLM, align 4
  %131 = call zeroext i8 @matroxfb_DAC_in(%struct.matrox_fb_info* %129, i32 %130)
  %132 = zext i8 %131 to i32
  %133 = load i8, i8* %8, align 1
  %134 = zext i8 %133 to i32
  %135 = icmp ne i32 %132, %134
  br i1 %135, label %152, label %136

136:                                              ; preds = %128
  %137 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %5, align 8
  %138 = load i32, i32* @M1064_XVIDPLLN, align 4
  %139 = call zeroext i8 @matroxfb_DAC_in(%struct.matrox_fb_info* %137, i32 %138)
  %140 = zext i8 %139 to i32
  %141 = load i8, i8* %9, align 1
  %142 = zext i8 %141 to i32
  %143 = icmp ne i32 %140, %142
  br i1 %143, label %152, label %144

144:                                              ; preds = %136
  %145 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %5, align 8
  %146 = load i32, i32* @M1064_XVIDPLLP, align 4
  %147 = call zeroext i8 @matroxfb_DAC_in(%struct.matrox_fb_info* %145, i32 %146)
  %148 = zext i8 %147 to i32
  %149 = load i8, i8* %10, align 1
  %150 = zext i8 %149 to i32
  %151 = icmp ne i32 %148, %150
  br label %152

152:                                              ; preds = %144, %136, %128
  %153 = phi i1 [ true, %136 ], [ true, %128 ], [ %151, %144 ]
  %154 = zext i1 %153 to i32
  store i32 %154, i32* %4, align 4
  br label %156

155:                                              ; preds = %3
  store i32 1, i32* %4, align 4
  br label %156

156:                                              ; preds = %155, %152, %125, %98, %71, %44
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local zeroext i8 @matroxfb_DAC_in(%struct.matrox_fb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
