; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cagg.c_zfAggDestExist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cagg.c_zfAggDestExist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.dest** }
%struct.dest = type { i64, %struct.dest* }

@DESTQ = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zfAggDestExist(i32* %0, i64 %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.dest*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  store i64 0, i64* %12, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @zmw_get_wlan_dev(i32* %13)
  %15 = call i32 (...) @zmw_declare_for_critical_section()
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @zmw_enter_critical_section(i32* %16)
  %18 = load %struct.dest**, %struct.dest*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @DESTQ, i32 0, i32 0), align 8
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds %struct.dest*, %struct.dest** %18, i64 %19
  %21 = load %struct.dest*, %struct.dest** %20, align 8
  %22 = icmp ne %struct.dest* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  store i64 0, i64* %12, align 8
  br label %58

24:                                               ; preds = %5
  %25 = load %struct.dest**, %struct.dest*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @DESTQ, i32 0, i32 0), align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds %struct.dest*, %struct.dest** %25, i64 %26
  %28 = load %struct.dest*, %struct.dest** %27, align 8
  store %struct.dest* %28, %struct.dest** %11, align 8
  %29 = load %struct.dest*, %struct.dest** %11, align 8
  %30 = getelementptr inbounds %struct.dest, %struct.dest* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  store i64 1, i64* %12, align 8
  br label %57

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %55, %35
  %37 = load %struct.dest*, %struct.dest** %11, align 8
  %38 = getelementptr inbounds %struct.dest, %struct.dest* %37, i32 0, i32 1
  %39 = load %struct.dest*, %struct.dest** %38, align 8
  %40 = load %struct.dest**, %struct.dest*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @DESTQ, i32 0, i32 0), align 8
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds %struct.dest*, %struct.dest** %40, i64 %41
  %43 = load %struct.dest*, %struct.dest** %42, align 8
  %44 = icmp ne %struct.dest* %39, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %36
  %46 = load %struct.dest*, %struct.dest** %11, align 8
  %47 = getelementptr inbounds %struct.dest, %struct.dest* %46, i32 0, i32 1
  %48 = load %struct.dest*, %struct.dest** %47, align 8
  store %struct.dest* %48, %struct.dest** %11, align 8
  %49 = load %struct.dest*, %struct.dest** %11, align 8
  %50 = getelementptr inbounds %struct.dest, %struct.dest* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  store i64 1, i64* %12, align 8
  br label %56

55:                                               ; preds = %45
  br label %36

56:                                               ; preds = %54, %36
  br label %57

57:                                               ; preds = %56, %34
  br label %58

58:                                               ; preds = %57, %23
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @zmw_leave_critical_section(i32* %59)
  %61 = load i64, i64* %12, align 8
  ret i64 %61
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
