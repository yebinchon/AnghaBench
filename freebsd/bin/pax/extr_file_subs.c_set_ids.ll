; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_file_subs.c_set_ids.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_file_subs.c_set_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NM_PAX = common dso_local global i32 0, align 4
@argv0 = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@vflag = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Unable to set file uid/gid of %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_ids(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i64 @lchown(i8* %8, i32 %9, i32 %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %3
  %14 = load i32, i32* @NM_PAX, align 4
  %15 = load i32, i32* @argv0, align 4
  %16 = call i64 @strcmp(i32 %14, i32 %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %13
  %19 = load i64, i64* @errno, align 8
  %20 = load i64, i64* @EPERM, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = load i64, i64* @vflag, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = call i64 (...) @geteuid()
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25, %22, %18, %13
  %29 = load i64, i64* @errno, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @syswarn(i32 1, i64 %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %28, %25
  store i32 -1, i32* %4, align 4
  br label %34

33:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %32
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i64 @lchown(i8*, i32, i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local i32 @syswarn(i32, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
