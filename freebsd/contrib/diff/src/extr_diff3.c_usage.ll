; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_diff3.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_diff3.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [47 x i8] c"Usage: %s [OPTION]... MYFILE OLDFILE YOURFILE\0A\00", align 1
@program_name = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%s\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Compare three files line by line.\00", align 1
@option_help_msgid = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"\0A%s\0A%s\0A\0A%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"If a FILE is `-', read standard input.\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"Exit status is 0 if successful, 1 if conflicts, 2 if trouble.\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Report bugs to <bug-gnu-utils@gnu.org>.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = alloca i8**, align 8
  %2 = call i8* @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %3 = load i8*, i8** @program_name, align 8
  %4 = call i32 (i8*, i8*, ...) @printf(i8* %2, i8* %3)
  %5 = call i8* @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %6 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %5)
  %7 = load i8**, i8*** @option_help_msgid, align 8
  store i8** %7, i8*** %1, align 8
  br label %8

8:                                                ; preds = %25, %0
  %9 = load i8**, i8*** %1, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %8
  %13 = load i8**, i8*** %1, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load i8**, i8*** %1, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = call i8* @_(i8* %19)
  %21 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %20)
  br label %24

22:                                               ; preds = %12
  %23 = call i32 @putchar(i8 signext 10)
  br label %24

24:                                               ; preds = %22, %17
  br label %25

25:                                               ; preds = %24
  %26 = load i8**, i8*** %1, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i32 1
  store i8** %27, i8*** %1, align 8
  br label %8

28:                                               ; preds = %8
  %29 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %30 = call i8* @_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0))
  %31 = call i8* @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  %32 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %29, i8* %30, i8* %31)
  ret void
}

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
