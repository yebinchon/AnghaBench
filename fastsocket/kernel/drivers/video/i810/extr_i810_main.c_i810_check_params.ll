; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/i810/extr_i810_main.c_i810_check_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/i810/extr_i810_main.c_i810_check_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32 }
%struct.fb_info = type { %struct.TYPE_6__, i32, %struct.TYPE_5__, %struct.i810fb_par* }
%struct.TYPE_6__ = type { i32, i32, i64, i32, i32, i32, i32, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.i810fb_par = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [81 x i8] c"i810fb: required video memory, %d bytes, for %dx%d-%d (virtual) is out of range\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@FB_MAXTIMINGS = common dso_local global i32 0, align 4
@HFMIN = common dso_local global i32 0, align 4
@HFMAX = common dso_local global i32 0, align 4
@VFMIN = common dso_local global i32 0, align 4
@VFMAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"i810fb: invalid video mode%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [47 x i8] c". Specifying vsyncN/hsyncN parameters may help\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @i810_check_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i810_check_params(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.i810fb_par*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %14 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %15 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 3
  %16 = load %struct.i810fb_par*, %struct.i810fb_par** %15, align 8
  store %struct.i810fb_par* %16, %struct.i810fb_par** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %18 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  %20 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %21 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  %23 = load %struct.i810fb_par*, %struct.i810fb_par** %6, align 8
  %24 = load i32, i32* %12, align 4
  %25 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %26 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @get_line_length(%struct.i810fb_par* %23, i32 %24, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %11, align 4
  %31 = mul nsw i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.i810fb_par*, %struct.i810fb_par** %6, align 8
  %34 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %32, %36
  br i1 %37, label %38, label %96

38:                                               ; preds = %2
  %39 = load %struct.i810fb_par*, %struct.i810fb_par** %6, align 8
  %40 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = sdiv i32 %42, %43
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %47 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %95

50:                                               ; preds = %38
  %51 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %52 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %11, align 4
  %55 = load %struct.i810fb_par*, %struct.i810fb_par** %6, align 8
  %56 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %11, align 4
  %60 = sdiv i32 %58, %59
  store i32 %60, i32* %12, align 4
  %61 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %62 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = ashr i32 %63, 3
  %65 = load i32, i32* %12, align 4
  %66 = sdiv i32 %65, %64
  store i32 %66, i32* %12, align 4
  %67 = load %struct.i810fb_par*, %struct.i810fb_par** %6, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %70 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @get_line_length(%struct.i810fb_par* %67, i32 %68, i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %75 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %73, %77
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %81 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %50
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %89 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %86, i32 %87, i32 %90)
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %180

94:                                               ; preds = %50
  br label %95

95:                                               ; preds = %94, %38
  br label %96

96:                                               ; preds = %95, %2
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %99 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %11, align 4
  %101 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %102 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  %103 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %104 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  switch i32 %105, label %118 [
    i32 8, label %106
    i32 16, label %110
    i32 24, label %114
    i32 32, label %114
  ]

106:                                              ; preds = %96
  %107 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %108 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  store i32 234000000, i32* %109, align 8
  br label %118

110:                                              ; preds = %96
  %111 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %112 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  store i32 229000000, i32* %113, align 8
  br label %118

114:                                              ; preds = %96, %96
  %115 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %116 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  store i32 204000000, i32* %117, align 8
  br label %118

118:                                              ; preds = %96, %114, %110, %106
  %119 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %120 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  store i32 15000000, i32* %121, align 4
  %122 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %123 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %124 = call i32 @fb_validate_mode(%struct.fb_var_screeninfo* %122, %struct.fb_info* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %118
  store i32 1, i32* %9, align 4
  br label %127

127:                                              ; preds = %126, %118
  %128 = load i32, i32* %9, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %178, label %130

130:                                              ; preds = %127
  %131 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %132 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %178

136:                                              ; preds = %130
  %137 = load i32, i32* @FB_MAXTIMINGS, align 4
  %138 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %139 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %140 = call i64 @fb_get_mode(i32 %137, i32 0, %struct.fb_var_screeninfo* %138, %struct.fb_info* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %177

142:                                              ; preds = %136
  %143 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %144 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @HFMIN, align 4
  %148 = sub nsw i32 %146, %147
  %149 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %150 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @HFMAX, align 4
  %154 = sub nsw i32 %152, %153
  %155 = or i32 %148, %154
  %156 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %157 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @VFMIN, align 4
  %161 = sub nsw i32 %159, %160
  %162 = or i32 %155, %161
  %163 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %164 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 6
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @VFMAX, align 4
  %168 = sub nsw i32 %166, %167
  %169 = or i32 %162, %168
  store i32 %169, i32* %13, align 4
  %170 = load i32, i32* %13, align 4
  %171 = icmp ne i32 %170, 0
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0)
  %174 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %173)
  %175 = load i32, i32* @EINVAL, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %10, align 4
  br label %177

177:                                              ; preds = %142, %136
  br label %178

178:                                              ; preds = %177, %130, %127
  %179 = load i32, i32* %10, align 4
  store i32 %179, i32* %3, align 4
  br label %180

180:                                              ; preds = %178, %84
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local i32 @get_line_length(%struct.i810fb_par*, i32, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @fb_validate_mode(%struct.fb_var_screeninfo*, %struct.fb_info*) #1

declare dso_local i64 @fb_get_mode(i32, i32, %struct.fb_var_screeninfo*, %struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
