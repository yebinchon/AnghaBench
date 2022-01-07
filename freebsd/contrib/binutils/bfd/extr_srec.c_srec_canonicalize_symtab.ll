; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_srec.c_srec_canonicalize_symtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_srec.c_srec_canonicalize_symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.srec_symbol*, %struct.TYPE_15__* }
%struct.srec_symbol = type { i32, i32, %struct.srec_symbol* }
%struct.TYPE_15__ = type { %struct.TYPE_13__, i32, i32, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i32* }

@BSF_GLOBAL = common dso_local global i32 0, align 4
@bfd_abs_section_ptr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*, %struct.TYPE_15__**)* @srec_canonicalize_symtab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @srec_canonicalize_symtab(%struct.TYPE_14__* %0, %struct.TYPE_15__** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.srec_symbol*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_15__** %1, %struct.TYPE_15__*** %5, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %12 = call i32 @bfd_get_symcount(%struct.TYPE_14__* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %7, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %20 = icmp eq %struct.TYPE_15__* %19, null
  br i1 %20, label %21, label %81

21:                                               ; preds = %2
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 32
  %26 = trunc i64 %25 to i32
  %27 = call %struct.TYPE_15__* @bfd_alloc(%struct.TYPE_14__* %22, i32 %26)
  store %struct.TYPE_15__* %27, %struct.TYPE_15__** %7, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %29 = icmp eq %struct.TYPE_15__* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i64 0, i64* %3, align 8
  br label %98

34:                                               ; preds = %30, %21
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  store %struct.TYPE_15__* %35, %struct.TYPE_15__** %40, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load %struct.srec_symbol*, %struct.srec_symbol** %45, align 8
  store %struct.srec_symbol* %46, %struct.srec_symbol** %10, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_15__* %47, %struct.TYPE_15__** %9, align 8
  br label %48

48:                                               ; preds = %74, %34
  %49 = load %struct.srec_symbol*, %struct.srec_symbol** %10, align 8
  %50 = icmp ne %struct.srec_symbol* %49, null
  br i1 %50, label %51, label %80

51:                                               ; preds = %48
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 5
  store %struct.TYPE_14__* %52, %struct.TYPE_14__** %54, align 8
  %55 = load %struct.srec_symbol*, %struct.srec_symbol** %10, align 8
  %56 = getelementptr inbounds %struct.srec_symbol, %struct.srec_symbol* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  %60 = load %struct.srec_symbol*, %struct.srec_symbol** %10, align 8
  %61 = getelementptr inbounds %struct.srec_symbol, %struct.srec_symbol* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @BSF_GLOBAL, align 4
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @bfd_abs_section_ptr, align 4
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  store i32* null, i32** %73, align 8
  br label %74

74:                                               ; preds = %51
  %75 = load %struct.srec_symbol*, %struct.srec_symbol** %10, align 8
  %76 = getelementptr inbounds %struct.srec_symbol, %struct.srec_symbol* %75, i32 0, i32 2
  %77 = load %struct.srec_symbol*, %struct.srec_symbol** %76, align 8
  store %struct.srec_symbol* %77, %struct.srec_symbol** %10, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 1
  store %struct.TYPE_15__* %79, %struct.TYPE_15__** %9, align 8
  br label %48

80:                                               ; preds = %48
  br label %81

81:                                               ; preds = %80, %2
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %91, %81
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %82
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 1
  store %struct.TYPE_15__* %88, %struct.TYPE_15__** %7, align 8
  %89 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %89, i32 1
  store %struct.TYPE_15__** %90, %struct.TYPE_15__*** %5, align 8
  store %struct.TYPE_15__* %87, %struct.TYPE_15__** %89, align 8
  br label %91

91:                                               ; preds = %86
  %92 = load i32, i32* %8, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %82

94:                                               ; preds = %82
  %95 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %95, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  store i64 %97, i64* %3, align 8
  br label %98

98:                                               ; preds = %94, %33
  %99 = load i64, i64* %3, align 8
  ret i64 %99
}

declare dso_local i32 @bfd_get_symcount(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_15__* @bfd_alloc(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
