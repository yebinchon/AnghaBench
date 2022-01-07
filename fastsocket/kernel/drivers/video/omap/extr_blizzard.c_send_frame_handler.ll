; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_blizzard.c_send_frame_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_blizzard.c_send_frame_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.blizzard_request = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.update_param }
%struct.update_param = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@OMAPFB_FORMAT_FLAG_DISABLE_OVERLAY = common dso_local global i32 0, align 4
@blizzard = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blizzard_request*)* @send_frame_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_frame_handler(%struct.blizzard_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.blizzard_request*, align 8
  %4 = alloca %struct.update_param*, align 8
  %5 = alloca i32, align 4
  store %struct.blizzard_request* %0, %struct.blizzard_request** %3, align 8
  %6 = load %struct.blizzard_request*, %struct.blizzard_request** %3, align 8
  %7 = getelementptr inbounds %struct.blizzard_request, %struct.blizzard_request* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store %struct.update_param* %8, %struct.update_param** %4, align 8
  %9 = load %struct.update_param*, %struct.update_param** %4, align 8
  %10 = getelementptr inbounds %struct.update_param, %struct.update_param* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.update_param*, %struct.update_param** %4, align 8
  %13 = getelementptr inbounds %struct.update_param, %struct.update_param* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @OMAPFB_FORMAT_FLAG_DISABLE_OVERLAY, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = call i32 (...) @disable_overlay()
  br label %20

20:                                               ; preds = %18, %1
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @blizzard, i32 0, i32 0), align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @blizzard, i32 0, i32 1), align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @blizzard, i32 0, i32 0), align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @blizzard, i32 0, i32 2), align 8
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25, %20
  %31 = load %struct.blizzard_request*, %struct.blizzard_request** %3, align 8
  %32 = call i32 @do_full_screen_update(%struct.blizzard_request* %31)
  store i32 %32, i32* %2, align 4
  br label %67

33:                                               ; preds = %25
  %34 = load %struct.blizzard_request*, %struct.blizzard_request** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.update_param*, %struct.update_param** %4, align 8
  %37 = getelementptr inbounds %struct.update_param, %struct.update_param* %36, i32 0, i32 11
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.update_param*, %struct.update_param** %4, align 8
  %40 = getelementptr inbounds %struct.update_param, %struct.update_param* %39, i32 0, i32 10
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.update_param*, %struct.update_param** %4, align 8
  %43 = getelementptr inbounds %struct.update_param, %struct.update_param* %42, i32 0, i32 9
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.update_param*, %struct.update_param** %4, align 8
  %46 = getelementptr inbounds %struct.update_param, %struct.update_param* %45, i32 0, i32 8
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.update_param*, %struct.update_param** %4, align 8
  %49 = getelementptr inbounds %struct.update_param, %struct.update_param* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.update_param*, %struct.update_param** %4, align 8
  %52 = getelementptr inbounds %struct.update_param, %struct.update_param* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.update_param*, %struct.update_param** %4, align 8
  %55 = getelementptr inbounds %struct.update_param, %struct.update_param* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.update_param*, %struct.update_param** %4, align 8
  %58 = getelementptr inbounds %struct.update_param, %struct.update_param* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.update_param*, %struct.update_param** %4, align 8
  %61 = getelementptr inbounds %struct.update_param, %struct.update_param* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.update_param*, %struct.update_param** %4, align 8
  %64 = getelementptr inbounds %struct.update_param, %struct.update_param* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @do_partial_update(%struct.blizzard_request* %34, i32 %35, i32 %38, i32 %41, i32 %44, i32 %47, i32 %50, i32 %53, i32 %56, i32 %59, i32 %62, i32 %65)
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %33, %30
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @disable_overlay(...) #1

declare dso_local i32 @do_full_screen_update(%struct.blizzard_request*) #1

declare dso_local i32 @do_partial_update(%struct.blizzard_request*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
