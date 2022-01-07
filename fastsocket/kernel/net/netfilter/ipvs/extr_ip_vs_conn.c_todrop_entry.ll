; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_conn.c_todrop_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_conn.c_todrop_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }

@todrop_entry.todrop_rate = internal constant [9 x i8] c"\00\01\02\03\04\05\06\07\08", align 1
@todrop_entry.todrop_counter = internal global [9 x i8] zeroinitializer, align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_vs_conn*)* @todrop_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @todrop_entry(%struct.ip_vs_conn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ip_vs_conn*, align 8
  %4 = alloca i32, align 4
  store %struct.ip_vs_conn* %0, %struct.ip_vs_conn** %3, align 8
  %5 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %6 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @jiffies, align 8
  %9 = add nsw i64 %7, %8
  %10 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %11 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @HZ, align 4
  %15 = mul nsw i32 60, %14
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %13, %16
  %18 = call i64 @time_before(i64 %9, i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %55

21:                                               ; preds = %1
  %22 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %23 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %22, i32 0, i32 0
  %24 = call i32 @atomic_read(i32* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp sgt i32 %25, 8
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %21
  store i32 0, i32* %2, align 4
  br label %55

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [9 x i8], [9 x i8]* @todrop_entry.todrop_rate, i64 0, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %55

38:                                               ; preds = %31
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [9 x i8], [9 x i8]* @todrop_entry.todrop_counter, i64 0, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = add i8 %42, -1
  store i8 %43, i8* %41, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %55

47:                                               ; preds = %38
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [9 x i8], [9 x i8]* @todrop_entry.todrop_rate, i64 0, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [9 x i8], [9 x i8]* @todrop_entry.todrop_counter, i64 0, i64 %53
  store i8 %51, i8* %54, align 1
  store i32 1, i32* %2, align 4
  br label %55

55:                                               ; preds = %47, %46, %37, %30, %20
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
