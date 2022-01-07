; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon_cw.c_cw_putcs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon_cw.c_cw_putcs.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, %struct.fb_info*, i16*, i32, i32, i32, i32, i32)* @cw_putcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cw_putcs(%struct.vc_data* %0, %struct.fb_info* %1, i16* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
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
  %72 = call i32 @GETVXRES(i32 %70, %struct.fb_info* %71)
  store i32 %72, i32* %30, align 4
  %73 = load %struct.fbcon_ops*, %struct.fbcon_ops** %18, align 8
  %74 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %8
  br label %193

78:                                               ; preds = %8
  %79 = load i32, i32* %15, align 4
  %80 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 0
  store i32 %79, i32* %80, align 8
  %81 = load i32, i32* %16, align 4
  %82 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 1
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* %30, align 4
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, 1
  %86 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %87 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = mul nsw i32 %85, %89
  %91 = sub nsw i32 %83, %90
  %92 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 2
  store i32 %91, i32* %92, align 8
  %93 = load i32, i32* %14, align 4
  %94 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %95 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = mul nsw i32 %93, %97
  %99 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 3
  store i32 %98, i32* %99, align 4
  %100 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %101 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 4
  store i32 %103, i32* %104, align 8
  %105 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 5
  store i32 1, i32* %105, align 4
  %106 = load i32, i32* %27, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %78
  %109 = load i32, i32* %20, align 4
  %110 = load i32, i32* @GFP_KERNEL, align 4
  %111 = call i32* @kmalloc(i32 %109, i32 %110)
  store i32* %111, i32** %29, align 8
  %112 = load i32*, i32** %29, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %108
  br label %193

115:                                              ; preds = %108
  br label %116

116:                                              ; preds = %115, %78
  br label %117

117:                                              ; preds = %128, %116
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %186

120:                                              ; preds = %117
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %21, align 4
  %123 = icmp sgt i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = load i32, i32* %21, align 4
  store i32 %125, i32* %24, align 4
  br label %128

126:                                              ; preds = %120
  %127 = load i32, i32* %12, align 4
  store i32 %127, i32* %24, align 4
  br label %128

128:                                              ; preds = %126, %124
  %129 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %130 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %24, align 4
  %134 = mul nsw i32 %132, %133
  %135 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 6
  store i32 %134, i32* %135, align 8
  %136 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, 7
  %139 = ashr i32 %138, 3
  %140 = load i32, i32* %22, align 4
  %141 = add nsw i32 %139, %140
  store i32 %141, i32* %25, align 4
  %142 = load i32, i32* %22, align 4
  %143 = xor i32 %142, -1
  %144 = load i32, i32* %25, align 4
  %145 = and i32 %144, %143
  store i32 %145, i32* %25, align 4
  %146 = load i32, i32* %25, align 4
  %147 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 6
  %148 = load i32, i32* %147, align 8
  %149 = mul nsw i32 %146, %148
  %150 = load i32, i32* %23, align 4
  %151 = add nsw i32 %149, %150
  store i32 %151, i32* %26, align 4
  %152 = load i32, i32* %23, align 4
  %153 = xor i32 %152, -1
  %154 = load i32, i32* %26, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* %26, align 4
  %156 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %157 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %158 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %157, i32 0, i32 0
  %159 = load i32, i32* %26, align 4
  %160 = call i32* @fb_get_buffer_offset(%struct.fb_info* %156, %struct.TYPE_6__* %158, i32 %159)
  store i32* %160, i32** %28, align 8
  %161 = load i32*, i32** %28, align 8
  %162 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 7
  store i32* %161, i32** %162, align 8
  %163 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %164 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %165 = load i16*, i16** %11, align 8
  %166 = load i32, i32* %27, align 4
  %167 = load i32, i32* %24, align 4
  %168 = load i32, i32* %25, align 4
  %169 = load i32, i32* %19, align 4
  %170 = load i32, i32* %20, align 4
  %171 = load i32*, i32** %29, align 8
  %172 = load i32*, i32** %28, align 8
  %173 = call i32 @cw_putcs_aligned(%struct.vc_data* %163, %struct.fb_info* %164, i16* %165, i32 %166, i32 %167, i32 %168, i32 %169, i32 %170, %struct.fb_image* %17, i32* %171, i32* %172)
  %174 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 6
  %175 = load i32, i32* %174, align 8
  %176 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = add nsw i32 %177, %175
  store i32 %178, i32* %176, align 4
  %179 = load i32, i32* %24, align 4
  %180 = load i32, i32* %12, align 4
  %181 = sub nsw i32 %180, %179
  store i32 %181, i32* %12, align 4
  %182 = load i32, i32* %24, align 4
  %183 = load i16*, i16** %11, align 8
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds i16, i16* %183, i64 %184
  store i16* %185, i16** %11, align 8
  br label %117

186:                                              ; preds = %117
  %187 = load i32*, i32** %29, align 8
  %188 = call i64 @unlikely(i32* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %186
  %191 = load i32*, i32** %29, align 8
  %192 = call i32 @kfree(i32* %191)
  br label %193

193:                                              ; preds = %77, %114, %190, %186
  ret void
}

declare dso_local i32 @get_attribute(%struct.fb_info*, i32) #1

declare dso_local i32 @scr_readw(i16*) #1

declare dso_local i32 @GETVXRES(i32, %struct.fb_info*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32* @fb_get_buffer_offset(%struct.fb_info*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @cw_putcs_aligned(%struct.vc_data*, %struct.fb_info*, i16*, i32, i32, i32, i32, i32, %struct.fb_image*, i32*, i32*) #1

declare dso_local i64 @unlikely(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
