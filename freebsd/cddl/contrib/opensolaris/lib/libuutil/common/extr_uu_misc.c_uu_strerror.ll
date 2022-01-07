; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libuutil/common/extr_uu_misc.c_uu_strerror.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libuutil/common/extr_uu_misc.c_uu_strerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"No error\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Invalid argument\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Unknown flag passed\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Callback-initiated failure\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Operation not supported\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"No value provided\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Value too small\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Value too large\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Value contains unexpected character\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Value contains digit not in base\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"Underlying system error\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Error status not known\00", align 1
@ESRCH = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @uu_strerror(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %44 [
    i32 135, label %5
    i32 138, label %8
    i32 128, label %11
    i32 133, label %14
    i32 140, label %17
    i32 134, label %20
    i32 139, label %23
    i32 130, label %26
    i32 132, label %29
    i32 137, label %32
    i32 136, label %35
    i32 131, label %38
    i32 129, label %41
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @TEXT_DOMAIN, align 4
  %7 = call i8* @dgettext(i32 %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %7, i8** %3, align 8
  br label %46

8:                                                ; preds = %1
  %9 = load i32, i32* @TEXT_DOMAIN, align 4
  %10 = call i8* @dgettext(i32 %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i8* %10, i8** %3, align 8
  br label %46

11:                                               ; preds = %1
  %12 = load i32, i32* @TEXT_DOMAIN, align 4
  %13 = call i8* @dgettext(i32 %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i8* %13, i8** %3, align 8
  br label %46

14:                                               ; preds = %1
  %15 = load i32, i32* @TEXT_DOMAIN, align 4
  %16 = call i8* @dgettext(i32 %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i8* %16, i8** %3, align 8
  br label %46

17:                                               ; preds = %1
  %18 = load i32, i32* @TEXT_DOMAIN, align 4
  %19 = call i8* @dgettext(i32 %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  store i8* %19, i8** %3, align 8
  br label %46

20:                                               ; preds = %1
  %21 = load i32, i32* @TEXT_DOMAIN, align 4
  %22 = call i8* @dgettext(i32 %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  store i8* %22, i8** %3, align 8
  br label %46

23:                                               ; preds = %1
  %24 = load i32, i32* @TEXT_DOMAIN, align 4
  %25 = call i8* @dgettext(i32 %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  store i8* %25, i8** %3, align 8
  br label %46

26:                                               ; preds = %1
  %27 = load i32, i32* @TEXT_DOMAIN, align 4
  %28 = call i8* @dgettext(i32 %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  store i8* %28, i8** %3, align 8
  br label %46

29:                                               ; preds = %1
  %30 = load i32, i32* @TEXT_DOMAIN, align 4
  %31 = call i8* @dgettext(i32 %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  store i8* %31, i8** %3, align 8
  br label %46

32:                                               ; preds = %1
  %33 = load i32, i32* @TEXT_DOMAIN, align 4
  %34 = call i8* @dgettext(i32 %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  store i8* %34, i8** %3, align 8
  br label %46

35:                                               ; preds = %1
  %36 = load i32, i32* @TEXT_DOMAIN, align 4
  %37 = call i8* @dgettext(i32 %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  store i8* %37, i8** %3, align 8
  br label %46

38:                                               ; preds = %1
  %39 = load i32, i32* @TEXT_DOMAIN, align 4
  %40 = call i8* @dgettext(i32 %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  store i8* %40, i8** %3, align 8
  br label %46

41:                                               ; preds = %1
  %42 = load i32, i32* @TEXT_DOMAIN, align 4
  %43 = call i8* @dgettext(i32 %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  store i8* %43, i8** %3, align 8
  br label %46

44:                                               ; preds = %1
  %45 = load i32, i32* @ESRCH, align 4
  store i32 %45, i32* @errno, align 4
  store i8* null, i8** %3, align 8
  br label %46

46:                                               ; preds = %44, %41, %38, %35, %32, %29, %26, %23, %20, %17, %14, %11, %8, %5
  %47 = load i8*, i8** %3, align 8
  ret i8* %47
}

declare dso_local i8* @dgettext(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
