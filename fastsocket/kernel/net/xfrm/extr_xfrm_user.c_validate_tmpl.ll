; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_validate_tmpl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_validate_tmpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_user_tmpl = type { i32 }

@XFRM_MAX_DEPTH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.xfrm_user_tmpl*, i32)* @validate_tmpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_tmpl(i32 %0, %struct.xfrm_user_tmpl* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfrm_user_tmpl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.xfrm_user_tmpl* %1, %struct.xfrm_user_tmpl** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @XFRM_MAX_DEPTH, align 4
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %51

15:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %47, %15
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %50

20:                                               ; preds = %16
  %21 = load %struct.xfrm_user_tmpl*, %struct.xfrm_user_tmpl** %6, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.xfrm_user_tmpl, %struct.xfrm_user_tmpl* %21, i64 %23
  %25 = getelementptr inbounds %struct.xfrm_user_tmpl, %struct.xfrm_user_tmpl* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.xfrm_user_tmpl*, %struct.xfrm_user_tmpl** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.xfrm_user_tmpl, %struct.xfrm_user_tmpl* %30, i64 %32
  %34 = getelementptr inbounds %struct.xfrm_user_tmpl, %struct.xfrm_user_tmpl* %33, i32 0, i32 0
  store i32 %29, i32* %34, align 4
  br label %35

35:                                               ; preds = %28, %20
  %36 = load %struct.xfrm_user_tmpl*, %struct.xfrm_user_tmpl** %6, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.xfrm_user_tmpl, %struct.xfrm_user_tmpl* %36, i64 %38
  %40 = getelementptr inbounds %struct.xfrm_user_tmpl, %struct.xfrm_user_tmpl* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %43 [
    i32 129, label %42
  ]

42:                                               ; preds = %35
  br label %46

43:                                               ; preds = %35
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %51

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %16

50:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %43, %12
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
