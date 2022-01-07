; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atmel_lcdfb.c_atmel_lcdfb_alloc_video_memory.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atmel_lcdfb.c_atmel_lcdfb_alloc_video_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_lcdfb_info = type { i32, %struct.fb_info* }
%struct.fb_info = type { %struct.TYPE_2__, i32, i32, %struct.fb_var_screeninfo }
%struct.TYPE_2__ = type { i32, i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_lcdfb_info*)* @atmel_lcdfb_alloc_video_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_lcdfb_alloc_video_memory(%struct.atmel_lcdfb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atmel_lcdfb_info*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.fb_var_screeninfo*, align 8
  %6 = alloca i32, align 4
  store %struct.atmel_lcdfb_info* %0, %struct.atmel_lcdfb_info** %3, align 8
  %7 = load %struct.atmel_lcdfb_info*, %struct.atmel_lcdfb_info** %3, align 8
  %8 = getelementptr inbounds %struct.atmel_lcdfb_info, %struct.atmel_lcdfb_info* %7, i32 0, i32 1
  %9 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  store %struct.fb_info* %9, %struct.fb_info** %4, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 3
  store %struct.fb_var_screeninfo* %11, %struct.fb_var_screeninfo** %5, align 8
  %12 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %13 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %16 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %14, %17
  %19 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %20 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 7
  %23 = sdiv i32 %22, 8
  %24 = mul nsw i32 %18, %23
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.atmel_lcdfb_info*, %struct.atmel_lcdfb_info** %3, align 8
  %27 = getelementptr inbounds %struct.atmel_lcdfb_info, %struct.atmel_lcdfb_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @max(i32 %25, i32 %28)
  %30 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %31 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  %33 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %34 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %37 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %41 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i32 @dma_alloc_writecombine(i32 %35, i32 %39, i32* %42, i32 %43)
  %45 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %46 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %48 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %1
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %63

54:                                               ; preds = %1
  %55 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %56 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %59 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @memset(i32 %57, i32 0, i32 %61)
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %54, %51
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @dma_alloc_writecombine(i32, i32, i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
