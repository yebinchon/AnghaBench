; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_cache.c_qword_addhex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_cache.c_qword_addhex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qword_addhex(i8** %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %9, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %91

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  %21 = icmp sgt i32 %20, 2
  br i1 %21, label %22, label %74

22:                                               ; preds = %19
  %23 = load i8*, i8** %9, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %9, align 8
  store i8 92, i8* %23, align 1
  %25 = load i8*, i8** %9, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %9, align 8
  store i8 120, i8* %25, align 1
  %27 = load i32, i32* %10, align 4
  %28 = sub nsw i32 %27, 2
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %37, %22
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* %10, align 4
  %34 = icmp sge i32 %33, 2
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi i1 [ false, %29 ], [ %34, %32 ]
  br i1 %36, label %37, label %73

37:                                               ; preds = %35
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %7, align 8
  %40 = load i8, i8* %38, align 1
  store i8 %40, i8* %11, align 1
  %41 = load i8, i8* %11, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, 240
  %44 = ashr i32 %43, 4
  %45 = add nsw i32 48, %44
  %46 = load i8, i8* %11, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp sge i32 %47, 160
  %49 = zext i1 %48 to i32
  %50 = mul nsw i32 %49, 39
  %51 = add nsw i32 %45, %50
  %52 = trunc i32 %51 to i8
  %53 = load i8*, i8** %9, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %9, align 8
  store i8 %52, i8* %53, align 1
  %55 = load i8, i8* %11, align 1
  %56 = zext i8 %55 to i32
  %57 = and i32 %56, 15
  %58 = add nsw i32 48, %57
  %59 = load i8, i8* %11, align 1
  %60 = zext i8 %59 to i32
  %61 = and i32 %60, 15
  %62 = icmp sge i32 %61, 10
  %63 = zext i1 %62 to i32
  %64 = mul nsw i32 %63, 39
  %65 = add nsw i32 %58, %64
  %66 = trunc i32 %65 to i8
  %67 = load i8*, i8** %9, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %9, align 8
  store i8 %66, i8* %67, align 1
  %69 = load i32, i32* %10, align 4
  %70 = sub nsw i32 %69, 2
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %8, align 4
  br label %29

73:                                               ; preds = %35
  br label %74

74:                                               ; preds = %73, %19
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %10, align 4
  %79 = icmp slt i32 %78, 1
  br i1 %79, label %80, label %81

80:                                               ; preds = %77, %74
  store i32 -1, i32* %10, align 4
  br label %86

81:                                               ; preds = %77
  %82 = load i8*, i8** %9, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %9, align 8
  store i8 32, i8* %82, align 1
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %81, %80
  %87 = load i8*, i8** %9, align 8
  %88 = load i8**, i8*** %5, align 8
  store i8* %87, i8** %88, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load i32*, i32** %6, align 8
  store i32 %89, i32* %90, align 4
  br label %91

91:                                               ; preds = %86, %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
