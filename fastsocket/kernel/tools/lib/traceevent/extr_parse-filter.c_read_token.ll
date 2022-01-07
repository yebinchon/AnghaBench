; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_read_token.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_read_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVENT_NEWLINE = common dso_local global i32 0, align 4
@EVENT_SPACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%c%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @read_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_token(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i8** %0, i8*** %2, align 8
  store i8* null, i8** %4, align 8
  br label %5

5:                                                ; preds = %17, %1
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @free_token(i8* %6)
  %8 = call i32 @pevent_read_token(i8** %4)
  store i32 %8, i32* %3, align 4
  br label %9

9:                                                ; preds = %5
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @EVENT_NEWLINE, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @EVENT_SPACE, align 4
  %16 = icmp eq i32 %14, %15
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi i1 [ true, %9 ], [ %16, %13 ]
  br i1 %18, label %5, label %19

19:                                               ; preds = %17
  %20 = load i8*, i8** %4, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %47

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %26, %22
  %31 = call signext i8 (...) @pevent_peek_char()
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 126
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = call i8* @malloc_or_die(i32 3)
  %36 = load i8**, i8*** %2, align 8
  store i8* %35, i8** %36, align 8
  %37 = load i8**, i8*** %2, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = load i8, i8* %39, align 1
  %41 = call i32 @sprintf(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8 signext %40, i8 signext 126)
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @free_token(i8* %42)
  %44 = call i32 @pevent_read_token(i8** %4)
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @free_token(i8* %45)
  br label %50

47:                                               ; preds = %30, %26, %19
  %48 = load i8*, i8** %4, align 8
  %49 = load i8**, i8*** %2, align 8
  store i8* %48, i8** %49, align 8
  br label %50

50:                                               ; preds = %47, %34
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @free_token(i8*) #1

declare dso_local i32 @pevent_read_token(i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local signext i8 @pevent_peek_char(...) #1

declare dso_local i8* @malloc_or_die(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
