; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon_rotate.c_fbcon_rotate_font.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon_rotate.c_fbcon_rotate_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_5__*, %struct.fbcon_ops* }
%struct.TYPE_5__ = type { i32 (%struct.fb_info*)* }
%struct.fbcon_ops = type { i64, i64, i32, i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.vc_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.vc_data*)* @fbcon_rotate_font to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fbcon_rotate_font(%struct.fb_info* %0, %struct.vc_data* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca %struct.fbcon_ops*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.vc_data* %1, %struct.vc_data** %4, align 8
  %13 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 1
  %15 = load %struct.fbcon_ops*, %struct.fbcon_ops** %14, align 8
  store %struct.fbcon_ops* %15, %struct.fbcon_ops** %5, align 8
  store i32 0, i32* %7, align 4
  %16 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %17 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.fbcon_ops*, %struct.fbcon_ops** %5, align 8
  %21 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %2
  %25 = load %struct.fbcon_ops*, %struct.fbcon_ops** %5, align 8
  %26 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %25, i32 0, i32 5
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.fbcon_ops*, %struct.fbcon_ops** %5, align 8
  %31 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %236

35:                                               ; preds = %24, %2
  %36 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %37 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.fbcon_ops*, %struct.fbcon_ops** %5, align 8
  %41 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = inttoptr i64 %39 to i32*
  store i32* %42, i32** %11, align 8
  %43 = load %struct.fbcon_ops*, %struct.fbcon_ops** %5, align 8
  %44 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %43, i32 0, i32 5
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.fbcon_ops*, %struct.fbcon_ops** %5, align 8
  %49 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load %struct.fbcon_ops*, %struct.fbcon_ops** %5, align 8
  %51 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %50, i32 0, i32 5
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %35
  br label %60

57:                                               ; preds = %35
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @FNTCHARCNT(i32* %58)
  br label %60

60:                                               ; preds = %57, %56
  %61 = phi i32 [ 256, %56 ], [ %59, %57 ]
  store i32 %61, i32* %6, align 4
  %62 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %63 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 7
  %67 = sdiv i32 %66, 8
  %68 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %69 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %67, %71
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %9, align 4
  %74 = load %struct.fbcon_ops*, %struct.fbcon_ops** %5, align 8
  %75 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, 129
  br i1 %77, label %83, label %78

78:                                               ; preds = %60
  %79 = load %struct.fbcon_ops*, %struct.fbcon_ops** %5, align 8
  %80 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 130
  br i1 %82, label %83, label %95

83:                                               ; preds = %78, %60
  %84 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %85 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 7
  %89 = sdiv i32 %88, 8
  %90 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %91 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = mul nsw i32 %89, %93
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %83, %78
  %96 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %97 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %96, i32 0, i32 0
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32 (%struct.fb_info*)*, i32 (%struct.fb_info*)** %99, align 8
  %101 = icmp ne i32 (%struct.fb_info*)* %100, null
  br i1 %101, label %102, label %110

102:                                              ; preds = %95
  %103 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %104 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %103, i32 0, i32 0
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32 (%struct.fb_info*)*, i32 (%struct.fb_info*)** %106, align 8
  %108 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %109 = call i32 %107(%struct.fb_info* %108)
  br label %110

110:                                              ; preds = %102, %95
  %111 = load %struct.fbcon_ops*, %struct.fbcon_ops** %5, align 8
  %112 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %6, align 4
  %116 = mul nsw i32 %114, %115
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %142

118:                                              ; preds = %110
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %6, align 4
  %121 = mul nsw i32 %119, %120
  %122 = load i32, i32* @GFP_KERNEL, align 4
  %123 = call i32* @kmalloc(i32 %121, i32 %122)
  store i32* %123, i32** %12, align 8
  %124 = load i32*, i32** %12, align 8
  %125 = icmp eq i32* %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %118
  %127 = load i32, i32* @ENOMEM, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %7, align 4
  br label %236

129:                                              ; preds = %118
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %6, align 4
  %132 = mul nsw i32 %130, %131
  %133 = load %struct.fbcon_ops*, %struct.fbcon_ops** %5, align 8
  %134 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 4
  %135 = load %struct.fbcon_ops*, %struct.fbcon_ops** %5, align 8
  %136 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %135, i32 0, i32 4
  %137 = load i32*, i32** %136, align 8
  %138 = call i32 @kfree(i32* %137)
  %139 = load i32*, i32** %12, align 8
  %140 = load %struct.fbcon_ops*, %struct.fbcon_ops** %5, align 8
  %141 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %140, i32 0, i32 4
  store i32* %139, i32** %141, align 8
  br label %142

142:                                              ; preds = %129, %110
  %143 = load %struct.fbcon_ops*, %struct.fbcon_ops** %5, align 8
  %144 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %143, i32 0, i32 4
  %145 = load i32*, i32** %144, align 8
  store i32* %145, i32** %12, align 8
  %146 = load i32*, i32** %12, align 8
  %147 = load %struct.fbcon_ops*, %struct.fbcon_ops** %5, align 8
  %148 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @memset(i32* %146, i32 0, i32 %149)
  %151 = load %struct.fbcon_ops*, %struct.fbcon_ops** %5, align 8
  %152 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  switch i32 %153, label %235 [
    i32 128, label %154
    i32 129, label %181
    i32 130, label %208
  ]

154:                                              ; preds = %142
  %155 = load i32, i32* %6, align 4
  store i32 %155, i32* %10, align 4
  br label %156

156:                                              ; preds = %160, %154
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %157, -1
  store i32 %158, i32* %10, align 4
  %159 = icmp ne i32 %157, 0
  br i1 %159, label %160, label %180

160:                                              ; preds = %156
  %161 = load i32*, i32** %11, align 8
  %162 = load i32*, i32** %12, align 8
  %163 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %164 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %168 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @rotate_ud(i32* %161, i32* %162, i32 %166, i32 %170)
  %172 = load i32, i32* %8, align 4
  %173 = load i32*, i32** %11, align 8
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  store i32* %175, i32** %11, align 8
  %176 = load i32, i32* %9, align 4
  %177 = load i32*, i32** %12, align 8
  %178 = sext i32 %176 to i64
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  store i32* %179, i32** %12, align 8
  br label %156

180:                                              ; preds = %156
  br label %235

181:                                              ; preds = %142
  %182 = load i32, i32* %6, align 4
  store i32 %182, i32* %10, align 4
  br label %183

183:                                              ; preds = %187, %181
  %184 = load i32, i32* %10, align 4
  %185 = add nsw i32 %184, -1
  store i32 %185, i32* %10, align 4
  %186 = icmp ne i32 %184, 0
  br i1 %186, label %187, label %207

187:                                              ; preds = %183
  %188 = load i32*, i32** %11, align 8
  %189 = load i32*, i32** %12, align 8
  %190 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %191 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %195 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @rotate_cw(i32* %188, i32* %189, i32 %193, i32 %197)
  %199 = load i32, i32* %8, align 4
  %200 = load i32*, i32** %11, align 8
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  store i32* %202, i32** %11, align 8
  %203 = load i32, i32* %9, align 4
  %204 = load i32*, i32** %12, align 8
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds i32, i32* %204, i64 %205
  store i32* %206, i32** %12, align 8
  br label %183

207:                                              ; preds = %183
  br label %235

208:                                              ; preds = %142
  %209 = load i32, i32* %6, align 4
  store i32 %209, i32* %10, align 4
  br label %210

210:                                              ; preds = %214, %208
  %211 = load i32, i32* %10, align 4
  %212 = add nsw i32 %211, -1
  store i32 %212, i32* %10, align 4
  %213 = icmp ne i32 %211, 0
  br i1 %213, label %214, label %234

214:                                              ; preds = %210
  %215 = load i32*, i32** %11, align 8
  %216 = load i32*, i32** %12, align 8
  %217 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %218 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %222 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @rotate_ccw(i32* %215, i32* %216, i32 %220, i32 %224)
  %226 = load i32, i32* %8, align 4
  %227 = load i32*, i32** %11, align 8
  %228 = sext i32 %226 to i64
  %229 = getelementptr inbounds i32, i32* %227, i64 %228
  store i32* %229, i32** %11, align 8
  %230 = load i32, i32* %9, align 4
  %231 = load i32*, i32** %12, align 8
  %232 = sext i32 %230 to i64
  %233 = getelementptr inbounds i32, i32* %231, i64 %232
  store i32* %233, i32** %12, align 8
  br label %210

234:                                              ; preds = %210
  br label %235

235:                                              ; preds = %142, %234, %207, %180
  br label %236

236:                                              ; preds = %235, %126, %34
  %237 = load i32, i32* %7, align 4
  ret i32 %237
}

declare dso_local i32 @FNTCHARCNT(i32*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @rotate_ud(i32*, i32*, i32, i32) #1

declare dso_local i32 @rotate_cw(i32*, i32*, i32, i32) #1

declare dso_local i32 @rotate_ccw(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
