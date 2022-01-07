; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_hwa742.c_send_frame_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_hwa742.c_send_frame_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { i32 (i32, i32, i32, %struct.hwa742_request*)*, i32 (i32)* }
%struct.hwa742_request = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.update_param }
%struct.update_param = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 (i32, i32)*, i32 (i32, i32, i64, i32, i32, i32, i32, i32, i32)* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@hwa742 = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@OMAPFB_FORMAT_FLAG_TEARSYNC = common dso_local global i32 0, align 4
@OMAPFB_FORMAT_FLAG_FORCE_VSYNC = common dso_local global i32 0, align 4
@OMAPFB_PLANE_GFX = common dso_local global i32 0, align 4
@OMAPFB_CHANNEL_OUT_LCD = common dso_local global i32 0, align 4
@request_complete = common dso_local global i32 0, align 4
@REQ_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hwa742_request*)* @send_frame_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_frame_handler(%struct.hwa742_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hwa742_request*, align 8
  %4 = alloca %struct.update_param*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.hwa742_request* %0, %struct.hwa742_request** %3, align 8
  %17 = load %struct.hwa742_request*, %struct.hwa742_request** %3, align 8
  %18 = getelementptr inbounds %struct.hwa742_request, %struct.hwa742_request* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  store %struct.update_param* %19, %struct.update_param** %4, align 8
  %20 = load %struct.update_param*, %struct.update_param** %4, align 8
  %21 = getelementptr inbounds %struct.update_param, %struct.update_param* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  %23 = load %struct.update_param*, %struct.update_param** %4, align 8
  %24 = getelementptr inbounds %struct.update_param, %struct.update_param* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  %26 = load %struct.update_param*, %struct.update_param** %4, align 8
  %27 = getelementptr inbounds %struct.update_param, %struct.update_param* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = load %struct.update_param*, %struct.update_param** %4, align 8
  %30 = getelementptr inbounds %struct.update_param, %struct.update_param* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  %32 = load %struct.update_param*, %struct.update_param** %4, align 8
  %33 = getelementptr inbounds %struct.update_param, %struct.update_param* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %13, align 4
  %35 = load %struct.update_param*, %struct.update_param** %4, align 8
  %36 = getelementptr inbounds %struct.update_param, %struct.update_param* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %14, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @hwa742, i32 0, i32 4), align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %15, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @hwa742, i32 0, i32 4), align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %13, align 4
  switch i32 %48, label %52 [
    i32 128, label %49
    i32 129, label %50
    i32 130, label %51
  ]

49:                                               ; preds = %1
  store i32 16, i32* %9, align 4
  store i32 8, i32* %10, align 4
  store i32 37, i32* %11, align 4
  br label %55

50:                                               ; preds = %1
  store i32 12, i32* %9, align 4
  store i32 9, i32* %10, align 4
  store i32 37, i32* %11, align 4
  br label %55

51:                                               ; preds = %1
  store i32 16, i32* %9, align 4
  store i32 1, i32* %10, align 4
  store i32 5, i32* %11, align 4
  br label %55

52:                                               ; preds = %1
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %139

55:                                               ; preds = %51, %50, %49
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @hwa742, i32 0, i32 0), align 8
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @hwa742, i32 0, i32 1), align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %59, %55
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @set_format_regs(i32 %64, i32 %65, i32 %66)
  %68 = load i32, i32* %13, align 4
  store i32 %68, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @hwa742, i32 0, i32 1), align 4
  %69 = load i32, i32* %14, align 4
  store i32 %69, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @hwa742, i32 0, i32 0), align 8
  br label %70

70:                                               ; preds = %63, %59
  %71 = load %struct.hwa742_request*, %struct.hwa742_request** %3, align 8
  %72 = getelementptr inbounds %struct.hwa742_request, %struct.hwa742_request* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.update_param, %struct.update_param* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* @OMAPFB_FORMAT_FLAG_TEARSYNC, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %70
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* @OMAPFB_FORMAT_FLAG_FORCE_VSYNC, align 4
  %87 = and i32 %85, %86
  %88 = call i32 @enable_tearsync(i32 %81, i32 %82, i32 %83, i32 %84, i32 %87)
  br label %91

89:                                               ; preds = %70
  %90 = call i32 (...) @disable_tearsync()
  br label %91

91:                                               ; preds = %89, %80
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %94, %95
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %97, %98
  %100 = call i32 @set_window_regs(i32 %92, i32 %93, i32 %96, i32 %99)
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %6, align 4
  %103 = mul nsw i32 %101, %102
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %103, %104
  %106 = load i32, i32* %9, align 4
  %107 = mul nsw i32 %105, %106
  %108 = sdiv i32 %107, 8
  %109 = sext i32 %108 to i64
  store i64 %109, i64* %12, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @hwa742, i32 0, i32 3), align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load i32 (i32, i32, i64, i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i64, i32, i32, i32, i32, i32, i32)** %111, align 8
  %113 = load i32, i32* @OMAPFB_PLANE_GFX, align 4
  %114 = load i32, i32* @OMAPFB_CHANNEL_OUT_LCD, align 4
  %115 = load i64, i64* %12, align 8
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %13, align 4
  %120 = call i32 %112(i32 %113, i32 %114, i64 %115, i32 %116, i32 0, i32 0, i32 %117, i32 %118, i32 %119)
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @hwa742, i32 0, i32 2), align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  %123 = load i32 (i32)*, i32 (i32)** %122, align 8
  %124 = call i32 %123(i32 16)
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @hwa742, i32 0, i32 3), align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i32 (i32, i32)*, i32 (i32, i32)** %126, align 8
  %128 = load i32, i32* @OMAPFB_PLANE_GFX, align 4
  %129 = call i32 %127(i32 %128, i32 1)
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @hwa742, i32 0, i32 2), align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load i32 (i32, i32, i32, %struct.hwa742_request*)*, i32 (i32, i32, i32, %struct.hwa742_request*)** %131, align 8
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* @request_complete, align 4
  %136 = load %struct.hwa742_request*, %struct.hwa742_request** %3, align 8
  %137 = call i32 %132(i32 %133, i32 %134, i32 %135, %struct.hwa742_request* %136)
  %138 = load i32, i32* @REQ_PENDING, align 4
  store i32 %138, i32* %2, align 4
  br label %139

139:                                              ; preds = %91, %52
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local i32 @set_format_regs(i32, i32, i32) #1

declare dso_local i32 @enable_tearsync(i32, i32, i32, i32, i32) #1

declare dso_local i32 @disable_tearsync(...) #1

declare dso_local i32 @set_window_regs(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
