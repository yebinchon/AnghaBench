; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_cygwin2.c_add_mingw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_cygwin2.c_add_mingw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cvt_to_mingw = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [8 x i8] c"-cygwin\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"-mingw32\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"mingw\00", align 1
@CYGWIN_MINGW_SUBDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @add_mingw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_mingw() #0 {
  %1 = alloca i8**, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = load i8**, i8*** @cvt_to_mingw, align 8
  store i8** %5, i8*** %1, align 8
  br label %6

6:                                                ; preds = %56, %0
  %7 = load i8**, i8*** %1, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %59

10:                                               ; preds = %6
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %38, %10
  %12 = load i8**, i8*** %1, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = call i8* @strstr(i8* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %2, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %42

16:                                               ; preds = %11
  %17 = load i8*, i8** %2, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 8
  %19 = getelementptr inbounds i8, i8* %18, i64 -1
  store i8* %19, i8** %4, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8*, i8** %4, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = call i32 @memmove(i8* %21, i8* %22, i32 %24)
  %26 = load i8*, i8** %2, align 8
  %27 = call i32 @memcpy(i8* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %4, align 8
  store i8* %29, i8** %2, align 8
  br label %30

30:                                               ; preds = %35, %16
  %31 = load i8*, i8** %2, align 8
  %32 = load i8, i8* %31, align 1
  %33 = call i64 @ISALNUM(i8 signext %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i8*, i8** %2, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %2, align 8
  br label %30

38:                                               ; preds = %30
  %39 = load i8*, i8** %4, align 8
  %40 = load i8*, i8** %2, align 8
  %41 = call i32 @strcpy(i8* %39, i8* %40)
  store i32 1, i32* %3, align 4
  br label %11

42:                                               ; preds = %11
  %43 = load i32, i32* %3, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %42
  %46 = load i8**, i8*** %1, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = call i8* @strstr(i8* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %49 = icmp ne i8* %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load i8**, i8*** %1, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* @CYGWIN_MINGW_SUBDIR, align 4
  %54 = call i32 @strcat(i8* %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %45, %42
  br label %56

56:                                               ; preds = %55
  %57 = load i8**, i8*** %1, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i32 1
  store i8** %58, i8*** %1, align 8
  br label %6

59:                                               ; preds = %6
  ret void
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @ISALNUM(i8 signext) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
