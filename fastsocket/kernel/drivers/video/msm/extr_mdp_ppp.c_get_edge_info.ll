; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/msm/extr_mdp_ppp.c_get_edge_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/msm/extr_mdp_ppp.c_get_edge_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32*, i32*, i32*, i32*)* @get_edge_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_edge_info(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %10, align 4
  %17 = mul nsw i32 3, %16
  %18 = icmp sgt i32 %15, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %7
  %20 = load i32*, i32** %11, align 8
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* %8, align 4
  %22 = sub nsw i32 %21, 1
  %23 = load i32*, i32** %12, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32*, i32** %13, align 8
  store i32 0, i32* %24, align 4
  %25 = load i32*, i32** %14, align 8
  store i32 0, i32* %25, align 4
  br label %73

26:                                               ; preds = %7
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %10, align 4
  %29 = mul nsw i32 3, %28
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i32*, i32** %11, align 8
  store i32 0, i32* %32, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32*, i32** %12, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32*, i32** %13, align 8
  store i32 0, i32* %35, align 4
  %36 = load i32*, i32** %14, align 8
  store i32 1, i32* %36, align 4
  br label %72

37:                                               ; preds = %26
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %10, align 4
  %44 = mul nsw i32 3, %43
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i32*, i32** %11, align 8
  store i32 -1, i32* %47, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32*, i32** %12, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32*, i32** %13, align 8
  store i32 1, i32* %50, align 4
  %51 = load i32*, i32** %14, align 8
  store i32 1, i32* %51, align 4
  br label %71

52:                                               ; preds = %41, %37
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load i32*, i32** %11, align 8
  store i32 -1, i32* %57, align 4
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  %60 = load i32*, i32** %12, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32*, i32** %13, align 8
  store i32 1, i32* %61, align 4
  %62 = load i32*, i32** %14, align 8
  store i32 2, i32* %62, align 4
  br label %70

63:                                               ; preds = %52
  %64 = load i32*, i32** %11, align 8
  store i32 -2, i32* %64, align 4
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  %67 = load i32*, i32** %12, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32*, i32** %13, align 8
  store i32 2, i32* %68, align 4
  %69 = load i32*, i32** %14, align 8
  store i32 2, i32* %69, align 4
  br label %70

70:                                               ; preds = %63, %56
  br label %71

71:                                               ; preds = %70, %46
  br label %72

72:                                               ; preds = %71, %31
  br label %73

73:                                               ; preds = %72, %19
  %74 = load i32, i32* %9, align 4
  %75 = load i32*, i32** %11, align 8
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, %74
  store i32 %77, i32* %75, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32*, i32** %12, align 8
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, %78
  store i32 %81, i32* %79, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
