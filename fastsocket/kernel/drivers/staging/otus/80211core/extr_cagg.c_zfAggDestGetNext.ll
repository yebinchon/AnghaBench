; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cagg.c_zfAggDestGetNext.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cagg.c_zfAggDestGetNext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.dest** }
%struct.dest = type { %struct.dest* }

@DESTQ = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dest* @zfAggDestGetNext(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dest*, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.dest* null, %struct.dest** %5, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @zmw_get_wlan_dev(i32* %6)
  %8 = call i32 (...) @zmw_declare_for_critical_section()
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @zmw_enter_critical_section(i32* %9)
  %11 = load %struct.dest**, %struct.dest*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @DESTQ, i32 0, i32 0), align 8
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds %struct.dest*, %struct.dest** %11, i64 %12
  %14 = load %struct.dest*, %struct.dest** %13, align 8
  %15 = icmp ne %struct.dest* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %2
  %17 = load %struct.dest**, %struct.dest*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @DESTQ, i32 0, i32 0), align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds %struct.dest*, %struct.dest** %17, i64 %18
  %20 = load %struct.dest*, %struct.dest** %19, align 8
  store %struct.dest* %20, %struct.dest** %5, align 8
  %21 = load %struct.dest**, %struct.dest*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @DESTQ, i32 0, i32 0), align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds %struct.dest*, %struct.dest** %21, i64 %22
  %24 = load %struct.dest*, %struct.dest** %23, align 8
  %25 = getelementptr inbounds %struct.dest, %struct.dest* %24, i32 0, i32 0
  %26 = load %struct.dest*, %struct.dest** %25, align 8
  %27 = load %struct.dest**, %struct.dest*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @DESTQ, i32 0, i32 0), align 8
  %28 = load i64, i64* %4, align 8
  %29 = getelementptr inbounds %struct.dest*, %struct.dest** %27, i64 %28
  store %struct.dest* %26, %struct.dest** %29, align 8
  br label %31

30:                                               ; preds = %2
  store %struct.dest* null, %struct.dest** %5, align 8
  br label %31

31:                                               ; preds = %30, %16
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @zmw_leave_critical_section(i32* %32)
  %34 = load %struct.dest*, %struct.dest** %5, align 8
  ret %struct.dest* %34
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
