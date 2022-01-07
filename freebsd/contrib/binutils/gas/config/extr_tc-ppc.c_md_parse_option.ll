; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-ppc.c_md_parse_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-ppc.c_md_parse_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"64\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%s unsupported\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"-a64\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"32\00", align 1
@ppc_obj64 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"regnames\00", align 1
@TRUE = common dso_local global i8* null, align 8
@reg_names_p = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"no-regnames\00", align 1
@FALSE = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"invalid switch -m%s\00", align 1
@EF_PPC_EMB = common dso_local global i32 0, align 4
@EF_PPC_RELOCATABLE = common dso_local global i32 0, align 4
@EF_PPC_RELOCATABLE_LIB = common dso_local global i32 0, align 4
@SHLIB_MRELOCATABLE = common dso_local global i32 0, align 4
@SHLIB_PIC = common dso_local global i32 0, align 4
@msolaris = common dso_local global i8* null, align 8
@ppc_comment_chars = common dso_local global i32 0, align 4
@ppc_eabi_comment_chars = common dso_local global i32 0, align 4
@ppc_flags = common dso_local global i32 0, align 4
@ppc_solaris_comment_chars = common dso_local global i32 0, align 4
@set_target_endian = common dso_local global i32 0, align 4
@shlib = common dso_local global i32 0, align 4
@target_big_endian = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @md_parse_option(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %47 [
    i32 117, label %7
    i32 97, label %8
    i32 109, label %23
  ]

7:                                                ; preds = %2
  br label %48

8:                                                ; preds = %2
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @as_fatal(i32 %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %22

15:                                               ; preds = %8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* @ppc_obj64, align 4
  br label %21

20:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %49

21:                                               ; preds = %19
  br label %22

22:                                               ; preds = %21, %12
  br label %48

23:                                               ; preds = %2
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @parse_cpu(i8* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %46

28:                                               ; preds = %23
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i8*, i8** @TRUE, align 8
  store i8* %33, i8** @reg_names_p, align 8
  br label %45

34:                                               ; preds = %28
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i8*, i8** @FALSE, align 8
  store i8* %39, i8** @reg_names_p, align 8
  br label %44

40:                                               ; preds = %34
  %41 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @as_bad(i32 %41, i8* %42)
  store i32 0, i32* %3, align 4
  br label %49

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %32
  br label %46

46:                                               ; preds = %45, %27
  br label %48

47:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

48:                                               ; preds = %46, %22, %7
  store i32 1, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %47, %40, %20
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @as_fatal(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @parse_cpu(i8*) #1

declare dso_local i32 @as_bad(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
