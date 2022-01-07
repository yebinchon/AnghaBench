; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_mixer.c_find_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_mixer.c_find_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbmix_name_map = type { i32, i32 }
%struct.mixer_build = type { %struct.usbmix_name_map* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usbmix_name_map* (%struct.mixer_build*, i32, i32)* @find_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usbmix_name_map* @find_map(%struct.mixer_build* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.usbmix_name_map*, align 8
  %5 = alloca %struct.mixer_build*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.usbmix_name_map*, align 8
  store %struct.mixer_build* %0, %struct.mixer_build** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.mixer_build*, %struct.mixer_build** %5, align 8
  %10 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %9, i32 0, i32 0
  %11 = load %struct.usbmix_name_map*, %struct.usbmix_name_map** %10, align 8
  store %struct.usbmix_name_map* %11, %struct.usbmix_name_map** %8, align 8
  %12 = load %struct.usbmix_name_map*, %struct.usbmix_name_map** %8, align 8
  %13 = icmp ne %struct.usbmix_name_map* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.usbmix_name_map* null, %struct.usbmix_name_map** %4, align 8
  br label %51

15:                                               ; preds = %3
  %16 = load %struct.mixer_build*, %struct.mixer_build** %5, align 8
  %17 = getelementptr inbounds %struct.mixer_build, %struct.mixer_build* %16, i32 0, i32 0
  %18 = load %struct.usbmix_name_map*, %struct.usbmix_name_map** %17, align 8
  store %struct.usbmix_name_map* %18, %struct.usbmix_name_map** %8, align 8
  br label %19

19:                                               ; preds = %47, %15
  %20 = load %struct.usbmix_name_map*, %struct.usbmix_name_map** %8, align 8
  %21 = getelementptr inbounds %struct.usbmix_name_map, %struct.usbmix_name_map* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %50

24:                                               ; preds = %19
  %25 = load %struct.usbmix_name_map*, %struct.usbmix_name_map** %8, align 8
  %26 = getelementptr inbounds %struct.usbmix_name_map, %struct.usbmix_name_map* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load %struct.usbmix_name_map*, %struct.usbmix_name_map** %8, align 8
  %35 = getelementptr inbounds %struct.usbmix_name_map, %struct.usbmix_name_map* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.usbmix_name_map*, %struct.usbmix_name_map** %8, align 8
  %41 = getelementptr inbounds %struct.usbmix_name_map, %struct.usbmix_name_map* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %39, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38, %33, %30
  %45 = load %struct.usbmix_name_map*, %struct.usbmix_name_map** %8, align 8
  store %struct.usbmix_name_map* %45, %struct.usbmix_name_map** %4, align 8
  br label %51

46:                                               ; preds = %38, %24
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.usbmix_name_map*, %struct.usbmix_name_map** %8, align 8
  %49 = getelementptr inbounds %struct.usbmix_name_map, %struct.usbmix_name_map* %48, i32 1
  store %struct.usbmix_name_map* %49, %struct.usbmix_name_map** %8, align 8
  br label %19

50:                                               ; preds = %19
  store %struct.usbmix_name_map* null, %struct.usbmix_name_map** %4, align 8
  br label %51

51:                                               ; preds = %50, %44, %14
  %52 = load %struct.usbmix_name_map*, %struct.usbmix_name_map** %4, align 8
  ret %struct.usbmix_name_map* %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
