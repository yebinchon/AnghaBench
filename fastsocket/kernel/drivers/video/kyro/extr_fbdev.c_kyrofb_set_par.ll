; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/kyro/extr_fbdev.c_kyrofb_set_par.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/kyro/extr_fbdev.c_kyrofb_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.kyrofb_info* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32 }
%struct.kyrofb_info = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32 }

@FB_SYNC_HOR_HIGH_ACT = common dso_local global i32 0, align 4
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@FB_VISUAL_TRUECOLOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @kyrofb_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kyrofb_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.kyrofb_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 2
  %8 = load %struct.kyrofb_info*, %struct.kyrofb_info** %7, align 8
  store %struct.kyrofb_info* %8, %struct.kyrofb_info** %3, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.kyrofb_info*, %struct.kyrofb_info** %3, align 8
  %14 = getelementptr inbounds %struct.kyrofb_info, %struct.kyrofb_info* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.kyrofb_info*, %struct.kyrofb_info** %3, align 8
  %20 = getelementptr inbounds %struct.kyrofb_info, %struct.kyrofb_info* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 10
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.kyrofb_info*, %struct.kyrofb_info** %3, align 8
  %26 = getelementptr inbounds %struct.kyrofb_info, %struct.kyrofb_info* %25, i32 0, i32 15
  store i32 %24, i32* %26, align 8
  %27 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %28 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %32 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %34, %38
  %40 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %41 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %39, %43
  %45 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %46 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %44, %48
  %50 = mul nsw i32 %30, %49
  %51 = sdiv i32 %50, 1000
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %4, align 8
  %53 = load i64, i64* %4, align 8
  %54 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %55 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %59 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 6
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %57, %61
  %63 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %64 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 7
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %62, %66
  %68 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %69 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 8
  %71 = load i64, i64* %70, align 8
  %72 = add i64 %67, %71
  %73 = mul i64 %53, %72
  store i64 %73, i64* %5, align 8
  %74 = load i64, i64* %5, align 8
  %75 = udiv i64 %74, 2
  %76 = add i64 1000000000, %75
  %77 = load i64, i64* %5, align 8
  %78 = udiv i64 %76, %77
  %79 = trunc i64 %78 to i32
  %80 = load %struct.kyrofb_info*, %struct.kyrofb_info** %3, align 8
  %81 = getelementptr inbounds %struct.kyrofb_info, %struct.kyrofb_info* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load i64, i64* %4, align 8
  %83 = udiv i64 %82, 2
  %84 = add i64 1000000000, %83
  %85 = load i64, i64* %4, align 8
  %86 = udiv i64 %84, %85
  %87 = trunc i64 %86 to i32
  %88 = load %struct.kyrofb_info*, %struct.kyrofb_info** %3, align 8
  %89 = getelementptr inbounds %struct.kyrofb_info, %struct.kyrofb_info* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  %90 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %91 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = sdiv i32 %93, 2
  %95 = add nsw i32 1000000000, %94
  %96 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %97 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = sdiv i32 %95, %99
  %101 = mul nsw i32 %100, 10
  %102 = load %struct.kyrofb_info*, %struct.kyrofb_info** %3, align 8
  %103 = getelementptr inbounds %struct.kyrofb_info, %struct.kyrofb_info* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 8
  %104 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %105 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.kyrofb_info*, %struct.kyrofb_info** %3, align 8
  %109 = getelementptr inbounds %struct.kyrofb_info, %struct.kyrofb_info* %108, i32 0, i32 5
  store i32 %107, i32* %109, align 4
  %110 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %111 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.kyrofb_info*, %struct.kyrofb_info** %3, align 8
  %115 = getelementptr inbounds %struct.kyrofb_info, %struct.kyrofb_info* %114, i32 0, i32 6
  store i32 %113, i32* %115, align 8
  %116 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %117 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.kyrofb_info*, %struct.kyrofb_info** %3, align 8
  %121 = getelementptr inbounds %struct.kyrofb_info, %struct.kyrofb_info* %120, i32 0, i32 7
  store i32 %119, i32* %121, align 4
  %122 = load %struct.kyrofb_info*, %struct.kyrofb_info** %3, align 8
  %123 = getelementptr inbounds %struct.kyrofb_info, %struct.kyrofb_info* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.kyrofb_info*, %struct.kyrofb_info** %3, align 8
  %126 = getelementptr inbounds %struct.kyrofb_info, %struct.kyrofb_info* %125, i32 0, i32 7
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %124, %127
  %129 = load %struct.kyrofb_info*, %struct.kyrofb_info** %3, align 8
  %130 = getelementptr inbounds %struct.kyrofb_info, %struct.kyrofb_info* %129, i32 0, i32 6
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 %128, %131
  %133 = load %struct.kyrofb_info*, %struct.kyrofb_info** %3, align 8
  %134 = getelementptr inbounds %struct.kyrofb_info, %struct.kyrofb_info* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %132, %135
  %137 = load %struct.kyrofb_info*, %struct.kyrofb_info** %3, align 8
  %138 = getelementptr inbounds %struct.kyrofb_info, %struct.kyrofb_info* %137, i32 0, i32 8
  store i32 %136, i32* %138, align 8
  %139 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %140 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 6
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.kyrofb_info*, %struct.kyrofb_info** %3, align 8
  %144 = getelementptr inbounds %struct.kyrofb_info, %struct.kyrofb_info* %143, i32 0, i32 9
  store i64 %142, i64* %144, align 8
  %145 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %146 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 7
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.kyrofb_info*, %struct.kyrofb_info** %3, align 8
  %150 = getelementptr inbounds %struct.kyrofb_info, %struct.kyrofb_info* %149, i32 0, i32 10
  store i64 %148, i64* %150, align 8
  %151 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %152 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 8
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.kyrofb_info*, %struct.kyrofb_info** %3, align 8
  %156 = getelementptr inbounds %struct.kyrofb_info, %struct.kyrofb_info* %155, i32 0, i32 11
  store i64 %154, i64* %156, align 8
  %157 = load %struct.kyrofb_info*, %struct.kyrofb_info** %3, align 8
  %158 = getelementptr inbounds %struct.kyrofb_info, %struct.kyrofb_info* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.kyrofb_info*, %struct.kyrofb_info** %3, align 8
  %161 = getelementptr inbounds %struct.kyrofb_info, %struct.kyrofb_info* %160, i32 0, i32 11
  %162 = load i64, i64* %161, align 8
  %163 = add i64 %159, %162
  %164 = load %struct.kyrofb_info*, %struct.kyrofb_info** %3, align 8
  %165 = getelementptr inbounds %struct.kyrofb_info, %struct.kyrofb_info* %164, i32 0, i32 10
  %166 = load i64, i64* %165, align 8
  %167 = add i64 %163, %166
  %168 = load %struct.kyrofb_info*, %struct.kyrofb_info** %3, align 8
  %169 = getelementptr inbounds %struct.kyrofb_info, %struct.kyrofb_info* %168, i32 0, i32 9
  %170 = load i64, i64* %169, align 8
  %171 = add i64 %167, %170
  %172 = load %struct.kyrofb_info*, %struct.kyrofb_info** %3, align 8
  %173 = getelementptr inbounds %struct.kyrofb_info, %struct.kyrofb_info* %172, i32 0, i32 12
  store i64 %171, i64* %173, align 8
  %174 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %175 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 9
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  %181 = zext i1 %180 to i64
  %182 = select i1 %180, i32 1, i32 0
  %183 = load %struct.kyrofb_info*, %struct.kyrofb_info** %3, align 8
  %184 = getelementptr inbounds %struct.kyrofb_info, %struct.kyrofb_info* %183, i32 0, i32 13
  store i32 %182, i32* %184, align 8
  %185 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %186 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 9
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  %192 = zext i1 %191 to i64
  %193 = select i1 %191, i32 1, i32 0
  %194 = load %struct.kyrofb_info*, %struct.kyrofb_info** %3, align 8
  %195 = getelementptr inbounds %struct.kyrofb_info, %struct.kyrofb_info* %194, i32 0, i32 14
  store i32 %193, i32* %195, align 4
  %196 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %197 = call i32 @kyro_dev_video_mode_set(%struct.fb_info* %196)
  %198 = load %struct.kyrofb_info*, %struct.kyrofb_info** %3, align 8
  %199 = getelementptr inbounds %struct.kyrofb_info, %struct.kyrofb_info* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.kyrofb_info*, %struct.kyrofb_info** %3, align 8
  %202 = getelementptr inbounds %struct.kyrofb_info, %struct.kyrofb_info* %201, i32 0, i32 15
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @get_line_length(i32 %200, i32 %203)
  %205 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %206 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 1
  store i32 %204, i32* %207, align 4
  %208 = load i32, i32* @FB_VISUAL_TRUECOLOR, align 4
  %209 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %210 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 0
  store i32 %208, i32* %211, align 8
  ret i32 0
}

declare dso_local i32 @kyro_dev_video_mode_set(%struct.fb_info*) #1

declare dso_local i32 @get_line_length(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
