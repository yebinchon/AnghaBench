; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_w100fb.c_w100fb_get_hsynclen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_w100fb.c_w100fb_get_hsynclen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.fb_info = type { %struct.w100fb_par* }
%struct.w100fb_par = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @w100fb_get_hsynclen(%struct.device* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.w100fb_par*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.fb_info* @dev_get_drvdata(%struct.device* %6)
  store %struct.fb_info* %7, %struct.fb_info** %4, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 0
  %10 = load %struct.w100fb_par*, %struct.w100fb_par** %9, align 8
  store %struct.w100fb_par* %10, %struct.w100fb_par** %5, align 8
  %11 = load %struct.w100fb_par*, %struct.w100fb_par** %5, align 8
  %12 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %20

16:                                               ; preds = %1
  %17 = load %struct.w100fb_par*, %struct.w100fb_par** %5, align 8
  %18 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %2, align 8
  br label %20

20:                                               ; preds = %16, %15
  %21 = load i64, i64* %2, align 8
  ret i64 %21
}

declare dso_local %struct.fb_info* @dev_get_drvdata(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
