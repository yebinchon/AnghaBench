; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_spu_elf_rel9.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_spu_elf_rel9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_18__*, i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_20__ = type { i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64 }

@bfd_reloc_outofrange = common dso_local global i32 0, align 4
@bfd_reloc_overflow = common dso_local global i32 0, align 4
@bfd_reloc_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_21__*, %struct.TYPE_19__*, i8*, %struct.TYPE_20__*, i32*, i8**)* @spu_elf_rel9 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spu_elf_rel9(i32* %0, %struct.TYPE_21__* %1, %struct.TYPE_19__* %2, i8* %3, %struct.TYPE_20__* %4, i32* %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %10, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %11, align 8
  store i8* %3, i8** %12, align 8
  store %struct.TYPE_20__* %4, %struct.TYPE_20__** %13, align 8
  store i32* %5, i32** %14, align 8
  store i8** %6, i8*** %15, align 8
  %19 = load i32*, i32** %14, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %7
  %22 = load i32*, i32** %9, align 8
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %27 = load i32*, i32** %14, align 8
  %28 = load i8**, i8*** %15, align 8
  %29 = call i32 @bfd_elf_generic_reloc(i32* %22, %struct.TYPE_21__* %23, %struct.TYPE_19__* %24, i8* %25, %struct.TYPE_20__* %26, i32* %27, i8** %28)
  store i32 %29, i32* %8, align 4
  br label %148

30:                                               ; preds = %7
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %36 = call i32 @bfd_get_section_limit(i32* %34, %struct.TYPE_20__* %35)
  %37 = icmp sgt i32 %33, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @bfd_reloc_outofrange, align 4
  store i32 %39, i32* %8, align 4
  br label %148

40:                                               ; preds = %30
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @bfd_octets_per_byte(i32* %44)
  %46 = mul nsw i32 %43, %45
  store i32 %46, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %48, align 8
  %50 = call i32 @bfd_is_com_section(%struct.TYPE_15__* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %40
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %17, align 4
  br label %56

56:                                               ; preds = %52, %40
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %60, align 8
  %62 = icmp ne %struct.TYPE_16__* %61, null
  br i1 %62, label %63, label %75

63:                                               ; preds = %56
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %17, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %17, align 4
  br label %75

75:                                               ; preds = %63, %56
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %17, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %78
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %17, align 4
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %87, %90
  %92 = load i32, i32* %17, align 4
  %93 = sext i32 %92 to i64
  %94 = sub nsw i64 %93, %91
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %17, align 4
  %96 = load i32, i32* %17, align 4
  %97 = ashr i32 %96, 2
  store i32 %97, i32* %17, align 4
  %98 = load i32, i32* %17, align 4
  %99 = add nsw i32 %98, 256
  %100 = icmp sge i32 %99, 512
  br i1 %100, label %101, label %103

101:                                              ; preds = %75
  %102 = load i32, i32* @bfd_reloc_overflow, align 4
  store i32 %102, i32* %8, align 4
  br label %148

103:                                              ; preds = %75
  %104 = load i32*, i32** %9, align 8
  %105 = load i8*, i8** %12, align 8
  %106 = bitcast i8* %105 to i32*
  %107 = load i32, i32* %16, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = call i64 @bfd_get_32(i32* %104, i32* %109)
  store i64 %110, i64* %18, align 8
  %111 = load i32, i32* %17, align 4
  %112 = and i32 %111, 127
  %113 = load i32, i32* %17, align 4
  %114 = and i32 %113, 384
  %115 = shl i32 %114, 7
  %116 = or i32 %112, %115
  %117 = load i32, i32* %17, align 4
  %118 = and i32 %117, 384
  %119 = shl i32 %118, 16
  %120 = or i32 %116, %119
  store i32 %120, i32* %17, align 4
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = xor i64 %125, -1
  %127 = load i64, i64* %18, align 8
  %128 = and i64 %127, %126
  store i64 %128, i64* %18, align 8
  %129 = load i32, i32* %17, align 4
  %130 = sext i32 %129 to i64
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = and i64 %130, %135
  %137 = load i64, i64* %18, align 8
  %138 = or i64 %137, %136
  store i64 %138, i64* %18, align 8
  %139 = load i32*, i32** %9, align 8
  %140 = load i64, i64* %18, align 8
  %141 = load i8*, i8** %12, align 8
  %142 = bitcast i8* %141 to i32*
  %143 = load i32, i32* %16, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = call i32 @bfd_put_32(i32* %139, i64 %140, i32* %145)
  %147 = load i32, i32* @bfd_reloc_ok, align 4
  store i32 %147, i32* %8, align 4
  br label %148

148:                                              ; preds = %103, %101, %38, %21
  %149 = load i32, i32* %8, align 4
  ret i32 %149
}

declare dso_local i32 @bfd_elf_generic_reloc(i32*, %struct.TYPE_21__*, %struct.TYPE_19__*, i8*, %struct.TYPE_20__*, i32*, i8**) #1

declare dso_local i32 @bfd_get_section_limit(i32*, %struct.TYPE_20__*) #1

declare dso_local i32 @bfd_octets_per_byte(i32*) #1

declare dso_local i32 @bfd_is_com_section(%struct.TYPE_15__*) #1

declare dso_local i64 @bfd_get_32(i32*, i32*) #1

declare dso_local i32 @bfd_put_32(i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
