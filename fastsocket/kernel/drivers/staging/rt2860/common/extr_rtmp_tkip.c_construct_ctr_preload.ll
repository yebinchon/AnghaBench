; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2860/common/extr_rtmp_tkip.c_construct_ctr_preload.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2860/common/extr_rtmp_tkip.c_construct_ctr_preload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @construct_ctr_preload(i8* %0, i32 %1, i32 %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %22, %6
  %15 = load i32, i32* %13, align 4
  %16 = icmp slt i32 %15, 16
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* %13, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  store i8 0, i8* %21, align 1
  br label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %13, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %13, align 4
  br label %14

25:                                               ; preds = %14
  store i32 0, i32* %13, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  store i8 1, i8* %27, align 1
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load i8*, i8** %10, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 30
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %37, 15
  %39 = trunc i32 %38 to i8
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  store i8 %39, i8* %41, align 1
  br label %42

42:                                               ; preds = %33, %30, %25
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %45
  %49 = load i8*, i8** %10, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 24
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = and i32 %52, 15
  %54 = trunc i32 %53 to i8
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  store i8 %54, i8* %56, align 1
  br label %57

57:                                               ; preds = %48, %45, %42
  store i32 2, i32* %13, align 4
  br label %58

58:                                               ; preds = %72, %57
  %59 = load i32, i32* %13, align 4
  %60 = icmp slt i32 %59, 8
  br i1 %60, label %61, label %75

61:                                               ; preds = %58
  %62 = load i8*, i8** %10, align 8
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, 8
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = load i8*, i8** %7, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  store i8 %67, i8* %71, align 1
  br label %72

72:                                               ; preds = %61
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %13, align 4
  br label %58

75:                                               ; preds = %58
  store i32 8, i32* %13, align 4
  br label %76

76:                                               ; preds = %90, %75
  %77 = load i32, i32* %13, align 4
  %78 = icmp slt i32 %77, 14
  br i1 %78, label %79, label %93

79:                                               ; preds = %76
  %80 = load i8*, i8** %11, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sub nsw i32 13, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %80, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = load i8*, i8** %7, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  store i8 %85, i8* %89, align 1
  br label %90

90:                                               ; preds = %79
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %13, align 4
  br label %76

93:                                               ; preds = %76
  %94 = load i32, i32* %12, align 4
  %95 = sdiv i32 %94, 256
  %96 = trunc i32 %95 to i8
  %97 = load i8*, i8** %7, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 14
  store i8 %96, i8* %98, align 1
  %99 = load i32, i32* %12, align 4
  %100 = srem i32 %99, 256
  %101 = trunc i32 %100 to i8
  %102 = load i8*, i8** %7, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 15
  store i8 %101, i8* %103, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
