; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9d112.c_mt9d112_set_sensor_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9d112.c_mt9d112_set_sensor_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@mt9d112_client = common dso_local global %struct.TYPE_2__* null, align 8
@WORD_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @mt9d112_set_sensor_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mt9d112_set_sensor_mode(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 0, i64* %5, align 8
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %152 [
    i32 129, label %7
    i32 128, label %100
  ]

7:                                                ; preds = %1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9d112_client, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @WORD_LEN, align 4
  %12 = call i64 @mt9d112_i2c_write(i32 %10, i32 13196, i32 41484, i32 %11)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %7
  %16 = load i64, i64* %5, align 8
  store i64 %16, i64* %2, align 8
  br label %156

17:                                               ; preds = %7
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9d112_client, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @WORD_LEN, align 4
  %22 = call i64 @mt9d112_i2c_write(i32 %20, i32 13200, i32 4, i32 %21)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i64, i64* %5, align 8
  store i64 %26, i64* %2, align 8
  br label %156

27:                                               ; preds = %17
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9d112_client, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @WORD_LEN, align 4
  %32 = call i64 @mt9d112_i2c_write(i32 %30, i32 13196, i32 41493, i32 %31)
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i64, i64* %5, align 8
  store i64 %36, i64* %2, align 8
  br label %156

37:                                               ; preds = %27
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9d112_client, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @WORD_LEN, align 4
  %42 = call i64 @mt9d112_i2c_write(i32 %40, i32 13200, i32 4, i32 %41)
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %5, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i64, i64* %5, align 8
  store i64 %46, i64* %2, align 8
  br label %156

47:                                               ; preds = %37
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9d112_client, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @WORD_LEN, align 4
  %52 = call i64 @mt9d112_i2c_write(i32 %50, i32 13196, i32 41483, i32 %51)
  store i64 %52, i64* %5, align 8
  %53 = load i64, i64* %5, align 8
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i64, i64* %5, align 8
  store i64 %56, i64* %2, align 8
  br label %156

57:                                               ; preds = %47
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9d112_client, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @WORD_LEN, align 4
  %62 = call i64 @mt9d112_i2c_write(i32 %60, i32 13200, i32 0, i32 %61)
  store i64 %62, i64* %5, align 8
  %63 = load i64, i64* %5, align 8
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i64, i64* %5, align 8
  store i64 %66, i64* %2, align 8
  br label %156

67:                                               ; preds = %57
  store i32 592, i32* %4, align 4
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9d112_client, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @WORD_LEN, align 4
  %73 = call i64 @mt9d112_i2c_write(i32 %70, i32 13340, i32 %71, i32 %72)
  store i64 %73, i64* %5, align 8
  %74 = load i64, i64* %5, align 8
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = load i64, i64* %5, align 8
  store i64 %77, i64* %2, align 8
  br label %156

78:                                               ; preds = %67
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9d112_client, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @WORD_LEN, align 4
  %83 = call i64 @mt9d112_i2c_write(i32 %81, i32 13196, i32 41219, i32 %82)
  store i64 %83, i64* %5, align 8
  %84 = load i64, i64* %5, align 8
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %78
  %87 = load i64, i64* %5, align 8
  store i64 %87, i64* %2, align 8
  br label %156

88:                                               ; preds = %78
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9d112_client, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @WORD_LEN, align 4
  %93 = call i64 @mt9d112_i2c_write(i32 %91, i32 13200, i32 1, i32 %92)
  store i64 %93, i64* %5, align 8
  %94 = load i64, i64* %5, align 8
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = load i64, i64* %5, align 8
  store i64 %97, i64* %2, align 8
  br label %156

98:                                               ; preds = %88
  %99 = call i32 @mdelay(i32 5)
  br label %155

100:                                              ; preds = %1
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9d112_client, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @WORD_LEN, align 4
  %105 = call i64 @mt9d112_i2c_write(i32 %103, i32 13340, i32 288, i32 %104)
  store i64 %105, i64* %5, align 8
  %106 = load i64, i64* %5, align 8
  %107 = icmp slt i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %100
  %109 = load i64, i64* %5, align 8
  store i64 %109, i64* %2, align 8
  br label %156

110:                                              ; preds = %100
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9d112_client, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @WORD_LEN, align 4
  %115 = call i64 @mt9d112_i2c_write(i32 %113, i32 13196, i32 41248, i32 %114)
  store i64 %115, i64* %5, align 8
  %116 = load i64, i64* %5, align 8
  %117 = icmp slt i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %110
  %119 = load i64, i64* %5, align 8
  store i64 %119, i64* %2, align 8
  br label %156

120:                                              ; preds = %110
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9d112_client, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @WORD_LEN, align 4
  %125 = call i64 @mt9d112_i2c_write(i32 %123, i32 13200, i32 2, i32 %124)
  store i64 %125, i64* %5, align 8
  %126 = load i64, i64* %5, align 8
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %120
  %129 = load i64, i64* %5, align 8
  store i64 %129, i64* %2, align 8
  br label %156

130:                                              ; preds = %120
  %131 = call i32 @mdelay(i32 5)
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9d112_client, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @WORD_LEN, align 4
  %136 = call i64 @mt9d112_i2c_write(i32 %134, i32 13196, i32 41219, i32 %135)
  store i64 %136, i64* %5, align 8
  %137 = load i64, i64* %5, align 8
  %138 = icmp slt i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %130
  %140 = load i64, i64* %5, align 8
  store i64 %140, i64* %2, align 8
  br label %156

141:                                              ; preds = %130
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9d112_client, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @WORD_LEN, align 4
  %146 = call i64 @mt9d112_i2c_write(i32 %144, i32 13200, i32 2, i32 %145)
  store i64 %146, i64* %5, align 8
  %147 = load i64, i64* %5, align 8
  %148 = icmp slt i64 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %141
  %150 = load i64, i64* %5, align 8
  store i64 %150, i64* %2, align 8
  br label %156

151:                                              ; preds = %141
  br label %155

152:                                              ; preds = %1
  %153 = load i64, i64* @EINVAL, align 8
  %154 = sub nsw i64 0, %153
  store i64 %154, i64* %2, align 8
  br label %156

155:                                              ; preds = %151, %98
  store i64 0, i64* %2, align 8
  br label %156

156:                                              ; preds = %155, %152, %149, %139, %128, %118, %108, %96, %86, %76, %65, %55, %45, %35, %25, %15
  %157 = load i64, i64* %2, align 8
  ret i64 %157
}

declare dso_local i64 @mt9d112_i2c_write(i32, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
