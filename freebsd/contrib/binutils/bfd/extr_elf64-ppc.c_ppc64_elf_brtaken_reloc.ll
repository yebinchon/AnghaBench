; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_ppc64_elf_brtaken_reloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_ppc64_elf_brtaken_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_17__*, i64 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_22__ = type { %struct.TYPE_20__*, i64 }
%struct.TYPE_20__ = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@R_PPC64_ADDR14_BRTAKEN = common dso_local global i32 0, align 4
@R_PPC64_REL14_BRTAKEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_23__*, %struct.TYPE_21__*, i8*, %struct.TYPE_22__*, i32*, i8**)* @ppc64_elf_brtaken_reloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc64_elf_brtaken_reloc(i32* %0, %struct.TYPE_23__* %1, %struct.TYPE_21__* %2, i8* %3, %struct.TYPE_22__* %4, i32* %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %10, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %11, align 8
  store i8* %3, i8** %12, align 8
  store %struct.TYPE_22__* %4, %struct.TYPE_22__** %13, align 8
  store i32* %5, i32** %14, align 8
  store i8** %6, i8*** %15, align 8
  %22 = load i64, i64* @FALSE, align 8
  store i64 %22, i64* %19, align 8
  %23 = load i32*, i32** %14, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %7
  %26 = load i32*, i32** %9, align 8
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %31 = load i32*, i32** %14, align 8
  %32 = load i8**, i8*** %15, align 8
  %33 = call i32 @bfd_elf_generic_reloc(i32* %26, %struct.TYPE_23__* %27, %struct.TYPE_21__* %28, i8* %29, %struct.TYPE_22__* %30, i32* %31, i8** %32)
  store i32 %33, i32* %8, align 4
  br label %157

34:                                               ; preds = %7
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @bfd_octets_per_byte(i32* %38)
  %40 = mul nsw i32 %37, %39
  store i32 %40, i32* %18, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = bitcast i8* %42 to i32*
  %44 = load i32, i32* %18, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = call i64 @bfd_get_32(i32* %41, i32* %46)
  store i64 %47, i64* %16, align 8
  %48 = load i64, i64* %16, align 8
  %49 = and i64 %48, -2097153
  store i64 %49, i64* %16, align 8
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %17, align 4
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* @R_PPC64_ADDR14_BRTAKEN, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %34
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* @R_PPC64_REL14_BRTAKEN, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58, %34
  %63 = load i64, i64* %16, align 8
  %64 = or i64 %63, 2097152
  store i64 %64, i64* %16, align 8
  br label %65

65:                                               ; preds = %62, %58
  %66 = load i64, i64* %19, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %65
  %69 = load i64, i64* %16, align 8
  %70 = and i64 %69, 41943040
  %71 = icmp eq i64 %70, 8388608
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i64, i64* %16, align 8
  %74 = or i64 %73, 4194304
  store i64 %74, i64* %16, align 8
  br label %84

75:                                               ; preds = %68
  %76 = load i64, i64* %16, align 8
  %77 = and i64 %76, 41943040
  %78 = icmp eq i64 %77, 33554432
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i64, i64* %16, align 8
  %81 = or i64 %80, 16777216
  store i64 %81, i64* %16, align 8
  br label %83

82:                                               ; preds = %75
  br label %148

83:                                               ; preds = %79
  br label %84

84:                                               ; preds = %83, %72
  br label %139

85:                                               ; preds = %65
  store i64 0, i64* %20, align 8
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %87, align 8
  %89 = call i32 @bfd_is_com_section(%struct.TYPE_17__* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %85
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %20, align 8
  br label %95

95:                                               ; preds = %91, %85
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %20, align 8
  %104 = add nsw i64 %103, %102
  store i64 %104, i64* %20, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %20, align 8
  %111 = add nsw i64 %110, %109
  store i64 %111, i64* %20, align 8
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %20, align 8
  %116 = add nsw i64 %115, %114
  store i64 %116, i64* %20, align 8
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %120, %123
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %124, %129
  store i64 %130, i64* %21, align 8
  %131 = load i64, i64* %20, align 8
  %132 = load i64, i64* %21, align 8
  %133 = sub nsw i64 %131, %132
  %134 = icmp slt i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %95
  %136 = load i64, i64* %16, align 8
  %137 = xor i64 %136, 2097152
  store i64 %137, i64* %16, align 8
  br label %138

138:                                              ; preds = %135, %95
  br label %139

139:                                              ; preds = %138, %84
  %140 = load i32*, i32** %9, align 8
  %141 = load i64, i64* %16, align 8
  %142 = load i8*, i8** %12, align 8
  %143 = bitcast i8* %142 to i32*
  %144 = load i32, i32* %18, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = call i32 @bfd_put_32(i32* %140, i64 %141, i32* %146)
  br label %148

148:                                              ; preds = %139, %82
  %149 = load i32*, i32** %9, align 8
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %152 = load i8*, i8** %12, align 8
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %154 = load i32*, i32** %14, align 8
  %155 = load i8**, i8*** %15, align 8
  %156 = call i32 @ppc64_elf_branch_reloc(i32* %149, %struct.TYPE_23__* %150, %struct.TYPE_21__* %151, i8* %152, %struct.TYPE_22__* %153, i32* %154, i8** %155)
  store i32 %156, i32* %8, align 4
  br label %157

157:                                              ; preds = %148, %25
  %158 = load i32, i32* %8, align 4
  ret i32 %158
}

declare dso_local i32 @bfd_elf_generic_reloc(i32*, %struct.TYPE_23__*, %struct.TYPE_21__*, i8*, %struct.TYPE_22__*, i32*, i8**) #1

declare dso_local i32 @bfd_octets_per_byte(i32*) #1

declare dso_local i64 @bfd_get_32(i32*, i32*) #1

declare dso_local i32 @bfd_is_com_section(%struct.TYPE_17__*) #1

declare dso_local i32 @bfd_put_32(i32*, i64, i32*) #1

declare dso_local i32 @ppc64_elf_branch_reloc(i32*, %struct.TYPE_23__*, %struct.TYPE_21__*, i8*, %struct.TYPE_22__*, i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
