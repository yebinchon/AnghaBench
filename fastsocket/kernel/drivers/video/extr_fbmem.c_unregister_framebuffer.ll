; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fbmem.c_unregister_framebuffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fbmem.c_unregister_framebuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { {}* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.fb_event = type { %struct.fb_info* }

@registered_fb = common dso_local global i32** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@FB_EVENT_FB_UNBIND = common dso_local global i32 0, align 4
@FB_PIXMAP_DEFAULT = common dso_local global i32 0, align 4
@num_registered_fb = common dso_local global i32 0, align 4
@fb_class = common dso_local global i32 0, align 4
@FB_MAJOR = common dso_local global i32 0, align 4
@FB_EVENT_FB_UNREGISTERED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unregister_framebuffer(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_event, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = load i32**, i32*** @registered_fb, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32*, i32** %10, i64 %12
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  br label %96

19:                                               ; preds = %1
  %20 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %21 = call i32 @lock_fb_info(%struct.fb_info* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %98

26:                                               ; preds = %19
  %27 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %28 = getelementptr inbounds %struct.fb_event, %struct.fb_event* %4, i32 0, i32 0
  store %struct.fb_info* %27, %struct.fb_info** %28, align 8
  %29 = load i32, i32* @FB_EVENT_FB_UNBIND, align 4
  %30 = call i32 @fb_notifier_call_chain(i32 %29, %struct.fb_event* %4)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %32 = call i32 @unlock_fb_info(%struct.fb_info* %31)
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %96

38:                                               ; preds = %26
  %39 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %40 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %38
  %45 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %46 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @FB_PIXMAP_DEFAULT, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %44
  %53 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %54 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @kfree(i64 %56)
  br label %58

58:                                               ; preds = %52, %44, %38
  %59 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %60 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %59, i32 0, i32 2
  %61 = call i32 @fb_destroy_modelist(i32* %60)
  %62 = load i32**, i32*** @registered_fb, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  store i32* null, i32** %65, align 8
  %66 = load i32, i32* @num_registered_fb, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* @num_registered_fb, align 4
  %68 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %69 = call i32 @fb_cleanup_device(%struct.fb_info* %68)
  %70 = load i32, i32* @fb_class, align 4
  %71 = load i32, i32* @FB_MAJOR, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @MKDEV(i32 %71, i32 %72)
  %74 = call i32 @device_destroy(i32 %70, i32 %73)
  %75 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %76 = getelementptr inbounds %struct.fb_event, %struct.fb_event* %4, i32 0, i32 0
  store %struct.fb_info* %75, %struct.fb_info** %76, align 8
  %77 = load i32, i32* @FB_EVENT_FB_UNREGISTERED, align 4
  %78 = call i32 @fb_notifier_call_chain(i32 %77, %struct.fb_event* %4)
  %79 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %80 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = bitcast {}** %82 to i32 (%struct.fb_info*)**
  %84 = load i32 (%struct.fb_info*)*, i32 (%struct.fb_info*)** %83, align 8
  %85 = icmp ne i32 (%struct.fb_info*)* %84, null
  br i1 %85, label %86, label %95

86:                                               ; preds = %58
  %87 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %88 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = bitcast {}** %90 to i32 (%struct.fb_info*)**
  %92 = load i32 (%struct.fb_info*)*, i32 (%struct.fb_info*)** %91, align 8
  %93 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %94 = call i32 %92(%struct.fb_info* %93)
  br label %95

95:                                               ; preds = %86, %58
  br label %96

96:                                               ; preds = %95, %35, %16
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %96, %23
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @lock_fb_info(%struct.fb_info*) #1

declare dso_local i32 @fb_notifier_call_chain(i32, %struct.fb_event*) #1

declare dso_local i32 @unlock_fb_info(%struct.fb_info*) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @fb_destroy_modelist(i32*) #1

declare dso_local i32 @fb_cleanup_device(%struct.fb_info*) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
