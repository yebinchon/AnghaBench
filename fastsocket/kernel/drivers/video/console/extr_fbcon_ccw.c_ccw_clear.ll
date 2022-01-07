; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon_ccw.c_ccw_clear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon_ccw.c_ccw_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.fb_info = type { %struct.TYPE_6__*, %struct.fbcon_ops* }
%struct.TYPE_6__ = type { i32 (%struct.fb_info*, %struct.fb_fillrect*)* }
%struct.fb_fillrect = type { i32, i32, i32, i32, i64, i32 }
%struct.fbcon_ops = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ROP_COPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, %struct.fb_info*, i32, i32, i32, i32)* @ccw_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccw_clear(%struct.vc_data* %0, %struct.fb_info* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.vc_data*, align 8
  %8 = alloca %struct.fb_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fbcon_ops*, align 8
  %14 = alloca %struct.fb_fillrect, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.vc_data* %0, %struct.vc_data** %7, align 8
  store %struct.fb_info* %1, %struct.fb_info** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %18 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 1
  %19 = load %struct.fbcon_ops*, %struct.fbcon_ops** %18, align 8
  store %struct.fbcon_ops* %19, %struct.fbcon_ops** %13, align 8
  %20 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %21 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 13, i32 12
  store i32 %25, i32* %15, align 4
  %26 = load %struct.fbcon_ops*, %struct.fbcon_ops** %13, align 8
  %27 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %32 = call i64 @GETVYRES(i32 %30, %struct.fb_info* %31)
  store i64 %32, i64* %16, align 8
  %33 = load i32, i32* %15, align 4
  %34 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %35 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %36 = call i32 @attr_bgcol_ec(i32 %33, %struct.vc_data* %34, %struct.fb_info* %35)
  %37 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %14, i32 0, i32 5
  store i32 %36, i32* %37, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %40 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = mul nsw i32 %38, %42
  %44 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %14, i32 0, i32 0
  store i32 %43, i32* %44, align 8
  %45 = load i64, i64* %16, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %12, align 4
  %48 = add nsw i32 %46, %47
  %49 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %50 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %48, %52
  %54 = sext i32 %53 to i64
  %55 = sub nsw i64 %45, %54
  %56 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %14, i32 0, i32 4
  store i64 %55, i64* %56, align 8
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %59 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %57, %61
  %63 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %14, i32 0, i32 1
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %66 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = mul nsw i32 %64, %68
  %70 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %14, i32 0, i32 2
  store i32 %69, i32* %70, align 8
  %71 = load i32, i32* @ROP_COPY, align 4
  %72 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %14, i32 0, i32 3
  store i32 %71, i32* %72, align 4
  %73 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %74 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32 (%struct.fb_info*, %struct.fb_fillrect*)*, i32 (%struct.fb_info*, %struct.fb_fillrect*)** %76, align 8
  %78 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %79 = call i32 %77(%struct.fb_info* %78, %struct.fb_fillrect* %14)
  ret void
}

declare dso_local i64 @GETVYRES(i32, %struct.fb_info*) #1

declare dso_local i32 @attr_bgcol_ec(i32, %struct.vc_data*, %struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
