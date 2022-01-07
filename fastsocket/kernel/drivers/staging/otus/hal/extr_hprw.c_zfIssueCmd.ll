; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hprw.c_zfIssueCmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hprw.c_zfIssueCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.zsHpPriv* }
%struct.zsHpPriv = type { i32 }

@wd = common dso_local global %struct.TYPE_2__* null, align 8
@ZM_LV_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"cmdLen=\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zfIssueCmd(i32* %0, i32* %1, i64 %2, i64 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.zsHpPriv*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i64 0, i64* %12, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @zmw_get_wlan_dev(i32* %15)
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.zsHpPriv*, %struct.zsHpPriv** %18, align 8
  store %struct.zsHpPriv* %19, %struct.zsHpPriv** %14, align 8
  %20 = call i32 (...) @zmw_declare_for_critical_section()
  %21 = load i32, i32* @ZM_LV_1, align 4
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @zm_msg2_mm(i32 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @zmw_enter_critical_section(i32* %24)
  %26 = load %struct.zsHpPriv*, %struct.zsHpPriv** %14, align 8
  %27 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  %31 = load %struct.zsHpPriv*, %struct.zsHpPriv** %14, align 8
  %32 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  store i64 1, i64* %12, align 8
  br label %33

33:                                               ; preds = %30, %5
  %34 = load i32*, i32** %7, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = call i64 @zfPutCmd(i32* %34, i32* %35, i64 %36, i64 %37, i32* %38)
  store i64 %39, i64* %13, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @zmw_leave_critical_section(i32* %40)
  %42 = load i64, i64* %13, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  store i64 1, i64* %6, align 8
  br label %54

45:                                               ; preds = %33
  %46 = load i64, i64* %12, align 8
  %47 = icmp eq i64 %46, 1
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i32*, i32** %7, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @zfIdlCmd(i32* %49, i32* %50, i64 %51)
  br label %53

53:                                               ; preds = %48, %45
  store i64 0, i64* %6, align 8
  br label %54

54:                                               ; preds = %53, %44
  %55 = load i64, i64* %6, align 8
  ret i64 %55
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zm_msg2_mm(i32, i8*, i64) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i64 @zfPutCmd(i32*, i32*, i64, i64, i32*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @zfIdlCmd(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
