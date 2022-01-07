; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_gelf_phdr.c_gelf_update_phdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_gelf_phdr.c_gelf_update_phdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i32, i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_19__*, %struct.TYPE_18__* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }

@ELF_K_ELF = common dso_local global i64 0, align 8
@ELFCLASS32 = common dso_local global i32 0, align 4
@ELFCLASS64 = common dso_local global i32 0, align 4
@ARGUMENT = common dso_local global i32 0, align 4
@ELF_C_READ = common dso_local global i64 0, align 8
@MODE = common dso_local global i32 0, align 4
@ELF_C_SET = common dso_local global i32 0, align 4
@ELF_F_DIRTY = common dso_local global i32 0, align 4
@p_offset = common dso_local global i32 0, align 4
@p_vaddr = common dso_local global i32 0, align 4
@p_paddr = common dso_local global i32 0, align 4
@p_filesz = common dso_local global i32 0, align 4
@p_memsz = common dso_local global i32 0, align 4
@p_align = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gelf_update_phdr(%struct.TYPE_20__* %0, i32 %1, %struct.TYPE_18__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %7, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %14 = icmp eq %struct.TYPE_18__* %13, null
  br i1 %14, label %38, label %15

15:                                               ; preds = %3
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %17 = icmp eq %struct.TYPE_20__* %16, null
  br i1 %17, label %38, label %18

18:                                               ; preds = %15
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ELF_K_ELF, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %38, label %24

24:                                               ; preds = %18
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* @ELFCLASS32, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @ELFCLASS64, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %30, %24
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %36 = call i64 @elf_getphdrnum(%struct.TYPE_20__* %35, i64* %9)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34, %30, %18, %15, %3
  %39 = load i32, i32* @ARGUMENT, align 4
  %40 = call i32 @LIBELF_SET_ERROR(i32 %39, i32 0)
  store i32 0, i32* %4, align 4
  br label %133

41:                                               ; preds = %34
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ELF_C_READ, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @MODE, align 4
  %49 = call i32 @LIBELF_SET_ERROR(i32 %48, i32 0)
  store i32 0, i32* %4, align 4
  br label %133

50:                                               ; preds = %41
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i8* @_libelf_ehdr(%struct.TYPE_20__* %51, i32 %52, i32 0)
  store i8* %53, i8** %10, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %133

56:                                               ; preds = %50
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %9, align 8
  %63 = icmp ugt i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %59, %56
  %65 = load i32, i32* @ARGUMENT, align 4
  %66 = call i32 @LIBELF_SET_ERROR(i32 %65, i32 0)
  store i32 0, i32* %4, align 4
  br label %133

67:                                               ; preds = %59
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %69 = load i32, i32* @ELF_C_SET, align 4
  %70 = load i32, i32* @ELF_F_DIRTY, align 4
  %71 = call i32 @elf_flagphdr(%struct.TYPE_20__* %68, i32 %69, i32 %70)
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @ELFCLASS64, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %67
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i64 %83
  store %struct.TYPE_18__* %84, %struct.TYPE_18__** %12, align 8
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %87 = bitcast %struct.TYPE_18__* %85 to i8*
  %88 = bitcast %struct.TYPE_18__* %86 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %87, i8* align 4 %88, i64 8, i1 false)
  store i32 1, i32* %4, align 4
  br label %133

89:                                               ; preds = %67
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i64 %97
  store %struct.TYPE_19__* %98, %struct.TYPE_19__** %11, align 8
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %111 = load i32, i32* @p_offset, align 4
  %112 = call i32 @LIBELF_COPY_U32(%struct.TYPE_19__* %109, %struct.TYPE_18__* %110, i32 %111)
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %115 = load i32, i32* @p_vaddr, align 4
  %116 = call i32 @LIBELF_COPY_U32(%struct.TYPE_19__* %113, %struct.TYPE_18__* %114, i32 %115)
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %119 = load i32, i32* @p_paddr, align 4
  %120 = call i32 @LIBELF_COPY_U32(%struct.TYPE_19__* %117, %struct.TYPE_18__* %118, i32 %119)
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %123 = load i32, i32* @p_filesz, align 4
  %124 = call i32 @LIBELF_COPY_U32(%struct.TYPE_19__* %121, %struct.TYPE_18__* %122, i32 %123)
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %127 = load i32, i32* @p_memsz, align 4
  %128 = call i32 @LIBELF_COPY_U32(%struct.TYPE_19__* %125, %struct.TYPE_18__* %126, i32 %127)
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %131 = load i32, i32* @p_align, align 4
  %132 = call i32 @LIBELF_COPY_U32(%struct.TYPE_19__* %129, %struct.TYPE_18__* %130, i32 %131)
  store i32 1, i32* %4, align 4
  br label %133

133:                                              ; preds = %89, %75, %64, %55, %47, %38
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i64 @elf_getphdrnum(%struct.TYPE_20__*, i64*) #1

declare dso_local i32 @LIBELF_SET_ERROR(i32, i32) #1

declare dso_local i8* @_libelf_ehdr(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @elf_flagphdr(%struct.TYPE_20__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @LIBELF_COPY_U32(%struct.TYPE_19__*, %struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
