; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_compare_badness.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_compare_badness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.badness_vector = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compare_badness(%struct.badness_vector* %0, %struct.badness_vector* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.badness_vector*, align 8
  %5 = alloca %struct.badness_vector*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  store %struct.badness_vector* %0, %struct.badness_vector** %4, align 8
  store %struct.badness_vector* %1, %struct.badness_vector** %5, align 8
  store i16 0, i16* %8, align 2
  store i16 0, i16* %9, align 2
  %10 = load %struct.badness_vector*, %struct.badness_vector** %4, align 8
  %11 = getelementptr inbounds %struct.badness_vector, %struct.badness_vector* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.badness_vector*, %struct.badness_vector** %5, align 8
  %14 = getelementptr inbounds %struct.badness_vector, %struct.badness_vector* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %66

18:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %50, %18
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.badness_vector*, %struct.badness_vector** %4, align 8
  %22 = getelementptr inbounds %struct.badness_vector, %struct.badness_vector* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %53

25:                                               ; preds = %19
  %26 = load %struct.badness_vector*, %struct.badness_vector** %4, align 8
  %27 = getelementptr inbounds %struct.badness_vector, %struct.badness_vector* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.badness_vector*, %struct.badness_vector** %5, align 8
  %34 = getelementptr inbounds %struct.badness_vector, %struct.badness_vector* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %32, %39
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %25
  store i16 1, i16* %8, align 2
  br label %49

44:                                               ; preds = %25
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i16 1, i16* %9, align 2
  br label %48

48:                                               ; preds = %47, %44
  br label %49

49:                                               ; preds = %48, %43
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %19

53:                                               ; preds = %19
  %54 = load i16, i16* %8, align 2
  %55 = icmp ne i16 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i16, i16* %9, align 2
  %58 = icmp ne i16 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %66

60:                                               ; preds = %56
  store i32 3, i32* %3, align 4
  br label %66

61:                                               ; preds = %53
  %62 = load i16, i16* %9, align 2
  %63 = icmp ne i16 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 2, i32* %3, align 4
  br label %66

65:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %64, %60, %59, %17
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
