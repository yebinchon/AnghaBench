; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/caiaq/extr_audio.c_read_in_urb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/caiaq/extr_audio.c_read_in_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_caiaqdev = type { i64, i32, i64, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.urb = type { i32 }
%struct.usb_iso_packet_descriptor = type { i64 }

@.str = private unnamed_addr constant [32 x i8] c"streaming error detected %s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"(input)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"(output)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usb_caiaqdev*, %struct.urb*, %struct.usb_iso_packet_descriptor*)* @read_in_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_in_urb(%struct.snd_usb_caiaqdev* %0, %struct.urb* %1, %struct.usb_iso_packet_descriptor* %2) #0 {
  %4 = alloca %struct.snd_usb_caiaqdev*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.usb_iso_packet_descriptor*, align 8
  store %struct.snd_usb_caiaqdev* %0, %struct.snd_usb_caiaqdev** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  store %struct.usb_iso_packet_descriptor* %2, %struct.usb_iso_packet_descriptor** %6, align 8
  %7 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %8 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %72

12:                                               ; preds = %3
  %13 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %14 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %17 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %72

21:                                               ; preds = %12
  %22 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %23 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %41 [
    i32 0, label %26
    i32 2, label %31
    i32 3, label %36
  ]

26:                                               ; preds = %21
  %27 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %28 = load %struct.urb*, %struct.urb** %5, align 8
  %29 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %30 = call i32 @read_in_urb_mode0(%struct.snd_usb_caiaqdev* %27, %struct.urb* %28, %struct.usb_iso_packet_descriptor* %29)
  br label %41

31:                                               ; preds = %21
  %32 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %33 = load %struct.urb*, %struct.urb** %5, align 8
  %34 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %35 = call i32 @read_in_urb_mode2(%struct.snd_usb_caiaqdev* %32, %struct.urb* %33, %struct.usb_iso_packet_descriptor* %34)
  br label %41

36:                                               ; preds = %21
  %37 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %38 = load %struct.urb*, %struct.urb** %5, align 8
  %39 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %40 = call i32 @read_in_urb_mode3(%struct.snd_usb_caiaqdev* %37, %struct.urb* %38, %struct.usb_iso_packet_descriptor* %39)
  br label %41

41:                                               ; preds = %21, %36, %31, %26
  %42 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %43 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %48 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %72

51:                                               ; preds = %46, %41
  %52 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %53 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %72, label %56

56:                                               ; preds = %51
  %57 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %58 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %63 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %64 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %69 = call i32 @debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %62, i8* %68)
  %70 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %71 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %70, i32 0, i32 1
  store i32 1, i32* %71, align 8
  br label %72

72:                                               ; preds = %11, %20, %56, %51, %46
  ret void
}

declare dso_local i32 @read_in_urb_mode0(%struct.snd_usb_caiaqdev*, %struct.urb*, %struct.usb_iso_packet_descriptor*) #1

declare dso_local i32 @read_in_urb_mode2(%struct.snd_usb_caiaqdev*, %struct.urb*, %struct.usb_iso_packet_descriptor*) #1

declare dso_local i32 @read_in_urb_mode3(%struct.snd_usb_caiaqdev*, %struct.urb*, %struct.usb_iso_packet_descriptor*) #1

declare dso_local i32 @debug(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
