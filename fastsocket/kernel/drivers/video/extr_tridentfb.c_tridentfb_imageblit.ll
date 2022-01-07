; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tridentfb.c_tridentfb_imageblit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tridentfb.c_tridentfb_imageblit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, i64, %struct.TYPE_2__, %struct.tridentfb_par* }
%struct.TYPE_2__ = type { i32 }
%struct.tridentfb_par = type { i32 (%struct.tridentfb_par*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.tridentfb_par*)* }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@FBINFO_HWACCEL_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_image*)* @tridentfb_imageblit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tridentfb_imageblit(%struct.fb_info* %0, %struct.fb_image* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_image*, align 8
  %5 = alloca %struct.tridentfb_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_image* %1, %struct.fb_image** %4, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 3
  %10 = load %struct.tridentfb_par*, %struct.tridentfb_par** %9, align 8
  store %struct.tridentfb_par* %10, %struct.tridentfb_par** %5, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @FBINFO_HWACCEL_DISABLED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %19 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %26

22:                                               ; preds = %17, %2
  %23 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %24 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %25 = call i32 @cfb_imageblit(%struct.fb_info* %23, %struct.fb_image* %24)
  br label %113

26:                                               ; preds = %17
  %27 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %28 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 8
  br i1 %31, label %32, label %55

32:                                               ; preds = %26
  %33 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %34 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = shl i32 %36, 8
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = shl i32 %40, 16
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %45 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = shl i32 %47, 8
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = shl i32 %51, 16
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %7, align 4
  br label %76

55:                                               ; preds = %26
  %56 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %57 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i32*
  %60 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %61 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %59, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %6, align 4
  %66 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %67 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i32*
  %70 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %71 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %69, i64 %73
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %55, %32
  %77 = load %struct.tridentfb_par*, %struct.tridentfb_par** %5, align 8
  %78 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %77, i32 0, i32 1
  %79 = load i32 (%struct.tridentfb_par*)*, i32 (%struct.tridentfb_par*)** %78, align 8
  %80 = load %struct.tridentfb_par*, %struct.tridentfb_par** %5, align 8
  %81 = call i32 %79(%struct.tridentfb_par* %80)
  %82 = load %struct.tridentfb_par*, %struct.tridentfb_par** %5, align 8
  %83 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %82, i32 0, i32 0
  %84 = load i32 (%struct.tridentfb_par*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.tridentfb_par*, i32, i32, i32, i32, i32, i32, i32)** %83, align 8
  %85 = icmp ne i32 (%struct.tridentfb_par*, i32, i32, i32, i32, i32, i32, i32)* %84, null
  br i1 %85, label %86, label %109

86:                                               ; preds = %76
  %87 = load %struct.tridentfb_par*, %struct.tridentfb_par** %5, align 8
  %88 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %87, i32 0, i32 0
  %89 = load i32 (%struct.tridentfb_par*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.tridentfb_par*, i32, i32, i32, i32, i32, i32, i32)** %88, align 8
  %90 = load %struct.tridentfb_par*, %struct.tridentfb_par** %5, align 8
  %91 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %92 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %95 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %98 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %101 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %104 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %7, align 4
  %108 = call i32 %89(%struct.tridentfb_par* %90, i32 %93, i32 %96, i32 %99, i32 %102, i32 %105, i32 %106, i32 %107)
  br label %113

109:                                              ; preds = %76
  %110 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %111 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %112 = call i32 @cfb_imageblit(%struct.fb_info* %110, %struct.fb_image* %111)
  br label %113

113:                                              ; preds = %22, %109, %86
  ret void
}

declare dso_local i32 @cfb_imageblit(%struct.fb_info*, %struct.fb_image*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
