; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/strings/extr_strings.c_handle_elf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/strings/extr_strings.c_handle_elf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i32, i32, i32 }

@entire_file = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@ELF_C_READ = common dso_local global i32 0, align 4
@ELF_K_ELF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"%s: ELF file could not be processed\00", align 1
@ET_CORE = common dso_local global i64 0, align 8
@SHT_NOBITS = common dso_local global i64 0, align 8
@SHF_ALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_elf(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca %struct.TYPE_6__, align 8
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %11, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @fileno(i32* %13)
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = call i64 @fstat(i32 %15, %struct.stat* %6)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %109

19:                                               ; preds = %2
  %20 = load i64, i64* @entire_file, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @handle_binary(i8* %23, i32* %24, i32 %26)
  store i32 %27, i32* %3, align 4
  br label %109

28:                                               ; preds = %19
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @SEEK_SET, align 4
  %31 = call i32 @lseek(i32 %29, i32 0, i32 %30)
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @ELF_C_READ, align 4
  %34 = call i32* @elf_begin(i32 %32, i32 %33, i32* null)
  store i32* %34, i32** %9, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = call i64 @elf_kind(i32* %35)
  %37 = load i64, i64* @ELF_K_ELF, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %28
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @elf_end(i32* %40)
  %42 = load i8*, i8** %4, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @handle_binary(i8* %42, i32* %43, i32 %45)
  store i32 %46, i32* %3, align 4
  br label %109

47:                                               ; preds = %28
  %48 = load i32*, i32** %9, align 8
  %49 = call i32* @gelf_getehdr(i32* %48, %struct.TYPE_6__* %7)
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @elf_end(i32* %52)
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 @warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %54)
  store i32 1, i32* %3, align 4
  br label %109

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @ET_CORE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @elf_end(i32* %66)
  %68 = load i8*, i8** %4, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @handle_binary(i8* %68, i32* %69, i32 %71)
  store i32 %72, i32* %3, align 4
  br label %109

73:                                               ; preds = %60, %56
  store i32* null, i32** %10, align 8
  br label %74

74:                                               ; preds = %103, %83, %73
  %75 = load i32*, i32** %9, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = call i32* @elf_nextscn(i32* %75, i32* %76)
  store i32* %77, i32** %10, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %104

79:                                               ; preds = %74
  %80 = load i32*, i32** %10, align 8
  %81 = call i32* @gelf_getshdr(i32* %80, %struct.TYPE_5__* %8)
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %74

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @SHT_NOBITS, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %103

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @SHF_ALLOC, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %89
  %96 = load i8*, i8** %4, align 8
  %97 = load i32*, i32** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @find_strings(i8* %96, i32* %97, i32 %99, i32 %101)
  store i32 %102, i32* %11, align 4
  br label %103

103:                                              ; preds = %95, %89, %84
  br label %74

104:                                              ; preds = %74
  br label %105

105:                                              ; preds = %104
  %106 = load i32*, i32** %9, align 8
  %107 = call i32 @elf_end(i32* %106)
  %108 = load i32, i32* %11, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %105, %65, %51, %39, %22, %18
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @fileno(i32*) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @handle_binary(i8*, i32*, i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32* @elf_begin(i32, i32, i32*) #1

declare dso_local i64 @elf_kind(i32*) #1

declare dso_local i32 @elf_end(i32*) #1

declare dso_local i32* @gelf_getehdr(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32* @elf_nextscn(i32*, i32*) #1

declare dso_local i32* @gelf_getshdr(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @find_strings(i8*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
