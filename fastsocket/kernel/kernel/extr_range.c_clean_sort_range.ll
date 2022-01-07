; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_range.c_clean_sort_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_range.c_clean_sort_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.range = type { i64, i64 }

@cmp_range = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clean_sort_range(%struct.range* %0, i32 %1) #0 {
  %3 = alloca %struct.range*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.range* %0, %struct.range** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %84, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %87

15:                                               ; preds = %11
  %16 = load %struct.range*, %struct.range** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.range, %struct.range* %16, i64 %18
  %20 = getelementptr inbounds %struct.range, %struct.range* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %84

24:                                               ; preds = %15
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %41, %24
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  %31 = load %struct.range*, %struct.range** %3, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.range, %struct.range* %31, i64 %33
  %35 = getelementptr inbounds %struct.range, %struct.range* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %7, align 4
  br label %44

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %6, align 4
  br label %26

44:                                               ; preds = %38, %26
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %87

49:                                               ; preds = %44
  %50 = load %struct.range*, %struct.range** %3, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.range, %struct.range* %50, i64 %52
  %54 = getelementptr inbounds %struct.range, %struct.range* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.range*, %struct.range** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.range, %struct.range* %56, i64 %58
  %60 = getelementptr inbounds %struct.range, %struct.range* %59, i32 0, i32 1
  store i64 %55, i64* %60, align 8
  %61 = load %struct.range*, %struct.range** %3, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.range, %struct.range* %61, i64 %63
  %65 = getelementptr inbounds %struct.range, %struct.range* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.range*, %struct.range** %3, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.range, %struct.range* %67, i64 %69
  %71 = getelementptr inbounds %struct.range, %struct.range* %70, i32 0, i32 0
  store i64 %66, i64* %71, align 8
  %72 = load %struct.range*, %struct.range** %3, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.range, %struct.range* %72, i64 %74
  %76 = getelementptr inbounds %struct.range, %struct.range* %75, i32 0, i32 1
  store i64 0, i64* %76, align 8
  %77 = load %struct.range*, %struct.range** %3, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.range, %struct.range* %77, i64 %79
  %81 = getelementptr inbounds %struct.range, %struct.range* %80, i32 0, i32 0
  store i64 0, i64* %81, align 8
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %49, %23
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %11

87:                                               ; preds = %48, %11
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %103, %87
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %88
  %93 = load %struct.range*, %struct.range** %3, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.range, %struct.range* %93, i64 %95
  %97 = getelementptr inbounds %struct.range, %struct.range* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %92
  %101 = load i32, i32* %5, align 4
  store i32 %101, i32* %8, align 4
  br label %106

102:                                              ; preds = %92
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %5, align 4
  br label %88

106:                                              ; preds = %100, %88
  %107 = load %struct.range*, %struct.range** %3, align 8
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @cmp_range, align 4
  %110 = call i32 @sort(%struct.range* %107, i32 %108, i32 16, i32 %109, i32* null)
  %111 = load i32, i32* %8, align 4
  ret i32 %111
}

declare dso_local i32 @sort(%struct.range*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
