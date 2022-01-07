; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_mibII/extr_mibII.c_mib_fetch_rtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_mibII/extr_mibII.c_mib_fetch_rtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CTL_NET = common dso_local global i32 0, align 4
@PF_ROUTE = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"sysctl estimate (%d,%d,%d,%d,%d,%d): %m\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"sysctl buffer: %m\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"sysctl get: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @mib_fetch_rtab(i32 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca [6 x i32], align 16
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %13 = load i32, i32* @CTL_NET, align 4
  %14 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  store i32 %13, i32* %14, align 16
  %15 = load i32, i32* @PF_ROUTE, align 4
  %16 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 1
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 2
  store i32 0, i32* %17, align 8
  %18 = load i32, i32* %6, align 4
  %19 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 3
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %7, align 4
  %21 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 4
  store i32 %20, i32* %21, align 16
  %22 = load i32, i32* %8, align 4
  %23 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 5
  store i32 %22, i32* %23, align 4
  %24 = load i64*, i64** %9, align 8
  store i64 0, i64* %24, align 8
  %25 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %26 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %27 = call i32 @nitems(i32* %26)
  %28 = load i64*, i64** %9, align 8
  %29 = call i32 @sysctl(i32* %25, i32 %27, i32* null, i64* %28, i32* null, i32 0)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %46

31:                                               ; preds = %4
  %32 = load i32, i32* @LOG_ERR, align 4
  %33 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %34 = load i32, i32* %33, align 16
  %35 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 2
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 3
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 4
  %42 = load i32, i32* %41, align 16
  %43 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 5
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i32, i8*, ...) @syslog(i32 %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %36, i32 %38, i32 %40, i32 %42, i32 %44)
  store i32* null, i32** %5, align 8
  br label %92

46:                                               ; preds = %4
  %47 = load i64*, i64** %9, align 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32* null, i32** %5, align 8
  br label %92

51:                                               ; preds = %46
  store i32* null, i32** %11, align 8
  br label %52

52:                                               ; preds = %82, %51
  %53 = load i32*, i32** %11, align 8
  %54 = load i64*, i64** %9, align 8
  %55 = load i64, i64* %54, align 8
  %56 = call i32* @realloc(i32* %53, i64 %55)
  store i32* %56, i32** %12, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load i32, i32* @LOG_ERR, align 4
  %60 = call i32 (i32, i8*, ...) @syslog(i32 %59, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32*, i32** %11, align 8
  %62 = call i32 @free(i32* %61)
  store i32* null, i32** %5, align 8
  br label %92

63:                                               ; preds = %52
  %64 = load i32*, i32** %12, align 8
  store i32* %64, i32** %11, align 8
  %65 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %66 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %67 = call i32 @nitems(i32* %66)
  %68 = load i32*, i32** %11, align 8
  %69 = load i64*, i64** %9, align 8
  %70 = call i32 @sysctl(i32* %65, i32 %67, i32* %68, i64* %69, i32* null, i32 0)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %90

73:                                               ; preds = %63
  %74 = load i64, i64* @errno, align 8
  %75 = load i64, i64* @ENOMEM, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load i32, i32* @LOG_ERR, align 4
  %79 = call i32 (i32, i8*, ...) @syslog(i32 %78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i32*, i32** %11, align 8
  %81 = call i32 @free(i32* %80)
  store i32* null, i32** %5, align 8
  br label %92

82:                                               ; preds = %73
  %83 = load i64*, i64** %9, align 8
  %84 = load i64, i64* %83, align 8
  %85 = udiv i64 %84, 8
  %86 = add i64 %85, 1
  %87 = load i64*, i64** %9, align 8
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %88, %86
  store i64 %89, i64* %87, align 8
  br label %52

90:                                               ; preds = %72
  %91 = load i32*, i32** %11, align 8
  store i32* %91, i32** %5, align 8
  br label %92

92:                                               ; preds = %90, %77, %58, %50, %31
  %93 = load i32*, i32** %5, align 8
  ret i32* %93
}

declare dso_local i32 @sysctl(i32*, i32, i32*, i64*, i32*, i32) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local i32 @syslog(i32, i8*, ...) #1

declare dso_local i32* @realloc(i32*, i64) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
