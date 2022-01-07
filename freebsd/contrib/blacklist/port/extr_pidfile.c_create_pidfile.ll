; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/blacklist/port/extr_pidfile.c_create_pidfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/blacklist/port/extr_pidfile.c_create_pidfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pidfile_path = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@pidfile_pid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @create_pidfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_pidfile(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %5 = call i32 (...) @register_atexit_handler()
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %33

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @cleanup_old_pidfile(i8* %9)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %33

13:                                               ; preds = %8
  %14 = load i8*, i8** %3, align 8
  %15 = call i32* @strdup(i8* %14)
  store i32* %15, i32** @pidfile_path, align 8
  %16 = load i32*, i32** @pidfile_path, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 -1, i32* %2, align 4
  br label %33

19:                                               ; preds = %13
  %20 = load i8*, i8** %3, align 8
  %21 = call i32* @fopen(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %21, i32** %4, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32*, i32** @pidfile_path, align 8
  %25 = call i32 @free(i32* %24)
  store i32* null, i32** @pidfile_path, align 8
  store i32 -1, i32* %2, align 4
  br label %33

26:                                               ; preds = %19
  %27 = call i32 (...) @getpid()
  store i32 %27, i32* @pidfile_pid, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* @pidfile_pid, align 4
  %30 = call i32 @fprintf(i32* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @fclose(i32* %31)
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %26, %23, %18, %12, %7
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @register_atexit_handler(...) #1

declare dso_local i64 @cleanup_old_pidfile(i8*) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @fprintf(i32*, i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
