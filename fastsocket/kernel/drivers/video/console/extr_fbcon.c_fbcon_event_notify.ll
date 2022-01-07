; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_fbcon_event_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_fbcon_event_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.fb_event = type { %struct.fb_videomode*, %struct.fb_info* }
%struct.fb_videomode = type { i32, i32 }
%struct.fb_info = type { i32 }
%struct.fb_con2fbmap = type { i32, i32 }
%struct.fb_blit_caps = type { i32, i32 }

@fbcon_has_exited = common dso_local global i64 0, align 8
@con2fb_map = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @fbcon_event_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fbcon_event_notify(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fb_event*, align 8
  %8 = alloca %struct.fb_info*, align 8
  %9 = alloca %struct.fb_videomode*, align 8
  %10 = alloca %struct.fb_con2fbmap*, align 8
  %11 = alloca %struct.fb_blit_caps*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.fb_event*
  store %struct.fb_event* %15, %struct.fb_event** %7, align 8
  %16 = load %struct.fb_event*, %struct.fb_event** %7, align 8
  %17 = getelementptr inbounds %struct.fb_event, %struct.fb_event* %16, i32 0, i32 1
  %18 = load %struct.fb_info*, %struct.fb_info** %17, align 8
  store %struct.fb_info* %18, %struct.fb_info** %8, align 8
  store i32 0, i32* %13, align 4
  %19 = load i64, i64* @fbcon_has_exited, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load i64, i64* %5, align 8
  %23 = icmp eq i64 %22, 140
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* %5, align 8
  %26 = icmp eq i64 %25, 138
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  br label %116

28:                                               ; preds = %24, %21, %3
  %29 = load i64, i64* %5, align 8
  switch i64 %29, label %115 [
    i64 128, label %30
    i64 130, label %33
    i64 135, label %36
    i64 134, label %39
    i64 133, label %42
    i64 139, label %49
    i64 140, label %55
    i64 138, label %58
    i64 129, label %61
    i64 137, label %74
    i64 141, label %89
    i64 132, label %97
    i64 136, label %100
    i64 131, label %109
  ]

30:                                               ; preds = %28
  %31 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %32 = call i32 @fbcon_suspended(%struct.fb_info* %31)
  br label %115

33:                                               ; preds = %28
  %34 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %35 = call i32 @fbcon_resumed(%struct.fb_info* %34)
  br label %115

36:                                               ; preds = %28
  %37 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %38 = call i32 @fbcon_modechanged(%struct.fb_info* %37)
  br label %115

39:                                               ; preds = %28
  %40 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %41 = call i32 @fbcon_set_all_vcs(%struct.fb_info* %40)
  br label %115

42:                                               ; preds = %28
  %43 = load %struct.fb_event*, %struct.fb_event** %7, align 8
  %44 = getelementptr inbounds %struct.fb_event, %struct.fb_event* %43, i32 0, i32 0
  %45 = load %struct.fb_videomode*, %struct.fb_videomode** %44, align 8
  store %struct.fb_videomode* %45, %struct.fb_videomode** %9, align 8
  %46 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %47 = load %struct.fb_videomode*, %struct.fb_videomode** %9, align 8
  %48 = call i32 @fbcon_mode_deleted(%struct.fb_info* %46, %struct.fb_videomode* %47)
  store i32 %48, i32* %13, align 4
  br label %115

49:                                               ; preds = %28
  %50 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %51 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @fbcon_fb_unbind(i32 %53)
  store i32 %54, i32* %13, align 4
  br label %115

55:                                               ; preds = %28
  %56 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %57 = call i32 @fbcon_fb_registered(%struct.fb_info* %56)
  store i32 %57, i32* %13, align 4
  br label %115

58:                                               ; preds = %28
  %59 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %60 = call i32 @fbcon_fb_unregistered(%struct.fb_info* %59)
  store i32 %60, i32* %13, align 4
  br label %115

61:                                               ; preds = %28
  %62 = load %struct.fb_event*, %struct.fb_event** %7, align 8
  %63 = getelementptr inbounds %struct.fb_event, %struct.fb_event* %62, i32 0, i32 0
  %64 = load %struct.fb_videomode*, %struct.fb_videomode** %63, align 8
  %65 = bitcast %struct.fb_videomode* %64 to %struct.fb_con2fbmap*
  store %struct.fb_con2fbmap* %65, %struct.fb_con2fbmap** %10, align 8
  %66 = load %struct.fb_con2fbmap*, %struct.fb_con2fbmap** %10, align 8
  %67 = getelementptr inbounds %struct.fb_con2fbmap, %struct.fb_con2fbmap* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %68, 1
  %70 = load %struct.fb_con2fbmap*, %struct.fb_con2fbmap** %10, align 8
  %71 = getelementptr inbounds %struct.fb_con2fbmap, %struct.fb_con2fbmap* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @set_con2fb_map(i32 %69, i32 %72, i32 1)
  store i32 %73, i32* %13, align 4
  br label %115

74:                                               ; preds = %28
  %75 = load %struct.fb_event*, %struct.fb_event** %7, align 8
  %76 = getelementptr inbounds %struct.fb_event, %struct.fb_event* %75, i32 0, i32 0
  %77 = load %struct.fb_videomode*, %struct.fb_videomode** %76, align 8
  %78 = bitcast %struct.fb_videomode* %77 to %struct.fb_con2fbmap*
  store %struct.fb_con2fbmap* %78, %struct.fb_con2fbmap** %10, align 8
  %79 = load i32*, i32** @con2fb_map, align 8
  %80 = load %struct.fb_con2fbmap*, %struct.fb_con2fbmap** %10, align 8
  %81 = getelementptr inbounds %struct.fb_con2fbmap, %struct.fb_con2fbmap* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %79, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.fb_con2fbmap*, %struct.fb_con2fbmap** %10, align 8
  %88 = getelementptr inbounds %struct.fb_con2fbmap, %struct.fb_con2fbmap* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  br label %115

89:                                               ; preds = %28
  %90 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %91 = load %struct.fb_event*, %struct.fb_event** %7, align 8
  %92 = getelementptr inbounds %struct.fb_event, %struct.fb_event* %91, i32 0, i32 0
  %93 = load %struct.fb_videomode*, %struct.fb_videomode** %92, align 8
  %94 = bitcast %struct.fb_videomode* %93 to i32*
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @fbcon_fb_blanked(%struct.fb_info* %90, i32 %95)
  br label %115

97:                                               ; preds = %28
  %98 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %99 = call i32 @fbcon_new_modelist(%struct.fb_info* %98)
  br label %115

100:                                              ; preds = %28
  %101 = load %struct.fb_event*, %struct.fb_event** %7, align 8
  %102 = getelementptr inbounds %struct.fb_event, %struct.fb_event* %101, i32 0, i32 0
  %103 = load %struct.fb_videomode*, %struct.fb_videomode** %102, align 8
  %104 = bitcast %struct.fb_videomode* %103 to %struct.fb_blit_caps*
  store %struct.fb_blit_caps* %104, %struct.fb_blit_caps** %11, align 8
  %105 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %106 = load %struct.fb_blit_caps*, %struct.fb_blit_caps** %11, align 8
  %107 = bitcast %struct.fb_blit_caps* %106 to %struct.fb_videomode*
  %108 = call i32 @fbcon_get_requirement(%struct.fb_info* %105, %struct.fb_videomode* %107)
  br label %115

109:                                              ; preds = %28
  %110 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %111 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @fbcon_remap_all(i32 %113)
  br label %115

115:                                              ; preds = %28, %109, %100, %97, %89, %74, %61, %58, %55, %49, %42, %39, %36, %33, %30
  br label %116

116:                                              ; preds = %115, %27
  %117 = load i32, i32* %13, align 4
  ret i32 %117
}

declare dso_local i32 @fbcon_suspended(%struct.fb_info*) #1

declare dso_local i32 @fbcon_resumed(%struct.fb_info*) #1

declare dso_local i32 @fbcon_modechanged(%struct.fb_info*) #1

declare dso_local i32 @fbcon_set_all_vcs(%struct.fb_info*) #1

declare dso_local i32 @fbcon_mode_deleted(%struct.fb_info*, %struct.fb_videomode*) #1

declare dso_local i32 @fbcon_fb_unbind(i32) #1

declare dso_local i32 @fbcon_fb_registered(%struct.fb_info*) #1

declare dso_local i32 @fbcon_fb_unregistered(%struct.fb_info*) #1

declare dso_local i32 @set_con2fb_map(i32, i32, i32) #1

declare dso_local i32 @fbcon_fb_blanked(%struct.fb_info*, i32) #1

declare dso_local i32 @fbcon_new_modelist(%struct.fb_info*) #1

declare dso_local i32 @fbcon_get_requirement(%struct.fb_info*, %struct.fb_videomode*) #1

declare dso_local i32 @fbcon_remap_all(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
