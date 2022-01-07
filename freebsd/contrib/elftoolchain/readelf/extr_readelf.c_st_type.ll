; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_st_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_st_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@st_type.s_stype = internal global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [7 x i8] c"NOTYPE\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"OBJECT\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"FUNC\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"SECTION\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"FILE\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"COMMON\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"TLS\00", align 1
@STT_LOOS = common dso_local global i32 0, align 4
@STT_HIOS = common dso_local global i32 0, align 4
@ELFOSABI_GNU = common dso_local global i32 0, align 4
@ELFOSABI_FREEBSD = common dso_local global i32 0, align 4
@STT_GNU_IFUNC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"IFUNC\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"OS+%#x\00", align 1
@STT_LOPROC = common dso_local global i32 0, align 4
@STT_HIPROC = common dso_local global i32 0, align 4
@EM_SPARCV9 = common dso_local global i32 0, align 4
@STT_SPARC_REGISTER = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"REGISTER\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"PROC+%#x\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"<unknown: %#x>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32, i32)* @st_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @st_type(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %16 [
    i32 131, label %9
    i32 130, label %10
    i32 132, label %11
    i32 129, label %12
    i32 133, label %13
    i32 134, label %14
    i32 128, label %15
  ]

9:                                                ; preds = %3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %69

10:                                               ; preds = %3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %69

11:                                               ; preds = %3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %69

12:                                               ; preds = %3
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %69

13:                                               ; preds = %3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  br label %69

14:                                               ; preds = %3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  br label %69

15:                                               ; preds = %3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %4, align 8
  br label %69

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @STT_LOOS, align 4
  %19 = icmp uge i32 %17, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @STT_HIOS, align 4
  %23 = icmp ule i32 %21, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @ELFOSABI_GNU, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @ELFOSABI_FREEBSD, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28, %24
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @STT_GNU_IFUNC, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %4, align 8
  br label %69

37:                                               ; preds = %32, %28
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @STT_LOOS, align 4
  %40 = sub i32 %38, %39
  %41 = call i32 @snprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @st_type.s_stype, i64 0, i64 0), i32 32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %40)
  br label %68

42:                                               ; preds = %20, %16
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @STT_LOPROC, align 4
  %45 = icmp uge i32 %43, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %42
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @STT_HIPROC, align 4
  %49 = icmp ule i32 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %46
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @EM_SPARCV9, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @STT_SPARC_REGISTER, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8** %4, align 8
  br label %69

59:                                               ; preds = %54, %50
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @STT_LOPROC, align 4
  %62 = sub i32 %60, %61
  %63 = call i32 @snprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @st_type.s_stype, i64 0, i64 0), i32 32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %62)
  br label %67

64:                                               ; preds = %46, %42
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @snprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @st_type.s_stype, i64 0, i64 0), i32 32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %64, %59
  br label %68

68:                                               ; preds = %67, %37
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @st_type.s_stype, i64 0, i64 0), i8** %4, align 8
  br label %69

69:                                               ; preds = %68, %58, %36, %15, %14, %13, %12, %11, %10, %9
  %70 = load i8*, i8** %4, align 8
  ret i8* %70
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
