; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cagg.c_zfAggDestInsert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cagg.c_zfAggDestInsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.dest**, %struct.dest** }
%struct.dest = type { %struct.dest*, i8*, i8*, i64 }

@DESTQ = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfAggDestInsert(i32* %0, i64 %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.dest*, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @zmw_get_wlan_dev(i32* %12)
  %14 = call i32 (...) @zmw_declare_for_critical_section()
  %15 = load i32*, i32** %6, align 8
  %16 = call %struct.dest* @zfwMemAllocate(i32* %15, i32 32)
  store %struct.dest* %16, %struct.dest** %11, align 8
  %17 = load %struct.dest*, %struct.dest** %11, align 8
  %18 = icmp ne %struct.dest* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  br label %78

20:                                               ; preds = %5
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.dest*, %struct.dest** %11, align 8
  %23 = getelementptr inbounds %struct.dest, %struct.dest* %22, i32 0, i32 3
  store i64 %21, i64* %23, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load %struct.dest*, %struct.dest** %11, align 8
  %26 = getelementptr inbounds %struct.dest, %struct.dest* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp eq i64 0, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load i8*, i8** %9, align 8
  %31 = load %struct.dest*, %struct.dest** %11, align 8
  %32 = getelementptr inbounds %struct.dest, %struct.dest* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  br label %37

33:                                               ; preds = %20
  %34 = load i8*, i8** %10, align 8
  %35 = load %struct.dest*, %struct.dest** %11, align 8
  %36 = getelementptr inbounds %struct.dest, %struct.dest* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  br label %37

37:                                               ; preds = %33, %29
  %38 = load %struct.dest**, %struct.dest*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @DESTQ, i32 0, i32 1), align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds %struct.dest*, %struct.dest** %38, i64 %39
  %41 = load %struct.dest*, %struct.dest** %40, align 8
  %42 = icmp ne %struct.dest* %41, null
  br i1 %42, label %58, label %43

43:                                               ; preds = %37
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @zmw_enter_critical_section(i32* %44)
  %46 = load %struct.dest*, %struct.dest** %11, align 8
  %47 = load %struct.dest*, %struct.dest** %11, align 8
  %48 = getelementptr inbounds %struct.dest, %struct.dest* %47, i32 0, i32 0
  store %struct.dest* %46, %struct.dest** %48, align 8
  %49 = load %struct.dest*, %struct.dest** %11, align 8
  %50 = load %struct.dest**, %struct.dest*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @DESTQ, i32 0, i32 0), align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds %struct.dest*, %struct.dest** %50, i64 %51
  store %struct.dest* %49, %struct.dest** %52, align 8
  %53 = load %struct.dest**, %struct.dest*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @DESTQ, i32 0, i32 1), align 8
  %54 = load i64, i64* %8, align 8
  %55 = getelementptr inbounds %struct.dest*, %struct.dest** %53, i64 %54
  store %struct.dest* %49, %struct.dest** %55, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @zmw_leave_critical_section(i32* %56)
  br label %77

58:                                               ; preds = %37
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @zmw_enter_critical_section(i32* %59)
  %61 = load %struct.dest**, %struct.dest*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @DESTQ, i32 0, i32 0), align 8
  %62 = load i64, i64* %8, align 8
  %63 = getelementptr inbounds %struct.dest*, %struct.dest** %61, i64 %62
  %64 = load %struct.dest*, %struct.dest** %63, align 8
  %65 = getelementptr inbounds %struct.dest, %struct.dest* %64, i32 0, i32 0
  %66 = load %struct.dest*, %struct.dest** %65, align 8
  %67 = load %struct.dest*, %struct.dest** %11, align 8
  %68 = getelementptr inbounds %struct.dest, %struct.dest* %67, i32 0, i32 0
  store %struct.dest* %66, %struct.dest** %68, align 8
  %69 = load %struct.dest*, %struct.dest** %11, align 8
  %70 = load %struct.dest**, %struct.dest*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @DESTQ, i32 0, i32 0), align 8
  %71 = load i64, i64* %8, align 8
  %72 = getelementptr inbounds %struct.dest*, %struct.dest** %70, i64 %71
  %73 = load %struct.dest*, %struct.dest** %72, align 8
  %74 = getelementptr inbounds %struct.dest, %struct.dest* %73, i32 0, i32 0
  store %struct.dest* %69, %struct.dest** %74, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @zmw_leave_critical_section(i32* %75)
  br label %77

77:                                               ; preds = %58, %43
  br label %78

78:                                               ; preds = %77, %19
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local %struct.dest* @zfwMemAllocate(i32*, i32) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
