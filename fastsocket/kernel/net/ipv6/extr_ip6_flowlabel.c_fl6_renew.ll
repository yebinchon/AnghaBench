; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_flowlabel.c_fl6_renew.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_flowlabel.c_fl6_renew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_flowlabel = type { i64, i64, i64 }

@EPERM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip6_flowlabel*, i64, i64)* @fl6_renew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fl6_renew(%struct.ip6_flowlabel* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip6_flowlabel*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ip6_flowlabel* %0, %struct.ip6_flowlabel** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = call i64 @check_linger(i64 %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @EPERM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %68

15:                                               ; preds = %3
  %16 = load i64, i64* %7, align 8
  %17 = call i64 @check_linger(i64 %16)
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @EPERM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %68

23:                                               ; preds = %15
  %24 = load i64, i64* @jiffies, align 8
  %25 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %5, align 8
  %26 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %5, align 8
  %28 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @time_before(i64 %29, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %5, align 8
  %36 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %33, %23
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %5, align 8
  %40 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @time_before(i64 %38, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %5, align 8
  %46 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %7, align 8
  br label %48

48:                                               ; preds = %44, %37
  %49 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %5, align 8
  %50 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %5, align 8
  %53 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %7, align 8
  %56 = add i64 %54, %55
  %57 = call i64 @time_before(i64 %51, i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %48
  %60 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %5, align 8
  %61 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = add i64 %62, %63
  %65 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %5, align 8
  %66 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %59, %48
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %20, %12
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i64 @check_linger(i64) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
