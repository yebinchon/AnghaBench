; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_mixer.c_get_relative_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_mixer.c_get_relative_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_mixer_elem_info = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_mixer_elem_info*, i32)* @get_relative_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_relative_value(%struct.usb_mixer_elem_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_mixer_elem_info*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_mixer_elem_info* %0, %struct.usb_mixer_elem_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %4, align 8
  %7 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %4, align 8
  %12 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  br label %13

13:                                               ; preds = %10, %2
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %4, align 8
  %16 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %53

20:                                               ; preds = %13
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %4, align 8
  %23 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp sge i32 %21, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %20
  %27 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %4, align 8
  %28 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %4, align 8
  %31 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %29, %32
  %34 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %4, align 8
  %35 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %33, %36
  %38 = sub nsw i32 %37, 1
  %39 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %4, align 8
  %40 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sdiv i32 %38, %41
  store i32 %42, i32* %3, align 4
  br label %53

43:                                               ; preds = %20
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %4, align 8
  %46 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %44, %47
  %49 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %4, align 8
  %50 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sdiv i32 %48, %51
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %43, %26, %19
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
