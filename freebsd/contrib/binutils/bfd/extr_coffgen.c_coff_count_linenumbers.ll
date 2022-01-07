; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffgen.c_coff_count_linenumbers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffgen.c_coff_count_linenumbers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32**, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_16__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_15__*, i32* }
%struct.TYPE_16__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coff_count_linenumbers(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %14 = call i32 @bfd_get_symcount(%struct.TYPE_14__* %13)
  store i32 %14, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %1
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %8, align 8
  br label %21

21:                                               ; preds = %32, %17
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %23 = icmp ne %struct.TYPE_15__* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %24
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %34, align 8
  store %struct.TYPE_15__* %35, %struct.TYPE_15__** %8, align 8
  br label %21

36:                                               ; preds = %21
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %125

38:                                               ; preds = %1
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %40, align 8
  store %struct.TYPE_15__* %41, %struct.TYPE_15__** %8, align 8
  br label %42

42:                                               ; preds = %52, %38
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %44 = icmp ne %struct.TYPE_15__* %43, null
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @BFD_ASSERT(i32 %50)
  br label %52

52:                                               ; preds = %45
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %54, align 8
  store %struct.TYPE_15__* %55, %struct.TYPE_15__** %8, align 8
  br label %42

56:                                               ; preds = %42
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i32**, i32*** %58, align 8
  store i32** %59, i32*** %7, align 8
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %118, %56
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %123

64:                                               ; preds = %60
  %65 = load i32**, i32*** %7, align 8
  %66 = load i32*, i32** %65, align 8
  store i32* %66, i32** %9, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = call i32 @bfd_asymbol_bfd(i32* %67)
  %69 = call i64 @bfd_family_coff(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %117

71:                                               ; preds = %64
  %72 = load i32*, i32** %9, align 8
  %73 = call %struct.TYPE_13__* @coffsymbol(i32* %72)
  store %struct.TYPE_13__* %73, %struct.TYPE_13__** %10, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %75, align 8
  %77 = icmp ne %struct.TYPE_16__* %76, null
  br i1 %77, label %78, label %116

78:                                               ; preds = %71
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %116

86:                                               ; preds = %78
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %88, align 8
  store %struct.TYPE_16__* %89, %struct.TYPE_16__** %11, align 8
  br label %90

90:                                               ; preds = %110, %86
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %95, align 8
  store %struct.TYPE_15__* %96, %struct.TYPE_15__** %12, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %98 = call i32 @bfd_is_const_section(%struct.TYPE_15__* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %90
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %102, align 8
  br label %105

105:                                              ; preds = %100, %90
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 1
  store %struct.TYPE_16__* %109, %struct.TYPE_16__** %11, align 8
  br label %110

110:                                              ; preds = %105
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %90, label %115

115:                                              ; preds = %110
  br label %116

116:                                              ; preds = %115, %78, %71
  br label %117

117:                                              ; preds = %116, %64
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %5, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %5, align 4
  %121 = load i32**, i32*** %7, align 8
  %122 = getelementptr inbounds i32*, i32** %121, i32 1
  store i32** %122, i32*** %7, align 8
  br label %60

123:                                              ; preds = %60
  %124 = load i32, i32* %6, align 4
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %123, %36
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i32 @bfd_get_symcount(%struct.TYPE_14__*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i64 @bfd_family_coff(i32) #1

declare dso_local i32 @bfd_asymbol_bfd(i32*) #1

declare dso_local %struct.TYPE_13__* @coffsymbol(i32*) #1

declare dso_local i32 @bfd_is_const_section(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
