; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_util.c_str2shift.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_util.c_str2shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"BKMGTPEZ\00", align 1
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"invalid numeric suffix '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @str2shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str2shift(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %84

14:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %35, %14
  %16 = load i32, i32* %7, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %15
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = call signext i8 @toupper(i8 signext %23)
  %25 = sext i8 %24 to i32
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %25, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  br label %38

34:                                               ; preds = %20
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %15

38:                                               ; preds = %33, %15
  %39 = load i32, i32* %7, align 4
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* @TEXT_DOMAIN, align 4
  %46 = call i32 @dgettext(i32 %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @zfs_error_aux(i32* %44, i32 %46, i8* %47)
  store i32 -1, i32* %3, align 4
  br label %84

49:                                               ; preds = %38
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %75, label %55

55:                                               ; preds = %49
  %56 = load i8*, i8** %5, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = call signext i8 @toupper(i8 signext %58)
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 66
  br i1 %61, label %62, label %78

62:                                               ; preds = %55
  %63 = load i8*, i8** %5, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 2
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %62
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = call signext i8 @toupper(i8 signext %71)
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 66
  br i1 %74, label %75, label %78

75:                                               ; preds = %68, %49
  %76 = load i32, i32* %7, align 4
  %77 = mul nsw i32 10, %76
  store i32 %77, i32* %3, align 4
  br label %84

78:                                               ; preds = %68, %62, %55
  %79 = load i32*, i32** %4, align 8
  %80 = load i32, i32* @TEXT_DOMAIN, align 4
  %81 = call i32 @dgettext(i32 %80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i8*, i8** %5, align 8
  %83 = call i32 @zfs_error_aux(i32* %79, i32 %81, i8* %82)
  store i32 -1, i32* %3, align 4
  br label %84

84:                                               ; preds = %78, %75, %43, %13
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local signext i8 @toupper(i8 signext) #1

declare dso_local i32 @zfs_error_aux(i32*, i32, i8*) #1

declare dso_local i32 @dgettext(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
