; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_amba-clcd.c_clcdfb_set_bitfields.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_amba-clcd.c_clcdfb_set_bitfields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clcd_fb = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.fb_var_screeninfo = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.TYPE_6__ = type { i32, i32, i64 }

@CNTL_LCDTFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CNTL_BGR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clcd_fb*, %struct.fb_var_screeninfo*)* @clcdfb_set_bitfields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clcdfb_set_bitfields(%struct.clcd_fb* %0, %struct.fb_var_screeninfo* %1) #0 {
  %3 = alloca %struct.clcd_fb*, align 8
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca i32, align 4
  store %struct.clcd_fb* %0, %struct.clcd_fb** %3, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %7 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %6, i32 0, i32 4
  %8 = call i32 @memset(i32* %7, i32 0, i32 4)
  %9 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %10 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %13 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %16 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %19 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %92 [
    i32 1, label %21
    i32 2, label %21
    i32 4, label %21
    i32 8, label %21
    i32 16, label %49
    i32 32, label %72
  ]

21:                                               ; preds = %2, %2, %2, %2
  %22 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %23 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %26 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %29 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  %31 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %32 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %35 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %38 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  %40 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %41 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %44 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %47 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  store i32 0, i32* %48, align 4
  br label %95

49:                                               ; preds = %2
  %50 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %51 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i32 5, i32* %52, align 8
  %53 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %54 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i32 5, i32* %55, align 8
  %56 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %57 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 5
  br i1 %60, label %61, label %71

61:                                               ; preds = %49
  %62 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %63 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 6
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %69 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  store i32 6, i32* %70, align 8
  br label %71

71:                                               ; preds = %67, %61, %49
  br label %95

72:                                               ; preds = %2
  %73 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %74 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %73, i32 0, i32 0
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @CNTL_LCDTFT, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %72
  %82 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %83 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store i32 8, i32* %84, align 8
  %85 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %86 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  store i32 8, i32* %87, align 8
  %88 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %89 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  store i32 8, i32* %90, align 8
  br label %95

91:                                               ; preds = %72
  br label %92

92:                                               ; preds = %2, %91
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %92, %81, %71, %21
  %96 = load i32, i32* %5, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %169

98:                                               ; preds = %95
  %99 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %100 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp sge i32 %101, 16
  br i1 %102, label %103, label %169

103:                                              ; preds = %98
  %104 = load %struct.clcd_fb*, %struct.clcd_fb** %3, align 8
  %105 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %104, i32 0, i32 0
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @CNTL_BGR, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %140

112:                                              ; preds = %103
  %113 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %114 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  store i32 0, i32* %115, align 4
  %116 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %117 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %121 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %119, %123
  %125 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %126 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  store i32 %124, i32* %127, align 4
  %128 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %129 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %133 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = add nsw i32 %131, %135
  %137 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %138 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  store i32 %136, i32* %139, align 4
  br label %168

140:                                              ; preds = %103
  %141 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %142 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  store i32 0, i32* %143, align 4
  %144 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %145 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %149 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = add nsw i32 %147, %151
  %153 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %154 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 1
  store i32 %152, i32* %155, align 4
  %156 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %157 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %161 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = add nsw i32 %159, %163
  %165 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %166 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 1
  store i32 %164, i32* %167, align 4
  br label %168

168:                                              ; preds = %140, %112
  br label %169

169:                                              ; preds = %168, %98, %95
  %170 = load i32, i32* %5, align 4
  ret i32 %170
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
