; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/dtrace/extr_dtrace.c_link_prog.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/dtrace/extr_dtrace.c_link_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@g_cmdc = common dso_local global i32 0, align 4
@g_ofile = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [3 x i8] c".d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s.o\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"d.out.%td\00", align 1
@g_cmdv = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"d.out\00", align 1
@g_dtp = common dso_local global i32 0, align 4
@DTRACE_D_PROBES = common dso_local global i32 0, align 4
@g_objc = common dso_local global i32 0, align 4
@g_objv = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"failed to link %s %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @link_prog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_prog(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load i32, i32* @g_cmdc, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load i32*, i32** @g_ofile, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** @g_ofile, align 8
  %14 = call i32 @strlcpy(i32 %12, i32* %13, i32 4)
  br label %56

15:                                               ; preds = %6, %1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @strrchr(i32 %18, i8 signext 46)
  store i8* %19, i8** %3, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %36

21:                                               ; preds = %15
  %22 = load i8*, i8** %3, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  store i8 0, i8* %27, align 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @basename(i32 %33)
  %35 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %30, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  br label %55

36:                                               ; preds = %21, %15
  %37 = load i32, i32* @g_cmdc, align 4
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %44 = load i32, i32* @g_cmdv, align 4
  %45 = sext i32 %44 to i64
  %46 = sub i64 0, %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %46
  %48 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %42, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_3__* %47)
  br label %54

49:                                               ; preds = %36
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %52, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %54

54:                                               ; preds = %49, %39
  br label %55

55:                                               ; preds = %54, %25
  br label %56

56:                                               ; preds = %55, %9
  %57 = load i32, i32* @g_dtp, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @DTRACE_D_PROBES, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @g_objc, align 4
  %66 = load i32, i32* @g_objv, align 4
  %67 = call i64 @dtrace_program_link(i32 %57, i32 %60, i32 %61, i32 %64, i32 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %56
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @dfatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %69, %56
  ret void
}

declare dso_local i32 @strlcpy(i32, i32*, i32) #1

declare dso_local i8* @strrchr(i32, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, ...) #1

declare dso_local i8* @basename(i32) #1

declare dso_local i64 @dtrace_program_link(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dfatal(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
