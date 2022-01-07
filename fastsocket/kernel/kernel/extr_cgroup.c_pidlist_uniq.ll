; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_pidlist_uniq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_pidlist_uniq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64**, i32)* @pidlist_uniq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pidlist_uniq(i64** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  store i64** %0, i64*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %7, align 4
  %10 = load i64**, i64*** %4, align 8
  %11 = load i64*, i64** %10, align 8
  store i64* %11, i64** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %14, %2
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %3, align 4
  br label %79

19:                                               ; preds = %14
  store i32 1, i32* %6, align 4
  br label %20

20:                                               ; preds = %58, %19
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %61

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %45, %24
  %26 = load i64*, i64** %8, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load i64*, i64** %8, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %31, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %30, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %25
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %62

45:                                               ; preds = %38
  br label %25

46:                                               ; preds = %25
  %47 = load i64*, i64** %8, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64*, i64** %8, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  store i64 %51, i64* %55, align 8
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %46
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %20

61:                                               ; preds = %20
  br label %62

62:                                               ; preds = %61, %44
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i64 @PIDLIST_REALLOC_DIFFERENCE(i32 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %62
  %68 = load i64*, i64** %8, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i64* @pidlist_resize(i64* %68, i32 %69)
  store i64* %70, i64** %9, align 8
  %71 = load i64*, i64** %9, align 8
  %72 = icmp ne i64* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i64*, i64** %9, align 8
  %75 = load i64**, i64*** %4, align 8
  store i64* %74, i64** %75, align 8
  br label %76

76:                                               ; preds = %73, %67
  br label %77

77:                                               ; preds = %76, %62
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %17
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i64 @PIDLIST_REALLOC_DIFFERENCE(i32, i32) #1

declare dso_local i64* @pidlist_resize(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
