; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_omapfb_main.c_omapfb_update_window_async.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_omapfb_main.c_omapfb_update_window_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.fb_var_screeninfo, %struct.omapfb_plane_struct* }
%struct.fb_var_screeninfo = type { i32 }
%struct.omapfb_plane_struct = type { %struct.omapfb_device* }
%struct.omapfb_device = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { {}*, i64 (...)* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.omapfb_update_window = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@OMAPFB_MANUAL_UPDATE = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omapfb_update_window_async(%struct.fb_info* %0, %struct.omapfb_update_window* %1, void (i8*)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fb_info*, align 8
  %7 = alloca %struct.omapfb_update_window*, align 8
  %8 = alloca void (i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.omapfb_plane_struct*, align 8
  %13 = alloca %struct.omapfb_device*, align 8
  %14 = alloca %struct.fb_var_screeninfo*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %6, align 8
  store %struct.omapfb_update_window* %1, %struct.omapfb_update_window** %7, align 8
  store void (i8*)* %2, void (i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 1
  %17 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %16, align 8
  store %struct.omapfb_plane_struct* %17, %struct.omapfb_plane_struct** %12, align 8
  %18 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %12, align 8
  %19 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %18, i32 0, i32 0
  %20 = load %struct.omapfb_device*, %struct.omapfb_device** %19, align 8
  store %struct.omapfb_device* %20, %struct.omapfb_device** %13, align 8
  %21 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 0
  store %struct.fb_var_screeninfo* %22, %struct.fb_var_screeninfo** %14, align 8
  %23 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %14, align 8
  %24 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %48 [
    i32 0, label %26
    i32 180, label %26
    i32 90, label %37
    i32 270, label %37
  ]

26:                                               ; preds = %4, %4
  %27 = load %struct.omapfb_device*, %struct.omapfb_device** %13, align 8
  %28 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  %32 = load %struct.omapfb_device*, %struct.omapfb_device** %13, align 8
  %33 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %11, align 4
  br label %51

37:                                               ; preds = %4, %4
  %38 = load %struct.omapfb_device*, %struct.omapfb_device** %13, align 8
  %39 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %10, align 4
  %43 = load %struct.omapfb_device*, %struct.omapfb_device** %13, align 8
  %44 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %11, align 4
  br label %51

48:                                               ; preds = %4
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %203

51:                                               ; preds = %37, %26
  %52 = load %struct.omapfb_update_window*, %struct.omapfb_update_window** %7, align 8
  %53 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %75, label %57

57:                                               ; preds = %51
  %58 = load %struct.omapfb_update_window*, %struct.omapfb_update_window** %7, align 8
  %59 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %75, label %63

63:                                               ; preds = %57
  %64 = load %struct.omapfb_update_window*, %struct.omapfb_update_window** %7, align 8
  %65 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %75, label %69

69:                                               ; preds = %63
  %70 = load %struct.omapfb_update_window*, %struct.omapfb_update_window** %7, align 8
  %71 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69, %63, %57, %51
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %203

78:                                               ; preds = %69
  %79 = load %struct.omapfb_device*, %struct.omapfb_device** %13, align 8
  %80 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = bitcast {}** %82 to i32 (%struct.fb_info*, %struct.omapfb_update_window*, void (i8*)*, i8*)**
  %84 = load i32 (%struct.fb_info*, %struct.omapfb_update_window*, void (i8*)*, i8*)*, i32 (%struct.fb_info*, %struct.omapfb_update_window*, void (i8*)*, i8*)** %83, align 8
  %85 = icmp ne i32 (%struct.fb_info*, %struct.omapfb_update_window*, void (i8*)*, i8*)* %84, null
  br i1 %85, label %86, label %95

86:                                               ; preds = %78
  %87 = load %struct.omapfb_device*, %struct.omapfb_device** %13, align 8
  %88 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i64 (...)*, i64 (...)** %90, align 8
  %92 = call i64 (...) %91()
  %93 = load i64, i64* @OMAPFB_MANUAL_UPDATE, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %86, %78
  %96 = load i32, i32* @ENODEV, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %5, align 4
  br label %203

98:                                               ; preds = %86
  %99 = load %struct.omapfb_update_window*, %struct.omapfb_update_window** %7, align 8
  %100 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.omapfb_update_window*, %struct.omapfb_update_window** %7, align 8
  %103 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %101, %104
  %106 = load i32, i32* %10, align 4
  %107 = icmp sgt i32 %105, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %98
  %109 = load i32, i32* %10, align 4
  %110 = load %struct.omapfb_update_window*, %struct.omapfb_update_window** %7, align 8
  %111 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %109, %112
  %114 = load %struct.omapfb_update_window*, %struct.omapfb_update_window** %7, align 8
  %115 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 4
  br label %116

116:                                              ; preds = %108, %98
  %117 = load %struct.omapfb_update_window*, %struct.omapfb_update_window** %7, align 8
  %118 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.omapfb_update_window*, %struct.omapfb_update_window** %7, align 8
  %121 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %119, %122
  %124 = load i32, i32* %11, align 4
  %125 = icmp sgt i32 %123, %124
  br i1 %125, label %126, label %134

126:                                              ; preds = %116
  %127 = load i32, i32* %11, align 4
  %128 = load %struct.omapfb_update_window*, %struct.omapfb_update_window** %7, align 8
  %129 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sub nsw i32 %127, %130
  %132 = load %struct.omapfb_update_window*, %struct.omapfb_update_window** %7, align 8
  %133 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %132, i32 0, i32 5
  store i32 %131, i32* %133, align 4
  br label %134

134:                                              ; preds = %126, %116
  %135 = load %struct.omapfb_update_window*, %struct.omapfb_update_window** %7, align 8
  %136 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.omapfb_update_window*, %struct.omapfb_update_window** %7, align 8
  %139 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %137, %140
  %142 = load i32, i32* %10, align 4
  %143 = icmp sgt i32 %141, %142
  br i1 %143, label %144, label %152

144:                                              ; preds = %134
  %145 = load i32, i32* %10, align 4
  %146 = load %struct.omapfb_update_window*, %struct.omapfb_update_window** %7, align 8
  %147 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = sub nsw i32 %145, %148
  %150 = load %struct.omapfb_update_window*, %struct.omapfb_update_window** %7, align 8
  %151 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %150, i32 0, i32 6
  store i32 %149, i32* %151, align 4
  br label %152

152:                                              ; preds = %144, %134
  %153 = load %struct.omapfb_update_window*, %struct.omapfb_update_window** %7, align 8
  %154 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.omapfb_update_window*, %struct.omapfb_update_window** %7, align 8
  %157 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %156, i32 0, i32 7
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %155, %158
  %160 = load i32, i32* %11, align 4
  %161 = icmp sgt i32 %159, %160
  br i1 %161, label %162, label %170

162:                                              ; preds = %152
  %163 = load i32, i32* %11, align 4
  %164 = load %struct.omapfb_update_window*, %struct.omapfb_update_window** %7, align 8
  %165 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = sub nsw i32 %163, %166
  %168 = load %struct.omapfb_update_window*, %struct.omapfb_update_window** %7, align 8
  %169 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %168, i32 0, i32 7
  store i32 %167, i32* %169, align 4
  br label %170

170:                                              ; preds = %162, %152
  %171 = load %struct.omapfb_update_window*, %struct.omapfb_update_window** %7, align 8
  %172 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %190

175:                                              ; preds = %170
  %176 = load %struct.omapfb_update_window*, %struct.omapfb_update_window** %7, align 8
  %177 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %190

180:                                              ; preds = %175
  %181 = load %struct.omapfb_update_window*, %struct.omapfb_update_window** %7, align 8
  %182 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %180
  %186 = load %struct.omapfb_update_window*, %struct.omapfb_update_window** %7, align 8
  %187 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %186, i32 0, i32 7
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %185, %180, %175, %170
  store i32 0, i32* %5, align 4
  br label %203

191:                                              ; preds = %185
  %192 = load %struct.omapfb_device*, %struct.omapfb_device** %13, align 8
  %193 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %192, i32 0, i32 0
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  %196 = bitcast {}** %195 to i32 (%struct.fb_info*, %struct.omapfb_update_window*, void (i8*)*, i8*)**
  %197 = load i32 (%struct.fb_info*, %struct.omapfb_update_window*, void (i8*)*, i8*)*, i32 (%struct.fb_info*, %struct.omapfb_update_window*, void (i8*)*, i8*)** %196, align 8
  %198 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  %199 = load %struct.omapfb_update_window*, %struct.omapfb_update_window** %7, align 8
  %200 = load void (i8*)*, void (i8*)** %8, align 8
  %201 = load i8*, i8** %9, align 8
  %202 = call i32 %197(%struct.fb_info* %198, %struct.omapfb_update_window* %199, void (i8*)* %200, i8* %201)
  store i32 %202, i32* %5, align 4
  br label %203

203:                                              ; preds = %191, %190, %95, %75, %48
  %204 = load i32, i32* %5, align 4
  ret i32 %204
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
