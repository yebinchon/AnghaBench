; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_bitblit.c_bit_putcs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_bitblit.c_bit_putcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.fb_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, %struct.fb_info*, i16*, i32, i32, i32, i32, i32)* @bit_putcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bit_putcs(%struct.vc_data* %0, %struct.fb_info* %1, i16* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.vc_data*, align 8
  %10 = alloca %struct.fb_info*, align 8
  %11 = alloca i16*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.fb_image, align 8
  %18 = alloca i32, align 4
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
  store %struct.vc_data* %0, %struct.vc_data** %9, align 8
  store %struct.fb_info* %1, %struct.fb_info** %10, align 8
  store i16* %2, i16** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %30 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %31 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @DIV_ROUND_UP(i32 %33, i32 8)
  store i32 %34, i32* %18, align 4
  %35 = load i32, i32* %18, align 4
  %36 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %37 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %35, %39
  store i32 %40, i32* %19, align 4
  %41 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %42 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %19, align 4
  %46 = sdiv i32 %44, %45
  store i32 %46, i32* %20, align 4
  %47 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %48 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %21, align 4
  %52 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %53 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %55, 1
  store i32 %56, i32* %22, align 4
  %57 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %58 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = srem i32 %60, 8
  store i32 %61, i32* %23, align 4
  %62 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %63 = load i16*, i16** %11, align 8
  %64 = call i32 @scr_readw(i16* %63)
  %65 = call i32 @get_attribute(%struct.fb_info* %62, i32 %64)
  store i32 %65, i32* %27, align 4
  store i32* null, i32** %29, align 8
  %66 = load i32, i32* %15, align 4
  %67 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 0
  store i32 %66, i32* %67, align 8
  %68 = load i32, i32* %16, align 4
  %69 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 1
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* %14, align 4
  %71 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %72 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %70, %74
  %76 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 2
  store i32 %75, i32* %76, align 8
  %77 = load i32, i32* %13, align 4
  %78 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %79 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = mul nsw i32 %77, %81
  %83 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 3
  store i32 %82, i32* %83, align 4
  %84 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %85 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 4
  store i32 %87, i32* %88, align 8
  %89 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 5
  store i32 1, i32* %89, align 4
  %90 = load i32, i32* %27, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %8
  %93 = load i32, i32* %19, align 4
  %94 = load i32, i32* @GFP_KERNEL, align 4
  %95 = call i32* @kmalloc(i32 %93, i32 %94)
  store i32* %95, i32** %29, align 8
  %96 = load i32*, i32** %29, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %92
  br label %196

99:                                               ; preds = %92
  br label %100

100:                                              ; preds = %99, %8
  br label %101

101:                                              ; preds = %172, %100
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %189

104:                                              ; preds = %101
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %20, align 4
  %107 = icmp sgt i32 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load i32, i32* %20, align 4
  store i32 %109, i32* %24, align 4
  br label %112

110:                                              ; preds = %104
  %111 = load i32, i32* %12, align 4
  store i32 %111, i32* %24, align 4
  br label %112

112:                                              ; preds = %110, %108
  %113 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %114 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %24, align 4
  %118 = mul nsw i32 %116, %117
  %119 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 6
  store i32 %118, i32* %119, align 8
  %120 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 6
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @DIV_ROUND_UP(i32 %121, i32 8)
  %123 = load i32, i32* %21, align 4
  %124 = add nsw i32 %122, %123
  store i32 %124, i32* %25, align 4
  %125 = load i32, i32* %21, align 4
  %126 = xor i32 %125, -1
  %127 = load i32, i32* %25, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %25, align 4
  %129 = load i32, i32* %25, align 4
  %130 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = mul nsw i32 %129, %131
  %133 = load i32, i32* %22, align 4
  %134 = add nsw i32 %132, %133
  store i32 %134, i32* %26, align 4
  %135 = load i32, i32* %22, align 4
  %136 = xor i32 %135, -1
  %137 = load i32, i32* %26, align 4
  %138 = and i32 %137, %136
  store i32 %138, i32* %26, align 4
  %139 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %140 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %141 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %140, i32 0, i32 0
  %142 = load i32, i32* %26, align 4
  %143 = call i32* @fb_get_buffer_offset(%struct.fb_info* %139, %struct.TYPE_4__* %141, i32 %142)
  store i32* %143, i32** %28, align 8
  %144 = load i32*, i32** %28, align 8
  %145 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 7
  store i32* %144, i32** %145, align 8
  %146 = load i32, i32* %23, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %160, label %148

148:                                              ; preds = %112
  %149 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %150 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %151 = load i16*, i16** %11, align 8
  %152 = load i32, i32* %27, align 4
  %153 = load i32, i32* %24, align 4
  %154 = load i32, i32* %25, align 4
  %155 = load i32, i32* %18, align 4
  %156 = load i32, i32* %19, align 4
  %157 = load i32*, i32** %29, align 8
  %158 = load i32*, i32** %28, align 8
  %159 = call i32 @bit_putcs_aligned(%struct.vc_data* %149, %struct.fb_info* %150, i16* %151, i32 %152, i32 %153, i32 %154, i32 %155, i32 %156, %struct.fb_image* %17, i32* %157, i32* %158)
  br label %172

160:                                              ; preds = %112
  %161 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %162 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %163 = load i16*, i16** %11, align 8
  %164 = load i32, i32* %27, align 4
  %165 = load i32, i32* %24, align 4
  %166 = load i32, i32* %25, align 4
  %167 = load i32, i32* %18, align 4
  %168 = load i32, i32* %19, align 4
  %169 = load i32*, i32** %29, align 8
  %170 = load i32*, i32** %28, align 8
  %171 = call i32 @bit_putcs_unaligned(%struct.vc_data* %161, %struct.fb_info* %162, i16* %163, i32 %164, i32 %165, i32 %166, i32 %167, i32 %168, %struct.fb_image* %17, i32* %169, i32* %170)
  br label %172

172:                                              ; preds = %160, %148
  %173 = load i32, i32* %24, align 4
  %174 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %175 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = mul nsw i32 %173, %177
  %179 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %17, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = add nsw i32 %180, %178
  store i32 %181, i32* %179, align 8
  %182 = load i32, i32* %24, align 4
  %183 = load i32, i32* %12, align 4
  %184 = sub nsw i32 %183, %182
  store i32 %184, i32* %12, align 4
  %185 = load i32, i32* %24, align 4
  %186 = load i16*, i16** %11, align 8
  %187 = sext i32 %185 to i64
  %188 = getelementptr inbounds i16, i16* %186, i64 %187
  store i16* %188, i16** %11, align 8
  br label %101

189:                                              ; preds = %101
  %190 = load i32*, i32** %29, align 8
  %191 = call i64 @unlikely(i32* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %189
  %194 = load i32*, i32** %29, align 8
  %195 = call i32 @kfree(i32* %194)
  br label %196

196:                                              ; preds = %98, %193, %189
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @get_attribute(%struct.fb_info*, i32) #1

declare dso_local i32 @scr_readw(i16*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32* @fb_get_buffer_offset(%struct.fb_info*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @bit_putcs_aligned(%struct.vc_data*, %struct.fb_info*, i16*, i32, i32, i32, i32, i32, %struct.fb_image*, i32*, i32*) #1

declare dso_local i32 @bit_putcs_unaligned(%struct.vc_data*, %struct.fb_info*, i16*, i32, i32, i32, i32, i32, %struct.fb_image*, i32*, i32*) #1

declare dso_local i64 @unlikely(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
