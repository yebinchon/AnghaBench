; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_mixer.c_check_mapped_selector_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_mixer.c_check_mapped_selector_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mixer_build = type { %struct.usbmix_selector_map* }
%struct.usbmix_selector_map = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mixer_build*, i32, i32, i8*, i32)* @check_mapped_selector_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_mapped_selector_name(%struct.mixer_build* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mixer_build*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.usbmix_selector_map*, align 8
  store %struct.mixer_build* %0, %struct.mixer_build** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.mixer_build*, %struct.mixer_build** %7, align 8
  %14 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %13, i32 0, i32 0
  %15 = load %struct.usbmix_selector_map*, %struct.usbmix_selector_map** %14, align 8
  %16 = icmp ne %struct.usbmix_selector_map* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %55

18:                                               ; preds = %5
  %19 = load %struct.mixer_build*, %struct.mixer_build** %7, align 8
  %20 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %19, i32 0, i32 0
  %21 = load %struct.usbmix_selector_map*, %struct.usbmix_selector_map** %20, align 8
  store %struct.usbmix_selector_map* %21, %struct.usbmix_selector_map** %12, align 8
  br label %22

22:                                               ; preds = %51, %18
  %23 = load %struct.usbmix_selector_map*, %struct.usbmix_selector_map** %12, align 8
  %24 = getelementptr inbounds %struct.usbmix_selector_map, %struct.usbmix_selector_map* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %54

27:                                               ; preds = %22
  %28 = load %struct.usbmix_selector_map*, %struct.usbmix_selector_map** %12, align 8
  %29 = getelementptr inbounds %struct.usbmix_selector_map, %struct.usbmix_selector_map* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %27
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.usbmix_selector_map*, %struct.usbmix_selector_map** %12, align 8
  %36 = getelementptr inbounds %struct.usbmix_selector_map, %struct.usbmix_selector_map* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %33
  %40 = load i8*, i8** %10, align 8
  %41 = load %struct.usbmix_selector_map*, %struct.usbmix_selector_map** %12, align 8
  %42 = getelementptr inbounds %struct.usbmix_selector_map, %struct.usbmix_selector_map* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @strlcpy(i8* %40, i32 %47, i32 %48)
  store i32 %49, i32* %6, align 4
  br label %55

50:                                               ; preds = %33, %27
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.usbmix_selector_map*, %struct.usbmix_selector_map** %12, align 8
  %53 = getelementptr inbounds %struct.usbmix_selector_map, %struct.usbmix_selector_map* %52, i32 1
  store %struct.usbmix_selector_map* %53, %struct.usbmix_selector_map** %12, align 8
  br label %22

54:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %54, %39, %17
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
