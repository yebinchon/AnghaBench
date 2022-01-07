; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_g450_pll.c_g450_nextpll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_g450_pll.c_g450_nextpll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrox_fb_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.matrox_pll_limits = type { i32 }

@NO_MORE_MNP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.matrox_fb_info*, %struct.matrox_pll_limits*, i32*, i32)* @g450_nextpll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g450_nextpll(%struct.matrox_fb_info* %0, %struct.matrox_pll_limits* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.matrox_fb_info*, align 8
  %7 = alloca %struct.matrox_pll_limits*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.matrox_fb_info* %0, %struct.matrox_fb_info** %6, align 8
  store %struct.matrox_pll_limits* %1, %struct.matrox_pll_limits** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %9, align 4
  %17 = lshr i32 %16, 16
  %18 = and i32 %17, 255
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %9, align 4
  %20 = and i32 %19, 255
  store i32 %20, i32* %12, align 4
  br label %21

21:                                               ; preds = %116, %4
  %22 = load i32, i32* %10, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %10, align 4
  %26 = icmp eq i32 %25, 255
  br i1 %26, label %27, label %88

27:                                               ; preds = %24, %21
  %28 = load i32, i32* %10, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %27
  %31 = load i32, i32* %12, align 4
  %32 = and i32 %31, 64
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @NO_MORE_MNP, align 4
  store i32 %35, i32* %5, align 4
  br label %126

36:                                               ; preds = %30
  %37 = load i32, i32* %12, align 4
  %38 = and i32 %37, 3
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* %12, align 4
  %42 = add i32 %41, -1
  store i32 %42, i32* %12, align 4
  br label %44

43:                                               ; preds = %36
  store i32 64, i32* %12, align 4
  br label %44

44:                                               ; preds = %43, %40
  %45 = load i32, i32* %13, align 4
  %46 = lshr i32 %45, 1
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load %struct.matrox_pll_limits*, %struct.matrox_pll_limits** %7, align 8
  %49 = getelementptr inbounds %struct.matrox_pll_limits, %struct.matrox_pll_limits* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ult i32 %47, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* @NO_MORE_MNP, align 4
  store i32 %53, i32* %5, align 4
  br label %126

54:                                               ; preds = %44
  %55 = load i32, i32* %13, align 4
  %56 = load i32*, i32** %8, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %54, %27
  %58 = load i32, i32* %12, align 4
  %59 = and i32 %58, 67
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp ult i32 %60, 550000
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %87

63:                                               ; preds = %57
  %64 = load i32, i32* %13, align 4
  %65 = icmp ult i32 %64, 700000
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* %12, align 4
  %68 = or i32 %67, 8
  store i32 %68, i32* %12, align 4
  br label %86

69:                                               ; preds = %63
  %70 = load i32, i32* %13, align 4
  %71 = icmp ult i32 %70, 1000000
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* %12, align 4
  %74 = or i32 %73, 16
  store i32 %74, i32* %12, align 4
  br label %85

75:                                               ; preds = %69
  %76 = load i32, i32* %13, align 4
  %77 = icmp ult i32 %76, 1150000
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* %12, align 4
  %80 = or i32 %79, 24
  store i32 %80, i32* %12, align 4
  br label %84

81:                                               ; preds = %75
  %82 = load i32, i32* %12, align 4
  %83 = or i32 %82, 32
  store i32 %83, i32* %12, align 4
  br label %84

84:                                               ; preds = %81, %78
  br label %85

85:                                               ; preds = %84, %72
  br label %86

86:                                               ; preds = %85, %66
  br label %87

87:                                               ; preds = %86, %62
  store i32 9, i32* %10, align 4
  br label %91

88:                                               ; preds = %24
  %89 = load i32, i32* %10, align 4
  %90 = add i32 %89, -1
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %88, %87
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %10, align 4
  %94 = add i32 %93, 1
  %95 = mul i32 %92, %94
  %96 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %6, align 8
  %97 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = add i32 %95, %100
  %102 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %6, align 8
  %103 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = mul i32 %106, 2
  %108 = udiv i32 %101, %107
  %109 = sub i32 %108, 2
  store i32 %109, i32* %11, align 4
  br label %110

110:                                              ; preds = %91
  %111 = load i32, i32* %11, align 4
  %112 = icmp ult i32 %111, 3
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %11, align 4
  %115 = icmp ugt i32 %114, 122
  br label %116

116:                                              ; preds = %113, %110
  %117 = phi i1 [ true, %110 ], [ %115, %113 ]
  br i1 %117, label %21, label %118

118:                                              ; preds = %116
  %119 = load i32, i32* %10, align 4
  %120 = shl i32 %119, 16
  %121 = load i32, i32* %11, align 4
  %122 = shl i32 %121, 8
  %123 = or i32 %120, %122
  %124 = load i32, i32* %12, align 4
  %125 = or i32 %123, %124
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %118, %52, %34
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
