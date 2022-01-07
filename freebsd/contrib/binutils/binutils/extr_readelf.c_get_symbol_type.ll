; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_get_symbol_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_get_symbol_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@get_symbol_type.buff = internal global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [7 x i8] c"NOTYPE\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"OBJECT\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"FUNC\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"SECTION\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"FILE\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"COMMON\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"TLS\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"RELC\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"SRELC\00", align 1
@STT_LOPROC = common dso_local global i32 0, align 4
@STT_HIPROC = common dso_local global i32 0, align 4
@elf_header = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@EM_ARM = common dso_local global i32 0, align 4
@STT_ARM_TFUNC = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"THUMB_FUNC\00", align 1
@EM_SPARCV9 = common dso_local global i32 0, align 4
@STT_REGISTER = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"REGISTER\00", align 1
@EM_PARISC = common dso_local global i32 0, align 4
@STT_PARISC_MILLI = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"PARISC_MILLI\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"<processor specific>: %d\00", align 1
@STT_LOOS = common dso_local global i32 0, align 4
@STT_HIOS = common dso_local global i32 0, align 4
@STT_HP_OPAQUE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [10 x i8] c"HP_OPAQUE\00", align 1
@STT_HP_STUB = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"HP_STUB\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"<OS specific>: %d\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"<unknown>: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @get_symbol_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_symbol_type(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %14 [
    i32 133, label %5
    i32 132, label %6
    i32 134, label %7
    i32 130, label %8
    i32 135, label %9
    i32 136, label %10
    i32 128, label %11
    i32 131, label %12
    i32 129, label %13
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %86

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %86

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %86

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %86

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %86

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %86

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %86

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %86

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %86

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @STT_LOPROC, align 4
  %17 = icmp uge i32 %15, %16
  br i1 %17, label %18, label %53

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @STT_HIPROC, align 4
  %21 = icmp ule i32 %19, %20
  br i1 %21, label %22, label %53

22:                                               ; preds = %18
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @elf_header, i32 0, i32 0), align 4
  %24 = load i32, i32* @EM_ARM, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @STT_ARM_TFUNC, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %86

31:                                               ; preds = %26, %22
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @elf_header, i32 0, i32 0), align 4
  %33 = load i32, i32* @EM_SPARCV9, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @STT_REGISTER, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %86

40:                                               ; preds = %35, %31
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @elf_header, i32 0, i32 0), align 4
  %42 = load i32, i32* @EM_PARISC, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @STT_PARISC_MILLI, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %86

49:                                               ; preds = %44, %40
  %50 = call i8* @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @snprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @get_symbol_type.buff, i64 0, i64 0), i32 32, i8* %50, i32 %51)
  br label %85

53:                                               ; preds = %18, %14
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @STT_LOOS, align 4
  %56 = icmp uge i32 %54, %55
  br i1 %56, label %57, label %80

57:                                               ; preds = %53
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @STT_HIOS, align 4
  %60 = icmp ule i32 %58, %59
  br i1 %60, label %61, label %80

61:                                               ; preds = %57
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @elf_header, i32 0, i32 0), align 4
  %63 = load i32, i32* @EM_PARISC, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %61
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @STT_HP_OPAQUE, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %86

70:                                               ; preds = %65
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @STT_HP_STUB, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %86

75:                                               ; preds = %70
  br label %76

76:                                               ; preds = %75, %61
  %77 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @snprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @get_symbol_type.buff, i64 0, i64 0), i32 32, i8* %77, i32 %78)
  br label %84

80:                                               ; preds = %57, %53
  %81 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0))
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @snprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @get_symbol_type.buff, i64 0, i64 0), i32 32, i8* %81, i32 %82)
  br label %84

84:                                               ; preds = %80, %76
  br label %85

85:                                               ; preds = %84, %49
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @get_symbol_type.buff, i64 0, i64 0), i8** %2, align 8
  br label %86

86:                                               ; preds = %85, %74, %69, %48, %39, %30, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %87 = load i8*, i8** %2, align 8
  ret i8* %87
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
