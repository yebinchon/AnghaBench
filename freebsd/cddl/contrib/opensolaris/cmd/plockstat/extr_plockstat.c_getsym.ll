; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/plockstat/extr_plockstat.c_getsym.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/plockstat/extr_plockstat.c_getsym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps_prochandle = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"%#lx\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s`%s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"+%#lx\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"libc.so.1\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"mutex\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"rw\00", align 1
@LM_ID_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ps_prochandle*, i64, i8*, i64, i32)* @getsym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getsym(%struct.ps_prochandle* %0, i64 %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ps_prochandle*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca [256 x i8], align 16
  %13 = alloca %struct.TYPE_6__, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.ps_prochandle* %0, %struct.ps_prochandle** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.ps_prochandle*, %struct.ps_prochandle** %7, align 8
  %18 = icmp eq %struct.ps_prochandle* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %5
  %20 = load %struct.ps_prochandle*, %struct.ps_prochandle** %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %23 = call i64 @Pxlookup_by_addr(%struct.ps_prochandle* %20, i64 %21, i8* %22, i32 256, %struct.TYPE_6__* %13, i32* %15)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %19, %5
  %26 = load i8*, i8** %9, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %26, i64 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %28)
  store i32 0, i32* %6, align 4
  br label %78

30:                                               ; preds = %19
  %31 = load %struct.ps_prochandle*, %struct.ps_prochandle** %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call %struct.TYPE_5__* @proc_addr2map(%struct.ps_prochandle* %31, i64 %32)
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %14, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %40 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %34, i64 %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %38, i8* %39)
  store i64 %40, i64* %16, align 8
  %41 = load i64, i64* %16, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 %41
  store i8* %43, i8** %9, align 8
  %44 = load i64, i64* %16, align 8
  %45 = load i64, i64* %10, align 8
  %46 = sub i64 %45, %44
  store i64 %46, i64* %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %8, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %30
  %52 = load i8*, i8** %9, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = sub i64 %54, %56
  %58 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %52, i64 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 %57)
  store i64 %58, i64* %16, align 8
  br label %59

59:                                               ; preds = %51, %30
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %59
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %62
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %70 = call i64 @strstr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %69)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %74 = call i64 @strstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %73)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72, %68
  store i32 -1, i32* %6, align 4
  br label %78

77:                                               ; preds = %72, %62, %59
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %77, %76, %25
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local i64 @Pxlookup_by_addr(%struct.ps_prochandle*, i64, i8*, i32, %struct.TYPE_6__*, i32*) #1

declare dso_local i64 @snprintf(i8*, i64, i8*, ...) #1

declare dso_local %struct.TYPE_5__* @proc_addr2map(%struct.ps_prochandle*, i64) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
