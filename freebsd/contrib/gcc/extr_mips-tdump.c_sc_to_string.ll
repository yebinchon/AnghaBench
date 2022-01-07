; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_mips-tdump.c_sc_to_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_mips-tdump.c_sc_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"Nil\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Text\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Data\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Bss\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Register\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"Abs\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Undefined\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"CdbLocal\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"Bits\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"CdbSystem\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"RegImage\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"Info\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"UserStruct\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"SData\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"SBss\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"RData\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"Var\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"Common\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"SCommon\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"VarRegister\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"Variant\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"SUndefined\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"Init\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"Max\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @sc_to_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sc_to_string(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %29 [
    i32 141, label %5
    i32 133, label %6
    i32 145, label %7
    i32 149, label %8
    i32 138, label %9
    i32 151, label %10
    i32 132, label %11
    i32 148, label %12
    i32 150, label %13
    i32 147, label %14
    i32 139, label %15
    i32 144, label %16
    i32 131, label %17
    i32 135, label %18
    i32 137, label %19
    i32 140, label %20
    i32 130, label %21
    i32 146, label %22
    i32 136, label %23
    i32 129, label %24
    i32 128, label %25
    i32 134, label %26
    i32 143, label %27
    i32 142, label %28
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %30

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %30

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %30

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %30

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %30

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %30

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %30

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %30

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %30

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %30

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %30

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %30

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %30

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %30

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %30

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %30

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %30

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %30

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %30

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %30

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %30

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %30

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %30

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i8** %2, align 8
  br label %30

29:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i8** %2, align 8
  br label %30

30:                                               ; preds = %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %31 = load i8*, i8** %2, align 8
  ret i8* %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
