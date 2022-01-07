; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pmag-aa-fb.c_aafb_set_disp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pmag-aa-fb.c_aafb_set_disp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32*, i64, i32*, %struct.TYPE_4__*, i32, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i32)* }
%struct.aafb_info = type { i32 }
%struct.fb_fix_screeninfo = type { i32, i32, i32, i32, i32, i32, i64 }

@CM_ERASE = common dso_local global i32 0, align 4
@aafb_switch8 = common dso_local global i32 0, align 4
@SCROLL_YREDRAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.display*, i32, %struct.aafb_info*)* @aafb_set_disp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aafb_set_disp(%struct.display* %0, i32 %1, %struct.aafb_info* %2) #0 {
  %4 = alloca %struct.display*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.aafb_info*, align 8
  %7 = alloca %struct.fb_fix_screeninfo, align 8
  store %struct.display* %0, %struct.display** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.aafb_info* %2, %struct.aafb_info** %6, align 8
  %8 = load %struct.aafb_info*, %struct.aafb_info** %6, align 8
  %9 = getelementptr inbounds %struct.aafb_info, %struct.aafb_info* %8, i32 0, i32 0
  %10 = load %struct.display*, %struct.display** %4, align 8
  %11 = getelementptr inbounds %struct.display, %struct.display* %10, i32 0, i32 15
  store i32* %9, i32** %11, align 8
  %12 = load %struct.display*, %struct.display** %4, align 8
  %13 = getelementptr inbounds %struct.display, %struct.display* %12, i32 0, i32 14
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.aafb_info*, %struct.aafb_info** %6, align 8
  %16 = getelementptr inbounds %struct.aafb_info, %struct.aafb_info* %15, i32 0, i32 0
  %17 = call i32 @aafb_set_var(i32* %13, i32 %14, i32* %16)
  %18 = load %struct.display*, %struct.display** %4, align 8
  %19 = getelementptr inbounds %struct.display, %struct.display* %18, i32 0, i32 13
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %51

22:                                               ; preds = %3
  %23 = load %struct.display*, %struct.display** %4, align 8
  %24 = getelementptr inbounds %struct.display, %struct.display* %23, i32 0, i32 13
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = icmp ne %struct.TYPE_3__* %27, null
  br i1 %28, label %29, label %51

29:                                               ; preds = %22
  %30 = load %struct.display*, %struct.display** %4, align 8
  %31 = getelementptr inbounds %struct.display, %struct.display* %30, i32 0, i32 13
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %35, align 8
  %37 = icmp ne i32 (%struct.TYPE_4__*, i32)* %36, null
  br i1 %37, label %38, label %51

38:                                               ; preds = %29
  %39 = load %struct.display*, %struct.display** %4, align 8
  %40 = getelementptr inbounds %struct.display, %struct.display* %39, i32 0, i32 13
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %44, align 8
  %46 = load %struct.display*, %struct.display** %4, align 8
  %47 = getelementptr inbounds %struct.display, %struct.display* %46, i32 0, i32 13
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* @CM_ERASE, align 4
  %50 = call i32 %45(%struct.TYPE_4__* %48, i32 %49)
  br label %51

51:                                               ; preds = %38, %29, %22, %3
  %52 = load %struct.display*, %struct.display** %4, align 8
  %53 = getelementptr inbounds %struct.display, %struct.display* %52, i32 0, i32 12
  store i32* @aafb_switch8, i32** %53, align 8
  %54 = load %struct.display*, %struct.display** %4, align 8
  %55 = getelementptr inbounds %struct.display, %struct.display* %54, i32 0, i32 11
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.aafb_info*, %struct.aafb_info** %6, align 8
  %58 = getelementptr inbounds %struct.aafb_info, %struct.aafb_info* %57, i32 0, i32 0
  %59 = call i32 @aafb_get_fix(%struct.fb_fix_screeninfo* %7, i32 %56, i32* %58)
  %60 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %7, i32 0, i32 6
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i32*
  %63 = load %struct.display*, %struct.display** %4, align 8
  %64 = getelementptr inbounds %struct.display, %struct.display* %63, i32 0, i32 10
  store i32* %62, i32** %64, align 8
  %65 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %7, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.display*, %struct.display** %4, align 8
  %68 = getelementptr inbounds %struct.display, %struct.display* %67, i32 0, i32 9
  store i32 %66, i32* %68, align 4
  %69 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %7, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.display*, %struct.display** %4, align 8
  %72 = getelementptr inbounds %struct.display, %struct.display* %71, i32 0, i32 8
  store i32 %70, i32* %72, align 8
  %73 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %7, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.display*, %struct.display** %4, align 8
  %76 = getelementptr inbounds %struct.display, %struct.display* %75, i32 0, i32 7
  store i32 %74, i32* %76, align 4
  %77 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %7, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.display*, %struct.display** %4, align 8
  %80 = getelementptr inbounds %struct.display, %struct.display* %79, i32 0, i32 6
  store i32 %78, i32* %80, align 8
  %81 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %7, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.display*, %struct.display** %4, align 8
  %84 = getelementptr inbounds %struct.display, %struct.display* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 4
  %85 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %7, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.display*, %struct.display** %4, align 8
  %88 = getelementptr inbounds %struct.display, %struct.display* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 8
  %89 = load %struct.display*, %struct.display** %4, align 8
  %90 = getelementptr inbounds %struct.display, %struct.display* %89, i32 0, i32 0
  store i32 2048, i32* %90, align 8
  %91 = load %struct.display*, %struct.display** %4, align 8
  %92 = getelementptr inbounds %struct.display, %struct.display* %91, i32 0, i32 1
  store i32 1, i32* %92, align 4
  %93 = load %struct.display*, %struct.display** %4, align 8
  %94 = getelementptr inbounds %struct.display, %struct.display* %93, i32 0, i32 3
  store i64 0, i64* %94, align 8
  %95 = load i32, i32* @SCROLL_YREDRAW, align 4
  %96 = load %struct.display*, %struct.display** %4, align 8
  %97 = getelementptr inbounds %struct.display, %struct.display* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load %struct.display*, %struct.display** %4, align 8
  %99 = load %struct.display*, %struct.display** %4, align 8
  %100 = call i32 @fontwidth(%struct.display* %99)
  %101 = load %struct.display*, %struct.display** %4, align 8
  %102 = call i32 @fontheight(%struct.display* %101)
  %103 = call i32 @aafbcon_set_font(%struct.display* %98, i32 %100, i32 %102)
  ret void
}

declare dso_local i32 @aafb_set_var(i32*, i32, i32*) #1

declare dso_local i32 @aafb_get_fix(%struct.fb_fix_screeninfo*, i32, i32*) #1

declare dso_local i32 @aafbcon_set_font(%struct.display*, i32, i32) #1

declare dso_local i32 @fontwidth(%struct.display*) #1

declare dso_local i32 @fontheight(%struct.display*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
