; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_industrialio-core.c___iio_add_event_config_attrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/extr_industrialio-core.c___iio_add_event_config_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.attribute** }
%struct.attribute = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32)* @__iio_add_event_config_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__iio_add_event_config_attrs(%struct.iio_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.attribute**, align 8
  %8 = alloca %struct.attribute**, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %10 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %58

13:                                               ; preds = %2
  %14 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %15 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.attribute**, %struct.attribute*** %20, align 8
  %22 = icmp ne %struct.attribute** %21, null
  br i1 %22, label %23, label %58

23:                                               ; preds = %13
  %24 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %25 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.attribute**, %struct.attribute*** %30, align 8
  store %struct.attribute** %31, %struct.attribute*** %7, align 8
  br label %32

32:                                               ; preds = %54, %23
  %33 = load %struct.attribute**, %struct.attribute*** %7, align 8
  %34 = load %struct.attribute*, %struct.attribute** %33, align 8
  %35 = icmp ne %struct.attribute* %34, null
  br i1 %35, label %36, label %57

36:                                               ; preds = %32
  %37 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %38 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.attribute**, %struct.attribute*** %7, align 8
  %41 = load %struct.attribute*, %struct.attribute** %40, align 8
  %42 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %43 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @sysfs_add_file_to_group(i32* %39, %struct.attribute* %41, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %36
  br label %59

54:                                               ; preds = %36
  %55 = load %struct.attribute**, %struct.attribute*** %7, align 8
  %56 = getelementptr inbounds %struct.attribute*, %struct.attribute** %55, i32 1
  store %struct.attribute** %56, %struct.attribute*** %7, align 8
  br label %32

57:                                               ; preds = %32
  br label %58

58:                                               ; preds = %57, %13, %2
  store i32 0, i32* %3, align 4
  br label %91

59:                                               ; preds = %53
  %60 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %61 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load %struct.attribute**, %struct.attribute*** %66, align 8
  store %struct.attribute** %67, %struct.attribute*** %8, align 8
  br label %68

68:                                               ; preds = %72, %59
  %69 = load %struct.attribute**, %struct.attribute*** %8, align 8
  %70 = load %struct.attribute**, %struct.attribute*** %7, align 8
  %71 = icmp ne %struct.attribute** %69, %70
  br i1 %71, label %72, label %89

72:                                               ; preds = %68
  %73 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %74 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load %struct.attribute**, %struct.attribute*** %8, align 8
  %77 = load %struct.attribute*, %struct.attribute** %76, align 8
  %78 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %79 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @sysfs_remove_file_from_group(i32* %75, %struct.attribute* %77, i32 %85)
  %87 = load %struct.attribute**, %struct.attribute*** %8, align 8
  %88 = getelementptr inbounds %struct.attribute*, %struct.attribute** %87, i32 1
  store %struct.attribute** %88, %struct.attribute*** %8, align 8
  br label %68

89:                                               ; preds = %68
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %89, %58
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @sysfs_add_file_to_group(i32*, %struct.attribute*, i32) #1

declare dso_local i32 @sysfs_remove_file_from_group(i32*, %struct.attribute*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
