; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_zpool_do_offline.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_zpool_do_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B_FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"ft\00", align 1
@B_TRUE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"missing pool name\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"missing device name\0A\00", align 1
@g_zfs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_do_offline(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* @B_FALSE, align 4
  store i32 %12, i32* %11, align 4
  br label %13

13:                                               ; preds = %29, %2
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @getopt(i32 %14, i8** %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %6, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %29 [
    i32 116, label %20
    i32 102, label %22
    i32 63, label %22
  ]

20:                                               ; preds = %18
  %21 = load i32, i32* @B_TRUE, align 4
  store i32 %21, i32* %11, align 4
  br label %29

22:                                               ; preds = %18, %18
  %23 = load i32, i32* @stderr, align 4
  %24 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @optopt, align 4
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %23, i8* %24, i32 %25)
  %27 = load i32, i32* @B_FALSE, align 4
  %28 = call i32 @usage(i32 %27)
  br label %29

29:                                               ; preds = %22, %18, %20
  br label %13

30:                                               ; preds = %13
  %31 = load i64, i64* @optind, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = sub nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %4, align 4
  %36 = load i64, i64* @optind, align 8
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 %36
  store i8** %38, i8*** %5, align 8
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 1
  br i1 %40, label %41, label %47

41:                                               ; preds = %30
  %42 = load i32, i32* @stderr, align 4
  %43 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* %43)
  %45 = load i32, i32* @B_FALSE, align 4
  %46 = call i32 @usage(i32 %45)
  br label %47

47:                                               ; preds = %41, %30
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 2
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i32, i32* @stderr, align 4
  %52 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %53 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* %52)
  %54 = load i32, i32* @B_FALSE, align 4
  %55 = call i32 @usage(i32 %54)
  br label %56

56:                                               ; preds = %50, %47
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 0
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %8, align 8
  %60 = load i32, i32* @g_zfs, align 4
  %61 = load i8*, i8** %8, align 8
  %62 = call i32* @zpool_open(i32 %60, i8* %61)
  store i32* %62, i32** %9, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %89

65:                                               ; preds = %56
  store i32 1, i32* %7, align 4
  br label %66

66:                                               ; preds = %82, %65
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %66
  %71 = load i32*, i32** %9, align 8
  %72 = load i8**, i8*** %5, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i64 @zpool_vdev_offline(i32* %71, i8* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  store i32 1, i32* %10, align 4
  br label %81

81:                                               ; preds = %80, %70
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %66

85:                                               ; preds = %66
  %86 = load i32*, i32** %9, align 8
  %87 = call i32 @zpool_close(i32* %86)
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %85, %64
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32* @zpool_open(i32, i8*) #1

declare dso_local i64 @zpool_vdev_offline(i32*, i8*, i32) #1

declare dso_local i32 @zpool_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
