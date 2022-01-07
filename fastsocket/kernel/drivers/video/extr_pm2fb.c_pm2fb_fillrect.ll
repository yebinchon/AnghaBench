; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pm2fb.c_pm2fb_fillrect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pm2fb.c_pm2fb_fillrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, i32, %struct.TYPE_4__, i64, %struct.TYPE_3__, %struct.pm2fb_par* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.pm2fb_par = type { i32 }
%struct.fb_fillrect = type { i64, i64, i32, i32, i32, i32 }

@FB_VISUAL_TRUECOLOR = common dso_local global i64 0, align 8
@FBINFO_STATE_RUNNING = common dso_local global i64 0, align 8
@FBINFO_HWACCEL_DISABLED = common dso_local global i32 0, align 4
@ROP_COPY = common dso_local global i64 0, align 8
@PM2R_CONFIG = common dso_local global i32 0, align 4
@PM2F_CONFIG_FB_WRITE_ENABLE = common dso_local global i32 0, align 4
@PM2R_RECTANGLE_ORIGIN = common dso_local global i32 0, align 4
@PM2R_RECTANGLE_SIZE = common dso_local global i32 0, align 4
@PM2R_FB_BLOCK_COLOR = common dso_local global i32 0, align 4
@PM2R_RENDER = common dso_local global i32 0, align 4
@PM2F_RENDER_RECTANGLE = common dso_local global i32 0, align 4
@PM2F_RENDER_FASTFILL = common dso_local global i32 0, align 4
@PM2R_COLOR_DDA_MODE = common dso_local global i32 0, align 4
@PM2R_CONSTANT_COLOR = common dso_local global i32 0, align 4
@PM2F_INCREASE_X = common dso_local global i32 0, align 4
@PM2F_INCREASE_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_fillrect*)* @pm2fb_fillrect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm2fb_fillrect(%struct.fb_info* %0, %struct.fb_fillrect* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_fillrect*, align 8
  %5 = alloca %struct.pm2fb_par*, align 8
  %6 = alloca %struct.fb_fillrect, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_fillrect* %1, %struct.fb_fillrect** %4, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 5
  %12 = load %struct.pm2fb_par*, %struct.pm2fb_par** %11, align 8
  store %struct.pm2fb_par* %12, %struct.pm2fb_par** %5, align 8
  %13 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @FB_VISUAL_TRUECOLOR, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %2
  %20 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i32*
  %24 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %25 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  br label %34

30:                                               ; preds = %2
  %31 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %32 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  br label %34

34:                                               ; preds = %30, %19
  %35 = phi i64 [ %29, %19 ], [ %33, %30 ]
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %9, align 4
  %37 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %38 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @FBINFO_STATE_RUNNING, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %205

43:                                               ; preds = %34
  %44 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %45 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @FBINFO_HWACCEL_DISABLED, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %43
  %51 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %52 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ROP_COPY, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %50, %43
  %57 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %58 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %59 = call i32 @cfb_fillrect(%struct.fb_info* %57, %struct.fb_fillrect* %58)
  br label %205

60:                                               ; preds = %50
  %61 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %62 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %7, align 4
  %65 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %66 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %8, align 4
  %69 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %70 = call i32 @memcpy(%struct.fb_fillrect* %6, %struct.fb_fillrect* %69, i32 32)
  %71 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %60
  %75 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = icmp sge i32 %80, %81
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp sge i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %83, %78, %74, %60
  br label %205

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %91, %93
  %95 = load i32, i32* %7, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %89
  %98 = load i32, i32* %7, align 4
  %99 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = sub nsw i32 %98, %100
  %102 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 2
  store i32 %101, i32* %102, align 8
  br label %103

103:                                              ; preds = %97, %89
  %104 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %105, %107
  %109 = load i32, i32* %8, align 4
  %110 = icmp sgt i32 %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %103
  %112 = load i32, i32* %8, align 4
  %113 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = sub nsw i32 %112, %114
  %116 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 3
  store i32 %115, i32* %116, align 4
  br label %117

117:                                              ; preds = %111, %103
  %118 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %119 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 8
  br i1 %122, label %123, label %128

123:                                              ; preds = %117
  %124 = load i32, i32* %9, align 4
  %125 = shl i32 %124, 8
  %126 = load i32, i32* %9, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %9, align 4
  br label %128

128:                                              ; preds = %123, %117
  %129 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %130 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = icmp sle i32 %132, 16
  br i1 %133, label %134, label %139

134:                                              ; preds = %128
  %135 = load i32, i32* %9, align 4
  %136 = shl i32 %135, 16
  %137 = load i32, i32* %9, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %9, align 4
  br label %139

139:                                              ; preds = %134, %128
  %140 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %141 = call i32 @WAIT_FIFO(%struct.pm2fb_par* %140, i32 3)
  %142 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %143 = load i32, i32* @PM2R_CONFIG, align 4
  %144 = load i32, i32* @PM2F_CONFIG_FB_WRITE_ENABLE, align 4
  %145 = call i32 @pm2_WR(%struct.pm2fb_par* %142, i32 %143, i32 %144)
  %146 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %147 = load i32, i32* @PM2R_RECTANGLE_ORIGIN, align 4
  %148 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = shl i32 %149, 16
  %151 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = or i32 %150, %152
  %154 = call i32 @pm2_WR(%struct.pm2fb_par* %146, i32 %147, i32 %153)
  %155 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %156 = load i32, i32* @PM2R_RECTANGLE_SIZE, align 4
  %157 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = shl i32 %158, 16
  %160 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %6, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = or i32 %159, %161
  %163 = call i32 @pm2_WR(%struct.pm2fb_par* %155, i32 %156, i32 %162)
  %164 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %165 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 24
  br i1 %168, label %169, label %183

169:                                              ; preds = %139
  %170 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %171 = call i32 @WAIT_FIFO(%struct.pm2fb_par* %170, i32 2)
  %172 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %173 = load i32, i32* @PM2R_FB_BLOCK_COLOR, align 4
  %174 = load i32, i32* %9, align 4
  %175 = call i32 @pm2_WR(%struct.pm2fb_par* %172, i32 %173, i32 %174)
  %176 = call i32 (...) @wmb()
  %177 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %178 = load i32, i32* @PM2R_RENDER, align 4
  %179 = load i32, i32* @PM2F_RENDER_RECTANGLE, align 4
  %180 = load i32, i32* @PM2F_RENDER_FASTFILL, align 4
  %181 = or i32 %179, %180
  %182 = call i32 @pm2_WR(%struct.pm2fb_par* %177, i32 %178, i32 %181)
  br label %205

183:                                              ; preds = %139
  %184 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %185 = call i32 @WAIT_FIFO(%struct.pm2fb_par* %184, i32 4)
  %186 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %187 = load i32, i32* @PM2R_COLOR_DDA_MODE, align 4
  %188 = call i32 @pm2_WR(%struct.pm2fb_par* %186, i32 %187, i32 1)
  %189 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %190 = load i32, i32* @PM2R_CONSTANT_COLOR, align 4
  %191 = load i32, i32* %9, align 4
  %192 = call i32 @pm2_WR(%struct.pm2fb_par* %189, i32 %190, i32 %191)
  %193 = call i32 (...) @wmb()
  %194 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %195 = load i32, i32* @PM2R_RENDER, align 4
  %196 = load i32, i32* @PM2F_RENDER_RECTANGLE, align 4
  %197 = load i32, i32* @PM2F_INCREASE_X, align 4
  %198 = or i32 %196, %197
  %199 = load i32, i32* @PM2F_INCREASE_Y, align 4
  %200 = or i32 %198, %199
  %201 = call i32 @pm2_WR(%struct.pm2fb_par* %194, i32 %195, i32 %200)
  %202 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %203 = load i32, i32* @PM2R_COLOR_DDA_MODE, align 4
  %204 = call i32 @pm2_WR(%struct.pm2fb_par* %202, i32 %203, i32 0)
  br label %205

205:                                              ; preds = %42, %56, %88, %183, %169
  ret void
}

declare dso_local i32 @cfb_fillrect(%struct.fb_info*, %struct.fb_fillrect*) #1

declare dso_local i32 @memcpy(%struct.fb_fillrect*, %struct.fb_fillrect*, i32) #1

declare dso_local i32 @WAIT_FIFO(%struct.pm2fb_par*, i32) #1

declare dso_local i32 @pm2_WR(%struct.pm2fb_par*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
