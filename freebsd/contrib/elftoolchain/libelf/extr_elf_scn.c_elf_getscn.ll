; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_elf_scn.c_elf_getscn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_elf_scn.c_elf_getscn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_17__ = type { i64, i32, i64, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }

@ELF_K_ELF = common dso_local global i64 0, align 8
@ELFCLASS32 = common dso_local global i32 0, align 4
@ELFCLASS64 = common dso_local global i32 0, align 4
@ARGUMENT = common dso_local global i32 0, align 4
@ELF_C_WRITE = common dso_local global i64 0, align 8
@LIBELF_F_SHDRS_LOADED = common dso_local global i32 0, align 4
@s_tree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @elf_getscn(%struct.TYPE_17__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %10 = icmp eq %struct.TYPE_17__* %9, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ELF_K_ELF, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %27, label %17

17:                                               ; preds = %11
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @ELFCLASS32, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @ELFCLASS64, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23, %11, %2
  %28 = load i32, i32* @ARGUMENT, align 4
  %29 = call i32 @LIBELF_SET_ERROR(i32 %28, i32 0)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %3, align 8
  br label %90

30:                                               ; preds = %23, %17
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i8* @_libelf_ehdr(%struct.TYPE_17__* %31, i32 %32, i32 0)
  store i8* %33, i8** %7, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %3, align 8
  br label %90

36:                                               ; preds = %30
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ELF_C_WRITE, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %36
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @LIBELF_F_SHDRS_LOADED, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call i64 @_libelf_load_section_headers(%struct.TYPE_17__* %50, i8* %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %3, align 8
  br label %90

55:                                               ; preds = %49, %42, %36
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = call %struct.TYPE_16__* @RB_ROOT(i32* %59)
  store %struct.TYPE_16__* %60, %struct.TYPE_16__** %8, align 8
  br label %61

61:                                               ; preds = %86, %55
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %63 = icmp ne %struct.TYPE_16__* %62, null
  br i1 %63, label %64, label %87

64:                                               ; preds = %61
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %5, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_16__* %71, %struct.TYPE_16__** %3, align 8
  br label %90

72:                                               ; preds = %64
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %5, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %80 = load i32, i32* @s_tree, align 4
  %81 = call %struct.TYPE_16__* @RB_RIGHT(%struct.TYPE_16__* %79, i32 %80)
  store %struct.TYPE_16__* %81, %struct.TYPE_16__** %8, align 8
  br label %86

82:                                               ; preds = %72
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %84 = load i32, i32* @s_tree, align 4
  %85 = call %struct.TYPE_16__* @RB_LEFT(%struct.TYPE_16__* %83, i32 %84)
  store %struct.TYPE_16__* %85, %struct.TYPE_16__** %8, align 8
  br label %86

86:                                               ; preds = %82, %78
  br label %61

87:                                               ; preds = %61
  %88 = load i32, i32* @ARGUMENT, align 4
  %89 = call i32 @LIBELF_SET_ERROR(i32 %88, i32 0)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %3, align 8
  br label %90

90:                                               ; preds = %87, %70, %54, %35, %27
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  ret %struct.TYPE_16__* %91
}

declare dso_local i32 @LIBELF_SET_ERROR(i32, i32) #1

declare dso_local i8* @_libelf_ehdr(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i64 @_libelf_load_section_headers(%struct.TYPE_17__*, i8*) #1

declare dso_local %struct.TYPE_16__* @RB_ROOT(i32*) #1

declare dso_local %struct.TYPE_16__* @RB_RIGHT(%struct.TYPE_16__*, i32) #1

declare dso_local %struct.TYPE_16__* @RB_LEFT(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
