; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_misc.c_parse_pins2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_misc.c_parse_pins2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrox_fb_info = type { %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_11__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.matrox_bios = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.matrox_fb_info*, %struct.matrox_bios*)* @parse_pins2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_pins2(%struct.matrox_fb_info* %0, %struct.matrox_bios* %1) #0 {
  %3 = alloca %struct.matrox_fb_info*, align 8
  %4 = alloca %struct.matrox_bios*, align 8
  store %struct.matrox_fb_info* %0, %struct.matrox_fb_info** %3, align 8
  store %struct.matrox_bios* %1, %struct.matrox_bios** %4, align 8
  %5 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %6 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 41
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 255
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %20

12:                                               ; preds = %2
  %13 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %14 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 41
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 100
  %19 = mul nsw i32 %18, 1000
  br label %20

20:                                               ; preds = %12, %11
  %21 = phi i32 [ 230000, %11 ], [ %19, %12 ]
  %22 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %23 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 4
  %26 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %27 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store i32 %21, i32* %29, align 4
  %30 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %31 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 51
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 1
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 1, i32 0
  %39 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %40 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 51
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 2
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 256, i32 0
  %48 = or i32 %38, %47
  %49 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %50 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 51
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 65536, i32 0
  %58 = or i32 %48, %57
  %59 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %60 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 51
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 8
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 131072, i32 0
  %68 = or i32 %58, %67
  %69 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %70 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  store i32 %68, i32* %72, align 4
  %73 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %74 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 43
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 255
  br i1 %78, label %79, label %80

79:                                               ; preds = %20
  br label %88

80:                                               ; preds = %20
  %81 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %82 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 43
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 100
  %87 = mul nsw i32 %86, 1000
  br label %88

88:                                               ; preds = %80, %79
  %89 = phi i32 [ 50000, %79 ], [ %87, %80 ]
  %90 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %91 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  store i32 %89, i32* %93, align 4
  %94 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %95 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  store i32 14318, i32* %97, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
