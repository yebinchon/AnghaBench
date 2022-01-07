; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_info_nis.c_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_info_nis.c_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nis_callback_data = type { i32, i32, i32 (i32, i8*, i8*)* }

@YP_TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@YP_NOMORE = common dso_local global i32 0, align 4
@XLOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"yp enumeration of %s: %s, status=%d, e=%d\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i8*, i32, i8*)* @callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @callback(i32 %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.nis_callback_data*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %18 = load i8*, i8** %13, align 8
  %19 = bitcast i8* %18 to %struct.nis_callback_data*
  store %struct.nis_callback_data* %19, %struct.nis_callback_data** %14, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @YP_TRUE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %6
  %24 = load i8*, i8** %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i8* @strnsave(i8* %24, i32 %25)
  store i8* %26, i8** %15, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = load i32, i32* %12, align 4
  %29 = call i8* @strnsave(i8* %27, i32 %28)
  store i8* %29, i8** %16, align 8
  %30 = load %struct.nis_callback_data*, %struct.nis_callback_data** %14, align 8
  %31 = getelementptr inbounds %struct.nis_callback_data, %struct.nis_callback_data* %30, i32 0, i32 2
  %32 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** %31, align 8
  %33 = load %struct.nis_callback_data*, %struct.nis_callback_data** %14, align 8
  %34 = getelementptr inbounds %struct.nis_callback_data, %struct.nis_callback_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %15, align 8
  %37 = load i8*, i8** %16, align 8
  %38 = call i32 %32(i32 %35, i8* %36, i8* %37)
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %7, align 4
  br label %58

40:                                               ; preds = %6
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @YP_NOMORE, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %40
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @ypprot_err(i32 %45)
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* @XLOG_ERROR, align 4
  %48 = load %struct.nis_callback_data*, %struct.nis_callback_data** %14, align 8
  %49 = getelementptr inbounds %struct.nis_callback_data, %struct.nis_callback_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %17, align 4
  %52 = call i32 @yperr_string(i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %17, align 4
  %55 = call i32 @plog(i32 %47, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %44, %40
  %57 = load i32, i32* @TRUE, align 4
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %56, %23
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local i8* @strnsave(i8*, i32) #1

declare dso_local i32 @ypprot_err(i32) #1

declare dso_local i32 @plog(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @yperr_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
