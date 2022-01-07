; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_set_con2fb_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_set_con2fb_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.vc_data* }
%struct.vc_data = type { i32 }
%struct.fb_info = type { i32 }

@vc_cons = common dso_local global %struct.TYPE_2__* null, align 8
@con2fb_map = common dso_local global i32* null, align 8
@registered_fb = common dso_local global %struct.fb_info** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@fb_con = common dso_local global i32 0, align 4
@info_idx = common dso_local global i32 0, align 4
@fg_console = common dso_local global i64 0, align 8
@logo_shown = common dso_local global i64 0, align 8
@FBCON_LOGO_DONTSHOW = common dso_local global i64 0, align 8
@con2fb_map_boot = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @set_con2fb_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_con2fb_map(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vc_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fb_info*, align 8
  %11 = alloca %struct.fb_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vc_cons, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.vc_data*, %struct.vc_data** %19, align 8
  store %struct.vc_data* %20, %struct.vc_data** %8, align 8
  %21 = load i32*, i32** @con2fb_map, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load %struct.fb_info**, %struct.fb_info*** @registered_fb, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %26, i64 %28
  %30 = load %struct.fb_info*, %struct.fb_info** %29, align 8
  store %struct.fb_info* %30, %struct.fb_info** %10, align 8
  store %struct.fb_info* null, %struct.fb_info** %11, align 8
  store i32 0, i32* %13, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %138

35:                                               ; preds = %3
  %36 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %37 = icmp ne %struct.fb_info* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %138

41:                                               ; preds = %35
  %42 = call i32 (...) @search_for_mapped_con()
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = call i32 @con_is_bound(i32* @fb_con)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44, %41
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* @info_idx, align 4
  %49 = call i32 @fbcon_takeover(i32 0)
  store i32 %49, i32* %4, align 4
  br label %138

50:                                               ; preds = %44
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, -1
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load %struct.fb_info**, %struct.fb_info*** @registered_fb, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %54, i64 %56
  %58 = load %struct.fb_info*, %struct.fb_info** %57, align 8
  store %struct.fb_info* %58, %struct.fb_info** %11, align 8
  br label %59

59:                                               ; preds = %53, %50
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @search_fb_in_map(i32 %60)
  store i32 %61, i32* %12, align 4
  %62 = call i32 (...) @acquire_console_sem()
  %63 = load i32, i32* %6, align 4
  %64 = load i32*, i32** @con2fb_map, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %63, i32* %67, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %79, label %70

70:                                               ; preds = %59
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %70
  %74 = load %struct.vc_data*, %struct.vc_data** %8, align 8
  %75 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @con2fb_acquire_newinfo(%struct.vc_data* %74, %struct.fb_info* %75, i32 %76, i32 %77)
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %73, %70, %59
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %97, label %82

82:                                               ; preds = %79
  %83 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %84 = icmp ne %struct.fb_info* %83, null
  br i1 %84, label %85, label %97

85:                                               ; preds = %82
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @search_fb_in_map(i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %85
  %90 = load %struct.vc_data*, %struct.vc_data** %8, align 8
  %91 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %92 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @con2fb_release_oldinfo(%struct.vc_data* %90, %struct.fb_info* %91, %struct.fb_info* %92, i32 %93, i32 %94, i32 %95)
  store i32 %96, i32* %13, align 4
  br label %97

97:                                               ; preds = %89, %85, %82, %79
  %98 = load i32, i32* %13, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %129, label %100

100:                                              ; preds = %97
  %101 = load i64, i64* @fg_console, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %100
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %103
  %107 = load i64, i64* @logo_shown, align 8
  %108 = load i64, i64* @FBCON_LOGO_DONTSHOW, align 8
  %109 = icmp ne i64 %107, %108
  br label %110

110:                                              ; preds = %106, %103, %100
  %111 = phi i1 [ false, %103 ], [ false, %100 ], [ %109, %106 ]
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %14, align 4
  %113 = load i32, i32* %12, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %110
  %116 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %117 = call i32 @fbcon_add_cursor_timer(%struct.fb_info* %116)
  br label %118

118:                                              ; preds = %115, %110
  %119 = load i32, i32* %6, align 4
  %120 = load i32*, i32** @con2fb_map_boot, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32 %119, i32* %123, align 4
  %124 = load %struct.vc_data*, %struct.vc_data** %8, align 8
  %125 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* %14, align 4
  %128 = call i32 @con2fb_init_display(%struct.vc_data* %124, %struct.fb_info* %125, i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %118, %97
  %130 = load i32, i32* @info_idx, align 4
  %131 = call i32 @search_fb_in_map(i32 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %129
  %134 = load i32, i32* %6, align 4
  store i32 %134, i32* @info_idx, align 4
  br label %135

135:                                              ; preds = %133, %129
  %136 = call i32 (...) @release_console_sem()
  %137 = load i32, i32* %13, align 4
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %135, %47, %38, %34
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i32 @search_for_mapped_con(...) #1

declare dso_local i32 @con_is_bound(i32*) #1

declare dso_local i32 @fbcon_takeover(i32) #1

declare dso_local i32 @search_fb_in_map(i32) #1

declare dso_local i32 @acquire_console_sem(...) #1

declare dso_local i32 @con2fb_acquire_newinfo(%struct.vc_data*, %struct.fb_info*, i32, i32) #1

declare dso_local i32 @con2fb_release_oldinfo(%struct.vc_data*, %struct.fb_info*, %struct.fb_info*, i32, i32, i32) #1

declare dso_local i32 @fbcon_add_cursor_timer(%struct.fb_info*) #1

declare dso_local i32 @con2fb_init_display(%struct.vc_data*, %struct.fb_info*, i32, i32) #1

declare dso_local i32 @release_console_sem(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
