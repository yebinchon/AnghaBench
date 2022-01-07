; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_viafbdev.c_apply_second_mode_setting.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_viafbdev.c_apply_second_mode_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@viafb_second_xres = common dso_local global i32 0, align 4
@viafb_second_yres = common dso_local global i32 0, align 4
@viafb_second_virtual_xres = common dso_local global i32 0, align 4
@viafb_second_virtual_yres = common dso_local global i32 0, align 4
@viafb_bpp1 = common dso_local global i32 0, align 4
@viafb_refresh1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_var_screeninfo*)* @apply_second_mode_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_second_mode_setting(%struct.fb_var_screeninfo* %0) #0 {
  %2 = alloca %struct.fb_var_screeninfo*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %2, align 8
  %6 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %7 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %10 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %8, %11
  %13 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %14 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %12, %15
  %17 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %18 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %16, %19
  store i32 %20, i32* %3, align 4
  %21 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %22 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %25 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %23, %26
  %28 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %29 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %27, %30
  %32 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %33 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %31, %34
  store i32 %35, i32* %4, align 4
  %36 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %37 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %40 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %39, i32 0, i32 9
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 3
  %43 = mul nsw i32 %38, %42
  %44 = and i32 %43, 31
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %1
  %47 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %48 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 31
  %51 = and i32 %50, -32
  %52 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %53 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %52, i32 0, i32 8
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %46, %1
  %55 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %56 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %59 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %57, %60
  %62 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %63 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %61, %64
  %66 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %67 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %65, %68
  store i32 %69, i32* %3, align 4
  %70 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %71 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %74 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %72, %75
  %77 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %78 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %76, %79
  %81 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %82 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %80, %83
  store i32 %84, i32* %4, align 4
  %85 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %86 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %85, i32 0, i32 10
  %87 = load i64, i64* %86, align 8
  %88 = udiv i64 1000000000, %87
  %89 = mul i64 %88, 1000
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* %4, align 4
  %93 = mul nsw i32 %91, %92
  %94 = load i32, i32* %5, align 4
  %95 = sdiv i32 %94, %93
  store i32 %95, i32* %5, align 4
  %96 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %97 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* @viafb_second_xres, align 4
  %99 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %100 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* @viafb_second_yres, align 4
  %102 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %103 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %102, i32 0, i32 8
  %104 = load i32, i32* %103, align 8
  store i32 %104, i32* @viafb_second_virtual_xres, align 4
  %105 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %106 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %105, i32 0, i32 11
  %107 = load i32, i32* %106, align 8
  store i32 %107, i32* @viafb_second_virtual_yres, align 4
  %108 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %109 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %108, i32 0, i32 9
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* @viafb_bpp1, align 4
  %111 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %112 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %2, align 8
  %115 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @viafb_get_refresh(i32 %113, i32 %116, i32 %117)
  store i32 %118, i32* @viafb_refresh1, align 4
  ret void
}

declare dso_local i32 @viafb_get_refresh(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
