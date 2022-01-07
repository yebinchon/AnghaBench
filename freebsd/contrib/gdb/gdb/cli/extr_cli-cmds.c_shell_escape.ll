; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-cmds.c_shell_escape.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-cmds.c_shell_escape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@gdb_stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Cannot execute %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"Fork failed\00", align 1
@current_directory = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @shell_escape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shell_escape(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = call i32 @vfork() #4
  store i32 %10, i32* %7, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %47

12:                                               ; preds = %2
  %13 = call i64 @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %9, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %17

17:                                               ; preds = %16, %12
  %18 = load i8*, i8** %9, align 8
  %19 = call i8* @strrchr(i8* %18, i8 signext 47)
  store i8* %19, i8** %8, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i8*, i8** %9, align 8
  store i8* %22, i8** %8, align 8
  br label %26

23:                                               ; preds = %17
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %8, align 8
  br label %26

26:                                               ; preds = %23, %21
  %27 = load i8*, i8** %3, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = load i8*, i8** %9, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 (i8*, i8*, i8*, ...) @execl(i8* %30, i8* %31, i8* null)
  br label %38

33:                                               ; preds = %26
  %34 = load i8*, i8** %9, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 (i8*, i8*, i8*, ...) @execl(i8* %34, i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %36, i8* null)
  br label %38

38:                                               ; preds = %33, %29
  %39 = load i32, i32* @gdb_stderr, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* @errno, align 4
  %42 = call i32 @safe_strerror(i32 %41)
  %43 = call i32 @fprintf_unfiltered(i32 %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %40, i32 %42)
  %44 = load i32, i32* @gdb_stderr, align 4
  %45 = call i32 @gdb_flush(i32 %44)
  %46 = call i32 @_exit(i32 127) #5
  unreachable

47:                                               ; preds = %2
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, -1
  br i1 %49, label %50, label %62

50:                                               ; preds = %47
  br label %51

51:                                               ; preds = %60, %50
  %52 = call i32 @wait(i32* %6)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, -1
  br label %58

58:                                               ; preds = %55, %51
  %59 = phi i1 [ false, %51 ], [ %57, %55 ]
  br i1 %59, label %60, label %61

60:                                               ; preds = %58
  br label %51

61:                                               ; preds = %58
  br label %64

62:                                               ; preds = %47
  %63 = call i32 @error(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %61
  ret void
}

; Function Attrs: returns_twice
declare dso_local i32 @vfork() #1

declare dso_local i64 @getenv(i8*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @execl(i8*, i8*, i8*, ...) #2

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i8*, i32) #2

declare dso_local i32 @safe_strerror(i32) #2

declare dso_local i32 @gdb_flush(i32) #2

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #3

declare dso_local i32 @wait(i32*) #2

declare dso_local i32 @error(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { returns_twice }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
