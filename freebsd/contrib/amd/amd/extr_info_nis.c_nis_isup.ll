; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_info_nis.c_nis_isup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_info_nis.c_nis_isup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@nis_isup.last_status = internal global i32 1, align 4
@has_yp_order = common dso_local global i32 0, align 4
@gopt = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@XLOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"nis_isup: error getting the order of map %s: %s\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"nis_isup: error getting the master of map %s: %s\00", align 1
@XLOG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"nis_isup: NIS came back up for map %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nis_isup(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* @has_yp_order, align 4
  switch i32 %10, label %39 [
    i32 1, label %11
    i32 0, label %25
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gopt, i32 0, i32 0), align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @yp_order(i32 %12, i8* %13, i32* %6)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = load i32, i32* @XLOG_ERROR, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @ypprot_err(i32 %20)
  %22 = call i32 @yperr_string(i32 %21)
  %23 = call i32 (i32, i8*, i8*, ...) @plog(i32 %18, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %22)
  store i32 0, i32* @nis_isup.last_status, align 4
  store i32 0, i32* %3, align 4
  br label %55

24:                                               ; preds = %11
  br label %40

25:                                               ; preds = %2
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gopt, i32 0, i32 0), align 4
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @yp_master(i32 %26, i8* %27, i8** %8)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load i32, i32* @XLOG_ERROR, align 4
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @ypprot_err(i32 %34)
  %36 = call i32 @yperr_string(i32 %35)
  %37 = call i32 (i32, i8*, i8*, ...) @plog(i32 %32, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %33, i32 %36)
  store i32 0, i32* @nis_isup.last_status, align 4
  store i32 0, i32* %3, align 4
  br label %55

38:                                               ; preds = %25
  br label %40

39:                                               ; preds = %2
  store i32 0, i32* @nis_isup.last_status, align 4
  br label %40

40:                                               ; preds = %39, %38, %24
  %41 = load i32, i32* @nis_isup.last_status, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %40
  %44 = load i32*, i32** %4, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @nis_init(i32* %44, i8* %45, i32* %9)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %55

50:                                               ; preds = %43
  %51 = load i32, i32* @XLOG_INFO, align 4
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 (i32, i8*, i8*, ...) @plog(i32 %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  store i32 1, i32* @nis_isup.last_status, align 4
  br label %54

54:                                               ; preds = %50, %40
  store i32 1, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %49, %31, %17
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @yp_order(i32, i8*, i32*) #1

declare dso_local i32 @plog(i32, i8*, i8*, ...) #1

declare dso_local i32 @yperr_string(i32) #1

declare dso_local i32 @ypprot_err(i32) #1

declare dso_local i32 @yp_master(i32, i8*, i8**) #1

declare dso_local i32 @nis_init(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
