; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_route.c_rt_may_expire.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_route.c_rt_may_expire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtable = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtable*, i64, i64)* @rt_may_expire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt_may_expire(%struct.rtable* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.rtable*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.rtable* %0, %struct.rtable** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.rtable*, %struct.rtable** %4, align 8
  %10 = getelementptr inbounds %struct.rtable, %struct.rtable* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %13 = call i64 @atomic_read(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %58

16:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  %17 = load %struct.rtable*, %struct.rtable** %4, align 8
  %18 = getelementptr inbounds %struct.rtable, %struct.rtable* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %16
  %24 = load i64, i64* @jiffies, align 8
  %25 = load %struct.rtable*, %struct.rtable** %4, align 8
  %26 = getelementptr inbounds %struct.rtable, %struct.rtable* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @time_after_eq(i64 %24, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %58

33:                                               ; preds = %23, %16
  %34 = load i64, i64* @jiffies, align 8
  %35 = load %struct.rtable*, %struct.rtable** %4, align 8
  %36 = getelementptr inbounds %struct.rtable, %struct.rtable* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub i64 %34, %39
  store i64 %40, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %5, align 8
  %43 = icmp ule i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %33
  %45 = load %struct.rtable*, %struct.rtable** %4, align 8
  %46 = call i32 @rt_fast_clean(%struct.rtable* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %44, %33
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %6, align 8
  %51 = icmp ule i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load %struct.rtable*, %struct.rtable** %4, align 8
  %54 = call i64 @rt_valuable(%struct.rtable* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52, %44
  br label %58

57:                                               ; preds = %52, %48
  store i32 1, i32* %8, align 4
  br label %58

58:                                               ; preds = %57, %56, %32, %15
  %59 = load i32, i32* %8, align 4
  ret i32 %59
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @rt_fast_clean(%struct.rtable*) #1

declare dso_local i64 @rt_valuable(%struct.rtable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
