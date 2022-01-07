; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_info_nis.c_nis_reload.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_info_nis.c_nis_reload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.nis_callback_data = type { i8*, void (i32*, i8*, i8*)*, i32* }
%struct.ypall_callback = type { i64, i64 }

@gopt = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@callback = common dso_local global i64 0, align 8
@XLOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"NIS map %s reloading using yp_all\00", align 1
@XLOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"error grabbing nis map of %s: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nis_reload(i32* %0, i8* %1, void (i32*, i8*, i8*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca void (i32*, i8*, i8*)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nis_callback_data, align 8
  %10 = alloca %struct.ypall_callback, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store void (i32*, i8*, i8*)* %2, void (i32*, i8*, i8*)** %7, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gopt, i32 0, i32 0), align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %3
  %14 = call i32 (...) @determine_nis_domain()
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %48

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19, %3
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds %struct.nis_callback_data, %struct.nis_callback_data* %9, i32 0, i32 2
  store i32* %21, i32** %22, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds %struct.nis_callback_data, %struct.nis_callback_data* %9, i32 0, i32 0
  store i8* %23, i8** %24, align 8
  %25 = load void (i32*, i8*, i8*)*, void (i32*, i8*, i8*)** %7, align 8
  %26 = getelementptr inbounds %struct.nis_callback_data, %struct.nis_callback_data* %9, i32 0, i32 1
  store void (i32*, i8*, i8*)* %25, void (i32*, i8*, i8*)** %26, align 8
  %27 = ptrtoint %struct.nis_callback_data* %9 to i64
  %28 = getelementptr inbounds %struct.ypall_callback, %struct.ypall_callback* %10, i32 0, i32 1
  store i64 %27, i64* %28, align 8
  %29 = load i64, i64* @callback, align 8
  %30 = getelementptr inbounds %struct.ypall_callback, %struct.ypall_callback* %10, i32 0, i32 0
  store i64 %29, i64* %30, align 8
  %31 = load i32, i32* @XLOG_INFO, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 (i32, i8*, i8*, ...) @plog(i32 %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gopt, i32 0, i32 0), align 4
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @yp_all(i32 %34, i8* %35, %struct.ypall_callback* %10)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %20
  %40 = load i32, i32* @XLOG_ERROR, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @ypprot_err(i32 %42)
  %44 = call i32 @yperr_string(i32 %43)
  %45 = call i32 (i32, i8*, i8*, ...) @plog(i32 %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %41, i32 %44)
  br label %46

46:                                               ; preds = %39, %20
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %46, %17
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @determine_nis_domain(...) #1

declare dso_local i32 @plog(i32, i8*, i8*, ...) #1

declare dso_local i32 @yp_all(i32, i8*, %struct.ypall_callback*) #1

declare dso_local i32 @yperr_string(i32) #1

declare dso_local i32 @ypprot_err(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
