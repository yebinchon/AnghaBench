; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_main.c_setflag.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_main.c_setflag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"-B\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"reconfigure with --enable-btyacc\00", align 1
@dflag = common dso_local global i32 0, align 4
@gflag = common dso_local global i32 0, align 4
@iflag = common dso_local global i32 0, align 4
@lflag = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"-L\00", align 1
@pure_parser = common dso_local global i32 0, align 4
@rflag = common dso_local global i32 0, align 4
@sflag = common dso_local global i32 0, align 4
@tflag = common dso_local global i32 0, align 4
@vflag = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"%s - %s\0A\00", align 1
@myname = common dso_local global i8* null, align 8
@VERSION = common dso_local global i8* null, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@backtrack = common dso_local global i32 0, align 4
@locations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @setflag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setflag(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %24 [
    i32 66, label %4
    i32 100, label %6
    i32 103, label %7
    i32 105, label %8
    i32 108, label %9
    i32 76, label %10
    i32 80, label %12
    i32 114, label %13
    i32 115, label %14
    i32 116, label %15
    i32 118, label %16
    i32 86, label %17
    i32 121, label %23
  ]

4:                                                ; preds = %1
  %5 = call i32 @unsupported_flag_warning(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %26

6:                                                ; preds = %1
  store i32 1, i32* @dflag, align 4
  br label %26

7:                                                ; preds = %1
  store i32 1, i32* @gflag, align 4
  br label %26

8:                                                ; preds = %1
  store i32 1, i32* @iflag, align 4
  br label %26

9:                                                ; preds = %1
  store i32 1, i32* @lflag, align 4
  br label %26

10:                                               ; preds = %1
  %11 = call i32 @unsupported_flag_warning(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %26

12:                                               ; preds = %1
  store i32 1, i32* @pure_parser, align 4
  br label %26

13:                                               ; preds = %1
  store i32 1, i32* @rflag, align 4
  br label %26

14:                                               ; preds = %1
  store i32 1, i32* @sflag, align 4
  br label %26

15:                                               ; preds = %1
  store i32 1, i32* @tflag, align 4
  br label %26

16:                                               ; preds = %1
  store i32 1, i32* @vflag, align 4
  br label %26

17:                                               ; preds = %1
  %18 = load i8*, i8** @myname, align 8
  %19 = load i8*, i8** @VERSION, align 8
  %20 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %18, i8* %19)
  %21 = load i32, i32* @EXIT_SUCCESS, align 4
  %22 = call i32 @exit(i32 %21) #3
  unreachable

23:                                               ; preds = %1
  br label %26

24:                                               ; preds = %1
  %25 = call i32 (...) @usage()
  br label %26

26:                                               ; preds = %24, %23, %16, %15, %14, %13, %12, %10, %9, %8, %7, %6, %4
  ret void
}

declare dso_local i32 @unsupported_flag_warning(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @usage(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
