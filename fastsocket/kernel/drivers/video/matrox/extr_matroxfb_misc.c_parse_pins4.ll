; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_misc.c_parse_pins4.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_misc.c_parse_pins4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrox_fb_info = type { %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_11__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i8*, i8* }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.matrox_bios = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.matrox_fb_info*, %struct.matrox_bios*)* @parse_pins4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_pins4(%struct.matrox_fb_info* %0, %struct.matrox_bios* %1) #0 {
  %3 = alloca %struct.matrox_fb_info*, align 8
  %4 = alloca %struct.matrox_bios*, align 8
  store %struct.matrox_fb_info* %0, %struct.matrox_fb_info** %3, align 8
  store %struct.matrox_bios* %1, %struct.matrox_bios** %4, align 8
  %5 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %6 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 39
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 255
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %19

12:                                               ; preds = %2
  %13 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %14 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 39
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %17, 4000
  br label %19

19:                                               ; preds = %12, %11
  %20 = phi i32 [ 230000, %11 ], [ %18, %12 ]
  %21 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %22 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 8
  %25 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %26 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 38
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 255
  br i1 %30, label %31, label %37

31:                                               ; preds = %19
  %32 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %33 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  br label %44

37:                                               ; preds = %19
  %38 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %39 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 38
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %42, 4000
  br label %44

44:                                               ; preds = %37, %31
  %45 = phi i32 [ %36, %31 ], [ %43, %37 ]
  %46 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %47 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 4
  %50 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %51 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 71
  %54 = call i8* @get_unaligned_le32(i32* %53)
  %55 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %56 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 3
  store i8* %54, i8** %58, align 8
  %59 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %60 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 87
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 21
  %65 = and i32 %64, 503316480
  %66 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %67 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 87
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %70, 22
  %72 = and i32 %71, 12582912
  %73 = or i32 %65, %72
  %74 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %75 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 86
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 1
  %80 = and i32 %79, 480
  %81 = or i32 %73, %80
  %82 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %83 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 86
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 15
  %88 = or i32 %81, %87
  %89 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %90 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  store i32 %88, i32* %92, align 8
  %93 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %94 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 53
  %97 = load i32, i32* %96, align 4
  %98 = shl i32 %97, 15
  %99 = and i32 %98, 4194304
  %100 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %101 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 53
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 %104, 22
  %106 = and i32 %105, 268435456
  %107 = or i32 %99, %106
  %108 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %109 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 53
  %112 = load i32, i32* %111, align 4
  %113 = shl i32 %112, 7
  %114 = and i32 %113, 7168
  %115 = or i32 %107, %114
  %116 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %117 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 1
  store i32 %115, i32* %119, align 4
  %120 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %121 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 67
  %124 = call i8* @get_unaligned_le32(i32* %123)
  %125 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %126 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 2
  store i8* %124, i8** %128, align 8
  %129 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %130 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 65
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 255
  br i1 %134, label %135, label %136

135:                                              ; preds = %44
  br label %143

136:                                              ; preds = %44
  %137 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %138 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 65
  %141 = load i32, i32* %140, align 4
  %142 = mul nsw i32 %141, 4000
  br label %143

143:                                              ; preds = %136, %135
  %144 = phi i32 [ 200000, %135 ], [ %142, %136 ]
  %145 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %146 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  store i32 %144, i32* %148, align 8
  %149 = load %struct.matrox_bios*, %struct.matrox_bios** %4, align 8
  %150 = getelementptr inbounds %struct.matrox_bios, %struct.matrox_bios* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 92
  %153 = load i32, i32* %152, align 4
  %154 = and i32 %153, 1
  %155 = icmp ne i32 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i32 14318, i32 27000
  %158 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %3, align 8
  %159 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 0
  store i32 %157, i32* %161, align 8
  ret i32 0
}

declare dso_local i8* @get_unaligned_le32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
