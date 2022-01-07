; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_ta.c_curve_to_sym.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_ta.c_curve_to_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"BR_EC_sect163k1\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"BR_EC_sect163r1\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"BR_EC_sect163r2\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"BR_EC_sect193r1\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"BR_EC_sect193r2\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"BR_EC_sect233k1\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"BR_EC_sect233r1\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"BR_EC_sect239k1\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"BR_EC_sect283k1\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"BR_EC_sect283r1\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"BR_EC_sect409k1\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"BR_EC_sect409r1\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"BR_EC_sect571k1\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"BR_EC_sect571r1\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"BR_EC_secp160k1\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"BR_EC_secp160r1\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"BR_EC_secp160r2\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"BR_EC_secp192k1\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"BR_EC_secp192r1\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"BR_EC_secp224k1\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"BR_EC_secp224r1\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"BR_EC_secp256k1\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"BR_EC_secp256r1\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"BR_EC_secp384r1\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"BR_EC_secp521r1\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"BR_EC_brainpoolP256r1\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"BR_EC_brainpoolP384r1\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"BR_EC_brainpoolP512r1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @curve_to_sym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @curve_to_sym(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %33 [
    i32 141, label %5
    i32 140, label %6
    i32 139, label %7
    i32 138, label %8
    i32 137, label %9
    i32 136, label %10
    i32 135, label %11
    i32 134, label %12
    i32 133, label %13
    i32 132, label %14
    i32 131, label %15
    i32 130, label %16
    i32 129, label %17
    i32 128, label %18
    i32 152, label %19
    i32 151, label %20
    i32 150, label %21
    i32 149, label %22
    i32 148, label %23
    i32 147, label %24
    i32 146, label %25
    i32 145, label %26
    i32 144, label %27
    i32 143, label %28
    i32 142, label %29
    i32 155, label %30
    i32 154, label %31
    i32 153, label %32
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %34

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %34

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %34

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %34

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %34

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %34

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %34

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %34

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %34

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %34

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %34

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %34

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %34

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %34

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %34

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %34

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %34

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %34

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %34

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %34

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %34

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %34

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %34

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i8** %2, align 8
  br label %34

29:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0), i8** %2, align 8
  br label %34

30:                                               ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0), i8** %2, align 8
  br label %34

31:                                               ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i64 0, i64 0), i8** %2, align 8
  br label %34

32:                                               ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0), i8** %2, align 8
  br label %34

33:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %34

34:                                               ; preds = %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %35 = load i8*, i8** %2, align 8
  ret i8* %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
