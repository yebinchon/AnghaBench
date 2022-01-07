; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_main.c_dotcmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_main.c_dotcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"missing filename\00", align 1
@exitstatus = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@commandname = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dotcmd(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call i32 @error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %2
  store i32 0, i32* @exitstatus, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp sgt i32 %12, 2
  br i1 %13, label %14, label %24

14:                                               ; preds = %11
  %15 = load i8**, i8*** %4, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i8**, i8*** %4, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 2
  %23 = load i8*, i8** %22, align 8
  br label %28

24:                                               ; preds = %14, %11
  %25 = load i8**, i8*** %4, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i8* [ %23, %20 ], [ %27, %24 ]
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i8* @find_dot_file(i8* %30)
  store i8* %31, i8** %6, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @setinputfile(i8* %32, i32 1)
  %34 = load i8*, i8** %6, align 8
  store i8* %34, i8** @commandname, align 8
  %35 = call i32 @cmdloop(i32 0)
  %36 = call i32 (...) @popfile()
  %37 = load i32, i32* @exitstatus, align 4
  ret i32 %37
}

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @find_dot_file(i8*) #1

declare dso_local i32 @setinputfile(i8*, i32) #1

declare dso_local i32 @cmdloop(i32) #1

declare dso_local i32 @popfile(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
