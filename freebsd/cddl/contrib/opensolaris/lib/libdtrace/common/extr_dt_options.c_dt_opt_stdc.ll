; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_options.c_dt_opt_stdc.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_options.c_dt_opt_stdc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@EDT_BADOPTVAL = common dso_local global i32 0, align 4
@EDT_BADOPTCTX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@DT_STDC_XA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@DT_STDC_XC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@DT_STDC_XS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@DT_STDC_XT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*, i64)* @dt_opt_stdc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_opt_stdc(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = load i32, i32* @EDT_BADOPTVAL, align 4
  %13 = call i32 @dt_set_errno(%struct.TYPE_4__* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  br label %63

14:                                               ; preds = %3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = load i32, i32* @EDT_BADOPTCTX, align 4
  %22 = call i32 @dt_set_errno(%struct.TYPE_4__* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  br label %63

23:                                               ; preds = %14
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* @DT_STDC_XA, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  br label %62

31:                                               ; preds = %23
  %32 = load i8*, i8** %6, align 8
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32, i32* @DT_STDC_XC, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %61

39:                                               ; preds = %31
  %40 = load i8*, i8** %6, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* @DT_STDC_XS, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  br label %60

47:                                               ; preds = %39
  %48 = load i8*, i8** %6, align 8
  %49 = call i64 @strcmp(i8* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32, i32* @DT_STDC_XT, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  br label %59

55:                                               ; preds = %47
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %57 = load i32, i32* @EDT_BADOPTVAL, align 4
  %58 = call i32 @dt_set_errno(%struct.TYPE_4__* %56, i32 %57)
  store i32 %58, i32* %4, align 4
  br label %63

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %43
  br label %61

61:                                               ; preds = %60, %35
  br label %62

62:                                               ; preds = %61, %27
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %55, %19, %10
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @dt_set_errno(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
