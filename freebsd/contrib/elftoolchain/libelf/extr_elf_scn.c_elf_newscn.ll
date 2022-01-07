; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_elf_scn.c_elf_newscn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_elf_scn.c_elf_newscn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i64, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }

@ELF_K_ELF = common dso_local global i64 0, align 8
@ARGUMENT = common dso_local global i32 0, align 4
@ELFCLASS32 = common dso_local global i32 0, align 4
@ELFCLASS64 = common dso_local global i32 0, align 4
@CLASS = common dso_local global i32 0, align 4
@ELF_C_WRITE = common dso_local global i64 0, align 8
@LIBELF_F_SHDRS_LOADED = common dso_local global i32 0, align 4
@SHN_UNDEF = common dso_local global i64 0, align 8
@ELF_C_SET = common dso_local global i32 0, align 4
@ELF_F_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @elf_newscn(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = icmp eq %struct.TYPE_10__* %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ELF_K_ELF, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9, %1
  %16 = load i32, i32* @ARGUMENT, align 4
  %17 = call i32 @LIBELF_SET_ERROR(i32 %16, i32 0)
  store i32* null, i32** %2, align 8
  br label %114

18:                                               ; preds = %9
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* @ELFCLASS32, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @ELFCLASS64, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @CLASS, align 4
  %30 = call i32 @LIBELF_SET_ERROR(i32 %29, i32 0)
  store i32* null, i32** %2, align 8
  br label %114

31:                                               ; preds = %24, %18
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i8* @_libelf_ehdr(%struct.TYPE_10__* %32, i32 %33, i32 0)
  store i8* %34, i8** %5, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32* null, i32** %2, align 8
  br label %114

37:                                               ; preds = %31
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ELF_C_WRITE, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %37
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @LIBELF_F_SHDRS_LOADED, align 4
  %48 = and i32 %46, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = call i64 @_libelf_load_section_headers(%struct.TYPE_10__* %51, i8* %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32* null, i32** %2, align 8
  br label %114

56:                                               ; preds = %50, %43, %37
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = call i64 @RB_EMPTY(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %84

63:                                               ; preds = %56
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %73 = load i64, i64* @SHN_UNDEF, align 8
  %74 = call i32* @_libelf_allocate_scn(%struct.TYPE_10__* %72, i64 %73)
  store i32* %74, i32** %6, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %63
  store i32* null, i32** %2, align 8
  br label %114

77:                                               ; preds = %63
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %81, align 8
  br label %84

84:                                               ; preds = %77, %56
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ugt i64 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32* @_libelf_allocate_scn(%struct.TYPE_10__* %93, i64 %98)
  store i32* %99, i32** %6, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %84
  store i32* null, i32** %2, align 8
  br label %114

102:                                              ; preds = %84
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %106, align 8
  %109 = load i32*, i32** %6, align 8
  %110 = load i32, i32* @ELF_C_SET, align 4
  %111 = load i32, i32* @ELF_F_DIRTY, align 4
  %112 = call i32 @elf_flagscn(i32* %109, i32 %110, i32 %111)
  %113 = load i32*, i32** %6, align 8
  store i32* %113, i32** %2, align 8
  br label %114

114:                                              ; preds = %102, %101, %76, %55, %36, %28, %15
  %115 = load i32*, i32** %2, align 8
  ret i32* %115
}

declare dso_local i32 @LIBELF_SET_ERROR(i32, i32) #1

declare dso_local i8* @_libelf_ehdr(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i64 @_libelf_load_section_headers(%struct.TYPE_10__*, i8*) #1

declare dso_local i64 @RB_EMPTY(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @_libelf_allocate_scn(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @elf_flagscn(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
