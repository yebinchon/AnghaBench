; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffgen.c_coff_write_linenumbers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffgen.c_coff_write_linenumbers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_21__**, %struct.TYPE_22__* }
%struct.TYPE_21__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i64, %struct.TYPE_22__* }
%struct.TYPE_23__ = type { %struct.TYPE_19__, i64 }
%struct.TYPE_19__ = type { i32 }
%struct.internal_lineno = type { %struct.TYPE_18__, i64 }
%struct.TYPE_18__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@_get_lineno = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coff_write_linenumbers(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_21__**, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.internal_lineno, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %12 = call i64 @bfd_coff_linesz(%struct.TYPE_20__* %11)
  store i64 %12, i64* %5, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i8* @bfd_alloc(%struct.TYPE_20__* %13, i64 %14)
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %2, align 4
  br label %141

20:                                               ; preds = %1
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  store %struct.TYPE_22__* %23, %struct.TYPE_22__** %4, align 8
  br label %24

24:                                               ; preds = %132, %20
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %26 = icmp ne %struct.TYPE_22__* %25, null
  br i1 %26, label %27, label %136

27:                                               ; preds = %24
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %131

32:                                               ; preds = %27
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %34, align 8
  store %struct.TYPE_21__** %35, %struct.TYPE_21__*** %7, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @SEEK_SET, align 4
  %41 = call i64 @bfd_seek(%struct.TYPE_20__* %36, i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %2, align 4
  br label %141

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %127, %45
  %47 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %47, align 8
  %49 = icmp ne %struct.TYPE_21__* %48, null
  br i1 %49, label %50, label %130

50:                                               ; preds = %46
  %51 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %51, align 8
  store %struct.TYPE_21__* %52, %struct.TYPE_21__** %8, align 8
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %56, align 8
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %59 = icmp eq %struct.TYPE_22__* %57, %58
  br i1 %59, label %60, label %127

60:                                               ; preds = %50
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %62 = call i32 @bfd_asymbol_bfd(%struct.TYPE_21__* %61)
  %63 = load i32, i32* @_get_lineno, align 4
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %65 = call i32 @bfd_asymbol_bfd(%struct.TYPE_21__* %64)
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %67 = ptrtoint %struct.TYPE_21__* %66 to i32
  %68 = call %struct.TYPE_23__* @BFD_SEND(i32 %62, i32 %63, i32 %67)
  store %struct.TYPE_23__* %68, %struct.TYPE_23__** %9, align 8
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %70 = icmp ne %struct.TYPE_23__* %69, null
  br i1 %70, label %71, label %126

71:                                               ; preds = %60
  %72 = bitcast %struct.internal_lineno* %10 to i8*
  %73 = call i32 @memset(i8* %72, i32 0, i32 16)
  %74 = getelementptr inbounds %struct.internal_lineno, %struct.internal_lineno* %10, i32 0, i32 1
  store i64 0, i64* %74, align 8
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds %struct.internal_lineno, %struct.internal_lineno* %10, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = call i32 @bfd_coff_swap_lineno_out(%struct.TYPE_20__* %81, %struct.internal_lineno* %10, i8* %82)
  %84 = load i8*, i8** %6, align 8
  %85 = load i64, i64* %5, align 8
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %87 = call i64 @bfd_bwrite(i8* %84, i64 %85, %struct.TYPE_20__* %86)
  %88 = load i64, i64* %5, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %71
  %91 = load i32, i32* @FALSE, align 4
  store i32 %91, i32* %2, align 4
  br label %141

92:                                               ; preds = %71
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 1
  store %struct.TYPE_23__* %94, %struct.TYPE_23__** %9, align 8
  br label %95

95:                                               ; preds = %122, %92
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %125

100:                                              ; preds = %95
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.internal_lineno, %struct.internal_lineno* %10, i32 0, i32 1
  store i64 %103, i64* %104, align 8
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = getelementptr inbounds %struct.internal_lineno, %struct.internal_lineno* %10, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = call i32 @bfd_coff_swap_lineno_out(%struct.TYPE_20__* %111, %struct.internal_lineno* %10, i8* %112)
  %114 = load i8*, i8** %6, align 8
  %115 = load i64, i64* %5, align 8
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %117 = call i64 @bfd_bwrite(i8* %114, i64 %115, %struct.TYPE_20__* %116)
  %118 = load i64, i64* %5, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %100
  %121 = load i32, i32* @FALSE, align 4
  store i32 %121, i32* %2, align 4
  br label %141

122:                                              ; preds = %100
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 1
  store %struct.TYPE_23__* %124, %struct.TYPE_23__** %9, align 8
  br label %95

125:                                              ; preds = %95
  br label %126

126:                                              ; preds = %125, %60
  br label %127

127:                                              ; preds = %126, %50
  %128 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %128, i32 1
  store %struct.TYPE_21__** %129, %struct.TYPE_21__*** %7, align 8
  br label %46

130:                                              ; preds = %46
  br label %131

131:                                              ; preds = %130, %27
  br label %132

132:                                              ; preds = %131
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %134, align 8
  store %struct.TYPE_22__* %135, %struct.TYPE_22__** %4, align 8
  br label %24

136:                                              ; preds = %24
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %138 = load i8*, i8** %6, align 8
  %139 = call i32 @bfd_release(%struct.TYPE_20__* %137, i8* %138)
  %140 = load i32, i32* @TRUE, align 4
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %136, %120, %90, %43, %18
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i64 @bfd_coff_linesz(%struct.TYPE_20__*) #1

declare dso_local i8* @bfd_alloc(%struct.TYPE_20__*, i64) #1

declare dso_local i64 @bfd_seek(%struct.TYPE_20__*, i32, i32) #1

declare dso_local %struct.TYPE_23__* @BFD_SEND(i32, i32, i32) #1

declare dso_local i32 @bfd_asymbol_bfd(%struct.TYPE_21__*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @bfd_coff_swap_lineno_out(%struct.TYPE_20__*, %struct.internal_lineno*, i8*) #1

declare dso_local i64 @bfd_bwrite(i8*, i64, %struct.TYPE_20__*) #1

declare dso_local i32 @bfd_release(%struct.TYPE_20__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
