; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_hashtab.c_htab_empty.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_hashtab.c_htab_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64*, i32, i32, i64, i64, i64 (i32, i32)*, i32, i64 (i32, i32, i32)*, i32 (i32, i64*)*, i32 (i64*)*, i32 (i64)* }

@HTAB_EMPTY_ENTRY = common dso_local global i64 0, align 8
@HTAB_DELETED_ENTRY = common dso_local global i64 0, align 8
@prime_tab = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @htab_empty(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = call i64 @htab_size(%struct.TYPE_5__* %8)
  store i64 %9, i64* %3, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  store i64* %12, i64** %4, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 10
  %15 = load i32 (i64)*, i32 (i64)** %14, align 8
  %16 = icmp ne i32 (i64)* %15, null
  br i1 %16, label %17, label %55

17:                                               ; preds = %1
  %18 = load i64, i64* %3, align 8
  %19 = sub i64 %18, 1
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %51, %17
  %22 = load i32, i32* %5, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %54

24:                                               ; preds = %21
  %25 = load i64*, i64** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @HTAB_EMPTY_ENTRY, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %24
  %33 = load i64*, i64** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @HTAB_DELETED_ENTRY, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %32
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 10
  %43 = load i32 (i64)*, i32 (i64)** %42, align 8
  %44 = load i64*, i64** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = call i32 %43(i64 %48)
  br label %50

50:                                               ; preds = %40, %32, %24
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %5, align 4
  br label %21

54:                                               ; preds = %21
  br label %55

55:                                               ; preds = %54, %1
  %56 = load i64, i64* %3, align 8
  %57 = icmp ugt i64 %56, 131072
  br i1 %57, label %58, label %128

58:                                               ; preds = %55
  %59 = call i32 @higher_prime_index(i32 128)
  store i32 %59, i32* %6, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prime_tab, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %7, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 9
  %68 = load i32 (i64*)*, i32 (i64*)** %67, align 8
  %69 = icmp ne i32 (i64*)* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %58
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 9
  %73 = load i32 (i64*)*, i32 (i64*)** %72, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = call i32 %73(i64* %76)
  br label %95

78:                                               ; preds = %58
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 8
  %81 = load i32 (i32, i64*)*, i32 (i32, i64*)** %80, align 8
  %82 = icmp ne i32 (i32, i64*)* %81, null
  br i1 %82, label %83, label %94

83:                                               ; preds = %78
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 8
  %86 = load i32 (i32, i64*)*, i32 (i32, i64*)** %85, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = call i32 %86(i32 %89, i64* %92)
  br label %94

94:                                               ; preds = %83, %78
  br label %95

95:                                               ; preds = %94, %70
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 7
  %98 = load i64 (i32, i32, i32)*, i64 (i32, i32, i32)** %97, align 8
  %99 = icmp ne i64 (i32, i32, i32)* %98, null
  br i1 %99, label %100, label %112

100:                                              ; preds = %95
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 7
  %103 = load i64 (i32, i32, i32)*, i64 (i32, i32, i32)** %102, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = call i64 %103(i32 %106, i32 %107, i32 8)
  %109 = inttoptr i64 %108 to i64*
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  store i64* %109, i64** %111, align 8
  br label %121

112:                                              ; preds = %95
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 5
  %115 = load i64 (i32, i32)*, i64 (i32, i32)** %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = call i64 %115(i32 %116, i32 8)
  %118 = inttoptr i64 %117 to i64*
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  store i64* %118, i64** %120, align 8
  br label %121

121:                                              ; preds = %112, %100
  %122 = load i32, i32* %7, align 4
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 8
  %125 = load i32, i32* %6, align 4
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 4
  br label %133

128:                                              ; preds = %55
  %129 = load i64*, i64** %4, align 8
  %130 = load i64, i64* %3, align 8
  %131 = mul i64 %130, 8
  %132 = call i32 @memset(i64* %129, i32 0, i64 %131)
  br label %133

133:                                              ; preds = %128, %121
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 4
  store i64 0, i64* %135, align 8
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 3
  store i64 0, i64* %137, align 8
  ret void
}

declare dso_local i64 @htab_size(%struct.TYPE_5__*) #1

declare dso_local i32 @higher_prime_index(i32) #1

declare dso_local i32 @memset(i64*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
