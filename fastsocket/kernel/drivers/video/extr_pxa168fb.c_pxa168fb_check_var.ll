; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pxa168fb.c_pxa168fb_check_var.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pxa168fb.c_pxa168fb_check_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_info = type { %struct.TYPE_2__, %struct.pxa168fb_info* }
%struct.TYPE_2__ = type { i32 }
%struct.pxa168fb_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @pxa168fb_check_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa168fb_check_var(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.pxa168fb_info*, align 8
  %7 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 1
  %10 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %9, align 8
  store %struct.pxa168fb_info* %10, %struct.pxa168fb_info** %6, align 8
  %11 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %12 = call i32 @determine_best_pix_fmt(%struct.fb_var_screeninfo* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %115

17:                                               ; preds = %2
  %18 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @set_pix_fmt(%struct.fb_var_screeninfo* %18, i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %6, align 8
  %23 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %25 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %28 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %26, %29
  %31 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %32 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %17
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %115

38:                                               ; preds = %17
  %39 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %40 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %43 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %41, %44
  %46 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %47 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %45, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %38
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %115

53:                                               ; preds = %38
  %54 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %55 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %58 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %56, %59
  %61 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %62 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %60, %63
  %65 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %66 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %65, i32 0, i32 8
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %64, %67
  %69 = icmp sgt i32 %68, 2048
  br i1 %69, label %70, label %73

70:                                               ; preds = %53
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %115

73:                                               ; preds = %53
  %74 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %75 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %78 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %77, i32 0, i32 9
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %76, %79
  %81 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %82 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %81, i32 0, i32 10
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %80, %83
  %85 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %86 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %85, i32 0, i32 11
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %84, %87
  %89 = icmp sgt i32 %88, 2048
  br i1 %89, label %90, label %93

90:                                               ; preds = %73
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %115

93:                                               ; preds = %73
  %94 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %95 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %98 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 %96, %99
  %101 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %102 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %101, i32 0, i32 12
  %103 = load i32, i32* %102, align 4
  %104 = ashr i32 %103, 3
  %105 = mul nsw i32 %100, %104
  %106 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %107 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp sgt i32 %105, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %93
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %3, align 4
  br label %115

114:                                              ; preds = %93
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %114, %111, %90, %70, %50, %35, %15
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @determine_best_pix_fmt(%struct.fb_var_screeninfo*) #1

declare dso_local i32 @set_pix_fmt(%struct.fb_var_screeninfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
