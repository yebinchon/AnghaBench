; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9d112.c_mt9d112_set_effect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9d112.c_mt9d112_set_effect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@mt9d112_client = common dso_local global %struct.TYPE_2__* null, align 8
@WORD_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32)* @mt9d112_set_effect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mt9d112_set_effect(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %12 [
    i32 129, label %10
    i32 128, label %11
  ]

10:                                               ; preds = %2
  store i32 10137, i32* %6, align 4
  br label %13

11:                                               ; preds = %2
  store i32 10139, i32* %6, align 4
  br label %13

12:                                               ; preds = %2
  store i32 10137, i32* %6, align 4
  br label %13

13:                                               ; preds = %12, %11, %10
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %133 [
    i32 134, label %15
    i32 137, label %38
    i32 135, label %61
    i32 130, label %84
    i32 131, label %107
    i32 133, label %130
    i32 136, label %130
    i32 132, label %130
  ]

15:                                               ; preds = %13
  store i32 25664, i32* %7, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9d112_client, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @WORD_LEN, align 4
  %21 = call i64 @mt9d112_i2c_write(i32 %18, i32 13196, i32 %19, i32 %20)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i64, i64* %8, align 8
  store i64 %25, i64* %3, align 8
  br label %175

26:                                               ; preds = %15
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9d112_client, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @WORD_LEN, align 4
  %32 = call i64 @mt9d112_i2c_write(i32 %29, i32 13200, i32 %30, i32 %31)
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i64, i64* %8, align 8
  store i64 %36, i64* %3, align 8
  br label %175

37:                                               ; preds = %26
  br label %158

38:                                               ; preds = %13
  store i32 25665, i32* %7, align 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9d112_client, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @WORD_LEN, align 4
  %44 = call i64 @mt9d112_i2c_write(i32 %41, i32 13196, i32 %42, i32 %43)
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i64, i64* %8, align 8
  store i64 %48, i64* %3, align 8
  br label %175

49:                                               ; preds = %38
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9d112_client, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @WORD_LEN, align 4
  %55 = call i64 @mt9d112_i2c_write(i32 %52, i32 13200, i32 %53, i32 %54)
  store i64 %55, i64* %8, align 8
  %56 = load i64, i64* %8, align 8
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i64, i64* %8, align 8
  store i64 %59, i64* %3, align 8
  br label %175

60:                                               ; preds = %49
  br label %158

61:                                               ; preds = %13
  store i32 25667, i32* %7, align 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9d112_client, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @WORD_LEN, align 4
  %67 = call i64 @mt9d112_i2c_write(i32 %64, i32 13196, i32 %65, i32 %66)
  store i64 %67, i64* %8, align 8
  %68 = load i64, i64* %8, align 8
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i64, i64* %8, align 8
  store i64 %71, i64* %3, align 8
  br label %175

72:                                               ; preds = %61
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9d112_client, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @WORD_LEN, align 4
  %78 = call i64 @mt9d112_i2c_write(i32 %75, i32 13200, i32 %76, i32 %77)
  store i64 %78, i64* %8, align 8
  %79 = load i64, i64* %8, align 8
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %72
  %82 = load i64, i64* %8, align 8
  store i64 %82, i64* %3, align 8
  br label %175

83:                                               ; preds = %72
  br label %158

84:                                               ; preds = %13
  store i32 25669, i32* %7, align 4
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9d112_client, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @WORD_LEN, align 4
  %90 = call i64 @mt9d112_i2c_write(i32 %87, i32 13196, i32 %88, i32 %89)
  store i64 %90, i64* %8, align 8
  %91 = load i64, i64* %8, align 8
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %84
  %94 = load i64, i64* %8, align 8
  store i64 %94, i64* %3, align 8
  br label %175

95:                                               ; preds = %84
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9d112_client, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @WORD_LEN, align 4
  %101 = call i64 @mt9d112_i2c_write(i32 %98, i32 13200, i32 %99, i32 %100)
  store i64 %101, i64* %8, align 8
  %102 = load i64, i64* %8, align 8
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %95
  %105 = load i64, i64* %8, align 8
  store i64 %105, i64* %3, align 8
  br label %175

106:                                              ; preds = %95
  br label %158

107:                                              ; preds = %13
  store i32 25666, i32* %7, align 4
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9d112_client, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @WORD_LEN, align 4
  %113 = call i64 @mt9d112_i2c_write(i32 %110, i32 13196, i32 %111, i32 %112)
  store i64 %113, i64* %8, align 8
  %114 = load i64, i64* %8, align 8
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %107
  %117 = load i64, i64* %8, align 8
  store i64 %117, i64* %3, align 8
  br label %175

118:                                              ; preds = %107
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9d112_client, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @WORD_LEN, align 4
  %124 = call i64 @mt9d112_i2c_write(i32 %121, i32 13200, i32 %122, i32 %123)
  store i64 %124, i64* %8, align 8
  %125 = load i64, i64* %8, align 8
  %126 = icmp slt i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %118
  %128 = load i64, i64* %8, align 8
  store i64 %128, i64* %3, align 8
  br label %175

129:                                              ; preds = %118
  br label %158

130:                                              ; preds = %13, %13, %13
  %131 = load i64, i64* @EINVAL, align 8
  %132 = sub nsw i64 0, %131
  store i64 %132, i64* %3, align 8
  br label %175

133:                                              ; preds = %13
  store i32 25664, i32* %7, align 4
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9d112_client, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @WORD_LEN, align 4
  %139 = call i64 @mt9d112_i2c_write(i32 %136, i32 13196, i32 %137, i32 %138)
  store i64 %139, i64* %8, align 8
  %140 = load i64, i64* %8, align 8
  %141 = icmp slt i64 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %133
  %143 = load i64, i64* %8, align 8
  store i64 %143, i64* %3, align 8
  br label %175

144:                                              ; preds = %133
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9d112_client, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* @WORD_LEN, align 4
  %150 = call i64 @mt9d112_i2c_write(i32 %147, i32 13200, i32 %148, i32 %149)
  store i64 %150, i64* %8, align 8
  %151 = load i64, i64* %8, align 8
  %152 = icmp slt i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %144
  %154 = load i64, i64* %8, align 8
  store i64 %154, i64* %3, align 8
  br label %175

155:                                              ; preds = %144
  %156 = load i64, i64* @EINVAL, align 8
  %157 = sub nsw i64 0, %156
  store i64 %157, i64* %3, align 8
  br label %175

158:                                              ; preds = %129, %106, %83, %60, %37
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9d112_client, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @WORD_LEN, align 4
  %163 = call i64 @mt9d112_i2c_write(i32 %161, i32 13196, i32 41219, i32 %162)
  store i64 %163, i64* %8, align 8
  %164 = load i64, i64* %8, align 8
  %165 = icmp slt i64 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %158
  %167 = load i64, i64* %8, align 8
  store i64 %167, i64* %3, align 8
  br label %175

168:                                              ; preds = %158
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9d112_client, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @WORD_LEN, align 4
  %173 = call i64 @mt9d112_i2c_write(i32 %171, i32 13200, i32 5, i32 %172)
  store i64 %173, i64* %8, align 8
  %174 = load i64, i64* %8, align 8
  store i64 %174, i64* %3, align 8
  br label %175

175:                                              ; preds = %168, %166, %155, %153, %142, %130, %127, %116, %104, %93, %81, %70, %58, %47, %35, %24
  %176 = load i64, i64* %3, align 8
  ret i64 %176
}

declare dso_local i64 @mt9d112_i2c_write(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
