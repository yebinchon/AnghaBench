; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atafb.c_falcon_pan_display.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atafb.c_falcon_pan_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (i64)* }
%struct.fb_var_screeninfo = type { i32, i32 }
%struct.fb_info = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.atafb_par = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@screen_base = common dso_local global i64 0, align 8
@fbhw = common dso_local global %struct.TYPE_8__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@f_pan_display = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @falcon_pan_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @falcon_pan_display(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.atafb_par*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.atafb_par*
  store %struct.atafb_par* %12, %struct.atafb_par** %6, align 8
  %13 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %21 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @up(i32 %22, i32 32)
  %24 = ptrtoint i8* %23 to i32
  %25 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %26 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %19, %2
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 16
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %32 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 15
  %35 = load %struct.atafb_par*, %struct.atafb_par** %6, align 8
  %36 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i32 %34, i32* %38, align 8
  br label %51

39:                                               ; preds = %27
  %40 = load %struct.atafb_par*, %struct.atafb_par** %6, align 8
  %41 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %45 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @up(i32 %46, i32 2)
  %48 = ptrtoint i8* %47 to i32
  %49 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %50 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %39, %30
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %54 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %58 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %56, %60
  %62 = mul nsw i32 %52, %61
  %63 = sdiv i32 %62, 16
  %64 = load %struct.atafb_par*, %struct.atafb_par** %6, align 8
  %65 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  store i32 %63, i32* %67, align 4
  %68 = load %struct.atafb_par*, %struct.atafb_par** %6, align 8
  %69 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %51
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.atafb_par*, %struct.atafb_par** %6, align 8
  %77 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %80, %75
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %74, %51
  %83 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %84 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.atafb_par*, %struct.atafb_par** %6, align 8
  %87 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sub nsw i32 %85, %90
  store i32 %91, i32* %7, align 4
  %92 = load i64, i64* @screen_base, align 8
  %93 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %94 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %97 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 %95, %99
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %100, %101
  %103 = load i32, i32* %8, align 4
  %104 = mul nsw i32 %102, %103
  %105 = sdiv i32 %104, 8
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %92, %106
  %108 = load %struct.atafb_par*, %struct.atafb_par** %6, align 8
  %109 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fbhw, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32 (i64)*, i32 (i64)** %111, align 8
  %113 = icmp ne i32 (i64)* %112, null
  br i1 %113, label %114, label %122

114:                                              ; preds = %82
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fbhw, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32 (i64)*, i32 (i64)** %116, align 8
  %118 = load %struct.atafb_par*, %struct.atafb_par** %6, align 8
  %119 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 %117(i64 %120)
  br label %125

122:                                              ; preds = %82
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %3, align 4
  br label %126

125:                                              ; preds = %114
  store i32 1, i32* @f_pan_display, align 4
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %125, %122
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i8* @up(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
