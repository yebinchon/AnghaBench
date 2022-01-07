; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_cache.c_qword_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_cache.c_qword_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qword_add(i8** %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store i8** %0, i8*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8**, i8*** %4, align 8
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %90

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %71, %17
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %6, align 8
  %21 = load i8, i8* %19, align 1
  store i8 %21, i8* %9, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %24, %18
  %28 = phi i1 [ false, %18 ], [ %26, %24 ]
  br i1 %28, label %29, label %72

29:                                               ; preds = %27
  %30 = load i8, i8* %9, align 1
  %31 = sext i8 %30 to i32
  switch i32 %31, label %65 [
    i32 32, label %32
    i32 9, label %32
    i32 10, label %32
    i32 92, label %32
  ]

32:                                               ; preds = %29, %29, %29, %29
  %33 = load i32, i32* %8, align 4
  %34 = icmp sge i32 %33, 4
  br i1 %34, label %35, label %62

35:                                               ; preds = %32
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %7, align 8
  store i8 92, i8* %36, align 1
  %38 = load i8, i8* %9, align 1
  %39 = sext i8 %38 to i32
  %40 = and i32 %39, 192
  %41 = ashr i32 %40, 6
  %42 = add nsw i32 48, %41
  %43 = trunc i32 %42 to i8
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %7, align 8
  store i8 %43, i8* %44, align 1
  %46 = load i8, i8* %9, align 1
  %47 = sext i8 %46 to i32
  %48 = and i32 %47, 56
  %49 = ashr i32 %48, 3
  %50 = add nsw i32 48, %49
  %51 = trunc i32 %50 to i8
  %52 = load i8*, i8** %7, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %7, align 8
  store i8 %51, i8* %52, align 1
  %54 = load i8, i8* %9, align 1
  %55 = sext i8 %54 to i32
  %56 = and i32 %55, 7
  %57 = ashr i32 %56, 0
  %58 = add nsw i32 48, %57
  %59 = trunc i32 %58 to i8
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %7, align 8
  store i8 %59, i8* %60, align 1
  br label %62

62:                                               ; preds = %35, %32
  %63 = load i32, i32* %8, align 4
  %64 = sub nsw i32 %63, 4
  store i32 %64, i32* %8, align 4
  br label %71

65:                                               ; preds = %29
  %66 = load i8, i8* %9, align 1
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %7, align 8
  store i8 %66, i8* %67, align 1
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %65, %62
  br label %18

72:                                               ; preds = %27
  %73 = load i8, i8* %9, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %77, 1
  br i1 %78, label %79, label %80

79:                                               ; preds = %76, %72
  store i32 -1, i32* %8, align 4
  br label %85

80:                                               ; preds = %76
  %81 = load i8*, i8** %7, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %7, align 8
  store i8 32, i8* %81, align 1
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %80, %79
  %86 = load i8*, i8** %7, align 8
  %87 = load i8**, i8*** %4, align 8
  store i8* %86, i8** %87, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load i32*, i32** %5, align 8
  store i32 %88, i32* %89, align 4
  br label %90

90:                                               ; preds = %85, %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
