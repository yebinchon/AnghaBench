; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c_gprel32_with_gp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-score.c_gprel32_with_gp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_16__*, i64 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_15__ = type { i64, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { i32 }

@bfd_reloc_outofrange = common dso_local global i32 0, align 4
@BSF_SECTION_SYM = common dso_local global i32 0, align 4
@bfd_reloc_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_13__*, %struct.TYPE_15__*, %struct.TYPE_14__*, i64, i8*, i64)* @gprel32_with_gp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gprel32_with_gp(i32* %0, %struct.TYPE_13__* %1, %struct.TYPE_15__* %2, %struct.TYPE_14__* %3, i64 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %21 = call i64 @bfd_is_com_section(%struct.TYPE_16__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %7
  store i64 0, i64* %16, align 8
  br label %28

24:                                               ; preds = %7
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %16, align 8
  br label %28

28:                                               ; preds = %24, %23
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %16, align 8
  %37 = add nsw i64 %36, %35
  store i64 %37, i64* %16, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %16, align 8
  %44 = add nsw i64 %43, %42
  store i64 %44, i64* %16, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %50 = call i64 @bfd_get_section_limit(i32* %48, %struct.TYPE_14__* %49)
  %51 = icmp sgt i64 %47, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %28
  %53 = load i32, i32* @bfd_reloc_outofrange, align 4
  store i32 %53, i32* %8, align 4
  br label %126

54:                                               ; preds = %28
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %17, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %54
  %65 = load i32*, i32** %9, align 8
  %66 = load i8*, i8** %14, align 8
  %67 = bitcast i8* %66 to i32*
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = call i64 @bfd_get_32(i32* %65, i32* %71)
  %73 = load i64, i64* %17, align 8
  %74 = add nsw i64 %73, %72
  store i64 %74, i64* %17, align 8
  br label %75

75:                                               ; preds = %64, %54
  %76 = load i64, i64* %13, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @BSF_SECTION_SYM, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %78, %75
  %86 = load i64, i64* %16, align 8
  %87 = load i64, i64* %15, align 8
  %88 = sub nsw i64 %86, %87
  %89 = load i64, i64* %17, align 8
  %90 = add nsw i64 %89, %88
  store i64 %90, i64* %17, align 8
  br label %91

91:                                               ; preds = %85, %78
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %91
  %99 = load i32*, i32** %9, align 8
  %100 = load i64, i64* %17, align 8
  %101 = load i8*, i8** %14, align 8
  %102 = bitcast i8* %101 to i32*
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = call i32 @bfd_put_32(i32* %99, i64 %100, i32* %106)
  br label %112

108:                                              ; preds = %91
  %109 = load i64, i64* %17, align 8
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 1
  store i64 %109, i64* %111, align 8
  br label %112

112:                                              ; preds = %108, %98
  %113 = load i64, i64* %13, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %112
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, %119
  store i64 %123, i64* %121, align 8
  br label %124

124:                                              ; preds = %115, %112
  %125 = load i32, i32* @bfd_reloc_ok, align 4
  store i32 %125, i32* %8, align 4
  br label %126

126:                                              ; preds = %124, %52
  %127 = load i32, i32* %8, align 4
  ret i32 %127
}

declare dso_local i64 @bfd_is_com_section(%struct.TYPE_16__*) #1

declare dso_local i64 @bfd_get_section_limit(i32*, %struct.TYPE_14__*) #1

declare dso_local i64 @bfd_get_32(i32*, i32*) #1

declare dso_local i32 @bfd_put_32(i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
