; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_sections.c_init_shstrtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_sections.c_init_shstrtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfcopy = type { %struct.section*, i32 }
%struct.section = type { i8*, i32, i32, i64, i32, i64, i64, i32* }
%struct.TYPE_4__ = type { i64 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"elf_getscn failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"gelf_getshdr failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"calloc failed\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c".shstrtab\00", align 1
@SHT_STRTAB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [8 x i8] c".symtab\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c".strtab\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_shstrtab(%struct.elfcopy* %0) #0 {
  %2 = alloca %struct.elfcopy*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca %struct.section*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.elfcopy* %0, %struct.elfcopy** %2, align 8
  %8 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %9 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @elf_getshdrstrndx(i32 %10, i64* %6)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %1
  %14 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %15 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32* @elf_getscn(i32 %16, i64 %17)
  store i32* %18, i32** %3, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = load i32, i32* @EXIT_FAILURE, align 4
  %23 = call i32 @elf_errmsg(i32 -1)
  %24 = call i32 @errx(i32 %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %21, %13
  %26 = load i32*, i32** %3, align 8
  %27 = call %struct.TYPE_4__* @gelf_getshdr(i32* %26, %struct.TYPE_4__* %4)
  %28 = icmp ne %struct.TYPE_4__* %27, %4
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* @EXIT_FAILURE, align 4
  %31 = call i32 @elf_errmsg(i32 -1)
  %32 = call i32 @errx(i32 %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %29, %25
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %7, align 8
  br label %38

36:                                               ; preds = %1
  %37 = call i32 (...) @elf_errno()
  store i64 0, i64* %7, align 8
  br label %38

38:                                               ; preds = %36, %33
  %39 = call %struct.section* @calloc(i32 1, i32 56)
  %40 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %41 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %40, i32 0, i32 0
  store %struct.section* %39, %struct.section** %41, align 8
  %42 = icmp eq %struct.section* %39, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @EXIT_FAILURE, align 4
  %45 = call i32 @err(i32 %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %38
  %47 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %48 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %47, i32 0, i32 0
  %49 = load %struct.section*, %struct.section** %48, align 8
  store %struct.section* %49, %struct.section** %5, align 8
  %50 = load %struct.section*, %struct.section** %5, align 8
  %51 = getelementptr inbounds %struct.section, %struct.section* %50, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %51, align 8
  %52 = load %struct.section*, %struct.section** %5, align 8
  %53 = getelementptr inbounds %struct.section, %struct.section* %52, i32 0, i32 7
  store i32* null, i32** %53, align 8
  %54 = load %struct.section*, %struct.section** %5, align 8
  %55 = getelementptr inbounds %struct.section, %struct.section* %54, i32 0, i32 6
  store i64 0, i64* %55, align 8
  %56 = load %struct.section*, %struct.section** %5, align 8
  %57 = getelementptr inbounds %struct.section, %struct.section* %56, i32 0, i32 1
  store i32 1, i32* %57, align 8
  %58 = load %struct.section*, %struct.section** %5, align 8
  %59 = getelementptr inbounds %struct.section, %struct.section* %58, i32 0, i32 5
  store i64 0, i64* %59, align 8
  %60 = load i32, i32* @SHT_STRTAB, align 4
  %61 = load %struct.section*, %struct.section** %5, align 8
  %62 = getelementptr inbounds %struct.section, %struct.section* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  %63 = load %struct.section*, %struct.section** %5, align 8
  %64 = getelementptr inbounds %struct.section, %struct.section* %63, i32 0, i32 3
  store i64 0, i64* %64, align 8
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @elftc_string_table_create(i64 %65)
  %67 = load %struct.section*, %struct.section** %5, align 8
  %68 = getelementptr inbounds %struct.section, %struct.section* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %70 = call i32 @add_to_shstrtab(%struct.elfcopy* %69, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %71 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %72 = call i32 @add_to_shstrtab(%struct.elfcopy* %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %73 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %74 = call i32 @add_to_shstrtab(%struct.elfcopy* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %75 = load %struct.elfcopy*, %struct.elfcopy** %2, align 8
  %76 = call i32 @add_to_shstrtab(%struct.elfcopy* %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i64 @elf_getshdrstrndx(i32, i64*) #1

declare dso_local i32* @elf_getscn(i32, i64) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local %struct.TYPE_4__* @gelf_getshdr(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @elf_errno(...) #1

declare dso_local %struct.section* @calloc(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @elftc_string_table_create(i64) #1

declare dso_local i32 @add_to_shstrtab(%struct.elfcopy*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
