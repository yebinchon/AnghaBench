; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_amba-clcd.c_clcdfb_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_amba-clcd.c_clcdfb_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.vm_area_struct = type { i64, i64, i64 }
%struct.clcd_fb = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.clcd_fb*, %struct.vm_area_struct*)* }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.vm_area_struct*)* @clcdfb_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clcdfb_mmap(%struct.fb_info* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.clcd_fb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %10 = call %struct.clcd_fb* @to_clcd(%struct.fb_info* %9)
  store %struct.clcd_fb* %10, %struct.clcd_fb** %5, align 8
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %12 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PAGE_SHIFT, align 8
  %15 = shl i64 %13, %14
  store i64 %15, i64* %7, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %8, align 4
  %18 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %19 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp ule i64 %22, %23
  br i1 %24, label %25, label %53

25:                                               ; preds = %2
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %27 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = sub i64 %28, %31
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = sub i64 %33, %34
  %36 = icmp ule i64 %32, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %25
  %38 = load %struct.clcd_fb*, %struct.clcd_fb** %5, align 8
  %39 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32 (%struct.clcd_fb*, %struct.vm_area_struct*)*, i32 (%struct.clcd_fb*, %struct.vm_area_struct*)** %41, align 8
  %43 = icmp ne i32 (%struct.clcd_fb*, %struct.vm_area_struct*)* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %37
  %45 = load %struct.clcd_fb*, %struct.clcd_fb** %5, align 8
  %46 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32 (%struct.clcd_fb*, %struct.vm_area_struct*)*, i32 (%struct.clcd_fb*, %struct.vm_area_struct*)** %48, align 8
  %50 = load %struct.clcd_fb*, %struct.clcd_fb** %5, align 8
  %51 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %52 = call i32 %49(%struct.clcd_fb* %50, %struct.vm_area_struct* %51)
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %44, %37, %25, %2
  %54 = load i32, i32* %8, align 4
  ret i32 %54
}

declare dso_local %struct.clcd_fb* @to_clcd(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
