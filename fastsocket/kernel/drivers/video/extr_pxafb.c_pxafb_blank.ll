; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pxafb.c_pxafb_blank.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pxafb.c_pxafb_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.pxafb_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@FB_VISUAL_PSEUDOCOLOR = common dso_local global i32 0, align 4
@FB_VISUAL_STATIC_PSEUDOCOLOR = common dso_local global i32 0, align 4
@C_DISABLE = common dso_local global i32 0, align 4
@C_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @pxafb_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxafb_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.pxafb_info*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %8 = bitcast %struct.fb_info* %7 to %struct.pxafb_info*
  store %struct.pxafb_info* %8, %struct.pxafb_info** %5, align 8
  %9 = load i32, i32* %3, align 4
  switch i32 %9, label %71 [
    i32 130, label %10
    i32 128, label %10
    i32 132, label %10
    i32 131, label %10
    i32 129, label %45
  ]

10:                                               ; preds = %2, %2, %2, %2
  %11 = load %struct.pxafb_info*, %struct.pxafb_info** %5, align 8
  %12 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @FB_VISUAL_PSEUDOCOLOR, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %10
  %19 = load %struct.pxafb_info*, %struct.pxafb_info** %5, align 8
  %20 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @FB_VISUAL_STATIC_PSEUDOCOLOR, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %18, %10
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %37, %26
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.pxafb_info*, %struct.pxafb_info** %5, align 8
  %30 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %36 = call i32 @pxafb_setpalettereg(i32 %34, i32 0, i32 0, i32 0, i32 0, %struct.fb_info* %35)
  br label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %27

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40, %18
  %42 = load %struct.pxafb_info*, %struct.pxafb_info** %5, align 8
  %43 = load i32, i32* @C_DISABLE, align 4
  %44 = call i32 @pxafb_schedule_work(%struct.pxafb_info* %42, i32 %43)
  br label %71

45:                                               ; preds = %2
  %46 = load %struct.pxafb_info*, %struct.pxafb_info** %5, align 8
  %47 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @FB_VISUAL_PSEUDOCOLOR, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %61, label %53

53:                                               ; preds = %45
  %54 = load %struct.pxafb_info*, %struct.pxafb_info** %5, align 8
  %55 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @FB_VISUAL_STATIC_PSEUDOCOLOR, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %53, %45
  %62 = load %struct.pxafb_info*, %struct.pxafb_info** %5, align 8
  %63 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %66 = call i32 @fb_set_cmap(i32* %64, %struct.fb_info* %65)
  br label %67

67:                                               ; preds = %61, %53
  %68 = load %struct.pxafb_info*, %struct.pxafb_info** %5, align 8
  %69 = load i32, i32* @C_ENABLE, align 4
  %70 = call i32 @pxafb_schedule_work(%struct.pxafb_info* %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %2, %41
  ret i32 0
}

declare dso_local i32 @pxafb_setpalettereg(i32, i32, i32, i32, i32, %struct.fb_info*) #1

declare dso_local i32 @pxafb_schedule_work(%struct.pxafb_info*, i32) #1

declare dso_local i32 @fb_set_cmap(i32*, %struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
