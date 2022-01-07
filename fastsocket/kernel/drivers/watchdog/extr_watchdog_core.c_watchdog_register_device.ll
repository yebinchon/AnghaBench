; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_watchdog_core.c_watchdog_register_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_watchdog_core.c_watchdog_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i64, i64, i32, i32, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__*, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Invalid min and max timeout values, resetting to 0!\0A\00", align 1
@watchdog_ida = common dso_local global i32 0, align 4
@MAX_DOGS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@watchdog_class = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"watchdog%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @watchdog_register_device(%struct.watchdog_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  %7 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %8 = icmp eq %struct.watchdog_device* %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %1
  %10 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %11 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %10, i32 0, i32 8
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %16 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %15, i32 0, i32 7
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = icmp eq %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %14, %9, %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %137

22:                                               ; preds = %14
  %23 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %24 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %23, i32 0, i32 7
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %22
  %30 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %31 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %30, i32 0, i32 7
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %29, %22
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %137

39:                                               ; preds = %29
  %40 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %41 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %44 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %39
  %48 = call i32 @pr_info(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %50 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %52 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %47, %39
  %54 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %55 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %54, i32 0, i32 6
  %56 = call i32 @mutex_init(i32* %55)
  %57 = load i32, i32* @MAX_DOGS, align 4
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call i32 @ida_simple_get(i32* @watchdog_ida, i32 0, i32 %57, i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %137

64:                                               ; preds = %53
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %67 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %69 = call i32 @watchdog_dev_register(%struct.watchdog_device* %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %105

72:                                               ; preds = %64
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @ida_simple_remove(i32* @watchdog_ida, i32 %73)
  %75 = load i32, i32* %5, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @EBUSY, align 4
  %80 = sub nsw i32 0, %79
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %84, label %82

82:                                               ; preds = %77, %72
  %83 = load i32, i32* %4, align 4
  store i32 %83, i32* %2, align 4
  br label %137

84:                                               ; preds = %77
  %85 = load i32, i32* @MAX_DOGS, align 4
  %86 = load i32, i32* @GFP_KERNEL, align 4
  %87 = call i32 @ida_simple_get(i32* @watchdog_ida, i32 1, i32 %85, i32 %86)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* %5, align 4
  store i32 %91, i32* %2, align 4
  br label %137

92:                                               ; preds = %84
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %95 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %97 = call i32 @watchdog_dev_register(%struct.watchdog_device* %96)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %92
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @ida_simple_remove(i32* @watchdog_ida, i32 %101)
  %103 = load i32, i32* %4, align 4
  store i32 %103, i32* %2, align 4
  br label %137

104:                                              ; preds = %92
  br label %105

105:                                              ; preds = %104, %64
  %106 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %107 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* @watchdog_class, align 4
  %111 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %112 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %116 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @device_create(i32 %110, i32 %113, i32 %114, i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %117)
  %119 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %120 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 4
  %121 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %122 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @IS_ERR(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %105
  %127 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %128 = call i32 @watchdog_dev_unregister(%struct.watchdog_device* %127)
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @ida_simple_remove(i32* @watchdog_ida, i32 %129)
  %131 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %132 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @PTR_ERR(i32 %133)
  store i32 %134, i32* %4, align 4
  %135 = load i32, i32* %4, align 4
  store i32 %135, i32* %2, align 4
  br label %137

136:                                              ; preds = %105
  store i32 0, i32* %2, align 4
  br label %137

137:                                              ; preds = %136, %126, %100, %90, %82, %62, %36, %19
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @watchdog_dev_register(%struct.watchdog_device*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @device_create(i32, i32, i32, i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @watchdog_dev_unregister(%struct.watchdog_device*) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
