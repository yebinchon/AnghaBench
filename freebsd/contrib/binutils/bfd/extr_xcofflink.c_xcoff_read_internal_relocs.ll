; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_xcofflink.c_xcoff_read_internal_relocs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_xcofflink.c_xcoff_read_internal_relocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64 }
%struct.internal_reloc = type { i32 }
%struct.TYPE_10__ = type { %struct.internal_reloc* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }

@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.internal_reloc* (i32*, %struct.TYPE_8__*, i64, i32*, i64, %struct.internal_reloc*)* @xcoff_read_internal_relocs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.internal_reloc* @xcoff_read_internal_relocs(i32* %0, %struct.TYPE_8__* %1, i64 %2, i32* %3, i64 %4, %struct.internal_reloc* %5) #0 {
  %7 = alloca %struct.internal_reloc*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.internal_reloc*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.internal_reloc* %5, %struct.internal_reloc** %13, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %18 = call %struct.TYPE_10__* @coff_section_data(i32* %16, %struct.TYPE_8__* %17)
  %19 = icmp ne %struct.TYPE_10__* %18, null
  br i1 %19, label %20, label %123

20:                                               ; preds = %6
  %21 = load i32*, i32** %8, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %23 = call %struct.TYPE_10__* @coff_section_data(i32* %21, %struct.TYPE_8__* %22)
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load %struct.internal_reloc*, %struct.internal_reloc** %24, align 8
  %26 = icmp eq %struct.internal_reloc* %25, null
  br i1 %26, label %27, label %123

27:                                               ; preds = %20
  %28 = load i32*, i32** %8, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %30 = call %struct.TYPE_9__* @xcoff_section_data(i32* %28, %struct.TYPE_8__* %29)
  %31 = icmp ne %struct.TYPE_9__* %30, null
  br i1 %31, label %32, label %123

32:                                               ; preds = %27
  %33 = load i32*, i32** %8, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %35 = call %struct.TYPE_9__* @xcoff_section_data(i32* %33, %struct.TYPE_8__* %34)
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %14, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %39 = icmp ne %struct.TYPE_8__* %38, null
  br i1 %39, label %40, label %70

40:                                               ; preds = %32
  %41 = load i32*, i32** %8, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %43 = call %struct.TYPE_10__* @coff_section_data(i32* %41, %struct.TYPE_8__* %42)
  %44 = icmp eq %struct.TYPE_10__* %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %40
  %46 = load i32*, i32** %8, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %48 = call %struct.TYPE_10__* @coff_section_data(i32* %46, %struct.TYPE_8__* %47)
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load %struct.internal_reloc*, %struct.internal_reloc** %49, align 8
  %51 = icmp eq %struct.internal_reloc* %50, null
  br i1 %51, label %52, label %70

52:                                               ; preds = %45, %40
  %53 = load i64, i64* %10, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %52
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = load i32*, i32** %8, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %63 = load i64, i64* @TRUE, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = load i64, i64* @FALSE, align 8
  %66 = call %struct.internal_reloc* @_bfd_coff_read_internal_relocs(i32* %61, %struct.TYPE_8__* %62, i64 %63, i32* %64, i64 %65, %struct.internal_reloc* null)
  %67 = icmp eq %struct.internal_reloc* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  store %struct.internal_reloc* null, %struct.internal_reloc** %7, align 8
  br label %131

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69, %55, %52, %45, %32
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %72 = icmp ne %struct.TYPE_8__* %71, null
  br i1 %72, label %73, label %122

73:                                               ; preds = %70
  %74 = load i32*, i32** %8, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %76 = call %struct.TYPE_10__* @coff_section_data(i32* %74, %struct.TYPE_8__* %75)
  %77 = icmp ne %struct.TYPE_10__* %76, null
  br i1 %77, label %78, label %122

78:                                               ; preds = %73
  %79 = load i32*, i32** %8, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %81 = call %struct.TYPE_10__* @coff_section_data(i32* %79, %struct.TYPE_8__* %80)
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load %struct.internal_reloc*, %struct.internal_reloc** %82, align 8
  %84 = icmp ne %struct.internal_reloc* %83, null
  br i1 %84, label %85, label %122

85:                                               ; preds = %78
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = sub i64 %88, %91
  %93 = load i32*, i32** %8, align 8
  %94 = call i64 @bfd_coff_relsz(i32* %93)
  %95 = udiv i64 %92, %94
  store i64 %95, i64* %15, align 8
  %96 = load i64, i64* %12, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %106, label %98

98:                                               ; preds = %85
  %99 = load i32*, i32** %8, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %101 = call %struct.TYPE_10__* @coff_section_data(i32* %99, %struct.TYPE_8__* %100)
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load %struct.internal_reloc*, %struct.internal_reloc** %102, align 8
  %104 = load i64, i64* %15, align 8
  %105 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %103, i64 %104
  store %struct.internal_reloc* %105, %struct.internal_reloc** %7, align 8
  br label %131

106:                                              ; preds = %85
  %107 = load %struct.internal_reloc*, %struct.internal_reloc** %13, align 8
  %108 = load i32*, i32** %8, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %110 = call %struct.TYPE_10__* @coff_section_data(i32* %108, %struct.TYPE_8__* %109)
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load %struct.internal_reloc*, %struct.internal_reloc** %111, align 8
  %113 = load i64, i64* %15, align 8
  %114 = getelementptr inbounds %struct.internal_reloc, %struct.internal_reloc* %112, i64 %113
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = mul i64 %117, 4
  %119 = trunc i64 %118 to i32
  %120 = call i32 @memcpy(%struct.internal_reloc* %107, %struct.internal_reloc* %114, i32 %119)
  %121 = load %struct.internal_reloc*, %struct.internal_reloc** %13, align 8
  store %struct.internal_reloc* %121, %struct.internal_reloc** %7, align 8
  br label %131

122:                                              ; preds = %78, %73, %70
  br label %123

123:                                              ; preds = %122, %27, %20, %6
  %124 = load i32*, i32** %8, align 8
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %126 = load i64, i64* %10, align 8
  %127 = load i32*, i32** %11, align 8
  %128 = load i64, i64* %12, align 8
  %129 = load %struct.internal_reloc*, %struct.internal_reloc** %13, align 8
  %130 = call %struct.internal_reloc* @_bfd_coff_read_internal_relocs(i32* %124, %struct.TYPE_8__* %125, i64 %126, i32* %127, i64 %128, %struct.internal_reloc* %129)
  store %struct.internal_reloc* %130, %struct.internal_reloc** %7, align 8
  br label %131

131:                                              ; preds = %123, %106, %98, %68
  %132 = load %struct.internal_reloc*, %struct.internal_reloc** %7, align 8
  ret %struct.internal_reloc* %132
}

declare dso_local %struct.TYPE_10__* @coff_section_data(i32*, %struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_9__* @xcoff_section_data(i32*, %struct.TYPE_8__*) #1

declare dso_local %struct.internal_reloc* @_bfd_coff_read_internal_relocs(i32*, %struct.TYPE_8__*, i64, i32*, i64, %struct.internal_reloc*) #1

declare dso_local i64 @bfd_coff_relsz(i32*) #1

declare dso_local i32 @memcpy(%struct.internal_reloc*, %struct.internal_reloc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
