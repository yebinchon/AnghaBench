; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_relay.c_relay_subbufs_consumed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_relay.c_relay_subbufs_consumed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rchan = type { i64, %struct.rchan_buf** }
%struct.rchan_buf = type { i64, i64 }

@NR_CPUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @relay_subbufs_consumed(%struct.rchan* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.rchan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.rchan_buf*, align 8
  store %struct.rchan* %0, %struct.rchan** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load %struct.rchan*, %struct.rchan** %4, align 8
  %9 = icmp ne %struct.rchan* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %60

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @NR_CPUS, align 4
  %14 = icmp uge i32 %12, %13
  br i1 %14, label %30, label %15

15:                                               ; preds = %11
  %16 = load %struct.rchan*, %struct.rchan** %4, align 8
  %17 = getelementptr inbounds %struct.rchan, %struct.rchan* %16, i32 0, i32 1
  %18 = load %struct.rchan_buf**, %struct.rchan_buf*** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.rchan_buf*, %struct.rchan_buf** %18, i64 %20
  %22 = load %struct.rchan_buf*, %struct.rchan_buf** %21, align 8
  %23 = icmp ne %struct.rchan_buf* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %15
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.rchan*, %struct.rchan** %4, align 8
  %27 = getelementptr inbounds %struct.rchan, %struct.rchan* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ugt i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %15, %11
  br label %60

31:                                               ; preds = %24
  %32 = load %struct.rchan*, %struct.rchan** %4, align 8
  %33 = getelementptr inbounds %struct.rchan, %struct.rchan* %32, i32 0, i32 1
  %34 = load %struct.rchan_buf**, %struct.rchan_buf*** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.rchan_buf*, %struct.rchan_buf** %34, i64 %36
  %38 = load %struct.rchan_buf*, %struct.rchan_buf** %37, align 8
  store %struct.rchan_buf* %38, %struct.rchan_buf** %7, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.rchan_buf*, %struct.rchan_buf** %7, align 8
  %41 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.rchan_buf*, %struct.rchan_buf** %7, align 8
  %44 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = sub i64 %42, %45
  %47 = icmp ugt i64 %39, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %31
  %49 = load %struct.rchan_buf*, %struct.rchan_buf** %7, align 8
  %50 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.rchan_buf*, %struct.rchan_buf** %7, align 8
  %53 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  br label %60

54:                                               ; preds = %31
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.rchan_buf*, %struct.rchan_buf** %7, align 8
  %57 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, %55
  store i64 %59, i64* %57, align 8
  br label %60

60:                                               ; preds = %10, %30, %54, %48
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
