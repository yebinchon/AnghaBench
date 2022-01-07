; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon_cw.c_cw_clear_margins.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon_cw.c_cw_clear_margins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.fb_info = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 (%struct.fb_info*, %struct.fb_fillrect*)* }
%struct.fb_fillrect = type { i32, i32, i64, i64, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i64, i64 }

@ROP_COPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, %struct.fb_info*, i32)* @cw_clear_margins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cw_clear_margins(%struct.vc_data* %0, %struct.fb_info* %1, i32 %2) #0 {
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
  %42 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %43 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sub i32 %45, %46
  store i32 %47, i32* %11, align 4
  %48 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %49 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 13, i32 12
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %56 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %57 = call i32 @attr_bgcol_ec(i32 %54, %struct.vc_data* %55, %struct.fb_info* %56)
  %58 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %12, i32 0, i32 5
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* @ROP_COPY, align 4
  %60 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %12, i32 0, i32 4
  store i32 %59, i32* %60, align 8
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %90

63:                                               ; preds = %3
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %90, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %12, i32 0, i32 3
  store i64 0, i64* %67, align 8
  %68 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %69 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = zext i32 %72 to i64
  %74 = add nsw i64 %71, %73
  %75 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %12, i32 0, i32 2
  store i64 %74, i64* %75, align 8
  %76 = load i32, i32* %9, align 4
  %77 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %12, i32 0, i32 0
  store i32 %76, i32* %77, align 8
  %78 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %79 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %12, i32 0, i32 1
  store i32 %81, i32* %82, align 4
  %83 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %84 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32 (%struct.fb_info*, %struct.fb_fillrect*)*, i32 (%struct.fb_info*, %struct.fb_fillrect*)** %86, align 8
  %88 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %89 = call i32 %87(%struct.fb_info* %88, %struct.fb_fillrect* %12)
  br label %90

90:                                               ; preds = %66, %63, %3
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %118

93:                                               ; preds = %90
  %94 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %95 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %12, i32 0, i32 3
  store i64 %97, i64* %98, align 8
  %99 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %100 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %12, i32 0, i32 2
  store i64 %102, i64* %103, align 8
  %104 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %105 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %12, i32 0, i32 0
  store i32 %107, i32* %108, align 8
  %109 = load i32, i32* %10, align 4
  %110 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %12, i32 0, i32 1
  store i32 %109, i32* %110, align 4
  %111 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %112 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %111, i32 0, i32 0
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32 (%struct.fb_info*, %struct.fb_fillrect*)*, i32 (%struct.fb_info*, %struct.fb_fillrect*)** %114, align 8
  %116 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %117 = call i32 %115(%struct.fb_info* %116, %struct.fb_fillrect* %12)
  br label %118

118:                                              ; preds = %93, %90
  ret void
}

declare dso_local i32 @attr_bgcol_ec(i32, %struct.vc_data*, %struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
