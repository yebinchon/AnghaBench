; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_bitblit.c_bit_clear_margins.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_bitblit.c_bit_clear_margins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.fb_info = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 (%struct.fb_info*, %struct.fb_fillrect*)* }
%struct.fb_fillrect = type { i32, i32, i64, i64, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i64, i64 }

@ROP_COPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, %struct.fb_info*, i32)* @bit_clear_margins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bit_clear_margins(%struct.vc_data* %0, %struct.fb_info* %1, i32 %2) #0 {
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.fb_fillrect, align 8
  store %struct.vc_data* %0, %struct.vc_data** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %16 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 13, i32 12
  store i32 %20, i32* %7, align 4
  %21 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %22 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %8, align 4
  %25 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %26 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  %29 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %30 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %34 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = mul i32 %35, %36
  %38 = sub i32 %32, %37
  store i32 %38, i32* %10, align 4
  %39 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %40 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %44 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %9, align 4
  %47 = mul i32 %45, %46
  %48 = sub i32 %42, %47
  store i32 %48, i32* %11, align 4
  %49 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %50 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sub i32 %52, %53
  store i32 %54, i32* %12, align 4
  %55 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %56 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %11, align 4
  %60 = sub i32 %58, %59
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %63 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %64 = call i32 @attr_bgcol_ec(i32 %61, %struct.vc_data* %62, %struct.fb_info* %63)
  %65 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %14, i32 0, i32 5
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* @ROP_COPY, align 4
  %67 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %14, i32 0, i32 4
  store i32 %66, i32* %67, align 8
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %97

70:                                               ; preds = %3
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %97, label %73

73:                                               ; preds = %70
  %74 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %75 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = zext i32 %78 to i64
  %80 = add nsw i64 %77, %79
  %81 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %14, i32 0, i32 3
  store i64 %80, i64* %81, align 8
  %82 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %14, i32 0, i32 2
  store i64 0, i64* %82, align 8
  %83 = load i32, i32* %10, align 4
  %84 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %14, i32 0, i32 0
  store i32 %83, i32* %84, align 8
  %85 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %86 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %14, i32 0, i32 1
  store i32 %88, i32* %89, align 4
  %90 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %91 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %90, i32 0, i32 0
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32 (%struct.fb_info*, %struct.fb_fillrect*)*, i32 (%struct.fb_info*, %struct.fb_fillrect*)** %93, align 8
  %95 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %96 = call i32 %94(%struct.fb_info* %95, %struct.fb_fillrect* %14)
  br label %97

97:                                               ; preds = %73, %70, %3
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %125

100:                                              ; preds = %97
  %101 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %102 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %14, i32 0, i32 3
  store i64 %104, i64* %105, align 8
  %106 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %107 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* %13, align 4
  %111 = zext i32 %110 to i64
  %112 = add nsw i64 %109, %111
  %113 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %14, i32 0, i32 2
  store i64 %112, i64* %113, align 8
  %114 = load i32, i32* %12, align 4
  %115 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %14, i32 0, i32 0
  store i32 %114, i32* %115, align 8
  %116 = load i32, i32* %11, align 4
  %117 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %14, i32 0, i32 1
  store i32 %116, i32* %117, align 4
  %118 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %119 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %118, i32 0, i32 0
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32 (%struct.fb_info*, %struct.fb_fillrect*)*, i32 (%struct.fb_info*, %struct.fb_fillrect*)** %121, align 8
  %123 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %124 = call i32 %122(%struct.fb_info* %123, %struct.fb_fillrect* %14)
  br label %125

125:                                              ; preds = %100, %97
  ret void
}

declare dso_local i32 @attr_bgcol_ec(i32, %struct.vc_data*, %struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
