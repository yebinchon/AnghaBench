; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon_ccw.c_ccw_putcs_aligned.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon_ccw.c_ccw_putcs_aligned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.fb_info = type { %struct.TYPE_4__*, %struct.fbcon_ops* }
%struct.TYPE_4__ = type { i32 (%struct.fb_info*, %struct.fb_image*)* }
%struct.fbcon_ops = type { i32* }
%struct.fb_image = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, %struct.fb_info*, i32*, i32, i32, i32, i32, i32, %struct.fb_image*, i32*, i32*)* @ccw_putcs_aligned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccw_putcs_aligned(%struct.vc_data* %0, %struct.fb_info* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, %struct.fb_image* %8, i32* %9, i32* %10) #0 {
  %12 = alloca %struct.vc_data*, align 8
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.fb_image*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.fbcon_ops*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %12, align 8
  store %struct.fb_info* %1, %struct.fb_info** %13, align 8
  store i32* %2, i32** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store %struct.fb_image* %8, %struct.fb_image** %20, align 8
  store i32* %9, i32** %21, align 8
  store i32* %10, i32** %22, align 8
  %27 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %28 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %27, i32 0, i32 1
  %29 = load %struct.fbcon_ops*, %struct.fbcon_ops** %28, align 8
  store %struct.fbcon_ops* %29, %struct.fbcon_ops** %23, align 8
  %30 = load %struct.vc_data*, %struct.vc_data** %12, align 8
  %31 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 511, i32 255
  store i32 %35, i32* %24, align 4
  %36 = load %struct.vc_data*, %struct.vc_data** %12, align 8
  %37 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 7
  %41 = ashr i32 %40, 3
  store i32 %41, i32* %25, align 4
  br label %42

42:                                               ; preds = %95, %11
  %43 = load i32, i32* %16, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %16, align 4
  %45 = icmp ne i32 %43, 0
  br i1 %45, label %46, label %105

46:                                               ; preds = %42
  %47 = load %struct.fbcon_ops*, %struct.fbcon_ops** %23, align 8
  %48 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32*, i32** %14, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 -1
  store i32* %51, i32** %14, align 8
  %52 = ptrtoint i32* %50 to i32
  %53 = call i32 @scr_readw(i32 %52)
  %54 = load i32, i32* %24, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* %19, align 4
  %57 = mul nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %49, i64 %58
  store i32* %59, i32** %26, align 8
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %46
  %63 = load i32*, i32** %21, align 8
  %64 = load i32*, i32** %26, align 8
  %65 = load i32, i32* %15, align 4
  %66 = load %struct.vc_data*, %struct.vc_data** %12, align 8
  %67 = call i32 @ccw_update_attr(i32* %63, i32* %64, i32 %65, %struct.vc_data* %66)
  %68 = load i32*, i32** %21, align 8
  store i32* %68, i32** %26, align 8
  br label %69

69:                                               ; preds = %62, %46
  %70 = load i32, i32* %25, align 4
  %71 = icmp eq i32 %70, 1
  %72 = zext i1 %71 to i32
  %73 = call i64 @likely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %69
  %76 = load i32*, i32** %22, align 8
  %77 = load i32, i32* %17, align 4
  %78 = load i32*, i32** %26, align 8
  %79 = load i32, i32* %25, align 4
  %80 = load %struct.vc_data*, %struct.vc_data** %12, align 8
  %81 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @__fb_pad_aligned_buffer(i32* %76, i32 %77, i32* %78, i32 %79, i32 %83)
  br label %95

85:                                               ; preds = %69
  %86 = load i32*, i32** %22, align 8
  %87 = load i32, i32* %17, align 4
  %88 = load i32*, i32** %26, align 8
  %89 = load i32, i32* %25, align 4
  %90 = load %struct.vc_data*, %struct.vc_data** %12, align 8
  %91 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @fb_pad_aligned_buffer(i32* %86, i32 %87, i32* %88, i32 %89, i32 %93)
  br label %95

95:                                               ; preds = %85, %75
  %96 = load i32, i32* %17, align 4
  %97 = load %struct.vc_data*, %struct.vc_data** %12, align 8
  %98 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = mul nsw i32 %96, %100
  %102 = load i32*, i32** %22, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32* %104, i32** %22, align 8
  br label %42

105:                                              ; preds = %42
  %106 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %107 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %106, i32 0, i32 0
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32 (%struct.fb_info*, %struct.fb_image*)*, i32 (%struct.fb_info*, %struct.fb_image*)** %109, align 8
  %111 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %112 = load %struct.fb_image*, %struct.fb_image** %20, align 8
  %113 = call i32 %110(%struct.fb_info* %111, %struct.fb_image* %112)
  ret void
}

declare dso_local i32 @scr_readw(i32) #1

declare dso_local i32 @ccw_update_attr(i32*, i32*, i32, %struct.vc_data*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @__fb_pad_aligned_buffer(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @fb_pad_aligned_buffer(i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
