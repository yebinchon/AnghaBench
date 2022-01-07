; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_input.c_count_files.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_input.c_count_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EV_CURRENT = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Can't read input file %s\00", align 1
@ELF_C_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Can't open input file %s: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Input file %s is corrupt\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Found %d files in %d input files\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @count_files(i8** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* @EV_CURRENT, align 4
  %14 = call i32 @elf_version(i32 %13)
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %77, %2
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %80

19:                                               ; preds = %15
  %20 = load i8**, i8*** %4, align 8
  %21 = load i32, i32* %11, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %12, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = load i32, i32* @O_RDONLY, align 4
  %27 = call i32 @open(i8* %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = load i8*, i8** %12, align 8
  %31 = call i32 (i8*, i8*, ...) @warning(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %77

34:                                               ; preds = %19
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @ELF_C_READ, align 4
  %37 = call i32* @elf_begin(i32 %35, i32 %36, i32* null)
  store i32* %37, i32** %8, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load i8*, i8** %12, align 8
  %41 = call i32 @elf_errmsg(i32 -1)
  %42 = call i32 (i8*, i8*, ...) @warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %40, i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @close(i32 %45)
  br label %77

47:                                               ; preds = %34
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @elf_kind(i32* %48)
  switch i32 %49, label %67 [
    i32 129, label %50
    i32 128, label %64
  ]

50:                                               ; preds = %47
  %51 = load i32, i32* %9, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = call i32 @count_archive(i32 %51, i32* %52, i8* %53)
  store i32 %54, i32* %10, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %63

59:                                               ; preds = %50
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %59, %56
  br label %72

64:                                               ; preds = %47
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %72

67:                                               ; preds = %47
  %68 = load i8*, i8** %12, align 8
  %69 = call i32 (i8*, i8*, ...) @warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %68)
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %67, %64, %63
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @elf_end(i32* %73)
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @close(i32 %75)
  br label %77

77:                                               ; preds = %72, %39, %29
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %11, align 4
  br label %15

80:                                               ; preds = %15
  %81 = load i32, i32* %7, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i32 -1, i32* %3, align 4
  br label %89

84:                                               ; preds = %80
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @debug(i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %85, i32 %86)
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %84, %83
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @elf_version(i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @warning(i8*, i8*, ...) #1

declare dso_local i32* @elf_begin(i32, i32, i32*) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @elf_kind(i32*) #1

declare dso_local i32 @count_archive(i32, i32*, i8*) #1

declare dso_local i32 @elf_end(i32*) #1

declare dso_local i32 @debug(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
