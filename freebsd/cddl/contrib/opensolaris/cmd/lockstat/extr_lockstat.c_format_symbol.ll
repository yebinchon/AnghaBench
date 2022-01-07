; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/lockstat/extr_lockstat.c_format_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/lockstat/extr_lockstat.c_format_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"%s[%ld]\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"cpu[\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s+%s\00", align 1
@g_pri_class = common dso_local global i8** null, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"%s+0x%llx\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"0x%llx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i32)* @format_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @format_symbol(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i64, i64* %5, align 8
  %11 = call i8* @addr_to_sym(i64 %10, i64* %7, i64* %9)
  store i8* %11, i8** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i8*, i8** %4, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = call i32 (i8*, i8*, ...) @sprintf(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %19, i64 %20)
  br label %69

22:                                               ; preds = %14, %3
  %23 = load i64, i64* %7, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i8*, i8** %4, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 (i8*, i8*, ...) @sprintf(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  br label %68

29:                                               ; preds = %22
  %30 = load i64, i64* %7, align 8
  %31 = icmp ult i64 %30, 16
  br i1 %31, label %32, label %46

32:                                               ; preds = %29
  %33 = load i8*, i8** %8, align 8
  %34 = call i64 @bcmp(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load i8*, i8** %4, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i8**, i8*** @g_pri_class, align 8
  %40 = load i64, i64* %7, align 8
  %41 = trunc i64 %40 to i32
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %39, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %38, i8* %44)
  br label %67

46:                                               ; preds = %32, %29
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %9, align 8
  %49 = icmp ule i64 %47, %48
  br i1 %49, label %57, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %7, align 8
  %52 = icmp ult i64 %51, 256
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* %7, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %53, %46
  %58 = load i8*, i8** %4, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i32 (i8*, i8*, ...) @sprintf(i8* %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %59, i64 %60)
  br label %66

62:                                               ; preds = %53, %50
  %63 = load i8*, i8** %4, align 8
  %64 = load i64, i64* %5, align 8
  %65 = call i32 (i8*, i8*, ...) @sprintf(i8* %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i64 %64)
  br label %66

66:                                               ; preds = %62, %57
  br label %67

67:                                               ; preds = %66, %36
  br label %68

68:                                               ; preds = %67, %25
  br label %69

69:                                               ; preds = %68, %17
  %70 = load i8*, i8** %4, align 8
  ret i8* %70
}

declare dso_local i8* @addr_to_sym(i64, i64*, i64*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i64 @bcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
