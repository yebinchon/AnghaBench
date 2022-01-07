; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_input.c_read_ctf_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_input.c_read_ctf_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"Reading %s (label %s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@EV_CURRENT = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"%s: Cannot open for reading\00", align 1
@ELF_C_READ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"Cannot read\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"%s: Unknown elf kind %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32*, i8*, i32)* @read_ctf_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_ctf_common(i8* %0, i8* %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i8*, i8** %7, align 8
  br label %20

19:                                               ; preds = %5
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i8* [ %18, %17 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %19 ]
  %22 = call i32 @debug(i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %14, i8* %21)
  %23 = load i32, i32* @EV_CURRENT, align 4
  %24 = call i32 @elf_version(i32 %23)
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* @O_RDONLY, align 4
  %27 = call i32 @open(i8* %25, i32 %26)
  store i32 %27, i32* %13, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 (i8*, i8*, ...) @terminate(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %29, %20
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @ELF_C_READ, align 4
  %35 = call i32* @elf_begin(i32 %33, i32 %34, i32* null)
  store i32* %35, i32** %11, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @elfterminate(i8* %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %32
  %41 = load i32*, i32** %11, align 8
  %42 = call i32 @elf_kind(i32* %41)
  switch i32 %42, label %60 [
    i32 129, label %43
    i32 128, label %52
  ]

43:                                               ; preds = %40
  %44 = load i32, i32* %13, align 4
  %45 = load i32*, i32** %11, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @read_archive(i32 %44, i32* %45, i8* %46, i8* %47, i32* %48, i8* %49, i32 %50)
  store i32 %51, i32* %12, align 4
  br label %65

52:                                               ; preds = %40
  %53 = load i32*, i32** %11, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @read_file(i32* %53, i8* %54, i8* %55, i32* %56, i8* %57, i32 %58)
  store i32 %59, i32* %12, align 4
  br label %65

60:                                               ; preds = %40
  %61 = load i8*, i8** %6, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = call i32 @elf_kind(i32* %62)
  %64 = call i32 (i8*, i8*, ...) @terminate(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %61, i32 %63)
  br label %65

65:                                               ; preds = %60, %52, %43
  %66 = load i32*, i32** %11, align 8
  %67 = call i32 @elf_end(i32* %66)
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @close(i32 %68)
  %70 = load i32, i32* %12, align 4
  ret i32 %70
}

declare dso_local i32 @debug(i32, i8*, i8*, i8*) #1

declare dso_local i32 @elf_version(i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @terminate(i8*, i8*, ...) #1

declare dso_local i32* @elf_begin(i32, i32, i32*) #1

declare dso_local i32 @elfterminate(i8*, i8*) #1

declare dso_local i32 @elf_kind(i32*) #1

declare dso_local i32 @read_archive(i32, i32*, i8*, i8*, i32*, i8*, i32) #1

declare dso_local i32 @read_file(i32*, i8*, i8*, i32*, i8*, i32) #1

declare dso_local i32 @elf_end(i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
