; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_cmp.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_cmp.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [53 x i8] c"Usage: %s [OPTION]... FILE1 [FILE2 [SKIP1 [SKIP2]]]\0A\00", align 1
@program_name = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%s\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Compare two files byte by byte.\00", align 1
@option_help_msgid = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"\0A%s\0A%s\0A\0A%s\0A%s\0A\0A%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"SKIP1 and SKIP2 are the number of bytes to skip in each file.\00", align 1
@.str.6 = private unnamed_addr constant [178 x i8] c"SKIP values may be followed by the following multiplicative suffixes:\0AkB 1000, K 1024, MB 1,000,000, M 1,048,576,\0AGB 1,000,000,000, G 1,073,741,824, and so on for T, P, E, Z, Y.\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"If a FILE is `-' or missing, read standard input.\00", align 1
@.str.8 = private unnamed_addr constant [71 x i8] c"Exit status is 0 if inputs are the same, 1 if different, 2 if trouble.\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"Report bugs to <bug-gnu-utils@gnu.org>.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = alloca i8**, align 8
  %2 = call i8* @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %3 = load i8*, i8** @program_name, align 8
  %4 = call i32 (i8*, i8*, ...) @printf(i8* %2, i8* %3)
  %5 = call i8* @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %6 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %5)
  %7 = load i8**, i8*** @option_help_msgid, align 8
  store i8** %7, i8*** %1, align 8
  br label %8

8:                                                ; preds = %17, %0
  %9 = load i8**, i8*** %1, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = load i8**, i8*** %1, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = call i8* @_(i8* %14)
  %16 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %15)
  br label %17

17:                                               ; preds = %12
  %18 = load i8**, i8*** %1, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i32 1
  store i8** %19, i8*** %1, align 8
  br label %8

20:                                               ; preds = %8
  %21 = call i8* @_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0))
  %22 = call i8* @_(i8* getelementptr inbounds ([178 x i8], [178 x i8]* @.str.6, i64 0, i64 0))
  %23 = call i8* @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0))
  %24 = call i8* @_(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.8, i64 0, i64 0))
  %25 = call i8* @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  %26 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %21, i8* %22, i8* %23, i8* %24, i8* %25)
  ret void
}

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
