; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_pid.c_dt_pid_get_pid.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_pid.c_dt_pid_get_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@D_PROC_BADPROV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"'%s' is not a valid provider\00", align 1
@errno = common dso_local global i64 0, align 8
@D_PROC_BADPID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"'%s' does not contain a valid pid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32*, i32*)* @dt_pid_get_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_pid_get_pid(%struct.TYPE_3__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* null, i8** %12, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  store i8* %17, i8** %11, align 8
  br label %18

18:                                               ; preds = %31, %4
  %19 = load i8*, i8** %11, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load i8*, i8** %11, align 8
  %25 = load i8, i8* %24, align 1
  %26 = call i32 @isdigit(i8 signext %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load i8*, i8** %11, align 8
  store i8* %29, i8** %12, align 8
  br label %30

30:                                               ; preds = %28, %23
  br label %31

31:                                               ; preds = %30
  %32 = load i8*, i8** %11, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %11, align 8
  br label %18

34:                                               ; preds = %18
  %35 = load i8*, i8** %12, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %34
  %38 = load i8*, i8** %12, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %12, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %37, %34
  %44 = load i32*, i32** %7, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* @D_PROC_BADPROV, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @dt_pid_error(i32* %44, i32* %45, i32* %46, i32* null, i32 %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %50)
  store i32 -1, i32* %5, align 4
  br label %81

52:                                               ; preds = %37
  store i64 0, i64* @errno, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = call i32 @strtol(i8* %53, i8** %13, i32 10)
  store i32 %54, i32* %10, align 4
  %55 = load i64, i64* @errno, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %70, label %57

57:                                               ; preds = %52
  %58 = load i8*, i8** %13, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = icmp eq i8* %58, %59
  br i1 %60, label %70, label %61

61:                                               ; preds = %57
  %62 = load i8*, i8** %13, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %61
  %68 = load i32, i32* %10, align 4
  %69 = icmp sle i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %67, %61, %57, %52
  %71 = load i32*, i32** %7, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* @D_PROC_BADPID, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @dt_pid_error(i32* %71, i32* %72, i32* %73, i32* null, i32 %74, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %77)
  store i32 -1, i32* %5, align 4
  br label %81

79:                                               ; preds = %67
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %79, %70, %43
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @dt_pid_error(i32*, i32*, i32*, i32*, i32, i8*, i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
