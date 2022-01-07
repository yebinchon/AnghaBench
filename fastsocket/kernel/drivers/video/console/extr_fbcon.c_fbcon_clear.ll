; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_fbcon_clear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_fbcon_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.fbcon_ops* }
%struct.fbcon_ops = type { i32 (%struct.vc_data*, %struct.fb_info.0*, i32, i32, i32, i32)* }
%struct.vc_data = type { i64, i32 }
%struct.fb_info.0 = type opaque
%struct.display = type { i32, i32 }

@registered_fb = common dso_local global %struct.fb_info** null, align 8
@con2fb_map = common dso_local global i64* null, align 8
@fb_display = common dso_local global %struct.display* null, align 8
@logo_lines = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32, i32, i32, i32)* @fbcon_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fbcon_clear(%struct.vc_data* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.vc_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fb_info*, align 8
  %12 = alloca %struct.fbcon_ops*, align 8
  %13 = alloca %struct.display*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.fb_info**, %struct.fb_info*** @registered_fb, align 8
  %17 = load i64*, i64** @con2fb_map, align 8
  %18 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %19 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i64, i64* %17, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %16, i64 %22
  %24 = load %struct.fb_info*, %struct.fb_info** %23, align 8
  store %struct.fb_info* %24, %struct.fb_info** %11, align 8
  %25 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %26 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %25, i32 0, i32 0
  %27 = load %struct.fbcon_ops*, %struct.fbcon_ops** %26, align 8
  store %struct.fbcon_ops* %27, %struct.fbcon_ops** %12, align 8
  %28 = load %struct.display*, %struct.display** @fb_display, align 8
  %29 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %30 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.display, %struct.display* %28, i64 %31
  store %struct.display* %32, %struct.display** %13, align 8
  %33 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %34 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %35 = call i64 @fbcon_is_inactive(%struct.vc_data* %33, %struct.fb_info* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %5
  br label %126

38:                                               ; preds = %5
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41, %38
  br label %126

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %48 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %53 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @logo_lines, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %59 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %58, i32 0, i32 1
  store i32 0, i32* %59, align 8
  br label %60

60:                                               ; preds = %57, %51, %45
  %61 = load %struct.display*, %struct.display** %13, align 8
  %62 = getelementptr inbounds %struct.display, %struct.display* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.display*, %struct.display** %13, align 8
  %65 = getelementptr inbounds %struct.display, %struct.display* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %63, %66
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %112

71:                                               ; preds = %60
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %72, %73
  %75 = sub nsw i32 %74, 1
  %76 = load i32, i32* %14, align 4
  %77 = icmp sge i32 %75, %76
  br i1 %77, label %78, label %112

78:                                               ; preds = %71
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %7, align 4
  %81 = sub nsw i32 %79, %80
  store i32 %81, i32* %15, align 4
  %82 = load %struct.fbcon_ops*, %struct.fbcon_ops** %12, align 8
  %83 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %82, i32 0, i32 0
  %84 = load i32 (%struct.vc_data*, %struct.fb_info.0*, i32, i32, i32, i32)*, i32 (%struct.vc_data*, %struct.fb_info.0*, i32, i32, i32, i32)** %83, align 8
  %85 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %86 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %87 = bitcast %struct.fb_info* %86 to %struct.fb_info.0*
  %88 = load %struct.display*, %struct.display** %13, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @real_y(%struct.display* %88, i32 %89)
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %10, align 4
  %94 = call i32 %84(%struct.vc_data* %85, %struct.fb_info.0* %87, i32 %90, i32 %91, i32 %92, i32 %93)
  %95 = load %struct.fbcon_ops*, %struct.fbcon_ops** %12, align 8
  %96 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %95, i32 0, i32 0
  %97 = load i32 (%struct.vc_data*, %struct.fb_info.0*, i32, i32, i32, i32)*, i32 (%struct.vc_data*, %struct.fb_info.0*, i32, i32, i32, i32)** %96, align 8
  %98 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %99 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %100 = bitcast %struct.fb_info* %99 to %struct.fb_info.0*
  %101 = load %struct.display*, %struct.display** %13, align 8
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %15, align 4
  %104 = add nsw i32 %102, %103
  %105 = call i32 @real_y(%struct.display* %101, i32 %104)
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %15, align 4
  %109 = sub nsw i32 %107, %108
  %110 = load i32, i32* %10, align 4
  %111 = call i32 %97(%struct.vc_data* %98, %struct.fb_info.0* %100, i32 %105, i32 %106, i32 %109, i32 %110)
  br label %126

112:                                              ; preds = %71, %60
  %113 = load %struct.fbcon_ops*, %struct.fbcon_ops** %12, align 8
  %114 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %113, i32 0, i32 0
  %115 = load i32 (%struct.vc_data*, %struct.fb_info.0*, i32, i32, i32, i32)*, i32 (%struct.vc_data*, %struct.fb_info.0*, i32, i32, i32, i32)** %114, align 8
  %116 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %117 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %118 = bitcast %struct.fb_info* %117 to %struct.fb_info.0*
  %119 = load %struct.display*, %struct.display** %13, align 8
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @real_y(%struct.display* %119, i32 %120)
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %10, align 4
  %125 = call i32 %115(%struct.vc_data* %116, %struct.fb_info.0* %118, i32 %121, i32 %122, i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %37, %44, %112, %78
  ret void
}

declare dso_local i64 @fbcon_is_inactive(%struct.vc_data*, %struct.fb_info*) #1

declare dso_local i32 @real_y(%struct.display*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
