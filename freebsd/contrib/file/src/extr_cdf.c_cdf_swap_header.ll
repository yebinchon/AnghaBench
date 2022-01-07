; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/file/src/extr_cdf.c_cdf_swap_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/file/src/extr_cdf.c_cdf_swap_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8* }

@uint32_t = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cdf_swap_header(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 14
  %6 = load i8*, i8** %5, align 8
  %7 = call i8* @CDF_TOLE8(i8* %6)
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 14
  store i8* %7, i8** %9, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 13
  %12 = load i8**, i8*** %11, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i8* @CDF_TOLE8(i8* %14)
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 13
  %18 = load i8**, i8*** %17, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  store i8* %15, i8** %19, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 13
  %22 = load i8**, i8*** %21, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i8* @CDF_TOLE8(i8* %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 13
  %28 = load i8**, i8*** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  store i8* %25, i8** %29, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 12
  %32 = load i8*, i8** %31, align 8
  %33 = call i8* @CDF_TOLE2(i8* %32)
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 12
  store i8* %33, i8** %35, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 11
  %38 = load i8*, i8** %37, align 8
  %39 = call i8* @CDF_TOLE2(i8* %38)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 11
  store i8* %39, i8** %41, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 10
  %44 = load i8*, i8** %43, align 8
  %45 = call i8* @CDF_TOLE2(i8* %44)
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 10
  store i8* %45, i8** %47, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 9
  %50 = load i8*, i8** %49, align 8
  %51 = call i8* @CDF_TOLE2(i8* %50)
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 9
  store i8* %51, i8** %53, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 8
  %56 = load i8*, i8** %55, align 8
  %57 = call i8* @CDF_TOLE2(i8* %56)
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 8
  store i8* %57, i8** %59, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 7
  %62 = load i8*, i8** %61, align 8
  %63 = call i8* @CDF_TOLE4(i8* %62)
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 7
  store i8* %63, i8** %65, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 6
  %68 = load i8*, i8** %67, align 8
  %69 = call i8* @CDF_TOLE4(i8* %68)
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 6
  store i8* %69, i8** %71, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 5
  %74 = load i8*, i8** %73, align 8
  %75 = call i8* @CDF_TOLE4(i8* %74)
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 5
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* @uint32_t, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 4
  %81 = load i8*, i8** %80, align 8
  %82 = call i8* @CAST(i32 %78, i8* %81)
  %83 = call i8* @CDF_TOLE4(i8* %82)
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 4
  store i8* %83, i8** %85, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 3
  %88 = load i8*, i8** %87, align 8
  %89 = call i8* @CDF_TOLE4(i8* %88)
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 3
  store i8* %89, i8** %91, align 8
  %92 = load i32, i32* @uint32_t, align 4
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = load i8*, i8** %94, align 8
  %96 = call i8* @CAST(i32 %92, i8* %95)
  %97 = call i8* @CDF_TOLE4(i8* %96)
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  store i8* %97, i8** %99, align 8
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = call i8* @CDF_TOLE4(i8* %102)
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  store i8* %103, i8** %105, align 8
  store i64 0, i64* %3, align 8
  br label %106

106:                                              ; preds = %128, %1
  %107 = load i64, i64* %3, align 8
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i8**, i8*** %109, align 8
  %111 = call i64 @__arraycount(i8** %110)
  %112 = icmp ult i64 %107, %111
  br i1 %112, label %113, label %131

113:                                              ; preds = %106
  %114 = load i32, i32* @uint32_t, align 4
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i8**, i8*** %116, align 8
  %118 = load i64, i64* %3, align 8
  %119 = getelementptr inbounds i8*, i8** %117, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = call i8* @CAST(i32 %114, i8* %120)
  %122 = call i8* @CDF_TOLE4(i8* %121)
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i8**, i8*** %124, align 8
  %126 = load i64, i64* %3, align 8
  %127 = getelementptr inbounds i8*, i8** %125, i64 %126
  store i8* %122, i8** %127, align 8
  br label %128

128:                                              ; preds = %113
  %129 = load i64, i64* %3, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %3, align 8
  br label %106

131:                                              ; preds = %106
  ret void
}

declare dso_local i8* @CDF_TOLE8(i8*) #1

declare dso_local i8* @CDF_TOLE2(i8*) #1

declare dso_local i8* @CDF_TOLE4(i8*) #1

declare dso_local i8* @CAST(i32, i8*) #1

declare dso_local i64 @__arraycount(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
