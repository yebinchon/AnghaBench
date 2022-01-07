; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_archive.c_sync_ar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_archive.c_sync_ar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfcopy = type { i32, i32, i8*, i8*, i32, i64* }

@_ARMAG_LEN = common dso_local global i64 0, align 8
@_ARHDR_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elfcopy*)* @sync_ar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sync_ar(%struct.elfcopy* %0) #0 {
  %2 = alloca %struct.elfcopy*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.elfcopy* %0, %struct.elfcopy** %2, align 8
  %6 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %7 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %12 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = srem i32 %13, 2
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %10
  %17 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %18 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %17, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %21 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i8, i8* %19, i64 %24
  store i8 0, i8* %25, align 1
  br label %26

26:                                               ; preds = %16, %10, %1
  %27 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %28 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %27, i32 0, i32 3
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %47

31:                                               ; preds = %26
  %32 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %33 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = srem i32 %34, 2
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %39 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %38, i32 0, i32 3
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %42 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8, i8* %40, i64 %45
  store i8 10, i8* %46, align 1
  br label %47

47:                                               ; preds = %37, %31, %26
  %48 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %49 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %112

52:                                               ; preds = %47
  %53 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %54 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 4
  %59 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %60 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = add i64 %58, %62
  store i64 %63, i64* %3, align 8
  %64 = load i64, i64* @_ARMAG_LEN, align 8
  %65 = load i64, i64* @_ARHDR_LEN, align 8
  %66 = load i64, i64* %3, align 8
  %67 = add i64 %65, %66
  %68 = add i64 %64, %67
  store i64 %68, i64* %4, align 8
  %69 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %70 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %69, i32 0, i32 3
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %82

73:                                               ; preds = %52
  %74 = load i64, i64* @_ARHDR_LEN, align 8
  %75 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %76 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = add i64 %74, %78
  %80 = load i64, i64* %4, align 8
  %81 = add i64 %80, %79
  store i64 %81, i64* %4, align 8
  br label %82

82:                                               ; preds = %73, %52
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %108, %82
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %87 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = icmp ult i64 %85, %89
  br i1 %90, label %91, label %111

91:                                               ; preds = %83
  %92 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %93 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %92, i32 0, i32 5
  %94 = load i64*, i64** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %4, align 8
  %100 = add i64 %98, %99
  %101 = call i64 @htobe32(i64 %100)
  %102 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %103 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %102, i32 0, i32 5
  %104 = load i64*, i64** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  store i64 %101, i64* %107, align 8
  br label %108

108:                                              ; preds = %91
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %5, align 4
  br label %83

111:                                              ; preds = %83
  br label %112

112:                                              ; preds = %111, %47
  ret void
}

declare dso_local i64 @htobe32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
