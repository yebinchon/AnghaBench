; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bzip2/extr_blocksort.c_BZ2_blockSort.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bzip2/extr_blocksort.c_BZ2_blockSort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i64*, i32*, i64* }

@BZ_N_OVERSHOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"      %d work, %d block, ratio %5.2f\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"    too repetitive; using fallback sorting algorithm\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BZ2_blockSort(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 8
  %15 = load i64*, i64** %14, align 8
  store i64* %15, i64** %3, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 7
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %4, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 6
  %21 = load i64*, i64** %20, align 8
  store i64* %21, i64** %5, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %6, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 10000
  br i1 %32, label %33, label %44

33:                                               ; preds = %1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load i64*, i64** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @fallbackSort(i32 %36, i32 %39, i64* %40, i32 %41, i32 %42)
  br label %121

44:                                               ; preds = %1
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @BZ_N_OVERSHOOT, align 4
  %47 = add nsw i32 %45, %46
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %51, %44
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32* %58, i32** %9, align 8
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 1
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store i32 1, i32* %8, align 4
  br label %62

62:                                               ; preds = %61, %54
  %63 = load i32, i32* %8, align 4
  %64 = icmp sgt i32 %63, 100
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 100, i32* %8, align 4
  br label %66

66:                                               ; preds = %65, %62
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %8, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sdiv i32 %69, 3
  %71 = mul nsw i32 %67, %70
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %10, align 4
  %73 = load i64*, i64** %3, align 8
  %74 = load i32*, i32** %4, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = load i64*, i64** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @mainSort(i64* %73, i32* %74, i32* %75, i64* %76, i32 %77, i32 %78, i32* %10)
  %80 = load i32, i32* %7, align 4
  %81 = icmp sge i32 %80, 3
  br i1 %81, label %82, label %101

82:                                               ; preds = %66
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %10, align 4
  %85 = sub nsw i32 %83, %84
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %10, align 4
  %89 = sub nsw i32 %87, %88
  %90 = sitofp i32 %89 to float
  %91 = load i32, i32* %6, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %82
  br label %96

94:                                               ; preds = %82
  %95 = load i32, i32* %6, align 4
  br label %96

96:                                               ; preds = %94, %93
  %97 = phi i32 [ 1, %93 ], [ %95, %94 ]
  %98 = sitofp i32 %97 to float
  %99 = fdiv float %90, %98
  %100 = call i32 @VPrintf3(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %86, float %99)
  br label %101

101:                                              ; preds = %96, %66
  %102 = load i32, i32* %10, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %120

104:                                              ; preds = %101
  %105 = load i32, i32* %7, align 4
  %106 = icmp sge i32 %105, 2
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = call i32 @VPrintf0(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %104
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = load i64*, i64** %5, align 8
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @fallbackSort(i32 %112, i32 %115, i64* %116, i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %109, %101
  br label %121

121:                                              ; preds = %120, %33
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 3
  store i32 -1, i32* %123, align 4
  store i32 0, i32* %12, align 4
  br label %124

124:                                              ; preds = %142, %121
  %125 = load i32, i32* %12, align 4
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %145

130:                                              ; preds = %124
  %131 = load i64*, i64** %3, align 8
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %131, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %130
  %138 = load i32, i32* %12, align 4
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 3
  store i32 %138, i32* %140, align 4
  br label %145

141:                                              ; preds = %130
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %12, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %12, align 4
  br label %124

145:                                              ; preds = %137, %124
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, -1
  %150 = zext i1 %149 to i32
  %151 = call i32 @AssertH(i32 %150, i32 1003)
  ret void
}

declare dso_local i32 @fallbackSort(i32, i32, i64*, i32, i32) #1

declare dso_local i32 @mainSort(i64*, i32*, i32*, i64*, i32, i32, i32*) #1

declare dso_local i32 @VPrintf3(i8*, i32, i32, float) #1

declare dso_local i32 @VPrintf0(i8*) #1

declare dso_local i32 @AssertH(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
