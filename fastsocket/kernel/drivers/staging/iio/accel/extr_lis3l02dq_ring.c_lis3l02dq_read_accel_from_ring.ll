; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_lis3l02dq_ring.c_lis3l02dq_read_accel_from_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_lis3l02dq_ring.c_lis3l02dq_read_accel_from_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_scan_el = type { i64, i32 }
%struct.iio_dev_attr = type { i64 }
%struct.iio_dev = type { %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, i32*)*, i32 (%struct.TYPE_7__*)* }
%struct.TYPE_5__ = type { i64* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ring %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lis3l02dq_read_accel_from_ring(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iio_scan_el*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.iio_dev_attr*, align 8
  %13 = alloca %struct.iio_dev*, align 8
  %14 = alloca i32*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.iio_scan_el* null, %struct.iio_scan_el** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %16 = call %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute* %15)
  store %struct.iio_dev_attr* %16, %struct.iio_dev_attr** %12, align 8
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call %struct.iio_dev* @dev_get_drvdata(%struct.device* %17)
  store %struct.iio_dev* %18, %struct.iio_dev** %13, align 8
  br label %19

19:                                               ; preds = %50, %3
  %20 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %21 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %19
  %31 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %32 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.device_attribute*
  %41 = call %struct.iio_scan_el* @to_iio_scan_el(%struct.device_attribute* %40)
  store %struct.iio_scan_el* %41, %struct.iio_scan_el** %8, align 8
  %42 = load %struct.iio_scan_el*, %struct.iio_scan_el** %8, align 8
  %43 = getelementptr inbounds %struct.iio_scan_el, %struct.iio_scan_el* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.iio_dev_attr*, %struct.iio_dev_attr** %12, align 8
  %46 = getelementptr inbounds %struct.iio_dev_attr, %struct.iio_dev_attr* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %30
  br label %53

50:                                               ; preds = %30
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  br label %19

53:                                               ; preds = %49, %19
  %54 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %55 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %54, i32 0, i32 1
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %53
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %9, align 4
  br label %137

67:                                               ; preds = %53
  %68 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %69 = load %struct.iio_scan_el*, %struct.iio_scan_el** %8, align 8
  %70 = getelementptr inbounds %struct.iio_scan_el, %struct.iio_scan_el* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @iio_scan_mask_query(%struct.iio_dev* %68, i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %137

76:                                               ; preds = %67
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %113

79:                                               ; preds = %76
  %80 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %81 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %80, i32 0, i32 0
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %84, align 8
  %86 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %87 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = call i32 %85(%struct.TYPE_7__* %88)
  %90 = load i32, i32* @GFP_KERNEL, align 4
  %91 = call i32* @kmalloc(i32 %89, i32 %90)
  store i32* %91, i32** %14, align 8
  %92 = load i32*, i32** %14, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %79
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %146

97:                                               ; preds = %79
  %98 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %99 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %98, i32 0, i32 0
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32 (%struct.TYPE_7__*, i32*)*, i32 (%struct.TYPE_7__*, i32*)** %102, align 8
  %104 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %105 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %104, i32 0, i32 0
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = load i32*, i32** %14, align 8
  %108 = call i32 %103(%struct.TYPE_7__* %106, i32* %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %97
  br label %134

112:                                              ; preds = %97
  br label %116

113:                                              ; preds = %76
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %9, align 4
  br label %137

116:                                              ; preds = %112
  %117 = load %struct.iio_dev*, %struct.iio_dev** %13, align 8
  %118 = load %struct.iio_scan_el*, %struct.iio_scan_el** %8, align 8
  %119 = getelementptr inbounds %struct.iio_scan_el, %struct.iio_scan_el* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @iio_scan_mask_count_to_right(%struct.iio_dev* %117, i32 %120)
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %10, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %116
  %125 = load i32, i32* %10, align 4
  store i32 %125, i32* %9, align 4
  br label %134

126:                                              ; preds = %116
  %127 = load i8*, i8** %7, align 8
  %128 = load i32*, i32** %14, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @sprintf(i8* %127, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %132)
  store i32 %133, i32* %10, align 4
  br label %134

134:                                              ; preds = %126, %124, %111
  %135 = load i32*, i32** %14, align 8
  %136 = call i32 @kfree(i32* %135)
  br label %137

137:                                              ; preds = %134, %113, %75, %64
  %138 = load i32, i32* %9, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = load i32, i32* %9, align 4
  br label %144

142:                                              ; preds = %137
  %143 = load i32, i32* %10, align 4
  br label %144

144:                                              ; preds = %142, %140
  %145 = phi i32 [ %141, %140 ], [ %143, %142 ]
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %144, %94
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local %struct.iio_dev_attr* @to_iio_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.iio_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.iio_scan_el* @to_iio_scan_el(%struct.device_attribute*) #1

declare dso_local i32 @iio_scan_mask_query(%struct.iio_dev*, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @iio_scan_mask_count_to_right(%struct.iio_dev*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
