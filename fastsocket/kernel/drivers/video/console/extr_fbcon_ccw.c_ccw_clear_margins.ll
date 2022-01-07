; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon_ccw.c_ccw_clear_margins.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon_ccw.c_ccw_clear_margins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.fb_info = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 (%struct.fb_info*, %struct.fb_fillrect*)* }
%struct.fb_fillrect = type { i32, i32, i64, i64, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i64, i64 }

@ROP_COPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, %struct.fb_info*, i32)* @ccw_clear_margins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccw_clear_margins(%struct.vc_data* %0, %struct.fb_info* %1, i32 %2) #0 {
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fb_fillrect, align 8
  %13 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %15 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  %18 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %19 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %23 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %27 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = mul i32 %28, %29
  %31 = sub i32 %25, %30
  store i32 %31, i32* %9, align 4
  %32 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %33 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %37 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %8, align 4
  %40 = mul i32 %38, %39
  %41 = sub i32 %35, %40
  store i32 %41, i32* %10, align 4
  %42 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %43 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %8, align 4
  %46 = mul i32 %44, %45
  store i32 %46, i32* %11, align 4
  %47 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %48 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 13, i32 12
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %55 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %56 = call i32 @attr_bgcol_ec(i32 %53, %struct.vc_data* %54, %struct.fb_info* %55)
  %57 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %12, i32 0, i32 5
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @ROP_COPY, align 4
  %59 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %12, i32 0, i32 4
  store i32 %58, i32* %59, align 8
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %86

62:                                               ; preds = %3
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %86, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %12, i32 0, i32 3
  store i64 0, i64* %66, align 8
  %67 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %68 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %12, i32 0, i32 2
  store i64 %70, i64* %71, align 8
  %72 = load i32, i32* %9, align 4
  %73 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %12, i32 0, i32 0
  store i32 %72, i32* %73, align 8
  %74 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %75 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %12, i32 0, i32 1
  store i32 %77, i32* %78, align 4
  %79 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %80 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32 (%struct.fb_info*, %struct.fb_fillrect*)*, i32 (%struct.fb_info*, %struct.fb_fillrect*)** %82, align 8
  %84 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %85 = call i32 %83(%struct.fb_info* %84, %struct.fb_fillrect* %12)
  br label %86

86:                                               ; preds = %65, %62, %3
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %113

89:                                               ; preds = %86
  %90 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %91 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* %11, align 4
  %95 = zext i32 %94 to i64
  %96 = add nsw i64 %93, %95
  %97 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %12, i32 0, i32 3
  store i64 %96, i64* %97, align 8
  %98 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %12, i32 0, i32 2
  store i64 0, i64* %98, align 8
  %99 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %100 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %12, i32 0, i32 0
  store i32 %102, i32* %103, align 8
  %104 = load i32, i32* %10, align 4
  %105 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %12, i32 0, i32 1
  store i32 %104, i32* %105, align 4
  %106 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %107 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %106, i32 0, i32 0
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32 (%struct.fb_info*, %struct.fb_fillrect*)*, i32 (%struct.fb_info*, %struct.fb_fillrect*)** %109, align 8
  %111 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %112 = call i32 %110(%struct.fb_info* %111, %struct.fb_fillrect* %12)
  br label %113

113:                                              ; preds = %89, %86
  ret void
}

declare dso_local i32 @attr_bgcol_ec(i32, %struct.vc_data*, %struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
