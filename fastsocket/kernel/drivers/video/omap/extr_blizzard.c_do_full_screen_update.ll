; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_blizzard.c_do_full_screen_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_blizzard.c_do_full_screen_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_11__*, i64, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.plane_info* }
%struct.TYPE_11__ = type { i32 (i32, i32, i32, %struct.blizzard_request*)*, i32 (i32)* }
%struct.blizzard_request = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 (i32, i32)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32)* }
%struct.plane_info = type { i32, i32, i32, i32, i32, i32, i32 }

@blizzard = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str = private unnamed_addr constant [13 x i8] c"pw %d ph %d\0A\00", align 1
@OMAPFB_CHANNEL_OUT_LCD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"sw %d sh %d\0A\00", align 1
@OMAPFB_FORMAT_FLAG_TEARSYNC = common dso_local global i32 0, align 4
@OMAPFB_FORMAT_FLAG_FORCE_VSYNC = common dso_local global i32 0, align 4
@BLIZZARD_COLOR_RGB565 = common dso_local global i32 0, align 4
@request_complete = common dso_local global i32 0, align 4
@REQ_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blizzard_request*)* @do_full_screen_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_full_screen_update(%struct.blizzard_request* %0) #0 {
  %2 = alloca %struct.blizzard_request*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.plane_info*, align 8
  store %struct.blizzard_request* %0, %struct.blizzard_request** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %68, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 3
  br i1 %8, label %9, label %71

9:                                                ; preds = %6
  %10 = load %struct.plane_info*, %struct.plane_info** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 7), align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %10, i64 %12
  store %struct.plane_info* %13, %struct.plane_info** %5, align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 0), align 8
  %15 = load i32, i32* %3, align 4
  %16 = shl i32 1, %15
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %9
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 6), align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32 (i32, i32)*, i32 (i32, i32)** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 %22(i32 %23, i32 0)
  br label %68

25:                                               ; preds = %9
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 5), align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.plane_info*, %struct.plane_info** %5, align 8
  %30 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.plane_info*, %struct.plane_info** %5, align 8
  %33 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_dbg(i32 %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 6), align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32)** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @OMAPFB_CHANNEL_OUT_LCD, align 4
  %41 = load %struct.plane_info*, %struct.plane_info** %5, align 8
  %42 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.plane_info*, %struct.plane_info** %5, align 8
  %45 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.plane_info*, %struct.plane_info** %5, align 8
  %48 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.plane_info*, %struct.plane_info** %5, align 8
  %51 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.plane_info*, %struct.plane_info** %5, align 8
  %54 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.plane_info*, %struct.plane_info** %5, align 8
  %57 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.plane_info*, %struct.plane_info** %5, align 8
  %60 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 %38(i32 %39, i32 %40, i32 %43, i32 %46, i32 %49, i32 %52, i32 %55, i32 %58, i32 %61)
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 6), align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32 (i32, i32)*, i32 (i32, i32)** %64, align 8
  %66 = load i32, i32* %3, align 4
  %67 = call i32 %65(i32 %66, i32 1)
  br label %68

68:                                               ; preds = %25, %19
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %3, align 4
  br label %6

71:                                               ; preds = %6
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 5), align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 2), align 8
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 1), align 4
  %77 = call i32 @dev_dbg(i32 %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %76)
  %78 = call i32 (...) @blizzard_wait_line_buffer()
  %79 = load %struct.blizzard_request*, %struct.blizzard_request** %2, align 8
  %80 = getelementptr inbounds %struct.blizzard_request, %struct.blizzard_request* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @OMAPFB_FORMAT_FLAG_TEARSYNC, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %71
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 2), align 8
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 1), align 4
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 1), align 4
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 1), align 4
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @OMAPFB_FORMAT_FLAG_FORCE_VSYNC, align 4
  %95 = and i32 %93, %94
  %96 = call i32 @enable_tearsync(i32 0, i32 %89, i32 %90, i32 %91, i32 %92, i32 %95)
  br label %99

97:                                               ; preds = %71
  %98 = call i32 (...) @disable_tearsync()
  br label %99

99:                                               ; preds = %97, %88
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 2), align 8
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 1), align 4
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 2), align 8
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 1), align 4
  %104 = load i32, i32* @BLIZZARD_COLOR_RGB565, align 4
  %105 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 4), align 8
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @set_window_regs(i32 0, i32 0, i32 %100, i32 %101, i32 0, i32 0, i32 %102, i32 %103, i32 %104, i64 %105, i32 %106)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 4), align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 3), align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  %110 = load i32 (i32)*, i32 (i32)** %109, align 8
  %111 = call i32 %110(i32 16)
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 3), align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i32 (i32, i32, i32, %struct.blizzard_request*)*, i32 (i32, i32, i32, %struct.blizzard_request*)** %113, align 8
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 2), align 8
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @blizzard, i32 0, i32 1), align 4
  %117 = load i32, i32* @request_complete, align 4
  %118 = load %struct.blizzard_request*, %struct.blizzard_request** %2, align 8
  %119 = call i32 %114(i32 %115, i32 %116, i32 %117, %struct.blizzard_request* %118)
  %120 = load i32, i32* @REQ_PENDING, align 4
  ret i32 %120
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @blizzard_wait_line_buffer(...) #1

declare dso_local i32 @enable_tearsync(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @disable_tearsync(...) #1

declare dso_local i32 @set_window_regs(i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
