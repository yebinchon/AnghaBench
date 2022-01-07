; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_mips_target_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_mips_target_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OUTPUT_FLAVOR = common dso_local global i32 0, align 4
@target_big_endian = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"ecoff-bigmips\00", align 1
@ECOFF_LITTLE_FORMAT = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"pe-mips\00", align 1
@HAVE_64BIT_OBJECTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"elf64-bigmips\00", align 1
@HAVE_NEWABI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"elf32-nbigmips\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"elf32-bigmips\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"elf64-littlemips\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"elf32-nlittlemips\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"elf32-littlemips\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mips_target_format() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* @OUTPUT_FLAVOR, align 4
  switch i32 %2, label %39 [
    i32 129, label %3
    i32 130, label %11
    i32 128, label %12
  ]

3:                                                ; preds = %0
  %4 = load i32, i32* @target_big_endian, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  br label %9

7:                                                ; preds = %3
  %8 = load i8*, i8** @ECOFF_LITTLE_FORMAT, align 8
  br label %9

9:                                                ; preds = %7, %6
  %10 = phi i8* [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %6 ], [ %8, %7 ]
  store i8* %10, i8** %1, align 8
  br label %41

11:                                               ; preds = %0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  br label %41

12:                                               ; preds = %0
  %13 = load i32, i32* @target_big_endian, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %12
  %16 = load i32, i32* @HAVE_64BIT_OBJECTS, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %24

19:                                               ; preds = %15
  %20 = load i32, i32* @HAVE_NEWABI, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0)
  br label %24

24:                                               ; preds = %19, %18
  %25 = phi i8* [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), %18 ], [ %23, %19 ]
  br label %37

26:                                               ; preds = %12
  %27 = load i32, i32* @HAVE_64BIT_OBJECTS, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %35

30:                                               ; preds = %26
  %31 = load i32, i32* @HAVE_NEWABI, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0)
  br label %35

35:                                               ; preds = %30, %29
  %36 = phi i8* [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), %29 ], [ %34, %30 ]
  br label %37

37:                                               ; preds = %35, %24
  %38 = phi i8* [ %25, %24 ], [ %36, %35 ]
  store i8* %38, i8** %1, align 8
  br label %41

39:                                               ; preds = %0
  %40 = call i32 (...) @abort() #2
  unreachable

41:                                               ; preds = %37, %11, %9
  %42 = load i8*, i8** %1, align 8
  ret i8* %42
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
