; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atafb.c_atafb_blank.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atafb.c_atafb_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)* }
%struct.fb_info = type { i32 }
%struct.fb_cmap = type { i16*, i16*, i16*, i32, i64, i32* }

@fbhw = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @atafb_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atafb_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca [16 x i16], align 16
  %7 = alloca %struct.fb_cmap, align 8
  store i32 %0, i32* %4, align 4
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fbhw, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (i32)*, i32 (i32)** %9, align 8
  %11 = icmp ne i32 (i32)* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fbhw, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (i32)*, i32 (i32)** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 %15(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %38

20:                                               ; preds = %12, %2
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %20
  %24 = getelementptr inbounds [16 x i16], [16 x i16]* %6, i64 0, i64 0
  %25 = call i32 @memset(i16* %24, i32 0, i32 32)
  %26 = getelementptr inbounds [16 x i16], [16 x i16]* %6, i64 0, i64 0
  %27 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %7, i32 0, i32 0
  store i16* %26, i16** %27, align 8
  %28 = getelementptr inbounds [16 x i16], [16 x i16]* %6, i64 0, i64 0
  %29 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %7, i32 0, i32 1
  store i16* %28, i16** %29, align 8
  %30 = getelementptr inbounds [16 x i16], [16 x i16]* %6, i64 0, i64 0
  %31 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %7, i32 0, i32 2
  store i16* %30, i16** %31, align 8
  %32 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %7, i32 0, i32 5
  store i32* null, i32** %32, align 8
  %33 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %7, i32 0, i32 4
  store i64 0, i64* %33, align 8
  %34 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %7, i32 0, i32 3
  store i32 16, i32* %34, align 8
  %35 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %36 = call i32 @fb_set_cmap(%struct.fb_cmap* %7, %struct.fb_info* %35)
  br label %37

37:                                               ; preds = %23, %20
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %19
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @memset(i16*, i32, i32) #1

declare dso_local i32 @fb_set_cmap(%struct.fb_cmap*, %struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
