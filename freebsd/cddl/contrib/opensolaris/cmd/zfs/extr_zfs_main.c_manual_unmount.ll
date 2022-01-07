; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_manual_unmount.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_manual_unmount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"f\00", align 1
@MS_FORCE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"usage: unmount [-f] <path>\0A\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"missing path argument\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"too many arguments\0A\00", align 1
@OP_MOUNT = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @manual_unmount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @manual_unmount(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %25, %2
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = call i32 @getopt(i32 %9, i8** %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %7, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %26

13:                                               ; preds = %8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %25 [
    i32 102, label %15
    i32 63, label %17
  ]

15:                                               ; preds = %13
  %16 = load i32, i32* @MS_FORCE, align 4
  store i32 %16, i32* %6, align 4
  br label %25

17:                                               ; preds = %13
  %18 = load i32, i32* @stderr, align 4
  %19 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @optopt, align 4
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* %19, i32 %20)
  %22 = load i32, i32* @stderr, align 4
  %23 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* %23)
  store i32 2, i32* %3, align 4
  br label %60

25:                                               ; preds = %13, %15
  br label %8

26:                                               ; preds = %8
  %27 = load i64, i64* @optind, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = sub nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %4, align 4
  %32 = load i64, i64* @optind, align 8
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 %32
  store i8** %34, i8*** %5, align 8
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %37, label %52

37:                                               ; preds = %26
  %38 = load i32, i32* %4, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* @stderr, align 4
  %42 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %43 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* %42)
  br label %48

44:                                               ; preds = %37
  %45 = load i32, i32* @stderr, align 4
  %46 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* %46)
  br label %48

48:                                               ; preds = %44, %40
  %49 = load i32, i32* @stderr, align 4
  %50 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* %50)
  store i32 2, i32* %3, align 4
  br label %60

52:                                               ; preds = %26
  %53 = load i32, i32* @OP_MOUNT, align 4
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @B_TRUE, align 4
  %59 = call i32 @unshare_unmount_path(i32 %53, i8* %56, i32 %57, i32 %58)
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %52, %48, %17
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @unshare_unmount_path(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
