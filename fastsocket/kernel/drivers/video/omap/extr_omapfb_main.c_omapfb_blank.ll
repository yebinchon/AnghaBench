; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_omapfb_main.c_omapfb_blank.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_omapfb_main.c_omapfb_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.omapfb_plane_struct* }
%struct.omapfb_plane_struct = type { %struct.omapfb_device* }
%struct.omapfb_device = type { i32, %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 (...)*, i32 (...)*, i32 (...)* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)* }

@OMAPFB_SUSPENDED = common dso_local global i32 0, align 4
@OMAPFB_ACTIVE = common dso_local global i32 0, align 4
@OMAPFB_MANUAL_UPDATE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @omapfb_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapfb_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.omapfb_plane_struct*, align 8
  %6 = alloca %struct.omapfb_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 0
  %11 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %10, align 8
  store %struct.omapfb_plane_struct* %11, %struct.omapfb_plane_struct** %5, align 8
  %12 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %5, align 8
  %13 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %12, i32 0, i32 0
  %14 = load %struct.omapfb_device*, %struct.omapfb_device** %13, align 8
  store %struct.omapfb_device* %14, %struct.omapfb_device** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %16 = call i32 @omapfb_rqueue_lock(%struct.omapfb_device* %15)
  %17 = load i32, i32* %3, align 4
  switch i32 %17, label %96 [
    i32 128, label %18
    i32 129, label %62
  ]

18:                                               ; preds = %2
  %19 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %20 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @OMAPFB_SUSPENDED, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %61

24:                                               ; preds = %18
  %25 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %26 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i32 (...)*, i32 (...)** %28, align 8
  %30 = icmp ne i32 (...)* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %33 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i32 (...)*, i32 (...)** %35, align 8
  %37 = call i32 (...) %36()
  br label %38

38:                                               ; preds = %31, %24
  %39 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %40 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %39, i32 0, i32 2
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %42, align 8
  %44 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %45 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %44, i32 0, i32 2
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = call i32 %43(%struct.TYPE_5__* %46)
  %48 = load i32, i32* @OMAPFB_ACTIVE, align 4
  %49 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %50 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %52 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32 (...)*, i32 (...)** %54, align 8
  %56 = call i32 (...) %55()
  %57 = load i32, i32* @OMAPFB_MANUAL_UPDATE, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %38
  store i32 1, i32* %7, align 4
  br label %60

60:                                               ; preds = %59, %38
  br label %61

61:                                               ; preds = %60, %18
  br label %99

62:                                               ; preds = %2
  %63 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %64 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @OMAPFB_ACTIVE, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %95

68:                                               ; preds = %62
  %69 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %70 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %69, i32 0, i32 2
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %72, align 8
  %74 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %75 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %74, i32 0, i32 2
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = call i32 %73(%struct.TYPE_5__* %76)
  %78 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %79 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32 (...)*, i32 (...)** %81, align 8
  %83 = icmp ne i32 (...)* %82, null
  br i1 %83, label %84, label %91

84:                                               ; preds = %68
  %85 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %86 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %85, i32 0, i32 1
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32 (...)*, i32 (...)** %88, align 8
  %90 = call i32 (...) %89()
  br label %91

91:                                               ; preds = %84, %68
  %92 = load i32, i32* @OMAPFB_SUSPENDED, align 4
  %93 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %94 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  br label %95

95:                                               ; preds = %91, %62
  br label %99

96:                                               ; preds = %2
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %96, %95, %61
  %100 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %101 = call i32 @omapfb_rqueue_unlock(%struct.omapfb_device* %100)
  %102 = load i32, i32* %8, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %109 = call i32 @omapfb_update_full_screen(%struct.fb_info* %108)
  store i32 %109, i32* %8, align 4
  br label %110

110:                                              ; preds = %107, %104, %99
  %111 = load i32, i32* %8, align 4
  ret i32 %111
}

declare dso_local i32 @omapfb_rqueue_lock(%struct.omapfb_device*) #1

declare dso_local i32 @omapfb_rqueue_unlock(%struct.omapfb_device*) #1

declare dso_local i32 @omapfb_update_full_screen(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
