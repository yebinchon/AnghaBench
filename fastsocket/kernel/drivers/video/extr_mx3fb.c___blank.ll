; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_mx3fb.c___blank.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_mx3fb.c___blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__, i64, %struct.mx3fb_info* }
%struct.TYPE_2__ = type { i32 }
%struct.mx3fb_info = type { i32, %struct.mx3fb_data* }
%struct.mx3fb_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.fb_info*)* @__blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.mx3fb_info*, align 8
  %6 = alloca %struct.mx3fb_data*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 2
  %9 = load %struct.mx3fb_info*, %struct.mx3fb_info** %8, align 8
  store %struct.mx3fb_info* %9, %struct.mx3fb_info** %5, align 8
  %10 = load %struct.mx3fb_info*, %struct.mx3fb_info** %5, align 8
  %11 = getelementptr inbounds %struct.mx3fb_info, %struct.mx3fb_info* %10, i32 0, i32 1
  %12 = load %struct.mx3fb_data*, %struct.mx3fb_data** %11, align 8
  store %struct.mx3fb_data* %12, %struct.mx3fb_data** %6, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.mx3fb_info*, %struct.mx3fb_info** %5, align 8
  %15 = getelementptr inbounds %struct.mx3fb_info, %struct.mx3fb_info* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %3, align 4
  switch i32 %16, label %40 [
    i32 130, label %17
    i32 128, label %17
    i32 132, label %17
    i32 131, label %17
    i32 129, label %32
  ]

17:                                               ; preds = %2, %2, %2, %2
  %18 = load %struct.mx3fb_data*, %struct.mx3fb_data** %6, align 8
  %19 = call i32 @sdc_set_brightness(%struct.mx3fb_data* %18, i32 0)
  %20 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %25 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @memset(i8* %23, i32 0, i32 %27)
  %29 = call i32 @msleep(i32 25)
  %30 = load %struct.mx3fb_info*, %struct.mx3fb_info** %5, align 8
  %31 = call i32 @sdc_disable_channel(%struct.mx3fb_info* %30)
  br label %40

32:                                               ; preds = %2
  %33 = load %struct.mx3fb_info*, %struct.mx3fb_info** %5, align 8
  %34 = call i32 @sdc_enable_channel(%struct.mx3fb_info* %33)
  %35 = load %struct.mx3fb_data*, %struct.mx3fb_data** %6, align 8
  %36 = load %struct.mx3fb_data*, %struct.mx3fb_data** %6, align 8
  %37 = getelementptr inbounds %struct.mx3fb_data, %struct.mx3fb_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @sdc_set_brightness(%struct.mx3fb_data* %35, i32 %38)
  br label %40

40:                                               ; preds = %2, %32, %17
  ret void
}

declare dso_local i32 @sdc_set_brightness(%struct.mx3fb_data*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @sdc_disable_channel(%struct.mx3fb_info*) #1

declare dso_local i32 @sdc_enable_channel(%struct.mx3fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
