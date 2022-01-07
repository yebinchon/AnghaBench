; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_tsnmap.c_sctp_tsnmap_pending.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_tsnmap.c_sctp_tsnmap_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tsnmap = type { i64, i64, i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sctp_tsnmap_pending(%struct.sctp_tsnmap* %0) #0 {
  %2 = alloca %struct.sctp_tsnmap*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.sctp_tsnmap* %0, %struct.sctp_tsnmap** %2, align 8
  %9 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %2, align 8
  %10 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %3, align 8
  %12 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %2, align 8
  %13 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %4, align 8
  %15 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %2, align 8
  %16 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* %3, align 8
  %20 = sub nsw i64 %18, %19
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = sub nsw i64 %21, %22
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %1
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %2, align 8
  %29 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %1
  br label %54

33:                                               ; preds = %26
  store i64 0, i64* %8, align 8
  br label %34

34:                                               ; preds = %50, %33
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %7, align 8
  %37 = add nsw i64 %36, 1
  %38 = icmp slt i64 %35, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %34
  %40 = load i64, i64* %8, align 8
  %41 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %2, align 8
  %42 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @test_bit(i64 %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i64, i64* %6, align 8
  %48 = add nsw i64 %47, -1
  store i64 %48, i64* %6, align 8
  br label %49

49:                                               ; preds = %46, %39
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %8, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %8, align 8
  br label %34

53:                                               ; preds = %34
  br label %54

54:                                               ; preds = %53, %32
  %55 = load i64, i64* %6, align 8
  ret i64 %55
}

declare dso_local i64 @test_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
