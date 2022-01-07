; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_ts_kmp.c_compute_prefix_tbl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_ts_kmp.c_compute_prefix_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TS_IGNORECASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32, i32*, i32)* @compute_prefix_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_prefix_tbl(i64* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @TS_IGNORECASE, align 4
  %14 = and i32 %12, %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %11, align 8
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %16

16:                                               ; preds = %114, %4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %117

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %62, %20
  %22 = load i32, i32* %9, align 4
  %23 = icmp ugt i32 %22, 0
  br i1 %23, label %24, label %60

24:                                               ; preds = %21
  %25 = load i64, i64* %11, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i64*, i64** %5, align 8
  %29 = load i32, i32* %9, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @toupper(i64 %32)
  br label %40

34:                                               ; preds = %24
  %35 = load i64*, i64** %5, align 8
  %36 = load i32, i32* %9, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  br label %40

40:                                               ; preds = %34, %27
  %41 = phi i64 [ %33, %27 ], [ %39, %34 ]
  %42 = load i64, i64* %11, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load i64*, i64** %5, align 8
  %46 = load i32, i32* %10, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @toupper(i64 %49)
  br label %57

51:                                               ; preds = %40
  %52 = load i64*, i64** %5, align 8
  %53 = load i32, i32* %10, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  br label %57

57:                                               ; preds = %51, %44
  %58 = phi i64 [ %50, %44 ], [ %56, %51 ]
  %59 = icmp ne i64 %41, %58
  br label %60

60:                                               ; preds = %57, %21
  %61 = phi i1 [ false, %21 ], [ %59, %57 ]
  br i1 %61, label %62, label %69

62:                                               ; preds = %60
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sub i32 %64, 1
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %9, align 4
  br label %21

69:                                               ; preds = %60
  %70 = load i64, i64* %11, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load i64*, i64** %5, align 8
  %74 = load i32, i32* %9, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @toupper(i64 %77)
  br label %85

79:                                               ; preds = %69
  %80 = load i64*, i64** %5, align 8
  %81 = load i32, i32* %9, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  br label %85

85:                                               ; preds = %79, %72
  %86 = phi i64 [ %78, %72 ], [ %84, %79 ]
  %87 = load i64, i64* %11, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %85
  %90 = load i64*, i64** %5, align 8
  %91 = load i32, i32* %10, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = call i64 @toupper(i64 %94)
  br label %102

96:                                               ; preds = %85
  %97 = load i64*, i64** %5, align 8
  %98 = load i32, i32* %10, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  %101 = load i64, i64* %100, align 8
  br label %102

102:                                              ; preds = %96, %89
  %103 = phi i64 [ %95, %89 ], [ %101, %96 ]
  %104 = icmp eq i64 %86, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* %9, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %9, align 4
  br label %108

108:                                              ; preds = %105, %102
  %109 = load i32, i32* %9, align 4
  %110 = load i32*, i32** %7, align 8
  %111 = load i32, i32* %10, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 %109, i32* %113, align 4
  br label %114

114:                                              ; preds = %108
  %115 = load i32, i32* %10, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %10, align 4
  br label %16

117:                                              ; preds = %16
  ret void
}

declare dso_local i64 @toupper(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
