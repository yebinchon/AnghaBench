; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/udlfb/extr_udlfb.c_dlfb_fillrect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/udlfb/extr_udlfb.c_dlfb_fillrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.dlfb_data* }
%struct.dlfb_data = type { i32 }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_fillrect*)* @dlfb_fillrect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlfb_fillrect(%struct.fb_info* %0, %struct.fb_fillrect* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_fillrect*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca %struct.dlfb_data*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_fillrect* %1, %struct.fb_fillrect** %4, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 0
  %11 = load %struct.dlfb_data*, %struct.dlfb_data** %10, align 8
  store %struct.dlfb_data* %11, %struct.dlfb_data** %8, align 8
  %12 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %13 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %12, i32 0, i32 4
  %14 = call i32 @memcpy(i8* %5, i32* %13, i32 1)
  %15 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %16 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %15, i32 0, i32 4
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = call i32 @memcpy(i8* %6, i32* %17, i32 1)
  %19 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %20 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %19, i32 0, i32 4
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  %22 = call i32 @memcpy(i8* %7, i32* %21, i32 1)
  %23 = load %struct.dlfb_data*, %struct.dlfb_data** %8, align 8
  %24 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %25 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %28 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %31 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %34 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8, i8* %5, align 1
  %37 = load i8, i8* %6, align 1
  %38 = load i8, i8* %7, align 1
  %39 = call i32 @draw_rect(%struct.dlfb_data* %23, i32 %26, i32 %29, i32 %32, i32 %35, i8 zeroext %36, i8 zeroext %37, i8 zeroext %38)
  ret void
}

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @draw_rect(%struct.dlfb_data*, i32, i32, i32, i32, i8 zeroext, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
