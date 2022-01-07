; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/lockstat/extr_lockstat.c_lsmergesort.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/lockstat/extr_lockstat.c_lsmergesort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32 (i32*, i32*)*, i32**, i32**, i32)* @lsmergesort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lsmergesort(i32 (i32*, i32*)* %0, i32** %1, i32** %2, i32 %3) #0 {
  %5 = alloca i32 (i32*, i32*)*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 (i32*, i32*)* %0, i32 (i32*, i32*)** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = sdiv i32 %12, 2
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %5, align 8
  %18 = load i32**, i32*** %6, align 8
  %19 = load i32**, i32*** %7, align 8
  %20 = load i32, i32* %9, align 4
  call void @lsmergesort(i32 (i32*, i32*)* %17, i32** %18, i32** %19, i32 %20)
  br label %21

21:                                               ; preds = %16, %4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = sub nsw i32 %22, %23
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %5, align 8
  %28 = load i32**, i32*** %6, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  %32 = load i32**, i32*** %7, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = sub nsw i32 %36, %37
  call void @lsmergesort(i32 (i32*, i32*)* %27, i32** %31, i32** %35, i32 %38)
  br label %39

39:                                               ; preds = %26, %21
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %56, %39
  %42 = load i32, i32* %10, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %41
  %45 = load i32**, i32*** %6, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %45, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = load i32**, i32*** %7, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %51, i64 %54
  store i32* %50, i32** %55, align 8
  br label %56

56:                                               ; preds = %44
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %10, align 4
  br label %41

59:                                               ; preds = %41
  %60 = load i32, i32* %9, align 4
  %61 = sub nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %83, %59
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %8, align 4
  %65 = sub nsw i32 %64, 1
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %86

67:                                               ; preds = %62
  %68 = load i32**, i32*** %6, align 8
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %68, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = load i32**, i32*** %7, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %75, %76
  %78 = load i32, i32* %11, align 4
  %79 = sub nsw i32 %77, %78
  %80 = sub nsw i32 %79, 2
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32*, i32** %74, i64 %81
  store i32* %73, i32** %82, align 8
  br label %83

83:                                               ; preds = %67
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %62

86:                                               ; preds = %62
  br label %87

87:                                               ; preds = %119, %86
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %123

91:                                               ; preds = %87
  %92 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %5, align 8
  %93 = load i32**, i32*** %7, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32*, i32** %93, i64 %95
  %97 = load i32*, i32** %96, align 8
  %98 = load i32**, i32*** %7, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32*, i32** %98, i64 %100
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 %92(i32* %97, i32* %102)
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %91
  %106 = load i32**, i32*** %7, align 8
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %10, align 4
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i32*, i32** %106, i64 %109
  %111 = load i32*, i32** %110, align 8
  br label %119

112:                                              ; preds = %91
  %113 = load i32**, i32*** %7, align 8
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %11, align 4
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i32*, i32** %113, i64 %116
  %118 = load i32*, i32** %117, align 8
  br label %119

119:                                              ; preds = %112, %105
  %120 = phi i32* [ %111, %105 ], [ %118, %112 ]
  %121 = load i32**, i32*** %6, align 8
  %122 = getelementptr inbounds i32*, i32** %121, i32 1
  store i32** %122, i32*** %6, align 8
  store i32* %120, i32** %121, align 8
  br label %87

123:                                              ; preds = %87
  %124 = load i32**, i32*** %7, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32*, i32** %124, i64 %126
  %128 = load i32*, i32** %127, align 8
  %129 = load i32**, i32*** %6, align 8
  store i32* %128, i32** %129, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
