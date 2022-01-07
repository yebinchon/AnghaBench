; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ed/extr_buf.c_open_sbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ed/extr_buf.c_open_sbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@newline_added = common dso_local global i64 0, align 8
@isbinary = common dso_local global i64 0, align 8
@sfn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"/tmp/ed.XXXXXX\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@sfp = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"cannot open temp file\00", align 1
@errmsg = common dso_local global i8* null, align 8
@ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @open_sbuf() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i64 0, i64* @newline_added, align 8
  store i64 0, i64* @isbinary, align 8
  %4 = call i32 @umask(i32 63)
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* @sfn, align 4
  %6 = call i32 @strcpy(i32 %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @sfn, align 4
  %8 = call i32 @mkstemp(i32 %7)
  store i32 %8, i32* %2, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %14, label %10

10:                                               ; preds = %0
  %11 = load i32, i32* %2, align 4
  %12 = call i32* @fdopen(i32 %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %12, i32** @sfp, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %10, %0
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @close(i32 %18)
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32, i32* @sfn, align 4
  %22 = call i32 @perror(i32 %21)
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8** @errmsg, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @umask(i32 %23)
  %25 = load i32, i32* @ERR, align 4
  store i32 %25, i32* %1, align 4
  br label %29

26:                                               ; preds = %10
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @umask(i32 %27)
  store i32 0, i32* %1, align 4
  br label %29

29:                                               ; preds = %26, %20
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

declare dso_local i32 @umask(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @mkstemp(i32) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @perror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
