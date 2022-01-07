; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_get_segment_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_get_segment_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@get_segment_type.buff = internal global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"LOAD\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"DYNAMIC\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"INTERP\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"NOTE\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"SHLIB\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"PHDR\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"TLS\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"GNU_EH_FRAME\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"GNU_STACK\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"GNU_RELRO\00", align 1
@PT_LOPROC = common dso_local global i64 0, align 8
@PT_HIPROC = common dso_local global i64 0, align 8
@elf_header = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"LOPROC+%lx\00", align 1
@PT_LOOS = common dso_local global i64 0, align 8
@PT_HIOS = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [9 x i8] c"LOOS+%lx\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"<unknown>: %lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @get_segment_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_segment_type(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  switch i64 %6, label %18 [
    i64 131, label %7
    i64 133, label %8
    i64 138, label %9
    i64 134, label %10
    i64 132, label %11
    i64 129, label %12
    i64 130, label %13
    i64 128, label %14
    i64 137, label %15
    i64 135, label %16
    i64 136, label %17
  ]

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %86

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %86

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %86

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %86

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %86

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %86

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %86

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %86

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %86

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %86

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %86

18:                                               ; preds = %1
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @PT_LOPROC, align 8
  %21 = icmp uge i64 %19, %20
  br i1 %21, label %22, label %52

22:                                               ; preds = %18
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @PT_HIPROC, align 8
  %25 = icmp ule i64 %23, %24
  br i1 %25, label %26, label %52

26:                                               ; preds = %22
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @elf_header, i32 0, i32 0), align 4
  switch i32 %27, label %40 [
    i32 143, label %28
    i32 141, label %31
    i32 140, label %31
    i32 139, label %34
    i32 142, label %37
  ]

28:                                               ; preds = %26
  %29 = load i64, i64* %3, align 8
  %30 = call i8* @get_arm_segment_type(i64 %29)
  store i8* %30, i8** %4, align 8
  br label %41

31:                                               ; preds = %26, %26
  %32 = load i64, i64* %3, align 8
  %33 = call i8* @get_mips_segment_type(i64 %32)
  store i8* %33, i8** %4, align 8
  br label %41

34:                                               ; preds = %26
  %35 = load i64, i64* %3, align 8
  %36 = call i8* @get_parisc_segment_type(i64 %35)
  store i8* %36, i8** %4, align 8
  br label %41

37:                                               ; preds = %26
  %38 = load i64, i64* %3, align 8
  %39 = call i8* @get_ia64_segment_type(i64 %38)
  store i8* %39, i8** %4, align 8
  br label %41

40:                                               ; preds = %26
  store i8* null, i8** %4, align 8
  br label %41

41:                                               ; preds = %40, %37, %34, %31, %28
  %42 = load i8*, i8** %4, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i8*, i8** %4, align 8
  store i8* %45, i8** %2, align 8
  br label %86

46:                                               ; preds = %41
  %47 = load i64, i64* %3, align 8
  %48 = load i64, i64* @PT_LOPROC, align 8
  %49 = sub i64 %47, %48
  %50 = trunc i64 %49 to i32
  %51 = call i32 @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @get_segment_type.buff, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 %50)
  br label %85

52:                                               ; preds = %22, %18
  %53 = load i64, i64* %3, align 8
  %54 = load i64, i64* @PT_LOOS, align 8
  %55 = icmp uge i64 %53, %54
  br i1 %55, label %56, label %80

56:                                               ; preds = %52
  %57 = load i64, i64* %3, align 8
  %58 = load i64, i64* @PT_HIOS, align 8
  %59 = icmp ule i64 %57, %58
  br i1 %59, label %60, label %80

60:                                               ; preds = %56
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @elf_header, i32 0, i32 0), align 4
  switch i32 %61, label %68 [
    i32 139, label %62
    i32 142, label %65
  ]

62:                                               ; preds = %60
  %63 = load i64, i64* %3, align 8
  %64 = call i8* @get_parisc_segment_type(i64 %63)
  store i8* %64, i8** %5, align 8
  br label %69

65:                                               ; preds = %60
  %66 = load i64, i64* %3, align 8
  %67 = call i8* @get_ia64_segment_type(i64 %66)
  store i8* %67, i8** %5, align 8
  br label %69

68:                                               ; preds = %60
  store i8* null, i8** %5, align 8
  br label %69

69:                                               ; preds = %68, %65, %62
  %70 = load i8*, i8** %5, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i8*, i8** %5, align 8
  store i8* %73, i8** %2, align 8
  br label %86

74:                                               ; preds = %69
  %75 = load i64, i64* %3, align 8
  %76 = load i64, i64* @PT_LOOS, align 8
  %77 = sub i64 %75, %76
  %78 = trunc i64 %77 to i32
  %79 = call i32 @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @get_segment_type.buff, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 %78)
  br label %84

80:                                               ; preds = %56, %52
  %81 = call i8* @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  %82 = load i64, i64* %3, align 8
  %83 = call i32 @snprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @get_segment_type.buff, i64 0, i64 0), i32 32, i8* %81, i64 %82)
  br label %84

84:                                               ; preds = %80, %74
  br label %85

85:                                               ; preds = %84, %46
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @get_segment_type.buff, i64 0, i64 0), i8** %2, align 8
  br label %86

86:                                               ; preds = %85, %72, %44, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7
  %87 = load i8*, i8** %2, align 8
  ret i8* %87
}

declare dso_local i8* @get_arm_segment_type(i64) #1

declare dso_local i8* @get_mips_segment_type(i64) #1

declare dso_local i8* @get_parisc_segment_type(i64) #1

declare dso_local i8* @get_ia64_segment_type(i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
