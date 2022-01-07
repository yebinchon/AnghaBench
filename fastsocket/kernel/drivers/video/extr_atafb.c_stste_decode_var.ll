; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atafb.c_stste_decode_var.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atafb.c_stste_decode_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32 }
%struct.atafb_par = type { i32, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@mono_moni = common dso_local global i64 0, align 8
@sttt_xres = common dso_local global i32 0, align 4
@st_yres = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ST_HIGH = common dso_local global i32 0, align 4
@ST_LOW = common dso_local global i32 0, align 4
@ST_MID = common dso_local global i32 0, align 4
@FB_SYNC_EXT = common dso_local global i32 0, align 4
@screen_len = common dso_local global i32 0, align 4
@screen_base = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.atafb_par*)* @stste_decode_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stste_decode_var(%struct.fb_var_screeninfo* %0, %struct.atafb_par* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.atafb_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.atafb_par* %1, %struct.atafb_par** %5, align 8
  %11 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %12 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %15 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %18 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %21 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load i64, i64* @mono_moni, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %36, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @sttt_xres, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @st_yres, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32, %28, %25
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %216

39:                                               ; preds = %32
  %40 = load i32, i32* @ST_HIGH, align 4
  %41 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %42 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i32 %40, i32* %44, align 4
  %45 = load i32, i32* @sttt_xres, align 4
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* @st_yres, align 4
  store i32 %46, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %116

47:                                               ; preds = %2
  %48 = load i32, i32* %8, align 4
  %49 = icmp sgt i32 %48, 4
  br i1 %49, label %58, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @sttt_xres, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @st_yres, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54, %50, %47
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %216

61:                                               ; preds = %54
  %62 = load i32, i32* %8, align 4
  %63 = icmp sgt i32 %62, 2
  br i1 %63, label %64, label %87

64:                                               ; preds = %61
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @sttt_xres, align 4
  %67 = sdiv i32 %66, 2
  %68 = icmp sgt i32 %65, %67
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @st_yres, align 4
  %72 = sdiv i32 %71, 2
  %73 = icmp sgt i32 %70, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %69, %64
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %216

77:                                               ; preds = %69
  %78 = load i32, i32* @ST_LOW, align 4
  %79 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %80 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  store i32 %78, i32* %82, align 4
  %83 = load i32, i32* @sttt_xres, align 4
  %84 = sdiv i32 %83, 2
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* @st_yres, align 4
  %86 = sdiv i32 %85, 2
  store i32 %86, i32* %7, align 4
  store i32 4, i32* %8, align 4
  br label %115

87:                                               ; preds = %61
  %88 = load i32, i32* %8, align 4
  %89 = icmp sgt i32 %88, 1
  br i1 %89, label %90, label %111

90:                                               ; preds = %87
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @sttt_xres, align 4
  %93 = icmp sgt i32 %91, %92
  br i1 %93, label %99, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @st_yres, align 4
  %97 = sdiv i32 %96, 2
  %98 = icmp sgt i32 %95, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %94, %90
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %216

102:                                              ; preds = %94
  %103 = load i32, i32* @ST_MID, align 4
  %104 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %105 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  store i32 %103, i32* %107, align 4
  %108 = load i32, i32* @sttt_xres, align 4
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* @st_yres, align 4
  %110 = sdiv i32 %109, 2
  store i32 %110, i32* %7, align 4
  store i32 2, i32* %8, align 4
  br label %114

111:                                              ; preds = %87
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %3, align 4
  br label %216

114:                                              ; preds = %102
  br label %115

115:                                              ; preds = %114, %77
  br label %116

116:                                              ; preds = %115, %39
  %117 = load i32, i32* %10, align 4
  %118 = icmp sle i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  store i32 0, i32* %10, align 4
  br label %127

120:                                              ; preds = %116
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = load i32, i32* %7, align 4
  store i32 %125, i32* %10, align 4
  br label %126

126:                                              ; preds = %124, %120
  br label %127

127:                                              ; preds = %126, %119
  %128 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %129 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @FB_SYNC_EXT, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %146

134:                                              ; preds = %127
  %135 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %136 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = and i32 %139, -2
  %141 = or i32 %140, 1
  %142 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %143 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  store i32 %141, i32* %145, align 8
  br label %157

146:                                              ; preds = %127
  %147 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %148 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = and i32 %151, -2
  %153 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %154 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  store i32 %152, i32* %156, align 8
  br label %157

157:                                              ; preds = %146, %134
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* %8, align 4
  %160 = mul nsw i32 %158, %159
  %161 = sdiv i32 %160, 8
  store i32 %161, i32* %9, align 4
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* %9, align 4
  %164 = mul nsw i32 %162, %163
  %165 = load i32, i32* @screen_len, align 4
  %166 = icmp sgt i32 %164, %165
  br i1 %166, label %167, label %173

167:                                              ; preds = %157
  %168 = load i32, i32* @screen_len, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load i32, i32* @EINVAL, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %3, align 4
  br label %216

173:                                              ; preds = %167, %157
  %174 = load i32, i32* %7, align 4
  %175 = load i32, i32* %9, align 4
  %176 = mul nsw i32 %174, %175
  %177 = load i32, i32* @screen_len, align 4
  %178 = icmp sgt i32 %176, %177
  br i1 %178, label %179, label %185

179:                                              ; preds = %173
  %180 = load i32, i32* @screen_len, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = load i32, i32* @EINVAL, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %3, align 4
  br label %216

185:                                              ; preds = %179, %173
  %186 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %187 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %7, align 4
  %190 = add nsw i32 %188, %189
  %191 = load i32, i32* %10, align 4
  %192 = icmp sgt i32 %190, %191
  br i1 %192, label %193, label %199

193:                                              ; preds = %185
  %194 = load i32, i32* %10, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load i32, i32* @EINVAL, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %3, align 4
  br label %216

199:                                              ; preds = %193, %185
  %200 = load i32, i32* %10, align 4
  %201 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %202 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %201, i32 0, i32 0
  store i32 %200, i32* %202, align 8
  %203 = load i64, i64* @screen_base, align 8
  %204 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %205 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %204, i32 0, i32 5
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %9, align 4
  %208 = mul nsw i32 %206, %207
  %209 = sext i32 %208 to i64
  %210 = add nsw i64 %203, %209
  %211 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %212 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %211, i32 0, i32 2
  store i64 %210, i64* %212, align 8
  %213 = load i32, i32* %9, align 4
  %214 = load %struct.atafb_par*, %struct.atafb_par** %5, align 8
  %215 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %214, i32 0, i32 1
  store i32 %213, i32* %215, align 4
  store i32 0, i32* %3, align 4
  br label %216

216:                                              ; preds = %199, %196, %182, %170, %111, %99, %74, %58, %36
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
