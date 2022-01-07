; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pmag-aa-fb.c_aafb_switch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pmag-aa-fb.c_aafb_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i32)* }
%struct.fb_info = type { i32 }
%struct.aafb_info = type { %struct.display }

@currcon = common dso_local global i32 0, align 4
@fb_display = common dso_local global %struct.display* null, align 8
@CM_ERASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @aafb_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aafb_switch(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.aafb_info*, align 8
  %6 = alloca %struct.display*, align 8
  %7 = alloca %struct.display*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %9 = bitcast %struct.fb_info* %8 to %struct.aafb_info*
  store %struct.aafb_info* %9, %struct.aafb_info** %5, align 8
  %10 = load i32, i32* @currcon, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.aafb_info*, %struct.aafb_info** %5, align 8
  %14 = getelementptr inbounds %struct.aafb_info, %struct.aafb_info* %13, i32 0, i32 0
  br label %20

15:                                               ; preds = %2
  %16 = load %struct.display*, %struct.display** @fb_display, align 8
  %17 = load i32, i32* @currcon, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.display, %struct.display* %16, i64 %18
  br label %20

20:                                               ; preds = %15, %12
  %21 = phi %struct.display* [ %14, %12 ], [ %19, %15 ]
  store %struct.display* %21, %struct.display** %6, align 8
  %22 = load i32, i32* %3, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load %struct.aafb_info*, %struct.aafb_info** %5, align 8
  %26 = getelementptr inbounds %struct.aafb_info, %struct.aafb_info* %25, i32 0, i32 0
  br label %32

27:                                               ; preds = %20
  %28 = load %struct.display*, %struct.display** @fb_display, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.display, %struct.display* %28, i64 %30
  br label %32

32:                                               ; preds = %27, %24
  %33 = phi %struct.display* [ %26, %24 ], [ %31, %27 ]
  store %struct.display* %33, %struct.display** %7, align 8
  %34 = load %struct.display*, %struct.display** %6, align 8
  %35 = getelementptr inbounds %struct.display, %struct.display* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = icmp ne %struct.TYPE_4__* %36, null
  br i1 %37, label %38, label %67

38:                                               ; preds = %32
  %39 = load %struct.display*, %struct.display** %6, align 8
  %40 = getelementptr inbounds %struct.display, %struct.display* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = icmp ne %struct.TYPE_3__* %43, null
  br i1 %44, label %45, label %67

45:                                               ; preds = %38
  %46 = load %struct.display*, %struct.display** %6, align 8
  %47 = getelementptr inbounds %struct.display, %struct.display* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %51, align 8
  %53 = icmp ne i32 (%struct.TYPE_4__*, i32)* %52, null
  br i1 %53, label %54, label %67

54:                                               ; preds = %45
  %55 = load %struct.display*, %struct.display** %6, align 8
  %56 = getelementptr inbounds %struct.display, %struct.display* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %60, align 8
  %62 = load %struct.display*, %struct.display** %6, align 8
  %63 = getelementptr inbounds %struct.display, %struct.display* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* @CM_ERASE, align 4
  %66 = call i32 %61(%struct.TYPE_4__* %64, i32 %65)
  br label %67

67:                                               ; preds = %54, %45, %38, %32
  %68 = load i32, i32* %3, align 4
  store i32 %68, i32* @currcon, align 4
  %69 = load %struct.display*, %struct.display** %7, align 8
  %70 = load i32, i32* %3, align 4
  %71 = load %struct.aafb_info*, %struct.aafb_info** %5, align 8
  %72 = call i32 @aafb_set_disp(%struct.display* %69, i32 %70, %struct.aafb_info* %71)
  ret i32 0
}

declare dso_local i32 @aafb_set_disp(%struct.display*, i32, %struct.aafb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
