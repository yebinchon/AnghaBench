; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon_ccw.c_ccw_putcs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon_ccw.c_ccw_putcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.fb_info = type { %struct.TYPE_6__, %struct.fbcon_ops* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.fbcon_ops = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, %struct.fb_info*, i16*, i32, i32, i32, i32, i32)* @ccw_putcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccw_putcs(%struct.vc_data* %0, %struct.fb_info* %1, i16* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.vc_data*, align 8
  %10 = alloca %struct.fb_info*, align 8
  %11 = alloca i16*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.fb_image, align 8
  %18 = alloca %struct.fbcon_ops*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %9, align 8
  store %struct.fb_info* %1, %struct.fb_info** %10, align 8
  store i16* %2, i16** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %31 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %32 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %31, i32 0, i32 1
  %33 = load %struct.fbcon_ops*, %struct.fbcon_ops** %32, align 8
  store %struct.fbcon_ops* %33, %struct.fbcon_ops** %18, align 8
  %34 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %35 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 7
  %39 = sdiv i32 %38, 8
  store i32 %39, i32* %19, align 4
  %40 = load i32, i32* %19, align 4
  %41 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %42 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %40, %44
  store i32 %45, i32* %20, align 4
  %46 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %47 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %20, align 4
  %51 = sdiv i32 %49, %50
  store i32 %51, i32* %21, align 4
  %52 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %53 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %55, 1
  store i32 %56, i32* %22, align 4
  %57 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %58 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %60, 1
  store i32 %61, i32* %23, align 4
  %62 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %63 = load i16*, i16** %11, align 8
  %64 = call i32 @scr_readw(i16* %63)
  %65 = call i32 @get_attribute(%struct.fb_info* %62, i32 %64)
  store i32 %65, i32* %27, align 4
  store i32* null, i32** %29, align 8
  %66 = load %struct.fbcon_ops*, %struct.fbcon_ops** %18, align 8
  %67 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %72 = call i32 @GETVYRES(i32 %70, %struct.fb_info* %71)
  store i32 %72, i32* %30, align 4
  %73 = load %struct.fbcon_ops*, %struct.fbcon_ops** %18, align 8
  %74 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %8
  br label %200

78:                                               ; preds = %8
  %79 = load i32, i32* %15, align 4
  %80 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 0
  store i32 %79, i32* %80, align 8
  %81 = load i32, i32* %16, align 4
  %82 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 1
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* %13, align 4
  %84 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %85 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 %83, %87
  %89 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 2
  store i32 %88, i32* %89, align 8
  %90 = load i32, i32* %30, align 4
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %91, %92
  %94 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %95 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = mul nsw i32 %93, %97
  %99 = sub nsw i32 %90, %98
  %100 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 3
  store i32 %99, i32* %100, align 4
  %101 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %102 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 4
  store i32 %104, i32* %105, align 8
  %106 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 5
  store i32 1, i32* %106, align 4
  %107 = load i32, i32* %27, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %78
  %110 = load i32, i32* %20, align 4
  %111 = load i32, i32* @GFP_KERNEL, align 4
  %112 = call i32* @kmalloc(i32 %110, i32 %111)
  store i32* %112, i32** %29, align 8
  %113 = load i32*, i32** %29, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %109
  br label %200

116:                                              ; preds = %109
  br label %117

117:                                              ; preds = %116, %78
  %118 = load i32, i32* %12, align 4
  %119 = sub nsw i32 %118, 1
  %120 = load i16*, i16** %11, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i16, i16* %120, i64 %121
  store i16* %122, i16** %11, align 8
  br label %123

123:                                              ; preds = %134, %117
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %193

126:                                              ; preds = %123
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %21, align 4
  %129 = icmp sgt i32 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = load i32, i32* %21, align 4
  store i32 %131, i32* %24, align 4
  br label %134

132:                                              ; preds = %126
  %133 = load i32, i32* %12, align 4
  store i32 %133, i32* %24, align 4
  br label %134

134:                                              ; preds = %132, %130
  %135 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %136 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %24, align 4
  %140 = mul nsw i32 %138, %139
  %141 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 6
  store i32 %140, i32* %141, align 8
  %142 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, 7
  %145 = ashr i32 %144, 3
  %146 = load i32, i32* %22, align 4
  %147 = add nsw i32 %145, %146
  store i32 %147, i32* %25, align 4
  %148 = load i32, i32* %22, align 4
  %149 = xor i32 %148, -1
  %150 = load i32, i32* %25, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* %25, align 4
  %152 = load i32, i32* %25, align 4
  %153 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 6
  %154 = load i32, i32* %153, align 8
  %155 = mul nsw i32 %152, %154
  %156 = load i32, i32* %23, align 4
  %157 = add nsw i32 %155, %156
  store i32 %157, i32* %26, align 4
  %158 = load i32, i32* %23, align 4
  %159 = xor i32 %158, -1
  %160 = load i32, i32* %26, align 4
  %161 = and i32 %160, %159
  store i32 %161, i32* %26, align 4
  %162 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %163 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %164 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %163, i32 0, i32 0
  %165 = load i32, i32* %26, align 4
  %166 = call i32* @fb_get_buffer_offset(%struct.fb_info* %162, %struct.TYPE_6__* %164, i32 %165)
  store i32* %166, i32** %28, align 8
  %167 = load i32*, i32** %28, align 8
  %168 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 7
  store i32* %167, i32** %168, align 8
  %169 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %170 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %171 = load i16*, i16** %11, align 8
  %172 = load i32, i32* %27, align 4
  %173 = load i32, i32* %24, align 4
  %174 = load i32, i32* %25, align 4
  %175 = load i32, i32* %19, align 4
  %176 = load i32, i32* %20, align 4
  %177 = load i32*, i32** %29, align 8
  %178 = load i32*, i32** %28, align 8
  %179 = call i32 @ccw_putcs_aligned(%struct.vc_data* %169, %struct.fb_info* %170, i16* %171, i32 %172, i32 %173, i32 %174, i32 %175, i32 %176, %struct.fb_image* %17, i32* %177, i32* %178)
  %180 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 6
  %181 = load i32, i32* %180, align 8
  %182 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = add nsw i32 %183, %181
  store i32 %184, i32* %182, align 4
  %185 = load i32, i32* %24, align 4
  %186 = load i32, i32* %12, align 4
  %187 = sub nsw i32 %186, %185
  store i32 %187, i32* %12, align 4
  %188 = load i32, i32* %24, align 4
  %189 = load i16*, i16** %11, align 8
  %190 = sext i32 %188 to i64
  %191 = sub i64 0, %190
  %192 = getelementptr inbounds i16, i16* %189, i64 %191
  store i16* %192, i16** %11, align 8
  br label %123

193:                                              ; preds = %123
  %194 = load i32*, i32** %29, align 8
  %195 = call i64 @unlikely(i32* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %193
  %198 = load i32*, i32** %29, align 8
  %199 = call i32 @kfree(i32* %198)
  br label %200

200:                                              ; preds = %77, %115, %197, %193
  ret void
}

declare dso_local i32 @get_attribute(%struct.fb_info*, i32) #1

declare dso_local i32 @scr_readw(i16*) #1

declare dso_local i32 @GETVYRES(i32, %struct.fb_info*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32* @fb_get_buffer_offset(%struct.fb_info*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @ccw_putcs_aligned(%struct.vc_data*, %struct.fb_info*, i16*, i32, i32, i32, i32, i32, %struct.fb_image*, i32*, i32*) #1

declare dso_local i64 @unlikely(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
