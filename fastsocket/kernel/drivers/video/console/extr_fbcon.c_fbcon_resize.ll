; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_fbcon_resize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_fbcon_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.fb_var_screeninfo, i32, %struct.fbcon_ops* }
%struct.fb_var_screeninfo = type { i32, i32, i32 }
%struct.fbcon_ops = type { %struct.fb_var_screeninfo, i32 }
%struct.display = type { i32 }
%struct.vc_data = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.fb_videomode = type { i32 }

@registered_fb = common dso_local global %struct.fb_info** null, align 8
@con2fb_map = common dso_local global i64* null, align 8
@fb_display = common dso_local global %struct.display* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"attempting resize %ix%i\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"resize now %ix%i\0A\00", align 1
@FB_ACTIVATE_NOW = common dso_local global i32 0, align 4
@FB_ACTIVATE_FORCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*, i32, i32, i32)* @fbcon_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fbcon_resize(%struct.vc_data* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vc_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fb_info*, align 8
  %11 = alloca %struct.fbcon_ops*, align 8
  %12 = alloca %struct.display*, align 8
  %13 = alloca %struct.fb_var_screeninfo, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.fb_videomode*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %21 = load %struct.fb_info**, %struct.fb_info*** @registered_fb, align 8
  %22 = load i64*, i64** @con2fb_map, align 8
  %23 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %24 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i64, i64* %22, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %21, i64 %27
  %29 = load %struct.fb_info*, %struct.fb_info** %28, align 8
  store %struct.fb_info* %29, %struct.fb_info** %10, align 8
  %30 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %31 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %30, i32 0, i32 2
  %32 = load %struct.fbcon_ops*, %struct.fbcon_ops** %31, align 8
  store %struct.fbcon_ops* %32, %struct.fbcon_ops** %11, align 8
  %33 = load %struct.display*, %struct.display** @fb_display, align 8
  %34 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %35 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.display, %struct.display* %33, i64 %36
  store %struct.display* %37, %struct.display** %12, align 8
  %38 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %39 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %38, i32 0, i32 0
  %40 = bitcast %struct.fb_var_screeninfo* %13 to i8*
  %41 = bitcast %struct.fb_var_screeninfo* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 8 %41, i64 12, i1 false)
  %42 = load %struct.fbcon_ops*, %struct.fbcon_ops** %11, align 8
  %43 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @FBCON_SWAP(i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %16, align 4
  %48 = load %struct.fbcon_ops*, %struct.fbcon_ops** %11, align 8
  %49 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @FBCON_SWAP(i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* %17, align 4
  %54 = load %struct.fbcon_ops*, %struct.fbcon_ops** %11, align 8
  %55 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %58 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %62 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @FBCON_SWAP(i32 %56, i32 %60, i32 %64)
  store i32 %65, i32* %18, align 4
  %66 = load %struct.fbcon_ops*, %struct.fbcon_ops** %11, align 8
  %67 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %70 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %74 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @FBCON_SWAP(i32 %68, i32 %72, i32 %76)
  store i32 %77, i32* %19, align 4
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* %18, align 4
  %80 = mul nsw i32 %78, %79
  %81 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %13, i32 0, i32 0
  store i32 %80, i32* %81, align 4
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* %19, align 4
  %84 = mul nsw i32 %82, %83
  %85 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %13, i32 0, i32 1
  store i32 %84, i32* %85, align 4
  %86 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %87 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %13, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %89, %91
  store i32 %92, i32* %14, align 4
  %93 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %94 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %13, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %96, %98
  store i32 %99, i32* %15, align 4
  %100 = load i32, i32* %14, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %113, label %102

102:                                              ; preds = %4
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %18, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %113, label %106

106:                                              ; preds = %102
  %107 = load i32, i32* %15, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* %19, align 4
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %113, label %176

113:                                              ; preds = %109, %106, %102, %4
  %114 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %13, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %13, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @DPRINTK(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %115, i32 %117)
  %119 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %120 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %119, i32 0, i32 1
  %121 = call %struct.fb_videomode* @fb_find_best_mode(%struct.fb_var_screeninfo* %13, i32* %120)
  store %struct.fb_videomode* %121, %struct.fb_videomode** %20, align 8
  %122 = load %struct.fb_videomode*, %struct.fb_videomode** %20, align 8
  %123 = icmp eq %struct.fb_videomode* %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %113
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %5, align 4
  br label %181

127:                                              ; preds = %113
  %128 = load %struct.display*, %struct.display** %12, align 8
  %129 = call i32 @display_to_var(%struct.fb_var_screeninfo* %13, %struct.display* %128)
  %130 = load %struct.fb_videomode*, %struct.fb_videomode** %20, align 8
  %131 = call i32 @fb_videomode_to_var(%struct.fb_var_screeninfo* %13, %struct.fb_videomode* %130)
  %132 = load i32, i32* %16, align 4
  %133 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %13, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %18, align 4
  %136 = sdiv i32 %134, %135
  %137 = icmp sgt i32 %132, %136
  br i1 %137, label %145, label %138

138:                                              ; preds = %127
  %139 = load i32, i32* %17, align 4
  %140 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %13, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %19, align 4
  %143 = sdiv i32 %141, %142
  %144 = icmp sgt i32 %139, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %138, %127
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %5, align 4
  br label %181

148:                                              ; preds = %138
  %149 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %13, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %13, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @DPRINTK(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %150, i32 %152)
  %154 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %155 = call i64 @CON_IS_VISIBLE(%struct.vc_data* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %148
  %158 = load i32, i32* @FB_ACTIVATE_NOW, align 4
  %159 = load i32, i32* @FB_ACTIVATE_FORCE, align 4
  %160 = or i32 %158, %159
  %161 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %13, i32 0, i32 2
  store i32 %160, i32* %161, align 4
  %162 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %163 = call i32 @fb_set_var(%struct.fb_info* %162, %struct.fb_var_screeninfo* %13)
  br label %164

164:                                              ; preds = %157, %148
  %165 = load %struct.display*, %struct.display** %12, align 8
  %166 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %167 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %166, i32 0, i32 0
  %168 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %169 = call i32 @var_to_display(%struct.display* %165, %struct.fb_var_screeninfo* %167, %struct.fb_info* %168)
  %170 = load %struct.fbcon_ops*, %struct.fbcon_ops** %11, align 8
  %171 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %170, i32 0, i32 0
  %172 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %173 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %172, i32 0, i32 0
  %174 = bitcast %struct.fb_var_screeninfo* %171 to i8*
  %175 = bitcast %struct.fb_var_screeninfo* %173 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %174, i8* align 8 %175, i64 12, i1 false)
  br label %176

176:                                              ; preds = %164, %109
  %177 = load %struct.display*, %struct.display** %12, align 8
  %178 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %179 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %180 = call i32 @updatescrollmode(%struct.display* %177, %struct.fb_info* %178, %struct.vc_data* %179)
  store i32 0, i32* %5, align 4
  br label %181

181:                                              ; preds = %176, %145, %124
  %182 = load i32, i32* %5, align 4
  ret i32 %182
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @FBCON_SWAP(i32, i32, i32) #2

declare dso_local i32 @DPRINTK(i8*, i32, i32) #2

declare dso_local %struct.fb_videomode* @fb_find_best_mode(%struct.fb_var_screeninfo*, i32*) #2

declare dso_local i32 @display_to_var(%struct.fb_var_screeninfo*, %struct.display*) #2

declare dso_local i32 @fb_videomode_to_var(%struct.fb_var_screeninfo*, %struct.fb_videomode*) #2

declare dso_local i64 @CON_IS_VISIBLE(%struct.vc_data*) #2

declare dso_local i32 @fb_set_var(%struct.fb_info*, %struct.fb_var_screeninfo*) #2

declare dso_local i32 @var_to_display(%struct.display*, %struct.fb_var_screeninfo*, %struct.fb_info*) #2

declare dso_local i32 @updatescrollmode(%struct.display*, %struct.fb_info*, %struct.vc_data*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
