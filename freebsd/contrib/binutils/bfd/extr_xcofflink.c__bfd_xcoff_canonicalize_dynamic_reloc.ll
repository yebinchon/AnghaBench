; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_xcofflink.c__bfd_xcoff_canonicalize_dynamic_reloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_xcofflink.c__bfd_xcoff_canonicalize_dynamic_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { i32, i64, i32, i32** }
%struct.TYPE_21__ = type { i32** }
%struct.internal_ldhdr = type { i32 }
%struct.internal_ldrel = type { i32, i32 }
%struct.TYPE_23__ = type { i32* }

@DYNAMIC = common dso_local global i32 0, align 4
@bfd_error_invalid_operation = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c".loader\00", align 1
@bfd_error_no_symbols = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c".text\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c".data\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".bss\00", align 1
@bfd_error_bad_value = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_bfd_xcoff_canonicalize_dynamic_reloc(%struct.TYPE_20__* %0, %struct.TYPE_22__** %1, i32** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_22__**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.internal_ldhdr, align 4
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.internal_ldrel, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_22__** %1, %struct.TYPE_22__*** %6, align 8
  store i32** %2, i32*** %7, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @DYNAMIC, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @bfd_error_invalid_operation, align 4
  %25 = call i32 @bfd_set_error(i32 %24)
  store i64 -1, i64* %4, align 8
  br label %144

26:                                               ; preds = %3
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %28 = call %struct.TYPE_21__* @bfd_get_section_by_name(%struct.TYPE_20__* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_21__* %28, %struct.TYPE_21__** %8, align 8
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %30 = icmp eq %struct.TYPE_21__* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @bfd_error_no_symbols, align 4
  %33 = call i32 @bfd_set_error(i32 %32)
  store i64 -1, i64* %4, align 8
  br label %144

34:                                               ; preds = %26
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %37 = call i32 @xcoff_get_section_contents(%struct.TYPE_20__* %35, %struct.TYPE_21__* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store i64 -1, i64* %4, align 8
  br label %144

40:                                               ; preds = %34
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %43 = call %struct.TYPE_23__* @coff_section_data(%struct.TYPE_20__* %41, %struct.TYPE_21__* %42)
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %9, align 8
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @bfd_xcoff_swap_ldhdr_in(%struct.TYPE_20__* %46, i32* %47, %struct.internal_ldhdr* %10)
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %50 = getelementptr inbounds %struct.internal_ldhdr, %struct.internal_ldhdr* %10, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 32
  %54 = trunc i64 %53 to i32
  %55 = call %struct.TYPE_22__* @bfd_alloc(%struct.TYPE_20__* %49, i32 %54)
  store %struct.TYPE_22__* %55, %struct.TYPE_22__** %11, align 8
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %57 = icmp eq %struct.TYPE_22__* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %40
  store i64 -1, i64* %4, align 8
  br label %144

59:                                               ; preds = %40
  %60 = load i32*, i32** %9, align 8
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %62 = call i32 @bfd_xcoff_loader_reloc_offset(%struct.TYPE_20__* %61, %struct.internal_ldhdr* %10)
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  store i32* %64, i32** %12, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = getelementptr inbounds %struct.internal_ldhdr, %struct.internal_ldhdr* %10, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %69 = call i32 @bfd_xcoff_ldrelsz(%struct.TYPE_20__* %68)
  %70 = mul nsw i32 %67, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %65, i64 %71
  store i32* %72, i32** %13, align 8
  br label %73

73:                                               ; preds = %129, %59
  %74 = load i32*, i32** %12, align 8
  %75 = load i32*, i32** %13, align 8
  %76 = icmp ult i32* %74, %75
  br i1 %76, label %77, label %139

77:                                               ; preds = %73
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %79 = load i32*, i32** %12, align 8
  %80 = call i32 @bfd_xcoff_swap_ldrel_in(%struct.TYPE_20__* %78, i32* %79, %struct.internal_ldrel* %14)
  %81 = getelementptr inbounds %struct.internal_ldrel, %struct.internal_ldrel* %14, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp sge i32 %82, 3
  br i1 %83, label %84, label %93

84:                                               ; preds = %77
  %85 = load i32**, i32*** %7, align 8
  %86 = getelementptr inbounds %struct.internal_ldrel, %struct.internal_ldrel* %14, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %87, 3
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32*, i32** %85, i64 %89
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 3
  store i32** %90, i32*** %92, align 8
  br label %116

93:                                               ; preds = %77
  %94 = getelementptr inbounds %struct.internal_ldrel, %struct.internal_ldrel* %14, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  switch i32 %95, label %99 [
    i32 0, label %96
    i32 1, label %97
    i32 2, label %98
  ]

96:                                               ; preds = %93
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 8
  br label %101

97:                                               ; preds = %93
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %15, align 8
  br label %101

98:                                               ; preds = %93
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %15, align 8
  br label %101

99:                                               ; preds = %93
  %100 = call i32 (...) @abort() #3
  unreachable

101:                                              ; preds = %98, %97, %96
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %103 = load i8*, i8** %15, align 8
  %104 = call %struct.TYPE_21__* @bfd_get_section_by_name(%struct.TYPE_20__* %102, i8* %103)
  store %struct.TYPE_21__* %104, %struct.TYPE_21__** %16, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %106 = icmp eq %struct.TYPE_21__* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i32, i32* @bfd_error_bad_value, align 4
  %109 = call i32 @bfd_set_error(i32 %108)
  store i64 -1, i64* %4, align 8
  br label %144

110:                                              ; preds = %101
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  %113 = load i32**, i32*** %112, align 8
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 3
  store i32** %113, i32*** %115, align 8
  br label %116

116:                                              ; preds = %110, %84
  %117 = getelementptr inbounds %struct.internal_ldrel, %struct.internal_ldrel* %14, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 1
  store i64 0, i64* %122, align 8
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %124 = call i32 @bfd_xcoff_dynamic_reloc_howto(%struct.TYPE_20__* %123)
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %128 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %6, align 8
  store %struct.TYPE_22__* %127, %struct.TYPE_22__** %128, align 8
  br label %129

129:                                              ; preds = %116
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %131 = call i32 @bfd_xcoff_ldrelsz(%struct.TYPE_20__* %130)
  %132 = load i32*, i32** %12, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  store i32* %134, i32** %12, align 8
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 1
  store %struct.TYPE_22__* %136, %struct.TYPE_22__** %11, align 8
  %137 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %137, i32 1
  store %struct.TYPE_22__** %138, %struct.TYPE_22__*** %6, align 8
  br label %73

139:                                              ; preds = %73
  %140 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %6, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %140, align 8
  %141 = getelementptr inbounds %struct.internal_ldhdr, %struct.internal_ldhdr* %10, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  store i64 %143, i64* %4, align 8
  br label %144

144:                                              ; preds = %139, %107, %58, %39, %31, %23
  %145 = load i64, i64* %4, align 8
  ret i64 %145
}

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local %struct.TYPE_21__* @bfd_get_section_by_name(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @xcoff_get_section_contents(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_23__* @coff_section_data(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i32 @bfd_xcoff_swap_ldhdr_in(%struct.TYPE_20__*, i32*, %struct.internal_ldhdr*) #1

declare dso_local %struct.TYPE_22__* @bfd_alloc(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @bfd_xcoff_loader_reloc_offset(%struct.TYPE_20__*, %struct.internal_ldhdr*) #1

declare dso_local i32 @bfd_xcoff_ldrelsz(%struct.TYPE_20__*) #1

declare dso_local i32 @bfd_xcoff_swap_ldrel_in(%struct.TYPE_20__*, i32*, %struct.internal_ldrel*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @bfd_xcoff_dynamic_reloc_howto(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
