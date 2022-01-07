; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/msm/extr_msm_fb.c_setup_fb_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/msm/extr_msm_fb.c_setup_fb_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msmfb_info = type { i32, i32, %struct.TYPE_10__*, %struct.fb_info* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.fb_info = type { i32*, i32, %struct.TYPE_14__, %struct.TYPE_8__, i32, i32* }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32*, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, i64, i64, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i64, i64 }
%struct.TYPE_12__ = type { i32, i32, i64 }
%struct.TYPE_11__ = type { i32, i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"msmfb\00", align 1
@msmfb_ops = common dso_local global i32 0, align 4
@FBINFO_DEFAULT = common dso_local global i32 0, align 4
@FB_TYPE_PACKED_PIXELS = common dso_local global i32 0, align 4
@FB_VISUAL_TRUECOLOR = common dso_local global i32 0, align 4
@BITS_PER_PIXEL = common dso_local global i32 0, align 4
@MSMFB_CAP_PARTIAL_UPDATES = common dso_local global i32 0, align 4
@PP = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msmfb_info*)* @setup_fb_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_fb_info(%struct.msmfb_info* %0) #0 {
  %2 = alloca %struct.msmfb_info*, align 8
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca i32, align 4
  store %struct.msmfb_info* %0, %struct.msmfb_info** %2, align 8
  %5 = load %struct.msmfb_info*, %struct.msmfb_info** %2, align 8
  %6 = getelementptr inbounds %struct.msmfb_info, %struct.msmfb_info* %5, i32 0, i32 3
  %7 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  store %struct.fb_info* %7, %struct.fb_info** %3, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @strncpy(i32 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 16)
  %13 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %17 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %16, i32 0, i32 5
  store i32* @msmfb_ops, i32** %17, align 8
  %18 = load i32, i32* @FBINFO_DEFAULT, align 4
  %19 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @FB_TYPE_PACKED_PIXELS, align 4
  %22 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %23 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 3
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @FB_VISUAL_TRUECOLOR, align 4
  %26 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %27 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  store i32 %25, i32* %28, align 8
  %29 = load %struct.msmfb_info*, %struct.msmfb_info** %2, align 8
  %30 = getelementptr inbounds %struct.msmfb_info, %struct.msmfb_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = mul nsw i32 %31, 2
  %33 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %34 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load %struct.msmfb_info*, %struct.msmfb_info** %2, align 8
  %37 = getelementptr inbounds %struct.msmfb_info, %struct.msmfb_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %40 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  %42 = load %struct.msmfb_info*, %struct.msmfb_info** %2, align 8
  %43 = getelementptr inbounds %struct.msmfb_info, %struct.msmfb_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %46 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load %struct.msmfb_info*, %struct.msmfb_info** %2, align 8
  %49 = getelementptr inbounds %struct.msmfb_info, %struct.msmfb_info* %48, i32 0, i32 2
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %56 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 12
  store i32 %54, i32* %57, align 8
  %58 = load %struct.msmfb_info*, %struct.msmfb_info** %2, align 8
  %59 = getelementptr inbounds %struct.msmfb_info, %struct.msmfb_info* %58, i32 0, i32 2
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %66 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 11
  store i32 %64, i32* %67, align 4
  %68 = load %struct.msmfb_info*, %struct.msmfb_info** %2, align 8
  %69 = getelementptr inbounds %struct.msmfb_info, %struct.msmfb_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %72 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 2
  store i32 %70, i32* %73, align 8
  %74 = load %struct.msmfb_info*, %struct.msmfb_info** %2, align 8
  %75 = getelementptr inbounds %struct.msmfb_info, %struct.msmfb_info* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %76, 2
  %78 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %79 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 3
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* @BITS_PER_PIXEL, align 4
  %82 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %83 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 10
  store i32 %81, i32* %84, align 8
  %85 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %86 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 9
  store i64 0, i64* %87, align 8
  %88 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %89 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 8
  store i64 0, i64* %90, align 8
  %91 = load %struct.msmfb_info*, %struct.msmfb_info** %2, align 8
  %92 = getelementptr inbounds %struct.msmfb_info, %struct.msmfb_info* %91, i32 0, i32 2
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @MSMFB_CAP_PARTIAL_UPDATES, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %123

99:                                               ; preds = %1
  %100 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %101 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 4
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  store i32 1413763157, i32* %104, align 4
  %105 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %106 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 4
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  store i32 0, i32* %109, align 4
  %110 = load %struct.msmfb_info*, %struct.msmfb_info** %2, align 8
  %111 = getelementptr inbounds %struct.msmfb_info, %struct.msmfb_info* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.msmfb_info*, %struct.msmfb_info** %2, align 8
  %114 = getelementptr inbounds %struct.msmfb_info, %struct.msmfb_info* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = shl i32 %115, 16
  %117 = or i32 %112, %116
  %118 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %119 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 4
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 2
  store i32 %117, i32* %122, align 4
  br label %123

123:                                              ; preds = %99, %1
  %124 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %125 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 7
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  store i32 11, i32* %127, align 8
  %128 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %129 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 7
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 1
  store i32 5, i32* %131, align 4
  %132 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %133 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 7
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 2
  store i64 0, i64* %135, align 8
  %136 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %137 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 6
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  store i32 5, i32* %139, align 8
  %140 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %141 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 6
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 1
  store i32 6, i32* %143, align 4
  %144 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %145 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 6
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 2
  store i64 0, i64* %147, align 8
  %148 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %149 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 5
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 2
  store i64 0, i64* %151, align 8
  %152 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %153 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 5
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 0
  store i32 5, i32* %155, align 8
  %156 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %157 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 5
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 1
  store i64 0, i64* %159, align 8
  %160 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %161 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %160, i32 0, i32 1
  %162 = call i32 @fb_alloc_cmap(i32* %161, i32 16, i32 0)
  store i32 %162, i32* %4, align 4
  %163 = load i32*, i32** @PP, align 8
  %164 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %165 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %164, i32 0, i32 0
  store i32* %163, i32** %165, align 8
  %166 = load i32*, i32** @PP, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  store i32 0, i32* %167, align 4
  store i32 1, i32* %4, align 4
  br label %168

168:                                              ; preds = %176, %123
  %169 = load i32, i32* %4, align 4
  %170 = icmp slt i32 %169, 16
  br i1 %170, label %171, label %179

171:                                              ; preds = %168
  %172 = load i32*, i32** @PP, align 8
  %173 = load i32, i32* %4, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  store i32 -1, i32* %175, align 4
  br label %176

176:                                              ; preds = %171
  %177 = load i32, i32* %4, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %4, align 4
  br label %168

179:                                              ; preds = %168
  ret void
}

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @fb_alloc_cmap(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
