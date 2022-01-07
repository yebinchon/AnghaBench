; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_base.c_update_crtc2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_base.c_update_crtc2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrox_fb_info = type { %struct.TYPE_14__, %struct.TYPE_8__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_8__ = type { %struct.matroxfb_dh_fb_info* }
%struct.matroxfb_dh_fb_info = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.matrox_fb_info*, i32)* @update_crtc2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_crtc2(%struct.matrox_fb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.matrox_fb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.matroxfb_dh_fb_info*, align 8
  store %struct.matrox_fb_info* %0, %struct.matrox_fb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %7 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load %struct.matroxfb_dh_fb_info*, %struct.matroxfb_dh_fb_info** %8, align 8
  store %struct.matroxfb_dh_fb_info* %9, %struct.matroxfb_dh_fb_info** %5, align 8
  %10 = load %struct.matroxfb_dh_fb_info*, %struct.matroxfb_dh_fb_info** %5, align 8
  %11 = icmp ne %struct.matroxfb_dh_fb_info* %10, null
  br i1 %11, label %12, label %88

12:                                               ; preds = %2
  %13 = load %struct.matroxfb_dh_fb_info*, %struct.matroxfb_dh_fb_info** %5, align 8
  %14 = getelementptr inbounds %struct.matroxfb_dh_fb_info, %struct.matroxfb_dh_fb_info* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %19 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %17, %22
  br i1 %23, label %24, label %88

24:                                               ; preds = %12
  %25 = load %struct.matroxfb_dh_fb_info*, %struct.matroxfb_dh_fb_info** %5, align 8
  %26 = getelementptr inbounds %struct.matroxfb_dh_fb_info, %struct.matroxfb_dh_fb_info* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %31 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %29, %34
  br i1 %35, label %36, label %88

36:                                               ; preds = %24
  %37 = load %struct.matroxfb_dh_fb_info*, %struct.matroxfb_dh_fb_info** %5, align 8
  %38 = getelementptr inbounds %struct.matroxfb_dh_fb_info, %struct.matroxfb_dh_fb_info* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %44 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %42, %48
  br i1 %49, label %50, label %88

50:                                               ; preds = %36
  %51 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %52 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  switch i64 %55, label %87 [
    i64 16, label %56
    i64 32, label %56
  ]

56:                                               ; preds = %50, %50
  %57 = load i32, i32* %4, align 4
  %58 = mul i32 %57, 8
  store i32 %58, i32* %4, align 4
  %59 = load %struct.matroxfb_dh_fb_info*, %struct.matroxfb_dh_fb_info** %5, align 8
  %60 = getelementptr inbounds %struct.matroxfb_dh_fb_info, %struct.matroxfb_dh_fb_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %83

63:                                               ; preds = %56
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @mga_outl(i32 15404, i32 %64)
  %66 = load i32, i32* %4, align 4
  %67 = zext i32 %66 to i64
  %68 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %69 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %74 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = mul nsw i64 %72, %77
  %79 = sdiv i64 %78, 8
  %80 = add nsw i64 %67, %79
  %81 = trunc i64 %80 to i32
  %82 = call i32 @mga_outl(i32 15400, i32 %81)
  br label %86

83:                                               ; preds = %56
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @mga_outl(i32 15400, i32 %84)
  br label %86

86:                                               ; preds = %83, %63
  br label %87

87:                                               ; preds = %50, %86
  br label %88

88:                                               ; preds = %87, %36, %24, %12, %2
  ret void
}

declare dso_local i32 @mga_outl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
