; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-dump.c_bfd_openw_with_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-dump.c_bfd_openw_with_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"Failed to open %s: %s.\00", align 1
@bfd_object = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"bfd_openw_with_cleanup: %s.\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"bfd_openw does not work with append.\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"bfd_openw_with_cleanup: unknown mode %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*)* @bfd_openw_with_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @bfd_openw_with_cleanup(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 119
  br i1 %11, label %12, label %35

12:                                               ; preds = %3
  %13 = load i8*, i8** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32* @bfd_openw(i8* %13, i8* %14)
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 (...) @bfd_get_error()
  %21 = call i8* @bfd_errmsg(i32 %20)
  %22 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %19, i8* %21)
  br label %23

23:                                               ; preds = %18, %12
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @make_cleanup_bfd_close(i32* %24)
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* @bfd_object, align 4
  %28 = call i32 @bfd_set_format(i32* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %23
  %31 = call i32 (...) @bfd_get_error()
  %32 = call i8* @bfd_errmsg(i32 %31)
  %33 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %30, %23
  br label %46

35:                                               ; preds = %3
  %36 = load i8*, i8** %6, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 97
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %45

42:                                               ; preds = %35
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %42, %40
  br label %46

46:                                               ; preds = %45, %34
  %47 = load i32*, i32** %7, align 8
  ret i32* %47
}

declare dso_local i32* @bfd_openw(i8*, i8*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i8* @bfd_errmsg(i32) #1

declare dso_local i32 @bfd_get_error(...) #1

declare dso_local i32 @make_cleanup_bfd_close(i32*) #1

declare dso_local i32 @bfd_set_format(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
