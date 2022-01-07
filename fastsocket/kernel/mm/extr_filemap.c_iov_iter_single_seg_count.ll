; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c_iov_iter_single_seg_count.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c_iov_iter_single_seg_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iov_iter = type { i32, i64, i64, %struct.iovec* }
%struct.iovec = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @iov_iter_single_seg_count(%struct.iov_iter* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.iov_iter*, align 8
  %4 = alloca %struct.iovec*, align 8
  store %struct.iov_iter* %0, %struct.iov_iter** %3, align 8
  %5 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %6 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %5, i32 0, i32 3
  %7 = load %struct.iovec*, %struct.iovec** %6, align 8
  store %struct.iovec* %7, %struct.iovec** %4, align 8
  %8 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %9 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %14 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %2, align 8
  br label %28

16:                                               ; preds = %1
  %17 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %18 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.iovec*, %struct.iovec** %4, align 8
  %21 = getelementptr inbounds %struct.iovec, %struct.iovec* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.iov_iter*, %struct.iov_iter** %3, align 8
  %24 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %22, %25
  %27 = call i64 @min(i64 %19, i64 %26)
  store i64 %27, i64* %2, align 8
  br label %28

28:                                               ; preds = %16, %12
  %29 = load i64, i64* %2, align 8
  ret i64 %29
}

declare dso_local i64 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
