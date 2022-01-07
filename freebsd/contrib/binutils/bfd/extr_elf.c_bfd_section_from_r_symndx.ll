; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c_bfd_section_from_r_symndx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c_bfd_section_from_r_symndx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_sec_cache = type { i64*, i32**, i32* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@LOCAL_SYM_CACHE_SIZE = common dso_local global i64 0, align 8
@SHN_UNDEF = common dso_local global i64 0, align 8
@SHN_LORESERVE = common dso_local global i64 0, align 8
@SHN_HIRESERVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @bfd_section_from_r_symndx(i32* %0, %struct.sym_sec_cache* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sym_sec_cache*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [4 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_4__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.sym_sec_cache* %1, %struct.sym_sec_cache** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @LOCAL_SYM_CACHE_SIZE, align 8
  %18 = urem i64 %16, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %14, align 4
  %20 = load %struct.sym_sec_cache*, %struct.sym_sec_cache** %7, align 8
  %21 = getelementptr inbounds %struct.sym_sec_cache, %struct.sym_sec_cache* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = icmp eq i32* %22, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %4
  %26 = load %struct.sym_sec_cache*, %struct.sym_sec_cache** %7, align 8
  %27 = getelementptr inbounds %struct.sym_sec_cache, %struct.sym_sec_cache* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %14, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %25
  %36 = load %struct.sym_sec_cache*, %struct.sym_sec_cache** %7, align 8
  %37 = getelementptr inbounds %struct.sym_sec_cache, %struct.sym_sec_cache* %36, i32 0, i32 1
  %38 = load i32**, i32*** %37, align 8
  %39 = load i32, i32* %14, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %5, align 8
  br label %121

43:                                               ; preds = %25, %4
  %44 = load i32*, i32** %6, align 8
  %45 = call %struct.TYPE_5__* @elf_tdata(i32* %44)
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i32* %46, i32** %10, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = load i64, i64* %9, align 8
  %50 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %51 = call i32* @bfd_elf_get_elf_syms(i32* %47, i32* %48, i32 1, i64 %49, %struct.TYPE_4__* %13, i8* %50, i32* %12)
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  store i32* null, i32** %5, align 8
  br label %121

54:                                               ; preds = %43
  %55 = load %struct.sym_sec_cache*, %struct.sym_sec_cache** %7, align 8
  %56 = getelementptr inbounds %struct.sym_sec_cache, %struct.sym_sec_cache* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = icmp ne i32* %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load %struct.sym_sec_cache*, %struct.sym_sec_cache** %7, align 8
  %62 = getelementptr inbounds %struct.sym_sec_cache, %struct.sym_sec_cache* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = call i32 @memset(i64* %63, i32 -1, i32 8)
  %65 = load i32*, i32** %6, align 8
  %66 = load %struct.sym_sec_cache*, %struct.sym_sec_cache** %7, align 8
  %67 = getelementptr inbounds %struct.sym_sec_cache, %struct.sym_sec_cache* %66, i32 0, i32 2
  store i32* %65, i32** %67, align 8
  br label %68

68:                                               ; preds = %60, %54
  %69 = load i64, i64* %9, align 8
  %70 = load %struct.sym_sec_cache*, %struct.sym_sec_cache** %7, align 8
  %71 = getelementptr inbounds %struct.sym_sec_cache, %struct.sym_sec_cache* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %14, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  store i64 %69, i64* %75, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = load %struct.sym_sec_cache*, %struct.sym_sec_cache** %7, align 8
  %78 = getelementptr inbounds %struct.sym_sec_cache, %struct.sym_sec_cache* %77, i32 0, i32 1
  %79 = load i32**, i32*** %78, align 8
  %80 = load i32, i32* %14, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32*, i32** %79, i64 %81
  store i32* %76, i32** %82, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @SHN_UNDEF, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %68
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @SHN_LORESERVE, align 8
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %97, label %92

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @SHN_HIRESERVE, align 8
  %96 = icmp sgt i64 %94, %95
  br i1 %96, label %97, label %113

97:                                               ; preds = %92, %87
  %98 = load i32*, i32** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32* @bfd_section_from_elf_index(i32* %98, i64 %100)
  store i32* %101, i32** %15, align 8
  %102 = load i32*, i32** %15, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %112

104:                                              ; preds = %97
  %105 = load i32*, i32** %15, align 8
  %106 = load %struct.sym_sec_cache*, %struct.sym_sec_cache** %7, align 8
  %107 = getelementptr inbounds %struct.sym_sec_cache, %struct.sym_sec_cache* %106, i32 0, i32 1
  %108 = load i32**, i32*** %107, align 8
  %109 = load i32, i32* %14, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32*, i32** %108, i64 %110
  store i32* %105, i32** %111, align 8
  br label %112

112:                                              ; preds = %104, %97
  br label %113

113:                                              ; preds = %112, %92
  %114 = load %struct.sym_sec_cache*, %struct.sym_sec_cache** %7, align 8
  %115 = getelementptr inbounds %struct.sym_sec_cache, %struct.sym_sec_cache* %114, i32 0, i32 1
  %116 = load i32**, i32*** %115, align 8
  %117 = load i32, i32* %14, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i32*, i32** %116, i64 %118
  %120 = load i32*, i32** %119, align 8
  store i32* %120, i32** %5, align 8
  br label %121

121:                                              ; preds = %113, %53, %35
  %122 = load i32*, i32** %5, align 8
  ret i32* %122
}

declare dso_local %struct.TYPE_5__* @elf_tdata(i32*) #1

declare dso_local i32* @bfd_elf_get_elf_syms(i32*, i32*, i32, i64, %struct.TYPE_4__*, i8*, i32*) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32* @bfd_section_from_elf_index(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
