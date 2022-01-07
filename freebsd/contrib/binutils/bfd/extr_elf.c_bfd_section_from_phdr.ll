; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c_bfd_section_from_phdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c_bfd_section_from_phdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.elf_backend_data = type { i32 (i32*, %struct.TYPE_5__*, i32, i8*)* }

@.str = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"dynamic\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"interp\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"note\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"shlib\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"phdr\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"eh_frame_hdr\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"stack\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"relro\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"proc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfd_section_from_phdr(i32* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.elf_backend_data*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %79 [
    i32 130, label %12
    i32 132, label %17
    i32 137, label %22
    i32 133, label %27
    i32 131, label %32
    i32 128, label %54
    i32 129, label %59
    i32 136, label %64
    i32 134, label %69
    i32 135, label %74
  ]

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @_bfd_elf_make_section_from_phdr(i32* %13, %struct.TYPE_5__* %14, i32 %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %4, align 4
  br label %89

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @_bfd_elf_make_section_from_phdr(i32* %18, %struct.TYPE_5__* %19, i32 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %21, i32* %4, align 4
  br label %89

22:                                               ; preds = %3
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @_bfd_elf_make_section_from_phdr(i32* %23, %struct.TYPE_5__* %24, i32 %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 %26, i32* %4, align 4
  br label %89

27:                                               ; preds = %3
  %28 = load i32*, i32** %5, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @_bfd_elf_make_section_from_phdr(i32* %28, %struct.TYPE_5__* %29, i32 %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 %31, i32* %4, align 4
  br label %89

32:                                               ; preds = %3
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @_bfd_elf_make_section_from_phdr(i32* %33, %struct.TYPE_5__* %34, i32 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %4, align 4
  br label %89

40:                                               ; preds = %32
  %41 = load i32*, i32** %5, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @elfcore_read_notes(i32* %41, i32 %44, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %40
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %4, align 4
  br label %89

52:                                               ; preds = %40
  %53 = load i32, i32* @TRUE, align 4
  store i32 %53, i32* %4, align 4
  br label %89

54:                                               ; preds = %3
  %55 = load i32*, i32** %5, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @_bfd_elf_make_section_from_phdr(i32* %55, %struct.TYPE_5__* %56, i32 %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store i32 %58, i32* %4, align 4
  br label %89

59:                                               ; preds = %3
  %60 = load i32*, i32** %5, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @_bfd_elf_make_section_from_phdr(i32* %60, %struct.TYPE_5__* %61, i32 %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  store i32 %63, i32* %4, align 4
  br label %89

64:                                               ; preds = %3
  %65 = load i32*, i32** %5, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @_bfd_elf_make_section_from_phdr(i32* %65, %struct.TYPE_5__* %66, i32 %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  store i32 %68, i32* %4, align 4
  br label %89

69:                                               ; preds = %3
  %70 = load i32*, i32** %5, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @_bfd_elf_make_section_from_phdr(i32* %70, %struct.TYPE_5__* %71, i32 %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  store i32 %73, i32* %4, align 4
  br label %89

74:                                               ; preds = %3
  %75 = load i32*, i32** %5, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @_bfd_elf_make_section_from_phdr(i32* %75, %struct.TYPE_5__* %76, i32 %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  store i32 %78, i32* %4, align 4
  br label %89

79:                                               ; preds = %3
  %80 = load i32*, i32** %5, align 8
  %81 = call %struct.elf_backend_data* @get_elf_backend_data(i32* %80)
  store %struct.elf_backend_data* %81, %struct.elf_backend_data** %8, align 8
  %82 = load %struct.elf_backend_data*, %struct.elf_backend_data** %8, align 8
  %83 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %82, i32 0, i32 0
  %84 = load i32 (i32*, %struct.TYPE_5__*, i32, i8*)*, i32 (i32*, %struct.TYPE_5__*, i32, i8*)** %83, align 8
  %85 = load i32*, i32** %5, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i32 %84(i32* %85, %struct.TYPE_5__* %86, i32 %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %79, %74, %69, %64, %59, %54, %52, %50, %38, %27, %22, %17, %12
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @_bfd_elf_make_section_from_phdr(i32*, %struct.TYPE_5__*, i32, i8*) #1

declare dso_local i32 @elfcore_read_notes(i32*, i32, i32) #1

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
