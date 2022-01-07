; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_nm.c_get_symbol_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_nm.c_get_symbol_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_symbol_type.buff = internal global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [7 x i8] c"NOTYPE\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"OBJECT\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"FUNC\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"SECTION\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"FILE\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"COMMON\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"TLS\00", align 1
@STT_LOPROC = common dso_local global i32 0, align 4
@STT_HIPROC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"<processor specific>: %d\00", align 1
@STT_LOOS = common dso_local global i32 0, align 4
@STT_HIOS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"<OS specific>: %d\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"<unknown>: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @get_symbol_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_symbol_type(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %12 [
    i32 131, label %5
    i32 130, label %6
    i32 132, label %7
    i32 129, label %8
    i32 133, label %9
    i32 134, label %10
    i32 128, label %11
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %42

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %42

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %42

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %42

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %42

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %42

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %42

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @STT_LOPROC, align 4
  %15 = icmp uge i32 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @STT_HIPROC, align 4
  %19 = icmp ule i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = call i8* @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @get_symbol_type.buff, i64 0, i64 0), i8* %21, i32 %22)
  br label %41

24:                                               ; preds = %16, %12
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @STT_LOOS, align 4
  %27 = icmp uge i32 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @STT_HIOS, align 4
  %31 = icmp ule i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @get_symbol_type.buff, i64 0, i64 0), i8* %33, i32 %34)
  br label %40

36:                                               ; preds = %28, %24
  %37 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @get_symbol_type.buff, i64 0, i64 0), i8* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %32
  br label %41

41:                                               ; preds = %40, %20
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @get_symbol_type.buff, i64 0, i64 0), i8** %2, align 8
  br label %42

42:                                               ; preds = %41, %11, %10, %9, %8, %7, %6, %5
  %43 = load i8*, i8** %2, align 8
  ret i8* %43
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
