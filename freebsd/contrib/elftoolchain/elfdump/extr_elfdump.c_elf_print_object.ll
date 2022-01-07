; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_elf_print_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_elf_print_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfdump = type { i8*, i8*, i32, i32* }

@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"open %s failed\00", align 1
@ELF_C_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"elf_begin() failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Not an ELF file.\00", align 1
@PRINT_FILENAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"\0A%s:\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Internal: libelf returned unknown elf kind.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elfdump*)* @elf_print_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elf_print_object(%struct.elfdump* %0) #0 {
  %2 = alloca %struct.elfdump*, align 8
  %3 = alloca i32, align 4
  store %struct.elfdump* %0, %struct.elfdump** %2, align 8
  %4 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %5 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = load i32, i32* @O_RDONLY, align 4
  %8 = call i32 @open(i8* %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %12 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @warn(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %13)
  br label %63

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @ELF_C_READ, align 4
  %18 = call i32* @elf_begin(i32 %16, i32 %17, i32* null)
  %19 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %20 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %19, i32 0, i32 3
  store i32* %18, i32** %20, align 8
  %21 = icmp eq i32* %18, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = call i32 @elf_errmsg(i32 -1)
  %24 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  br label %63

25:                                               ; preds = %15
  %26 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %27 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @elf_kind(i32* %28)
  switch i32 %29, label %56 [
    i32 128, label %30
    i32 129, label %32
    i32 130, label %47
  ]

30:                                               ; preds = %25
  %31 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %63

32:                                               ; preds = %25
  %33 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %34 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @PRINT_FILENAME, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %41 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %39, %32
  %45 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %46 = call i32 @elf_print_elf(%struct.elfdump* %45)
  br label %58

47:                                               ; preds = %25
  %48 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %49 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %52 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @elf_print_ar(%struct.elfdump* %53, i32 %54)
  br label %58

56:                                               ; preds = %25
  %57 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %63

58:                                               ; preds = %47, %44
  %59 = load %struct.elfdump*, %struct.elfdump** %2, align 8
  %60 = getelementptr inbounds %struct.elfdump, %struct.elfdump* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @elf_end(i32* %61)
  br label %63

63:                                               ; preds = %58, %56, %30, %22, %10
  ret void
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32* @elf_begin(i32, i32, i32*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32 @elf_kind(i32*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @elf_print_elf(%struct.elfdump*) #1

declare dso_local i32 @elf_print_ar(%struct.elfdump*, i32) #1

declare dso_local i32 @elf_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
