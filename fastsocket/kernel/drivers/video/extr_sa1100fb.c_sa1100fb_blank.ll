; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sa1100fb.c_sa1100fb_blank.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sa1100fb.c_sa1100fb_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.sa1100fb_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"sa1100fb_blank: blank=%d\0A\00", align 1
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i32 0, align 4
@FB_VISUAL_STATIC_PSEUDOCOLOR = common dso_local global i32 0, align 4
@C_DISABLE = common dso_local global i32 0, align 4
@C_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @sa1100fb_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa1100fb_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.sa1100fb_info*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %8 = bitcast %struct.fb_info* %7 to %struct.sa1100fb_info*
  store %struct.sa1100fb_info* %8, %struct.sa1100fb_info** %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @DPRINTK(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* %3, align 4
  switch i32 %11, label %73 [
    i32 130, label %12
    i32 128, label %12
    i32 132, label %12
    i32 131, label %12
    i32 129, label %47
  ]

12:                                               ; preds = %2, %2, %2, %2
  %13 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %14 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @FB_VISUAL_PSEUDOCOLOR, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %28, label %20

20:                                               ; preds = %12
  %21 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %22 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @FB_VISUAL_STATIC_PSEUDOCOLOR, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %20, %12
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %39, %28
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %32 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %38 = call i32 @sa1100fb_setpalettereg(i32 %36, i32 0, i32 0, i32 0, i32 0, %struct.fb_info* %37)
  br label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %29

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %42, %20
  %44 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %45 = load i32, i32* @C_DISABLE, align 4
  %46 = call i32 @sa1100fb_schedule_work(%struct.sa1100fb_info* %44, i32 %45)
  br label %73

47:                                               ; preds = %2
  %48 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %49 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @FB_VISUAL_PSEUDOCOLOR, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %63, label %55

55:                                               ; preds = %47
  %56 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %57 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @FB_VISUAL_STATIC_PSEUDOCOLOR, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %55, %47
  %64 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %65 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %68 = call i32 @fb_set_cmap(i32* %66, %struct.fb_info* %67)
  br label %69

69:                                               ; preds = %63, %55
  %70 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %71 = load i32, i32* @C_ENABLE, align 4
  %72 = call i32 @sa1100fb_schedule_work(%struct.sa1100fb_info* %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %2, %43
  ret i32 0
}

declare dso_local i32 @DPRINTK(i8*, i32) #1

declare dso_local i32 @sa1100fb_setpalettereg(i32, i32, i32, i32, i32, %struct.fb_info*) #1

declare dso_local i32 @sa1100fb_schedule_work(%struct.sa1100fb_info*, i32) #1

declare dso_local i32 @fb_set_cmap(i32*, %struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
