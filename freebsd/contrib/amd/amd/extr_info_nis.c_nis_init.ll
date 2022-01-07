; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_info_nis.c_nis_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_info_nis.c_nis_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@gopt = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@has_yp_order = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"NIS master for %s@%s has order %lu\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"NIS master for %s@%s is a NIS+ server\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nis_init(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gopt, i32 0, i32 0), align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %3
  %15 = call i32 (...) @determine_nis_domain()
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %4, align 4
  br label %51

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %20, %3
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gopt, i32 0, i32 0), align 4
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @yp_order(i32 %22, i8* %23, i64* %8)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  switch i32 %25, label %48 [
    i32 0, label %26
    i32 128, label %34
  ]

26:                                               ; preds = %21
  store i32 1, i32* @has_yp_order, align 4
  %27 = load i64, i64* %8, align 8
  %28 = trunc i64 %27 to i32
  %29 = load i32*, i32** %7, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gopt, i32 0, i32 0), align 4
  %32 = load i64, i64* %8, align 8
  %33 = call i32 (i8*, i8*, i32, ...) @dlog(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %31, i64 %32)
  br label %50

34:                                               ; preds = %21
  store i32 0, i32* @has_yp_order, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gopt, i32 0, i32 0), align 4
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @yp_master(i32 %35, i8* %36, i8** %10)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @ENOENT, align 4
  store i32 %40, i32* %4, align 4
  br label %51

41:                                               ; preds = %34
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gopt, i32 0, i32 0), align 4
  %44 = call i32 (i8*, i8*, i32, ...) @dlog(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %42, i32 %43)
  %45 = call i32 @time(i32* null)
  %46 = load i32*, i32** %7, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %41
  br label %50

48:                                               ; preds = %21
  store i32 -1, i32* @has_yp_order, align 4
  %49 = load i32, i32* @ENOENT, align 4
  store i32 %49, i32* %4, align 4
  br label %51

50:                                               ; preds = %47, %26
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %48, %39, %18
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @determine_nis_domain(...) #1

declare dso_local i32 @yp_order(i32, i8*, i64*) #1

declare dso_local i32 @dlog(i8*, i8*, i32, ...) #1

declare dso_local i32 @yp_master(i32, i8*, i8**) #1

declare dso_local i32 @time(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
