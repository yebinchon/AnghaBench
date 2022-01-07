; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fbsysfs.c_store_bpp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fbsysfs.c_store_bpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.fb_info = type { %struct.fb_var_screeninfo }
%struct.fb_var_screeninfo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_bpp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_bpp(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.fb_info*, align 8
  %11 = alloca %struct.fb_var_screeninfo, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.fb_info* @dev_get_drvdata(%struct.device* %14)
  store %struct.fb_info* %15, %struct.fb_info** %10, align 8
  store i8** null, i8*** %12, align 8
  %16 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %17 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %16, i32 0, i32 0
  %18 = bitcast %struct.fb_var_screeninfo* %11 to i8*
  %19 = bitcast %struct.fb_var_screeninfo* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 4, i1 false)
  %20 = load i8*, i8** %8, align 8
  %21 = load i8**, i8*** %12, align 8
  %22 = call i32 @simple_strtoul(i8* %20, i8** %21, i32 0)
  %23 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %11, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %25 = call i32 @activate(%struct.fb_info* %24, %struct.fb_var_screeninfo* %11)
  store i32 %25, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %5, align 4
  br label %32

29:                                               ; preds = %4
  %30 = load i64, i64* %9, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %29, %27
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local %struct.fb_info* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i32 @activate(%struct.fb_info*, %struct.fb_var_screeninfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
