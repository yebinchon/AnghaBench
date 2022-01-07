; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_softcursor.c_soft_cursor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_softcursor.c_soft_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, %struct.TYPE_3__*, %struct.TYPE_4__, %struct.fbcon_ops* }
%struct.TYPE_3__ = type { i32 (%struct.fb_info*, %struct.fb_image*)* }
%struct.fb_image = type { i32, i32, i32* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.fbcon_ops = type { i32, i32* }
%struct.fb_cursor = type { i32, i32*, i64, %struct.fb_image }

@FBINFO_STATE_RUNNING = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @soft_cursor(%struct.fb_info* %0, %struct.fb_cursor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.fb_cursor*, align 8
  %6 = alloca %struct.fbcon_ops*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.fb_image*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.fb_cursor* %1, %struct.fb_cursor** %5, align 8
  %17 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %18 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 3
  %19 = load %struct.fbcon_ops*, %struct.fbcon_ops** %18, align 8
  store %struct.fbcon_ops* %19, %struct.fbcon_ops** %6, align 8
  %20 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %7, align 4
  %25 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %26 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  %30 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %31 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @FBINFO_STATE_RUNNING, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %222

36:                                               ; preds = %2
  %37 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %38 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 7
  %42 = ashr i32 %41, 3
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %45 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = mul i32 %43, %47
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = zext i32 %49 to i64
  %51 = add i64 %50, 16
  %52 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %53 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = zext i32 %54 to i64
  %56 = icmp ne i64 %51, %55
  br i1 %56, label %57, label %91

57:                                               ; preds = %36
  %58 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %59 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %64 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @kfree(i32* %65)
  br label %67

67:                                               ; preds = %62, %57
  %68 = load i32, i32* %11, align 4
  %69 = zext i32 %68 to i64
  %70 = add i64 %69, 16
  %71 = trunc i64 %70 to i32
  %72 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %73 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %75 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @GFP_ATOMIC, align 4
  %78 = call i32* @kmalloc(i32 %76, i32 %77)
  %79 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %80 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %79, i32 0, i32 1
  store i32* %78, i32** %80, align 8
  %81 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %82 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %90, label %85

85:                                               ; preds = %67
  %86 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %87 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %86, i32 0, i32 0
  store i32 0, i32* %87, align 8
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %222

90:                                               ; preds = %67
  br label %91

91:                                               ; preds = %90, %36
  %92 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %93 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 16
  store i32* %95, i32** %15, align 8
  %96 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %97 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = bitcast i32* %98 to %struct.fb_image*
  store %struct.fb_image* %99, %struct.fb_image** %14, align 8
  %100 = load %struct.fb_image*, %struct.fb_image** %14, align 8
  %101 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %102 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %101, i32 0, i32 3
  %103 = bitcast %struct.fb_image* %100 to i8*
  %104 = bitcast %struct.fb_image* %102 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %103, i8* align 8 %104, i64 16, i1 false)
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %7, align 4
  %107 = add i32 %105, %106
  %108 = load i32, i32* %7, align 4
  %109 = xor i32 %108, -1
  %110 = and i32 %107, %109
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %13, align 4
  %112 = load %struct.fb_image*, %struct.fb_image** %14, align 8
  %113 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = mul i32 %111, %114
  %116 = load i32, i32* %8, align 4
  %117 = add i32 %115, %116
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %8, align 4
  %119 = xor i32 %118, -1
  %120 = load i32, i32* %10, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %10, align 4
  %122 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %123 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %124 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %123, i32 0, i32 2
  %125 = load i32, i32* %10, align 4
  %126 = call i32* @fb_get_buffer_offset(%struct.fb_info* %122, %struct.TYPE_4__* %124, i32 %125)
  store i32* %126, i32** %16, align 8
  %127 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %128 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %195

131:                                              ; preds = %91
  %132 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %133 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  switch i32 %134, label %165 [
    i32 128, label %135
    i32 129, label %164
  ]

135:                                              ; preds = %131
  store i32 0, i32* %9, align 4
  br label %136

136:                                              ; preds = %160, %135
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* %11, align 4
  %139 = icmp ult i32 %137, %138
  br i1 %139, label %140, label %163

140:                                              ; preds = %136
  %141 = load %struct.fb_image*, %struct.fb_image** %14, align 8
  %142 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %141, i32 0, i32 2
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %9, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %149 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %9, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = xor i32 %147, %154
  %156 = load i32*, i32** %15, align 8
  %157 = load i32, i32* %9, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  store i32 %155, i32* %159, align 4
  br label %160

160:                                              ; preds = %140
  %161 = load i32, i32* %9, align 4
  %162 = add i32 %161, 1
  store i32 %162, i32* %9, align 4
  br label %136

163:                                              ; preds = %136
  br label %194

164:                                              ; preds = %131
  br label %165

165:                                              ; preds = %131, %164
  store i32 0, i32* %9, align 4
  br label %166

166:                                              ; preds = %190, %165
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* %11, align 4
  %169 = icmp ult i32 %167, %168
  br i1 %169, label %170, label %193

170:                                              ; preds = %166
  %171 = load %struct.fb_image*, %struct.fb_image** %14, align 8
  %172 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %171, i32 0, i32 2
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %9, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %179 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %9, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = and i32 %177, %184
  %186 = load i32*, i32** %15, align 8
  %187 = load i32, i32* %9, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  store i32 %185, i32* %189, align 4
  br label %190

190:                                              ; preds = %170
  %191 = load i32, i32* %9, align 4
  %192 = add i32 %191, 1
  store i32 %192, i32* %9, align 4
  br label %166

193:                                              ; preds = %166
  br label %194

194:                                              ; preds = %193, %163
  br label %202

195:                                              ; preds = %91
  %196 = load i32*, i32** %15, align 8
  %197 = load %struct.fb_image*, %struct.fb_image** %14, align 8
  %198 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %197, i32 0, i32 2
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %11, align 4
  %201 = call i32 @memcpy(i32* %196, i32* %199, i32 %200)
  br label %202

202:                                              ; preds = %195, %194
  %203 = load i32*, i32** %16, align 8
  %204 = load i32, i32* %13, align 4
  %205 = load i32*, i32** %15, align 8
  %206 = load i32, i32* %12, align 4
  %207 = load %struct.fb_image*, %struct.fb_image** %14, align 8
  %208 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @fb_pad_aligned_buffer(i32* %203, i32 %204, i32* %205, i32 %206, i32 %209)
  %211 = load i32*, i32** %16, align 8
  %212 = load %struct.fb_image*, %struct.fb_image** %14, align 8
  %213 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %212, i32 0, i32 2
  store i32* %211, i32** %213, align 8
  %214 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %215 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %214, i32 0, i32 1
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 0
  %218 = load i32 (%struct.fb_info*, %struct.fb_image*)*, i32 (%struct.fb_info*, %struct.fb_image*)** %217, align 8
  %219 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %220 = load %struct.fb_image*, %struct.fb_image** %14, align 8
  %221 = call i32 %218(%struct.fb_info* %219, %struct.fb_image* %220)
  store i32 0, i32* %3, align 4
  br label %222

222:                                              ; preds = %202, %85, %35
  %223 = load i32, i32* %3, align 4
  ret i32 %223
}

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @fb_get_buffer_offset(%struct.fb_info*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @fb_pad_aligned_buffer(i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
