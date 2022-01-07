; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffgen.c_coff_write_native_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffgen.c_coff_write_native_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_16__, i32, %struct.TYPE_15__*, %struct.TYPE_25__* }
%struct.TYPE_16__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_17__*, i64, i32* }
%struct.TYPE_17__ = type { i32, i64 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %union.internal_auxent, %struct.TYPE_18__ }
%union.internal_auxent = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { i64 }

@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_26__*, i32*, i32*, i32**, i32*)* @coff_write_native_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coff_write_native_symbol(i32* %0, %struct.TYPE_26__* %1, i32* %2, i32* %3, i32** %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_25__*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %union.internal_auxent*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32** %4, i32*** %11, align 8
  store i32* %5, i32** %12, align 8
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  store %struct.TYPE_25__* %19, %struct.TYPE_25__** %13, align 8
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  store %struct.TYPE_15__* %22, %struct.TYPE_15__** %14, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %24 = icmp ne %struct.TYPE_15__* %23, null
  br i1 %24, label %25, label %137

25:                                               ; preds = %6
  %26 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %137, label %30

30:                                               ; preds = %25
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %137

38:                                               ; preds = %30
  store i32 0, i32* %15, align 4
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %42 = load i32, i32* %15, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 0
  store i32 %40, i32* %46, align 8
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %38
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i64 1
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  store %union.internal_auxent* %57, %union.internal_auxent** %16, align 8
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %union.internal_auxent*, %union.internal_auxent** %16, align 8
  %67 = bitcast %union.internal_auxent* %66 to %struct.TYPE_22__*
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  store i32 %65, i32* %70, align 4
  br label %71

71:                                               ; preds = %53, %38
  %72 = load i32, i32* %15, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %15, align 4
  br label %74

74:                                               ; preds = %82, %71
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %76 = load i32, i32* %15, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %110

82:                                               ; preds = %74
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %90, %96
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %99 = load i32, i32* %15, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %105, %97
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %103, align 8
  %108 = load i32, i32* %15, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %15, align 4
  br label %74

110:                                              ; preds = %74
  %111 = load i32, i32* @TRUE, align 4
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 8
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %118, align 8
  %120 = call i32 @bfd_is_const_section(%struct.TYPE_17__* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %136, label %122

122:                                              ; preds = %110
  %123 = load i32, i32* %15, align 4
  %124 = load i32*, i32** %7, align 8
  %125 = call i32 @bfd_coff_linesz(i32* %124)
  %126 = mul i32 %123, %125
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = add i32 %134, %126
  store i32 %135, i32* %133, align 8
  br label %136

136:                                              ; preds = %122, %110
  br label %137

137:                                              ; preds = %136, %30, %25, %6
  %138 = load i32*, i32** %7, align 8
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %142 = load i32*, i32** %9, align 8
  %143 = load i32*, i32** %10, align 8
  %144 = load i32**, i32*** %11, align 8
  %145 = load i32*, i32** %12, align 8
  %146 = call i32 @coff_write_symbol(i32* %138, %struct.TYPE_16__* %140, %struct.TYPE_25__* %141, i32* %142, i32* %143, i32** %144, i32* %145)
  ret i32 %146
}

declare dso_local i32 @bfd_is_const_section(%struct.TYPE_17__*) #1

declare dso_local i32 @bfd_coff_linesz(i32*) #1

declare dso_local i32 @coff_write_symbol(i32*, %struct.TYPE_16__*, %struct.TYPE_25__*, i32*, i32*, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
