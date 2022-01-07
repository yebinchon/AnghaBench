; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ad1848.c_ad1848_init_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ad1848.c_ad1848_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32 }

@ad1848_init_hw.init_values_a = internal global <{ [24 x i32], [8 x i32] }> <{ [24 x i32] [i32 168, i32 168, i32 8, i32 8, i32 8, i32 8, i32 0, i32 0, i32 0, i32 12, i32 2, i32 0, i32 138, i32 1, i32 0, i32 0, i32 128, i32 0, i32 16, i32 16, i32 0, i32 0, i32 31, i32 64], [8 x i32] zeroinitializer }>, align 16
@ad1848_init_hw.init_values_b = internal global <{ [24 x i32], [8 x i32] }> <{ [24 x i32] [i32 168, i32 168, i32 8, i32 8, i32 8, i32 8, i32 0, i32 0, i32 0, i32 0, i32 6, i32 0, i32 224, i32 1, i32 0, i32 0, i32 128, i32 0, i32 16, i32 16, i32 0, i32 0, i32 31, i32 64], [8 x i32] zeroinitializer }>, align 16
@MD_4236 = common dso_local global i64 0, align 8
@MD_1848 = common dso_local global i64 0, align 8
@MD_1845_SSCAPE = common dso_local global i64 0, align 8
@MD_IWAVE = common dso_local global i64 0, align 8
@DMA_DUPLEX = common dso_local global i32 0, align 4
@MD_1845 = common dso_local global i64 0, align 8
@soundpro = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @ad1848_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad1848_init_hw(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  store i32* getelementptr inbounds ([32 x i32], [32 x i32]* bitcast (<{ [24 x i32], [8 x i32] }>* @ad1848_init_hw.init_values_a to [32 x i32]*), i64 0, i64 0), i32** %4, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @MD_4236, align 8
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32* getelementptr inbounds ([32 x i32], [32 x i32]* bitcast (<{ [24 x i32], [8 x i32] }>* @ad1848_init_hw.init_values_b to [32 x i32]*), i64 0, i64 0), i32** %4, align 8
  br label %11

11:                                               ; preds = %10, %1
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %24, %11
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 16
  br i1 %14, label %15, label %27

15:                                               ; preds = %12
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ad_write(%struct.TYPE_11__* %16, i32 %17, i32 %22)
  br label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %12

27:                                               ; preds = %12
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %29 = call i32 @ad_mute(%struct.TYPE_11__* %28)
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %31 = call i32 @ad_unmute(%struct.TYPE_11__* %30)
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MD_1848, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %97

37:                                               ; preds = %27
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MD_1845_SSCAPE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %46 = call i32 @ad_read(%struct.TYPE_11__* %45, i32 12)
  %47 = or i32 %46, 80
  %48 = call i32 @ad_write(%struct.TYPE_11__* %44, i32 12, i32 %47)
  br label %55

49:                                               ; preds = %37
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %52 = call i32 @ad_read(%struct.TYPE_11__* %51, i32 12)
  %53 = or i32 %52, 64
  %54 = call i32 @ad_write(%struct.TYPE_11__* %50, i32 12, i32 %53)
  br label %55

55:                                               ; preds = %49, %43
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @MD_IWAVE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %63 = call i32 @ad_write(%struct.TYPE_11__* %62, i32 12, i32 108)
  br label %64

64:                                               ; preds = %61, %55
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @MD_1845_SSCAPE, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %87

70:                                               ; preds = %64
  store i32 16, i32* %3, align 4
  br label %71

71:                                               ; preds = %83, %70
  %72 = load i32, i32* %3, align 4
  %73 = icmp slt i32 %72, 32
  br i1 %73, label %74, label %86

74:                                               ; preds = %71
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %76 = load i32, i32* %3, align 4
  %77 = load i32*, i32** %4, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ad_write(%struct.TYPE_11__* %75, i32 %76, i32 %81)
  br label %83

83:                                               ; preds = %74
  %84 = load i32, i32* %3, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %3, align 4
  br label %71

86:                                               ; preds = %71
  br label %87

87:                                               ; preds = %86, %64
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @MD_IWAVE, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %95 = call i32 @ad_write(%struct.TYPE_11__* %94, i32 16, i32 48)
  br label %96

96:                                               ; preds = %93, %87
  br label %97

97:                                               ; preds = %96, %27
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @MD_1848, align 8
  %102 = icmp sgt i64 %100, %101
  br i1 %102, label %103, label %154

103:                                              ; preds = %97
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @DMA_DUPLEX, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %103
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %113 = call i32 @ad_read(%struct.TYPE_11__* %112, i32 9)
  %114 = and i32 %113, -5
  %115 = call i32 @ad_write(%struct.TYPE_11__* %111, i32 9, i32 %114)
  br label %122

116:                                              ; preds = %103
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %119 = call i32 @ad_read(%struct.TYPE_11__* %118, i32 9)
  %120 = or i32 %119, 4
  %121 = call i32 @ad_write(%struct.TYPE_11__* %117, i32 9, i32 %120)
  br label %122

122:                                              ; preds = %116, %110
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @MD_1845, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %134, label %128

128:                                              ; preds = %122
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @MD_1845_SSCAPE, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %128, %122
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %137 = call i32 @ad_read(%struct.TYPE_11__* %136, i32 27)
  %138 = or i32 %137, 8
  %139 = call i32 @ad_write(%struct.TYPE_11__* %135, i32 27, i32 %138)
  br label %140

140:                                              ; preds = %134, %128
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @MD_IWAVE, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %153

146:                                              ; preds = %140
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %148 = call i32 @ad_write(%struct.TYPE_11__* %147, i32 12, i32 108)
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %150 = call i32 @ad_write(%struct.TYPE_11__* %149, i32 16, i32 48)
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %152 = call i32 @ad_write(%struct.TYPE_11__* %151, i32 17, i32 194)
  br label %153

153:                                              ; preds = %146, %140
  br label %175

154:                                              ; preds = %97
  %155 = load i32, i32* @DMA_DUPLEX, align 4
  %156 = xor i32 %155, -1
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = and i32 %159, %156
  store i32 %160, i32* %158, align 8
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %163 = call i32 @ad_read(%struct.TYPE_11__* %162, i32 9)
  %164 = or i32 %163, 4
  %165 = call i32 @ad_write(%struct.TYPE_11__* %161, i32 9, i32 %164)
  %166 = load i64, i64* @soundpro, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %154
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %171 = call i32 @ad_read(%struct.TYPE_11__* %170, i32 12)
  %172 = or i32 %171, 64
  %173 = call i32 @ad_write(%struct.TYPE_11__* %169, i32 12, i32 %172)
  br label %174

174:                                              ; preds = %168, %154
  br label %175

175:                                              ; preds = %174, %153
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %177 = call i32 @io_Status(%struct.TYPE_11__* %176)
  %178 = call i32 @outb(i32 0, i32 %177)
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %180 = call i32 @ad_enter_MCE(%struct.TYPE_11__* %179)
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %182 = call i32 @ad_leave_MCE(%struct.TYPE_11__* %181)
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %184 = call i32 @ad1848_mixer_reset(%struct.TYPE_11__* %183)
  ret void
}

declare dso_local i32 @ad_write(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @ad_mute(%struct.TYPE_11__*) #1

declare dso_local i32 @ad_unmute(%struct.TYPE_11__*) #1

declare dso_local i32 @ad_read(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @io_Status(%struct.TYPE_11__*) #1

declare dso_local i32 @ad_enter_MCE(%struct.TYPE_11__*) #1

declare dso_local i32 @ad_leave_MCE(%struct.TYPE_11__*) #1

declare dso_local i32 @ad1848_mixer_reset(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
