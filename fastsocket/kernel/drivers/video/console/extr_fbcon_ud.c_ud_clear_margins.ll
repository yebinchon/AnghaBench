; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon_ud.c_ud_clear_margins.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon_ud.c_ud_clear_margins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.fb_info = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 (%struct.fb_info*, %struct.fb_fillrect*)* }
%struct.fb_fillrect = type { i32, i32, i32, i64, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i64 }

@ROP_COPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, %struct.fb_info*, i32)* @ud_clear_margins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ud_clear_margins(%struct.vc_data* %0, %struct.fb_info* %1, i32 %2) #0 {
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fb_fillrect, align 8
  %12 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %14 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %18 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %26 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = mul i32 %27, %28
  %30 = sub i32 %24, %29
  store i32 %30, i32* %9, align 4
  %31 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %32 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %36 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = mul i32 %37, %38
  %40 = sub i32 %34, %39
  store i32 %40, i32* %10, align 4
  %41 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %42 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 13, i32 12
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %49 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %50 = call i32 @attr_bgcol_ec(i32 %47, %struct.vc_data* %48, %struct.fb_info* %49)
  %51 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %11, i32 0, i32 5
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @ROP_COPY, align 4
  %53 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %11, i32 0, i32 4
  store i32 %52, i32* %53, align 8
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %80

56:                                               ; preds = %3
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %80, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %11, i32 0, i32 3
  store i64 0, i64* %60, align 8
  %61 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %62 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %11, i32 0, i32 2
  store i32 %64, i32* %65, align 8
  %66 = load i32, i32* %9, align 4
  %67 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %11, i32 0, i32 0
  store i32 %66, i32* %67, align 8
  %68 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %69 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %11, i32 0, i32 1
  store i32 %71, i32* %72, align 4
  %73 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %74 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32 (%struct.fb_info*, %struct.fb_fillrect*)*, i32 (%struct.fb_info*, %struct.fb_fillrect*)** %76, align 8
  %78 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %79 = call i32 %77(%struct.fb_info* %78, %struct.fb_fillrect* %11)
  br label %80

80:                                               ; preds = %59, %56, %3
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %108

83:                                               ; preds = %80
  %84 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %85 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %11, i32 0, i32 3
  store i64 %87, i64* %88, align 8
  %89 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %90 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %11, i32 0, i32 2
  store i32 %92, i32* %93, align 8
  %94 = load i32, i32* %10, align 4
  %95 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %11, i32 0, i32 1
  store i32 %94, i32* %95, align 4
  %96 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %97 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %11, i32 0, i32 0
  store i32 %99, i32* %100, align 8
  %101 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %102 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %101, i32 0, i32 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32 (%struct.fb_info*, %struct.fb_fillrect*)*, i32 (%struct.fb_info*, %struct.fb_fillrect*)** %104, align 8
  %106 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %107 = call i32 %105(%struct.fb_info* %106, %struct.fb_fillrect* %11)
  br label %108

108:                                              ; preds = %83, %80
  ret void
}

declare dso_local i32 @attr_bgcol_ec(i32, %struct.vc_data*, %struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
