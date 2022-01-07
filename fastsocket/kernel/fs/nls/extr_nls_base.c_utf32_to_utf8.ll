; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nls/extr_nls_base.c_utf32_to_utf8.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nls/extr_nls_base.c_utf32_to_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utf8_table = type { i64, i32, i64, i64 }

@UNICODE_MAX = common dso_local global i64 0, align 8
@SURROGATE_MASK = common dso_local global i64 0, align 8
@SURROGATE_PAIR = common dso_local global i64 0, align 8
@utf8_table = common dso_local global %struct.utf8_table* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utf32_to_utf8(i64 %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.utf8_table*, align 8
  store i64 %0, i64* %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i64*, i64** %6, align 8
  %13 = icmp ne i64* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %84

15:                                               ; preds = %3
  %16 = load i64, i64* %5, align 8
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @UNICODE_MAX, align 8
  %19 = icmp ugt i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @SURROGATE_MASK, align 8
  %23 = and i64 %21, %22
  %24 = load i64, i64* @SURROGATE_PAIR, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %15
  store i32 -1, i32* %4, align 4
  br label %84

27:                                               ; preds = %20
  store i32 0, i32* %10, align 4
  %28 = load %struct.utf8_table*, %struct.utf8_table** @utf8_table, align 8
  store %struct.utf8_table* %28, %struct.utf8_table** %11, align 8
  br label %29

29:                                               ; preds = %78, %27
  %30 = load %struct.utf8_table*, %struct.utf8_table** %11, align 8
  %31 = getelementptr inbounds %struct.utf8_table, %struct.utf8_table* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %34, %29
  %38 = phi i1 [ false, %29 ], [ %36, %34 ]
  br i1 %38, label %39, label %83

39:                                               ; preds = %37
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.utf8_table*, %struct.utf8_table** %11, align 8
  %44 = getelementptr inbounds %struct.utf8_table, %struct.utf8_table* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ule i64 %42, %45
  br i1 %46, label %47, label %77

47:                                               ; preds = %39
  %48 = load %struct.utf8_table*, %struct.utf8_table** %11, align 8
  %49 = getelementptr inbounds %struct.utf8_table, %struct.utf8_table* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %9, align 4
  %51 = load %struct.utf8_table*, %struct.utf8_table** %11, align 8
  %52 = getelementptr inbounds %struct.utf8_table, %struct.utf8_table* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = zext i32 %55 to i64
  %57 = lshr i64 %54, %56
  %58 = or i64 %53, %57
  %59 = load i64*, i64** %6, align 8
  store i64 %58, i64* %59, align 8
  br label %60

60:                                               ; preds = %63, %47
  %61 = load i32, i32* %9, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %60
  %64 = load i32, i32* %9, align 4
  %65 = sub nsw i32 %64, 6
  store i32 %65, i32* %9, align 4
  %66 = load i64*, i64** %6, align 8
  %67 = getelementptr inbounds i64, i64* %66, i32 1
  store i64* %67, i64** %6, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load i32, i32* %9, align 4
  %70 = zext i32 %69 to i64
  %71 = lshr i64 %68, %70
  %72 = and i64 %71, 63
  %73 = or i64 128, %72
  %74 = load i64*, i64** %6, align 8
  store i64 %73, i64* %74, align 8
  br label %60

75:                                               ; preds = %60
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %4, align 4
  br label %84

77:                                               ; preds = %39
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.utf8_table*, %struct.utf8_table** %11, align 8
  %80 = getelementptr inbounds %struct.utf8_table, %struct.utf8_table* %79, i32 1
  store %struct.utf8_table* %80, %struct.utf8_table** %11, align 8
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %7, align 4
  br label %29

83:                                               ; preds = %37
  store i32 -1, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %75, %26, %14
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
