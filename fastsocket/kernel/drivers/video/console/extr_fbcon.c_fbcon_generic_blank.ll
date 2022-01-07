; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_fbcon_generic_blank.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_fbcon_generic_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i16, i32, i32, i64 }
%struct.fb_info = type { i32 }
%struct.fb_event = type { i32*, %struct.fb_info* }

@FB_EVENT_CONBLANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, %struct.fb_info*, i32)* @fbcon_generic_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fbcon_generic_blank(%struct.vc_data* %0, %struct.fb_info* %1, i32 %2) #0 {
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fb_event, align 8
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  store %struct.vc_data* %0, %struct.vc_data** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %42

12:                                               ; preds = %3
  %13 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %14 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 511, i32 255
  %19 = trunc i32 %18 to i16
  store i16 %19, i16* %8, align 2
  %20 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %21 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %20, i32 0, i32 0
  %22 = load i16, i16* %21, align 8
  store i16 %22, i16* %9, align 2
  %23 = load i16, i16* %8, align 2
  %24 = zext i16 %23 to i32
  %25 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %26 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %25, i32 0, i32 0
  %27 = load i16, i16* %26, align 8
  %28 = zext i16 %27 to i32
  %29 = and i32 %28, %24
  %30 = trunc i32 %29 to i16
  store i16 %30, i16* %26, align 8
  %31 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %32 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %33 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %36 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @fbcon_clear(%struct.vc_data* %31, i32 0, i32 0, i32 %34, i32 %37)
  %39 = load i16, i16* %9, align 2
  %40 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %41 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %40, i32 0, i32 0
  store i16 %39, i16* %41, align 8
  br label %42

42:                                               ; preds = %12, %3
  %43 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %44 = call i32 @lock_fb_info(%struct.fb_info* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  br label %55

47:                                               ; preds = %42
  %48 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %49 = getelementptr inbounds %struct.fb_event, %struct.fb_event* %7, i32 0, i32 1
  store %struct.fb_info* %48, %struct.fb_info** %49, align 8
  %50 = getelementptr inbounds %struct.fb_event, %struct.fb_event* %7, i32 0, i32 0
  store i32* %6, i32** %50, align 8
  %51 = load i32, i32* @FB_EVENT_CONBLANK, align 4
  %52 = call i32 @fb_notifier_call_chain(i32 %51, %struct.fb_event* %7)
  %53 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %54 = call i32 @unlock_fb_info(%struct.fb_info* %53)
  br label %55

55:                                               ; preds = %47, %46
  ret void
}

declare dso_local i32 @fbcon_clear(%struct.vc_data*, i32, i32, i32, i32) #1

declare dso_local i32 @lock_fb_info(%struct.fb_info*) #1

declare dso_local i32 @fb_notifier_call_chain(i32, %struct.fb_event*) #1

declare dso_local i32 @unlock_fb_info(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
