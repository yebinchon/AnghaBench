; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_st_bindings.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfdump/extr_elfdump.c_st_bindings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@st_bindings.s_sbind = internal global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [10 x i8] c"STB_LOCAL\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"STB_GLOBAL\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"STB_WEAK\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"STB_GNU_UNIQUE\00", align 1
@STB_LOOS = common dso_local global i32 0, align 4
@STB_HIOS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"OS\00", align 1
@STB_LOPROC = common dso_local global i32 0, align 4
@STB_HIPROC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"PROC\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"<unknown: %#x>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @st_bindings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @st_bindings(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %9 [
    i32 129, label %5
    i32 131, label %6
    i32 128, label %7
    i32 130, label %8
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %32

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %32

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %32

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %32

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @STB_LOOS, align 4
  %12 = icmp uge i32 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @STB_HIOS, align 4
  %16 = icmp ule i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %32

18:                                               ; preds = %13, %9
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @STB_LOPROC, align 4
  %21 = icmp uge i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @STB_HIPROC, align 4
  %25 = icmp ule i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %32

27:                                               ; preds = %22, %18
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @snprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @st_bindings.s_sbind, i64 0, i64 0), i32 32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %27
  br label %31

31:                                               ; preds = %30
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @st_bindings.s_sbind, i64 0, i64 0), i8** %2, align 8
  br label %32

32:                                               ; preds = %31, %26, %17, %8, %7, %6, %5
  %33 = load i8*, i8** %2, align 8
  ret i8* %33
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
