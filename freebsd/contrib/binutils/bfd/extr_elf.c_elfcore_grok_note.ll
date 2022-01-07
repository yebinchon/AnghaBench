; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c_elfcore_grok_note.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c_elfcore_grok_note.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i32, i32 }
%struct.elf_backend_data = type { i32 (i32*, %struct.TYPE_16__*)*, i32 (i32*, %struct.TYPE_16__*)* }
%struct.TYPE_15__ = type { i32, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"LINUX\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c".auxv\00", align 1
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_16__*)* @elfcore_grok_note to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elfcore_grok_note(i32* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.elf_backend_data*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call %struct.elf_backend_data* @get_elf_backend_data(i32* %8)
  store %struct.elf_backend_data* %9, %struct.elf_backend_data** %6, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %13 [
    i32 133, label %15
    i32 136, label %33
    i32 132, label %37
    i32 134, label %54
    i32 131, label %54
    i32 137, label %72
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @TRUE, align 4
  store i32 %14, i32* %3, align 4
  br label %98

15:                                               ; preds = %2
  %16 = load %struct.elf_backend_data*, %struct.elf_backend_data** %6, align 8
  %17 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %16, i32 0, i32 1
  %18 = load i32 (i32*, %struct.TYPE_16__*)*, i32 (i32*, %struct.TYPE_16__*)** %17, align 8
  %19 = icmp ne i32 (i32*, %struct.TYPE_16__*)* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = load %struct.elf_backend_data*, %struct.elf_backend_data** %6, align 8
  %22 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %21, i32 0, i32 1
  %23 = load i32 (i32*, %struct.TYPE_16__*)*, i32 (i32*, %struct.TYPE_16__*)** %22, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %26 = call i32 %23(i32* %24, %struct.TYPE_16__* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @TRUE, align 4
  store i32 %29, i32* %3, align 4
  br label %98

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30, %15
  %32 = load i32, i32* @TRUE, align 4
  store i32 %32, i32* %3, align 4
  br label %98

33:                                               ; preds = %2
  %34 = load i32*, i32** %4, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %36 = call i32 @elfcore_grok_prfpreg(i32* %34, %struct.TYPE_16__* %35)
  store i32 %36, i32* %3, align 4
  br label %98

37:                                               ; preds = %2
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 6
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @strcmp(i32 %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i32*, i32** %4, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %51 = call i32 @elfcore_grok_prxfpreg(i32* %49, %struct.TYPE_16__* %50)
  store i32 %51, i32* %3, align 4
  br label %98

52:                                               ; preds = %42, %37
  %53 = load i32, i32* @TRUE, align 4
  store i32 %53, i32* %3, align 4
  br label %98

54:                                               ; preds = %2, %2
  %55 = load %struct.elf_backend_data*, %struct.elf_backend_data** %6, align 8
  %56 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %55, i32 0, i32 0
  %57 = load i32 (i32*, %struct.TYPE_16__*)*, i32 (i32*, %struct.TYPE_16__*)** %56, align 8
  %58 = icmp ne i32 (i32*, %struct.TYPE_16__*)* %57, null
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = load %struct.elf_backend_data*, %struct.elf_backend_data** %6, align 8
  %61 = getelementptr inbounds %struct.elf_backend_data, %struct.elf_backend_data* %60, i32 0, i32 0
  %62 = load i32 (i32*, %struct.TYPE_16__*)*, i32 (i32*, %struct.TYPE_16__*)** %61, align 8
  %63 = load i32*, i32** %4, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %65 = call i32 %62(i32* %63, %struct.TYPE_16__* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* @TRUE, align 4
  store i32 %68, i32* %3, align 4
  br label %98

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69, %54
  %71 = load i32, i32* @TRUE, align 4
  store i32 %71, i32* %3, align 4
  br label %98

72:                                               ; preds = %2
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %75 = call %struct.TYPE_15__* @bfd_make_section_anyway_with_flags(i32* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  store %struct.TYPE_15__* %75, %struct.TYPE_15__** %7, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %77 = icmp eq %struct.TYPE_15__* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* @FALSE, align 4
  store i32 %79, i32* %3, align 4
  br label %98

80:                                               ; preds = %72
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 @bfd_get_arch_size(i32* %91)
  %93 = sdiv i32 %92, 32
  %94 = add nsw i32 1, %93
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @TRUE, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %80, %78, %70, %67, %52, %48, %33, %31, %28, %13
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.elf_backend_data* @get_elf_backend_data(i32*) #1

declare dso_local i32 @elfcore_grok_prfpreg(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @elfcore_grok_prxfpreg(i32*, %struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_15__* @bfd_make_section_anyway_with_flags(i32*, i8*, i32) #1

declare dso_local i32 @bfd_get_arch_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
