; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_zpool_do_reguid.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_zpool_do_reguid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"missing pool name\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"too many arguments\0A\00", align 1
@g_zfs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_do_reguid(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %24, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %6, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %25

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %24 [
    i32 63, label %17
  ]

17:                                               ; preds = %15
  %18 = load i32, i32* @stderr, align 4
  %19 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @optopt, align 4
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* %19, i32 %20)
  %22 = load i32, i32* @B_FALSE, align 4
  %23 = call i32 @usage(i32 %22)
  br label %24

24:                                               ; preds = %17, %15
  br label %10

25:                                               ; preds = %10
  %26 = load i64, i64* @optind, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = sub nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %4, align 4
  %31 = load i64, i64* @optind, align 8
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 %31
  store i8** %33, i8*** %5, align 8
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %36, label %42

36:                                               ; preds = %25
  %37 = load i32, i32* @stderr, align 4
  %38 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* %38)
  %40 = load i32, i32* @B_FALSE, align 4
  %41 = call i32 @usage(i32 %40)
  br label %42

42:                                               ; preds = %36, %25
  %43 = load i32, i32* %4, align 4
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i32, i32* @stderr, align 4
  %47 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* %47)
  %49 = load i32, i32* @B_FALSE, align 4
  %50 = call i32 @usage(i32 %49)
  br label %51

51:                                               ; preds = %45, %42
  %52 = load i8**, i8*** %5, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 0
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %7, align 8
  %55 = load i32, i32* @g_zfs, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = call i32* @zpool_open(i32 %55, i8* %56)
  store i32* %57, i32** %8, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  store i32 1, i32* %3, align 4
  br label %66

60:                                               ; preds = %51
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @zpool_reguid(i32* %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @zpool_close(i32* %63)
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %60, %59
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32* @zpool_open(i32, i8*) #1

declare dso_local i32 @zpool_reguid(i32*) #1

declare dso_local i32 @zpool_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
