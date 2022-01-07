; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_elf_update.c_elf_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_elf_update.c_elf_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i64, i64, i64, i32 }
%struct._Elf_Extent_List = type { i32 }

@ELF_K_ELF = common dso_local global i64 0, align 8
@ELF_C_NULL = common dso_local global i64 0, align 8
@ELF_C_WRITE = common dso_local global i64 0, align 8
@ARGUMENT = common dso_local global i32 0, align 4
@ELFCLASS32 = common dso_local global i32 0, align 4
@ELFCLASS64 = common dso_local global i32 0, align 4
@CLASS = common dso_local global i32 0, align 4
@EV_NONE = common dso_local global i64 0, align 8
@EV_CURRENT = common dso_local global i64 0, align 8
@ELF_C_READ = common dso_local global i64 0, align 8
@MODE = common dso_local global i32 0, align 4
@SEQUENCE = common dso_local global i32 0, align 4
@LIBELF_F_SHDRS_LOADED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @elf_update(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct._Elf_Extent_List, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 -1, i64* %7, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = icmp eq %struct.TYPE_5__* %9, null
  br i1 %10, label %25, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ELF_K_ELF, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %25, label %17

17:                                               ; preds = %11
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @ELF_C_NULL, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @ELF_C_WRITE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21, %11, %2
  %26 = load i32, i32* @ARGUMENT, align 4
  %27 = call i32 @LIBELF_SET_ERROR(i32 %26, i32 0)
  %28 = load i64, i64* %7, align 8
  store i64 %28, i64* %3, align 8
  br label %99

29:                                               ; preds = %21, %17
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* @ELFCLASS32, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @ELFCLASS64, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* @CLASS, align 4
  %41 = call i32 @LIBELF_SET_ERROR(i32 %40, i32 0)
  %42 = load i64, i64* %7, align 8
  store i64 %42, i64* %3, align 8
  br label %99

43:                                               ; preds = %35, %29
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @EV_NONE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i64, i64* @EV_CURRENT, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %49, %43
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* @ELF_C_WRITE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @ELF_C_READ, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i32, i32* @MODE, align 4
  %65 = call i32 @LIBELF_SET_ERROR(i32 %64, i32 0)
  %66 = load i64, i64* %7, align 8
  store i64 %66, i64* %3, align 8
  br label %99

67:                                               ; preds = %57, %53
  %68 = call i32 @SLIST_INIT(%struct._Elf_Extent_List* %8)
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %70 = call i64 @_libelf_resync_elf(%struct.TYPE_5__* %69, %struct._Elf_Extent_List* %8)
  store i64 %70, i64* %7, align 8
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %90

73:                                               ; preds = %67
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* @ELF_C_NULL, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %90

78:                                               ; preds = %73
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  store i64 -1, i64* %7, align 8
  %84 = load i32, i32* @SEQUENCE, align 4
  %85 = call i32 @LIBELF_SET_ERROR(i32 %84, i32 0)
  br label %90

86:                                               ; preds = %78
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %88 = load i64, i64* %7, align 8
  %89 = call i64 @_libelf_write_elf(%struct.TYPE_5__* %87, i64 %88, %struct._Elf_Extent_List* %8)
  store i64 %89, i64* %7, align 8
  br label %90

90:                                               ; preds = %86, %83, %77, %72
  %91 = call i32 @_libelf_release_extents(%struct._Elf_Extent_List* %8)
  %92 = load i32, i32* @LIBELF_F_SHDRS_LOADED, align 4
  %93 = xor i32 %92, -1
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = and i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load i64, i64* %7, align 8
  store i64 %98, i64* %3, align 8
  br label %99

99:                                               ; preds = %90, %63, %39, %25
  %100 = load i64, i64* %3, align 8
  ret i64 %100
}

declare dso_local i32 @LIBELF_SET_ERROR(i32, i32) #1

declare dso_local i32 @SLIST_INIT(%struct._Elf_Extent_List*) #1

declare dso_local i64 @_libelf_resync_elf(%struct.TYPE_5__*, %struct._Elf_Extent_List*) #1

declare dso_local i64 @_libelf_write_elf(%struct.TYPE_5__*, i64, %struct._Elf_Extent_List*) #1

declare dso_local i32 @_libelf_release_extents(%struct._Elf_Extent_List*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
