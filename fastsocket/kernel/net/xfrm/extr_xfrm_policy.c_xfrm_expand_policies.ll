; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c_xfrm_expand_policies.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c_xfrm_expand_policies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flowi = type { i32 }
%struct.xfrm_policy = type { i32, i64, i64 }

@XFRM_POLICY_ALLOW = common dso_local global i64 0, align 8
@XFRM_POLICY_OUT = common dso_local global i32 0, align 4
@XFRM_POLICY_TYPE_MAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flowi*, i32, %struct.xfrm_policy**, i32*, i32*)* @xfrm_expand_policies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_expand_policies(%struct.flowi* %0, i32 %1, %struct.xfrm_policy** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.flowi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.xfrm_policy**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.flowi* %0, %struct.flowi** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.xfrm_policy** %2, %struct.xfrm_policy*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i32*, i32** %10, align 8
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %5
  %17 = load %struct.xfrm_policy**, %struct.xfrm_policy*** %9, align 8
  %18 = getelementptr inbounds %struct.xfrm_policy*, %struct.xfrm_policy** %17, i64 0
  %19 = load %struct.xfrm_policy*, %struct.xfrm_policy** %18, align 8
  %20 = icmp ne %struct.xfrm_policy* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16, %5
  %22 = load i32*, i32** %10, align 8
  store i32 0, i32* %22, align 4
  %23 = load i32*, i32** %11, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %6, align 4
  br label %64

24:                                               ; preds = %16
  %25 = load %struct.xfrm_policy**, %struct.xfrm_policy*** %9, align 8
  %26 = getelementptr inbounds %struct.xfrm_policy*, %struct.xfrm_policy** %25, i64 0
  %27 = load %struct.xfrm_policy*, %struct.xfrm_policy** %26, align 8
  %28 = call i64 @IS_ERR(%struct.xfrm_policy* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.xfrm_policy**, %struct.xfrm_policy*** %9, align 8
  %32 = getelementptr inbounds %struct.xfrm_policy*, %struct.xfrm_policy** %31, i64 0
  %33 = load %struct.xfrm_policy*, %struct.xfrm_policy** %32, align 8
  %34 = call i32 @PTR_ERR(%struct.xfrm_policy* %33)
  store i32 %34, i32* %6, align 4
  br label %64

35:                                               ; preds = %24
  %36 = load %struct.xfrm_policy**, %struct.xfrm_policy*** %9, align 8
  %37 = getelementptr inbounds %struct.xfrm_policy*, %struct.xfrm_policy** %36, i64 0
  %38 = load %struct.xfrm_policy*, %struct.xfrm_policy** %37, align 8
  %39 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32*, i32** %11, align 8
  store i32 %40, i32* %41, align 4
  store i32 0, i32* %12, align 4
  br label %42

42:                                               ; preds = %60, %35
  %43 = load i32, i32* %12, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %42
  %48 = load %struct.xfrm_policy**, %struct.xfrm_policy*** %9, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.xfrm_policy*, %struct.xfrm_policy** %48, i64 %50
  %52 = load %struct.xfrm_policy*, %struct.xfrm_policy** %51, align 8
  %53 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @XFRM_POLICY_ALLOW, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load i32*, i32** %11, align 8
  store i32 -1, i32* %58, align 4
  br label %63

59:                                               ; preds = %47
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %12, align 4
  br label %42

63:                                               ; preds = %57, %42
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %63, %30, %21
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i64 @IS_ERR(%struct.xfrm_policy*) #1

declare dso_local i32 @PTR_ERR(%struct.xfrm_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
