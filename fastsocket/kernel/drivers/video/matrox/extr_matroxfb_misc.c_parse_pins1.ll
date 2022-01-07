; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_misc.c_parse_pins1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_misc.c_parse_pins1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrox_fb_info = type { %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.matrox_bios = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.matrox_fb_info*, %struct.matrox_bios*)* @parse_pins1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_pins1(%struct.matrox_fb_info* %0, %struct.matrox_bios* %1) #0 {
  %3 = alloca %struct.matrox_fb_info*, align 8
  %4 = alloca %struct.matrox_bios*, align 8
  %5 = alloca i32, align 4
  store %struct.matrox_fb_info* %0, %struct.matrox_fb_info** %3, align 8
  store %struct.matrox_bios* %1, %struct.matrox_bios** %4, align 8
  %6 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %7 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 22
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %13 [
    i32 0, label %11
    i32 1, label %12
  ]

11:                                               ; preds = %2
  store i32 175000, i32* %5, align 4
  br label %14

12:                                               ; preds = %2
  store i32 220000, i32* %5, align 4
  br label %14

13:                                               ; preds = %2
  store i32 240000, i32* %5, align 4
  br label %14

14:                                               ; preds = %13, %12, %11
  %15 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %16 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 24
  %19 = call i32 @get_unaligned_le16(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %14
  %22 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %23 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 24
  %26 = call i32 @get_unaligned_le16(i32* %25)
  %27 = mul nsw i32 %26, 10
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %21, %14
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %31 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 4
  %34 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %35 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 28
  %38 = call i32 @get_unaligned_le16(i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %28
  %41 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %42 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 28
  %45 = call i32 @get_unaligned_le16(i32* %44)
  %46 = mul nsw i32 %45, 10
  br label %48

47:                                               ; preds = %28
  br label %48

48:                                               ; preds = %47, %40
  %49 = phi i32 [ %46, %40 ], [ 50000, %47 ]
  %50 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %51 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 4
  %54 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %55 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  store i32 14318, i32* %57, align 4
  %58 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %59 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  store i32 196865, i32* %61, align 4
  ret i32 0
}

declare dso_local i32 @get_unaligned_le16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
