; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/addr2line/extr_addr2line.c_find_section_base.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/addr2line/extr_addr2line.c_find_section_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [24 x i8] c"gelf_getehdr failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"elf_getshstrndx failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"gelf_getshdr failed: %s\00", align 1
@ET_EXEC = common dso_local global i64 0, align 8
@ET_DYN = common dso_local global i64 0, align 8
@section_base = common dso_local global i64 0, align 8
@ET_REL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"unknown e_type %u\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"elf_nextscn failed: %s\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"%s: cannot find section %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i8*)* @find_section_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_section_base(i8* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__, align 8
  %10 = alloca %struct.TYPE_6__, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call %struct.TYPE_7__* @gelf_getehdr(i32* %14, %struct.TYPE_7__* %9)
  %16 = icmp ne %struct.TYPE_7__* %15, %9
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = call i64 @elf_errmsg(i32 -1)
  %19 = call i32 @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %18)
  br label %99

20:                                               ; preds = %3
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @elf_getshstrndx(i32* %21, i64* %11)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = call i64 @elf_errmsg(i32 -1)
  %26 = call i32 @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  br label %99

27:                                               ; preds = %20
  %28 = call i32 (...) @elf_errno()
  store i64 0, i64* %7, align 8
  store i32* null, i32** %8, align 8
  br label %29

29:                                               ; preds = %81, %38, %27
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i32* @elf_nextscn(i32* %30, i32* %31)
  store i32* %32, i32** %8, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %86

34:                                               ; preds = %29
  %35 = load i32*, i32** %8, align 8
  %36 = call i32* @gelf_getshdr(i32* %35, %struct.TYPE_6__* %10)
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = call i64 @elf_errmsg(i32 -1)
  %40 = call i32 @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %39)
  br label %29

41:                                               ; preds = %34
  %42 = load i32*, i32** %5, align 8
  %43 = load i64, i64* %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i8* @elf_strptr(i32* %42, i64 %43, i32 %45)
  store i8* %46, i8** %13, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %81

49:                                               ; preds = %41
  %50 = load i8*, i8** %6, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = call i32 @strcmp(i8* %50, i8* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %80, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ET_EXEC, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @ET_DYN, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %59, %54
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* @section_base, align 8
  br label %79

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @ET_REL, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i64, i64* %7, align 8
  store i64 %73, i64* @section_base, align 8
  br label %78

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @warnx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 %76)
  br label %78

78:                                               ; preds = %74, %72
  br label %79

79:                                               ; preds = %78, %64
  br label %99

80:                                               ; preds = %49
  br label %81

81:                                               ; preds = %80, %48
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %7, align 8
  %85 = add nsw i64 %84, %83
  store i64 %85, i64* %7, align 8
  br label %29

86:                                               ; preds = %29
  %87 = call i32 (...) @elf_errno()
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load i32, i32* %12, align 4
  %92 = call i64 @elf_errmsg(i32 %91)
  %93 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i64 %92)
  br label %94

94:                                               ; preds = %90, %86
  %95 = load i32, i32* @EXIT_FAILURE, align 4
  %96 = load i8*, i8** %4, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = call i32 @errx(i32 %95, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %96, i8* %97)
  br label %99

99:                                               ; preds = %94, %79, %24, %17
  ret void
}

declare dso_local %struct.TYPE_7__* @gelf_getehdr(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @warnx(i8*, i64) #1

declare dso_local i64 @elf_errmsg(i32) #1

declare dso_local i32 @elf_getshstrndx(i32*, i64*) #1

declare dso_local i32 @elf_errno(...) #1

declare dso_local i32* @elf_nextscn(i32*, i32*) #1

declare dso_local i32* @gelf_getshdr(i32*, %struct.TYPE_6__*) #1

declare dso_local i8* @elf_strptr(i32*, i64, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
