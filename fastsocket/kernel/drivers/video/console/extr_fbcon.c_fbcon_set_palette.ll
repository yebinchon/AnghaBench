; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_fbcon_set_palette.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_fbcon_set_palette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.vc_data = type { i64, i32* }

@registered_fb = common dso_local global %struct.fb_info** null, align 8
@con2fb_map = common dso_local global i64* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@palette_red = common dso_local global i32* null, align 8
@palette_green = common dso_local global i32* null, align 8
@palette_blue = common dso_local global i32* null, align 8
@palette_cmap = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*, i8*)* @fbcon_set_palette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fbcon_set_palette(%struct.vc_data* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.fb_info**, %struct.fb_info*** @registered_fb, align 8
  %13 = load i64*, i64** @con2fb_map, align 8
  %14 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %15 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i64, i64* %13, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %12, i64 %18
  %20 = load %struct.fb_info*, %struct.fb_info** %19, align 8
  store %struct.fb_info* %20, %struct.fb_info** %6, align 8
  %21 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %22 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %23 = call i64 @fbcon_is_inactive(%struct.vc_data* %21, %struct.fb_info* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %112

28:                                               ; preds = %2
  %29 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %30 = call i32 @CON_IS_VISIBLE(%struct.vc_data* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %112

33:                                               ; preds = %28
  %34 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %35 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %34, i32 0, i32 1
  %36 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %37 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %36, i32 0, i32 0
  %38 = call i32 @fb_get_color_depth(i32* %35, i32* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp sgt i32 %39, 3
  br i1 %40, label %41, label %104

41:                                               ; preds = %33
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %100, %41
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 16
  br i1 %44, label %45, label %103

45:                                               ; preds = %42
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  store i32 %51, i32* %9, align 4
  %52 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %53 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = shl i32 %60, 8
  %62 = load i32, i32* %11, align 4
  %63 = or i32 %61, %62
  %64 = load i32*, i32** @palette_red, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %63, i32* %67, align 4
  %68 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %69 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = shl i32 %76, 8
  %78 = load i32, i32* %11, align 4
  %79 = or i32 %77, %78
  %80 = load i32*, i32** @palette_green, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %79, i32* %83, align 4
  %84 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %85 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = shl i32 %92, 8
  %94 = load i32, i32* %11, align 4
  %95 = or i32 %93, %94
  %96 = load i32*, i32** @palette_blue, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %95, i32* %99, align 4
  br label %100

100:                                              ; preds = %45
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %42

103:                                              ; preds = %42
  store i32 16, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @palette_cmap, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @palette_cmap, i32 0, i32 1), align 8
  br label %109

104:                                              ; preds = %33
  %105 = load i32, i32* %10, align 4
  %106 = shl i32 1, %105
  %107 = call i32 @fb_default_cmap(i32 %106)
  %108 = call i32 @fb_copy_cmap(i32 %107, %struct.TYPE_4__* @palette_cmap)
  br label %109

109:                                              ; preds = %104, %103
  %110 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %111 = call i32 @fb_set_cmap(%struct.TYPE_4__* @palette_cmap, %struct.fb_info* %110)
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %109, %32, %25
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i64 @fbcon_is_inactive(%struct.vc_data*, %struct.fb_info*) #1

declare dso_local i32 @CON_IS_VISIBLE(%struct.vc_data*) #1

declare dso_local i32 @fb_get_color_depth(i32*, i32*) #1

declare dso_local i32 @fb_copy_cmap(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @fb_default_cmap(i32) #1

declare dso_local i32 @fb_set_cmap(%struct.TYPE_4__*, %struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
