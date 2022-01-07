; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_mixer.c_convert_signed_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_mixer.c_convert_signed_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_mixer_elem_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_mixer_elem_info*, i32)* @convert_signed_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_signed_value(%struct.usb_mixer_elem_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_mixer_elem_info*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_mixer_elem_info* %0, %struct.usb_mixer_elem_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.usb_mixer_elem_info*, %struct.usb_mixer_elem_info** %4, align 8
  %7 = getelementptr inbounds %struct.usb_mixer_elem_info, %struct.usb_mixer_elem_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %44 [
    i32 133, label %9
    i32 132, label %15
    i32 128, label %20
    i32 130, label %23
    i32 129, label %32
    i32 131, label %35
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %3, align 4
  br label %46

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %3, align 4
  br label %46

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, 255
  store i32 %22, i32* %5, align 4
  br label %44

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, 255
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp sge i32 %26, 128
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = sub nsw i32 %29, 256
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %28, %23
  br label %44

32:                                               ; preds = %2
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, 65535
  store i32 %34, i32* %5, align 4
  br label %44

35:                                               ; preds = %2
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, 65535
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp sge i32 %38, 32768
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  %42 = sub nsw i32 %41, 65536
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %40, %35
  br label %44

44:                                               ; preds = %2, %43, %32, %31, %20
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %15, %9
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
