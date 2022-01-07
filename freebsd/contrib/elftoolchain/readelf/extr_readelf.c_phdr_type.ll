; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_phdr_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_phdr_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@phdr_type.s_ptype = internal global [32 x i8] zeroinitializer, align 16
@PT_LOPROC = common dso_local global i32 0, align 4
@PT_HIPROC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ARM_ARCHEXT\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"ARM_EXIDX\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"LOPROC+%#x\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"LOAD\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"DYNAMIC\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"INTERP\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"NOTE\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"SHLIB\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"PHDR\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"TLS\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"GNU_EH_FRAME\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"GNU_STACK\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"GNU_RELRO\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"OPENBSD_RANDOMIZE\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"OPENBSD_WXNEEDED\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"OPENBSD_BOOTDATA\00", align 1
@PT_LOOS = common dso_local global i32 0, align 4
@PT_HIOS = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [9 x i8] c"LOOS+%#x\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"<unknown: %#x>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32)* @phdr_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @phdr_type(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @PT_LOPROC, align 4
  %8 = icmp uge i32 %6, %7
  br i1 %8, label %9, label %25

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @PT_HIPROC, align 4
  %12 = icmp ule i32 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %20 [
    i32 144, label %15
  ]

15:                                               ; preds = %13
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %19 [
    i32 143, label %17
    i32 142, label %18
  ]

17:                                               ; preds = %15
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %58

18:                                               ; preds = %15
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %58

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %13, %19
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @PT_LOPROC, align 4
  %23 = sub i32 %21, %22
  %24 = call i32 @snprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @phdr_type.s_ptype, i64 0, i64 0), i32 32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @phdr_type.s_ptype, i64 0, i64 0), i8** %3, align 8
  br label %58

25:                                               ; preds = %9, %2
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %41 [
    i32 134, label %27
    i32 136, label %28
    i32 141, label %29
    i32 137, label %30
    i32 135, label %31
    i32 129, label %32
    i32 130, label %33
    i32 128, label %34
    i32 140, label %35
    i32 138, label %36
    i32 139, label %37
    i32 132, label %38
    i32 131, label %39
    i32 133, label %40
  ]

27:                                               ; preds = %25
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %58

28:                                               ; preds = %25
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %58

29:                                               ; preds = %25
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %58

30:                                               ; preds = %25
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %58

31:                                               ; preds = %25
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %58

32:                                               ; preds = %25
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %58

33:                                               ; preds = %25
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %58

34:                                               ; preds = %25
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %58

35:                                               ; preds = %25
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8** %3, align 8
  br label %58

36:                                               ; preds = %25
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8** %3, align 8
  br label %58

37:                                               ; preds = %25
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8** %3, align 8
  br label %58

38:                                               ; preds = %25
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i8** %3, align 8
  br label %58

39:                                               ; preds = %25
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i8** %3, align 8
  br label %58

40:                                               ; preds = %25
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i8** %3, align 8
  br label %58

41:                                               ; preds = %25
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @PT_LOOS, align 4
  %44 = icmp uge i32 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @PT_HIOS, align 4
  %48 = icmp ule i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @PT_LOOS, align 4
  %52 = sub i32 %50, %51
  %53 = call i32 @snprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @phdr_type.s_ptype, i64 0, i64 0), i32 32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32 %52)
  br label %57

54:                                               ; preds = %45, %41
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @snprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @phdr_type.s_ptype, i64 0, i64 0), i32 32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %54, %49
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @phdr_type.s_ptype, i64 0, i64 0), i8** %3, align 8
  br label %58

58:                                               ; preds = %57, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %20, %18, %17
  %59 = load i8*, i8** %3, align 8
  ret i8* %59
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
