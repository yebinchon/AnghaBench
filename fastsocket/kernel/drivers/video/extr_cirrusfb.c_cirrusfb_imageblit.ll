; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_cirrusfb.c_cirrusfb_imageblit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_cirrusfb.c_cirrusfb_imageblit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i64, %struct.cirrusfb_info* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.cirrusfb_info = type { i64, i32 }
%struct.fb_image = type { i32, i32, i32, i64, i64, i32, i32, i32 }

@FBINFO_STATE_RUNNING = common dso_local global i64 0, align 8
@FBINFO_HWACCEL_DISABLED = common dso_local global i32 0, align 4
@BT_ALPINE = common dso_local global i64 0, align 8
@BT_SD64 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_image*)* @cirrusfb_imageblit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cirrusfb_imageblit(%struct.fb_info* %0, %struct.fb_image* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_image*, align 8
  %5 = alloca %struct.cirrusfb_info*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_image* %1, %struct.fb_image** %4, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 6
  %13 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %12, align 8
  store %struct.cirrusfb_info* %13, %struct.cirrusfb_info** %5, align 8
  %14 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %15 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 24
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 12, i32 4
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %6, align 1
  %22 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %23 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @FBINFO_STATE_RUNNING, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %191

28:                                               ; preds = %2
  %29 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %30 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @FBINFO_HWACCEL_DISABLED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %28
  %36 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %37 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %40, label %44

40:                                               ; preds = %35, %28
  %41 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %42 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %43 = call i32 @cfb_imageblit(%struct.fb_info* %41, %struct.fb_image* %42)
  br label %191

44:                                               ; preds = %35
  %45 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %5, align 8
  %46 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @BT_ALPINE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %5, align 8
  %52 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @BT_SD64, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %50, %44
  %57 = load i8, i8* %6, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %58, 12
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %62 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %63 = call i32 @cfb_imageblit(%struct.fb_info* %61, %struct.fb_image* %62)
  br label %190

64:                                               ; preds = %56, %50
  %65 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %66 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 7
  %69 = ashr i32 %68, 3
  %70 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %71 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = mul nsw i32 %69, %72
  store i32 %73, i32* %7, align 4
  %74 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %75 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %8, align 4
  %78 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %79 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 8
  br i1 %82, label %83, label %90

83:                                               ; preds = %64
  %84 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %85 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %9, align 8
  %87 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %88 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %10, align 8
  br label %109

90:                                               ; preds = %64
  %91 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %92 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to i64*
  %95 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %96 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds i64, i64* %94, i64 %97
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %9, align 8
  %100 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %101 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %100, i32 0, i32 5
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to i64*
  %104 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %105 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds i64, i64* %103, i64 %106
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %10, align 8
  br label %109

109:                                              ; preds = %90, %83
  %110 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %111 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 24
  br i1 %114, label %115, label %148

115:                                              ; preds = %109
  %116 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %5, align 8
  %117 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %120 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %124 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = mul nsw i32 %125, %126
  %128 = sdiv i32 %127, 8
  %129 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %130 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %129, i32 0, i32 7
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %133 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %8, align 4
  %136 = mul nsw i32 %134, %135
  %137 = sdiv i32 %136, 8
  %138 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %139 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load i64, i64* %10, align 8
  %142 = load i64, i64* %10, align 8
  %143 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %144 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @cirrusfb_RectFill(i32 %118, i32 %122, i32 %128, i32 %131, i32 %137, i32 %140, i64 %141, i64 %142, i32 %146, i8 zeroext 64)
  br label %148

148:                                              ; preds = %115, %109
  %149 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %5, align 8
  %150 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %153 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %157 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* %8, align 4
  %160 = mul nsw i32 %158, %159
  %161 = sdiv i32 %160, 8
  %162 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %163 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %162, i32 0, i32 7
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %166 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %8, align 4
  %169 = mul nsw i32 %167, %168
  %170 = sdiv i32 %169, 8
  %171 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %172 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load i64, i64* %9, align 8
  %175 = load i64, i64* %10, align 8
  %176 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %177 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i8, i8* %6, align 1
  %181 = call i32 @cirrusfb_RectFill(i32 %151, i32 %155, i32 %161, i32 %164, i32 %170, i32 %173, i64 %174, i64 %175, i32 %179, i8 zeroext %180)
  %182 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %183 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %186 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %185, i32 0, i32 6
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %7, align 4
  %189 = call i32 @memcpy(i32 %184, i32 %187, i32 %188)
  br label %190

190:                                              ; preds = %148, %60
  br label %191

191:                                              ; preds = %27, %190, %40
  ret void
}

declare dso_local i32 @cfb_imageblit(%struct.fb_info*, %struct.fb_image*) #1

declare dso_local i32 @cirrusfb_RectFill(i32, i32, i32, i32, i32, i32, i64, i64, i32, i8 zeroext) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
