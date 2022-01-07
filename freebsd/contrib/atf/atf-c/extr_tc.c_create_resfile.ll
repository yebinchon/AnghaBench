; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_tc.c_create_resfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_tc.c_create_resfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"/dev/stdout\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"/dev/stderr\00", align 1
@STDERR_FILENO = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Cannot create results file '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32*)* @create_resfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_resfile(i8* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @strcmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %4
  %15 = load i32, i32* @STDOUT_FILENO, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @write_resfile(i32 %15, i8* %16, i32 %17, i32* %18)
  store i32 %19, i32* %9, align 4
  br label %61

20:                                               ; preds = %4
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @strcmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i32, i32* @STDERR_FILENO, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @write_resfile(i32 %25, i8* %26, i32 %27, i32* %28)
  store i32 %29, i32* %9, align 4
  br label %60

30:                                               ; preds = %20
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* @O_WRONLY, align 4
  %33 = load i32, i32* @O_CREAT, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @O_TRUNC, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @S_IRUSR, align 4
  %38 = load i32, i32* @S_IWUSR, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @S_IRGRP, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @S_IROTH, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @open(i8* %31, i32 %36, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %51

47:                                               ; preds = %30
  %48 = load i32, i32* @errno, align 4
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @atf_libc_error(i32 %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  store i32 %50, i32* %9, align 4
  br label %59

51:                                               ; preds = %30
  %52 = load i32, i32* %10, align 4
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @write_resfile(i32 %52, i8* %53, i32 %54, i32* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @close(i32 %57)
  br label %59

59:                                               ; preds = %51, %47
  br label %60

60:                                               ; preds = %59, %24
  br label %61

61:                                               ; preds = %60, %14
  %62 = load i32*, i32** %8, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @atf_dynstr_fini(i32* %65)
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @check_fatal_error(i32 %68)
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @write_resfile(i32, i8*, i32, i32*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @atf_libc_error(i32, i8*, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @atf_dynstr_fini(i32*) #1

declare dso_local i32 @check_fatal_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
