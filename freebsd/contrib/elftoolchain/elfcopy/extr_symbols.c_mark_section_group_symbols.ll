; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_symbols.c_mark_section_group_symbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_symbols.c_mark_section_group_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfcopy = type { i32*, i32 }
%struct.TYPE_4__ = type { i64, i64, i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"calloc failed\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"elf_getshstrndx failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"elf_getshdr failed: %s\00", align 1
@SHT_GROUP = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"elf_strptr failed: %s\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"invalid symbox index\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"elf_nextscn failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elfcopy*, i64)* @mark_section_group_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_section_group_symbols(%struct.elfcopy* %0, i64 %1) #0 {
  %3 = alloca %struct.elfcopy*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.elfcopy* %0, %struct.elfcopy** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = add i64 %10, 7
  %12 = udiv i64 %11, 8
  %13 = call i32* @calloc(i64 %12, i32 1)
  %14 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %15 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %14, i32 0, i32 0
  store i32* %13, i32** %15, align 8
  %16 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %17 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EXIT_FAILURE, align 4
  %22 = call i32 @err(i32 %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %2
  %24 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %25 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @elf_getshstrndx(i32 %26, i64* %8)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32, i32* @EXIT_FAILURE, align 4
  %31 = call i32 @elf_errmsg(i32 -1)
  %32 = call i32 @errx(i32 %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %29, %23
  store i32* null, i32** %6, align 8
  br label %34

34:                                               ; preds = %97, %73, %54, %33
  %35 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %36 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call i32* @elf_nextscn(i32 %37, i32* %38)
  store i32* %39, i32** %6, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %98

41:                                               ; preds = %34
  %42 = load i32*, i32** %6, align 8
  %43 = call %struct.TYPE_4__* @gelf_getshdr(i32* %42, %struct.TYPE_4__* %7)
  %44 = icmp ne %struct.TYPE_4__* %43, %7
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32, i32* @EXIT_FAILURE, align 4
  %47 = call i32 @elf_errmsg(i32 -1)
  %48 = call i32 @errx(i32 %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %45, %41
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SHT_GROUP, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %34

55:                                               ; preds = %49
  %56 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %57 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i8* @elf_strptr(i32 %58, i64 %59, i32 %61)
  store i8* %62, i8** %5, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %55
  %65 = load i32, i32* @EXIT_FAILURE, align 4
  %66 = call i32 @elf_errmsg(i32 -1)
  %67 = call i32 @errx(i32 %65, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %64, %55
  %69 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = call i64 @is_remove_section(%struct.elfcopy* %69, i8* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %34

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ugt i64 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %4, align 8
  %82 = icmp ult i64 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %85 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @BIT_SET(i32* %86, i64 %88)
  br label %97

90:                                               ; preds = %78, %74
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = call i32 @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %90
  br label %97

97:                                               ; preds = %96, %83
  br label %34

98:                                               ; preds = %34
  %99 = call i32 (...) @elf_errno()
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load i32, i32* @EXIT_FAILURE, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @elf_errmsg(i32 %104)
  %106 = call i32 @errx(i32 %103, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %102, %98
  ret void
}

declare dso_local i32* @calloc(i64, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @elf_getshstrndx(i32, i64*) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32* @elf_nextscn(i32, i32*) #1

declare dso_local %struct.TYPE_4__* @gelf_getshdr(i32*, %struct.TYPE_4__*) #1

declare dso_local i8* @elf_strptr(i32, i64, i32) #1

declare dso_local i64 @is_remove_section(%struct.elfcopy*, i8*) #1

declare dso_local i32 @BIT_SET(i32*, i64) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @elf_errno(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
