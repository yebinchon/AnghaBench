; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bout.c_b_out_bfd_relax_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bout.c_b_out_bfd_relax_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32* }
%struct.bfd_link_info = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_15__*, %struct.bfd_link_info*, i32*)* @b_out_bfd_relax_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b_out_bfd_relax_section(i32* %0, %struct.TYPE_15__* %1, %struct.bfd_link_info* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.bfd_link_info*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_16__**, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_16__**, align 8
  %17 = alloca %struct.TYPE_16__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store %struct.bfd_link_info* %2, %struct.bfd_link_info** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %10, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %11, align 8
  store i32 0, i32* %12, align 4
  store %struct.TYPE_16__** null, %struct.TYPE_16__*** %13, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %24 = call i64 @bfd_get_reloc_upper_bound(i32* %22, %struct.TYPE_15__* %23)
  store i64 %24, i64* %14, align 8
  %25 = load i64, i64* %14, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %5, align 4
  br label %114

29:                                               ; preds = %4
  %30 = load i32, i32* @FALSE, align 4
  %31 = load i32*, i32** %9, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i64, i64* %14, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %93

34:                                               ; preds = %29
  %35 = load i64, i64* %14, align 8
  %36 = trunc i64 %35 to i32
  %37 = call %struct.TYPE_16__** @bfd_malloc(i32 %36)
  store %struct.TYPE_16__** %37, %struct.TYPE_16__*** %13, align 8
  %38 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %39 = icmp eq %struct.TYPE_16__** %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i64, i64* %14, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %106

44:                                               ; preds = %40, %34
  %45 = load i32*, i32** %10, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %47 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = call i32 @_bfd_generic_link_get_symbols(i32* %48)
  %50 = call i64 @bfd_canonicalize_reloc(i32* %45, %struct.TYPE_15__* %46, %struct.TYPE_16__** %47, i32 %49)
  store i64 %50, i64* %15, align 8
  %51 = load i64, i64* %15, align 8
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %106

54:                                               ; preds = %44
  %55 = load i64, i64* %15, align 8
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %92

57:                                               ; preds = %54
  %58 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  store %struct.TYPE_16__** %58, %struct.TYPE_16__*** %16, align 8
  br label %59

59:                                               ; preds = %88, %57
  %60 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %16, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %60, align 8
  %62 = icmp ne %struct.TYPE_16__* %61, null
  br i1 %62, label %63, label %91

63:                                               ; preds = %59
  %64 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %16, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %64, align 8
  store %struct.TYPE_16__* %65, %struct.TYPE_16__** %17, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  switch i32 %70, label %87 [
    i32 128, label %71
    i32 130, label %77
    i32 129, label %84
  ]

71:                                               ; preds = %63
  %72 = load i32*, i32** %6, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @aligncode(i32* %72, %struct.TYPE_15__* %73, %struct.TYPE_16__* %74, i32 %75)
  store i32 %76, i32* %12, align 4
  br label %87

77:                                               ; preds = %63
  %78 = load i32*, i32** %10, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %81 = load i32, i32* %12, align 4
  %82 = load %struct.bfd_link_info*, %struct.bfd_link_info** %8, align 8
  %83 = call i32 @abs32code(i32* %78, %struct.TYPE_15__* %79, %struct.TYPE_16__* %80, i32 %81, %struct.bfd_link_info* %82)
  store i32 %83, i32* %12, align 4
  br label %87

84:                                               ; preds = %63
  %85 = load i32, i32* %12, align 4
  %86 = add i32 %85, 4
  store i32 %86, i32* %12, align 4
  br label %87

87:                                               ; preds = %63, %84, %77, %71
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %16, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %89, i32 1
  store %struct.TYPE_16__** %90, %struct.TYPE_16__*** %16, align 8
  br label %59

91:                                               ; preds = %59
  br label %92

92:                                               ; preds = %91, %54
  br label %93

93:                                               ; preds = %92, %29
  %94 = load i32, i32* %12, align 4
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sub i32 %97, %94
  store i32 %98, i32* %96, align 8
  %99 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %100 = icmp ne %struct.TYPE_16__** %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %93
  %102 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %103 = call i32 @free(%struct.TYPE_16__** %102)
  br label %104

104:                                              ; preds = %101, %93
  %105 = load i32, i32* @TRUE, align 4
  store i32 %105, i32* %5, align 4
  br label %114

106:                                              ; preds = %53, %43
  %107 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %108 = icmp ne %struct.TYPE_16__** %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %13, align 8
  %111 = call i32 @free(%struct.TYPE_16__** %110)
  br label %112

112:                                              ; preds = %109, %106
  %113 = load i32, i32* @FALSE, align 4
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %112, %104, %27
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i64 @bfd_get_reloc_upper_bound(i32*, %struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_16__** @bfd_malloc(i32) #1

declare dso_local i64 @bfd_canonicalize_reloc(i32*, %struct.TYPE_15__*, %struct.TYPE_16__**, i32) #1

declare dso_local i32 @_bfd_generic_link_get_symbols(i32*) #1

declare dso_local i32 @aligncode(i32*, %struct.TYPE_15__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @abs32code(i32*, %struct.TYPE_15__*, %struct.TYPE_16__*, i32, %struct.bfd_link_info*) #1

declare dso_local i32 @free(%struct.TYPE_16__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
