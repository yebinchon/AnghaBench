; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_vgacon.c_vgacon_scrolldelta.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_vgacon.c_vgacon_scrolldelta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32, i32, i32 }

@vga_rolled_over = common dso_local global i32 0, align 4
@vga_vram_base = common dso_local global i32 0, align 4
@vga_vram_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*, i32)* @vgacon_scrolldelta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgacon_scrolldelta(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %14 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %17 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  br label %102

18:                                               ; preds = %2
  %19 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %20 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %21, 4
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @vga_rolled_over, align 4
  %24 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %25 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @vga_vram_base, align 4
  %28 = sub nsw i32 %26, %27
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %28, %29
  %31 = icmp sgt i32 %23, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %18
  %33 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %34 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @vga_vram_base, align 4
  %37 = sub nsw i32 %35, %36
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* @vga_rolled_over, align 4
  %39 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %40 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %38, %41
  store i32 %42, i32* %7, align 4
  br label %45

43:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  %44 = load i32, i32* @vga_vram_size, align 4
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %43, %32
  %46 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %47 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @vga_vram_base, align 4
  %50 = sub nsw i32 %48, %49
  %51 = load i32, i32* %6, align 4
  %52 = sub nsw i32 %50, %51
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %52, %53
  %55 = load i32, i32* %7, align 4
  %56 = srem i32 %54, %55
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %59 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %57, %60
  %62 = add nsw i32 %56, %61
  store i32 %62, i32* %8, align 4
  %63 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %64 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @vga_vram_base, align 4
  %67 = sub nsw i32 %65, %66
  %68 = load i32, i32* %6, align 4
  %69 = sub nsw i32 %67, %68
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %69, %70
  %72 = load i32, i32* %7, align 4
  %73 = srem i32 %71, %72
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %5, align 4
  %76 = mul nsw i32 2, %75
  %77 = icmp slt i32 %74, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %78, %45
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i32 0, i32* %8, align 4
  br label %84

84:                                               ; preds = %83, %79
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %5, align 4
  %88 = sub nsw i32 %86, %87
  %89 = icmp sgt i32 %85, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %90, %84
  %93 = load i32, i32* @vga_vram_base, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %94, %95
  %97 = load i32, i32* %7, align 4
  %98 = srem i32 %96, %97
  %99 = add nsw i32 %93, %98
  %100 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %101 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  br label %102

102:                                              ; preds = %92, %12
  %103 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %104 = call i32 @vga_set_mem_top(%struct.vc_data* %103)
  ret i32 1
}

declare dso_local i32 @vga_set_mem_top(%struct.vc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
