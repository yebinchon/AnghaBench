; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_sections.c_is_remove_reloc_sec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_sections.c_is_remove_reloc_sec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfcopy = type { i32 }
%struct.TYPE_3__ = type { i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"elf_getshstrndx failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"gelf_getshdr failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"elf_strptr failed: %s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"elf_nextscn failed: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_remove_reloc_sec(%struct.elfcopy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.elfcopy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.elfcopy* %0, %struct.elfcopy** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %12 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @elf_getshstrndx(i32 %13, i64* %9)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @EXIT_FAILURE, align 4
  %18 = call i32 @elf_errmsg(i32 -1)
  %19 = call i32 @errx(i32 %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %16, %2
  %21 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %22 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32* @elf_getscn(i32 %23, i32 %24)
  store i32* %25, i32** %8, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %56

28:                                               ; preds = %20
  %29 = load i32*, i32** %8, align 8
  %30 = call i32* @gelf_getshdr(i32* %29, %struct.TYPE_3__* %7)
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* @EXIT_FAILURE, align 4
  %34 = call i32 @elf_errmsg(i32 -1)
  %35 = call i32 @errx(i32 %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %32, %28
  %37 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %38 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @elf_strptr(i32 %39, i64 %40, i32 %42)
  store i8* %43, i8** %6, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %36
  %46 = load i32, i32* @EXIT_FAILURE, align 4
  %47 = call i32 @elf_errmsg(i32 -1)
  %48 = call i32 @errx(i32 %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %45, %36
  %50 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i64 @is_remove_section(%struct.elfcopy* %50, i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %66

55:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %66

56:                                               ; preds = %20
  %57 = call i32 (...) @elf_errno()
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i32, i32* @EXIT_FAILURE, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @elf_errmsg(i32 %62)
  %64 = call i32 @errx(i32 %61, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %60, %56
  store i32 1, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %55, %54
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @elf_getshstrndx(i32, i64*) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32* @elf_getscn(i32, i32) #1

declare dso_local i32* @gelf_getshdr(i32*, %struct.TYPE_3__*) #1

declare dso_local i8* @elf_strptr(i32, i64, i32) #1

declare dso_local i64 @is_remove_section(%struct.elfcopy*, i8*) #1

declare dso_local i32 @elf_errno(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
