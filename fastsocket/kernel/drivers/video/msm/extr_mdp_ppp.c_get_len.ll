; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/msm/extr_mdp_ppp.c_get_len.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/msm/extr_mdp_ppp.c_get_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp_img = type { i32, i32 }
%struct.mdp_rect = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mdp_img*, %struct.mdp_rect*, i32, i32*, i32*)* @get_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_len(%struct.mdp_img* %0, %struct.mdp_rect* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.mdp_img*, align 8
  %7 = alloca %struct.mdp_rect*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.mdp_img* %0, %struct.mdp_img** %6, align 8
  store %struct.mdp_rect* %1, %struct.mdp_rect** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load %struct.mdp_rect*, %struct.mdp_rect** %7, align 8
  %12 = getelementptr inbounds %struct.mdp_rect, %struct.mdp_rect* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mdp_img*, %struct.mdp_img** %6, align 8
  %15 = getelementptr inbounds %struct.mdp_img, %struct.mdp_img* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mdp_rect*, %struct.mdp_rect** %7, align 8
  %18 = getelementptr inbounds %struct.mdp_rect, %struct.mdp_rect* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @IMG_LEN(i32 %13, i32 %16, i32 %19, i32 %20)
  %22 = load i32*, i32** %9, align 8
  store i32 %21, i32* %22, align 4
  %23 = load %struct.mdp_img*, %struct.mdp_img** %6, align 8
  %24 = getelementptr inbounds %struct.mdp_img, %struct.mdp_img* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @IS_PSEUDOPLNR(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %5
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mdp_img*, %struct.mdp_img** %6, align 8
  %32 = getelementptr inbounds %struct.mdp_img, %struct.mdp_img* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @Y_TO_CRCB_RATIO(i32 %33)
  %35 = sdiv i32 %30, %34
  %36 = load i32*, i32** %10, align 8
  store i32 %35, i32* %36, align 4
  br label %39

37:                                               ; preds = %5
  %38 = load i32*, i32** %10, align 8
  store i32 0, i32* %38, align 4
  br label %39

39:                                               ; preds = %37, %28
  ret void
}

declare dso_local i32 @IMG_LEN(i32, i32, i32, i32) #1

declare dso_local i64 @IS_PSEUDOPLNR(i32) #1

declare dso_local i32 @Y_TO_CRCB_RATIO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
