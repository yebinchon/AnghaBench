; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_sun2amd.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_sun2amd.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdin = common dso_local global i32* null, align 8
@stdout = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"i:o:hH\00", align 1
@optarg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32*, i32** @stdin, align 8
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** @stdout, align 8
  store i32* %11, i32** %7, align 8
  store i32 1, i32* %9, align 4
  br label %12

12:                                               ; preds = %33, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @getopt(i32 %13, i8** %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %8, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %34

17:                                               ; preds = %12
  %18 = load i32, i32* %8, align 4
  switch i32 %18, label %33 [
    i32 105, label %19
    i32 111, label %25
    i32 104, label %31
    i32 72, label %31
  ]

19:                                               ; preds = %17
  %20 = load i32, i32* @optarg, align 4
  %21 = call i32* @sun2amd_open(i32 %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %21, i32** %6, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %38

24:                                               ; preds = %19
  br label %33

25:                                               ; preds = %17
  %26 = load i32, i32* @optarg, align 4
  %27 = call i32* @sun2amd_open(i32 %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %27, i32** %7, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %38

30:                                               ; preds = %25
  br label %33

31:                                               ; preds = %17, %17
  %32 = call i32 (...) @sun2amd_usage()
  br label %38

33:                                               ; preds = %17, %30, %24
  br label %12

34:                                               ; preds = %12
  %35 = load i32*, i32** %6, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @sun2amd_convert(i32* %35, i32* %36)
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %34, %31, %29, %23
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @exit(i32 %39) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32* @sun2amd_open(i32, i8*) #1

declare dso_local i32 @sun2amd_usage(...) #1

declare dso_local i32 @sun2amd_convert(i32*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
