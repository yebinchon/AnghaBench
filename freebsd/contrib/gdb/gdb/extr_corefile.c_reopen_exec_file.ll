; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_corefile.c_reopen_exec_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_corefile.c_reopen_exec_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@exec_bfd = common dso_local global i32* null, align 8
@target_shortname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@xfree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reopen_exec_file() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.stat, align 8
  %4 = alloca i64, align 8
  %5 = load i32*, i32** @exec_bfd, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @target_shortname, align 4
  %9 = call i64 @strcmp(i32 %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %0
  br label %33

12:                                               ; preds = %7
  %13 = load i32*, i32** @exec_bfd, align 8
  %14 = call i32 @bfd_get_filename(i32* %13)
  %15 = call i8* @xstrdup(i32 %14)
  store i8* %15, i8** %1, align 8
  %16 = load i32, i32* @xfree, align 4
  %17 = load i8*, i8** %1, align 8
  %18 = call i32 @make_cleanup(i32 %16, i8* %17)
  %19 = load i32*, i32** @exec_bfd, align 8
  %20 = call i64 @bfd_get_mtime(i32* %19)
  store i64 %20, i64* %4, align 8
  %21 = load i8*, i8** %1, align 8
  %22 = call i32 @stat(i8* %21, %struct.stat* %3)
  store i32 %22, i32* %2, align 4
  %23 = load i64, i64* %4, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %12
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %26, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i8*, i8** %1, align 8
  %32 = call i32 @exec_open(i8* %31, i32 0)
  br label %33

33:                                               ; preds = %11, %30, %25, %12
  ret void
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i8* @xstrdup(i32) #1

declare dso_local i32 @bfd_get_filename(i32*) #1

declare dso_local i32 @make_cleanup(i32, i8*) #1

declare dso_local i64 @bfd_get_mtime(i32*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @exec_open(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
