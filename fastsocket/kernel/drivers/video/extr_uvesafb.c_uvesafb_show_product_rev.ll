; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_uvesafb.c_uvesafb_show_product_rev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_uvesafb.c_uvesafb_show_product_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.fb_info = type { %struct.uvesafb_par* }
%struct.uvesafb_par = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @uvesafb_show_product_rev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvesafb_show_product_rev(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.fb_info*, align 8
  %9 = alloca %struct.uvesafb_par*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call i32 @to_platform_device(%struct.device* %10)
  %12 = call %struct.fb_info* @platform_get_drvdata(i32 %11)
  store %struct.fb_info* %12, %struct.fb_info** %8, align 8
  %13 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 0
  %15 = load %struct.uvesafb_par*, %struct.uvesafb_par** %14, align 8
  store %struct.uvesafb_par* %15, %struct.uvesafb_par** %9, align 8
  %16 = load %struct.uvesafb_par*, %struct.uvesafb_par** %9, align 8
  %17 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %3
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = load %struct.uvesafb_par*, %struct.uvesafb_par** %9, align 8
  %25 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %24, i32 0, i32 0
  %26 = bitcast %struct.TYPE_2__* %25 to i8*
  %27 = load %struct.uvesafb_par*, %struct.uvesafb_par** %9, align 8
  %28 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %26, i64 %31
  %33 = call i32 @snprintf(i8* %22, i32 %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %32)
  store i32 %33, i32* %4, align 4
  br label %35

34:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %21
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.fb_info* @platform_get_drvdata(i32) #1

declare dso_local i32 @to_platform_device(%struct.device*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
