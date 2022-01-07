; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_read_write.c_iov_shorten.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_read_write.c_iov_shorten.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @iov_shorten(%struct.iovec* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.iovec*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.iovec* %0, %struct.iovec** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %9

9:                                                ; preds = %29, %3
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %9
  %14 = load i64, i64* %7, align 8
  %15 = add i64 %14, 1
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load %struct.iovec*, %struct.iovec** %4, align 8
  %18 = getelementptr inbounds %struct.iovec, %struct.iovec* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add i64 %16, %19
  %21 = load i64, i64* %6, align 8
  %22 = icmp uge i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %13
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %8, align 8
  %26 = sub i64 %24, %25
  %27 = load %struct.iovec*, %struct.iovec** %4, align 8
  %28 = getelementptr inbounds %struct.iovec, %struct.iovec* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %37

29:                                               ; preds = %13
  %30 = load %struct.iovec*, %struct.iovec** %4, align 8
  %31 = getelementptr inbounds %struct.iovec, %struct.iovec* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = add i64 %33, %32
  store i64 %34, i64* %8, align 8
  %35 = load %struct.iovec*, %struct.iovec** %4, align 8
  %36 = getelementptr inbounds %struct.iovec, %struct.iovec* %35, i32 1
  store %struct.iovec* %36, %struct.iovec** %4, align 8
  br label %9

37:                                               ; preds = %23, %9
  %38 = load i64, i64* %7, align 8
  ret i64 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
