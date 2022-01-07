; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_net.c_move_iovec_hdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_net.c_move_iovec_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iovec*, %struct.iovec*, i64, i32)* @move_iovec_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @move_iovec_hdr(%struct.iovec* %0, %struct.iovec* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.iovec*, align 8
  %6 = alloca %struct.iovec*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.iovec* %0, %struct.iovec** %5, align 8
  store %struct.iovec* %1, %struct.iovec** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %20, %4
  %12 = load i64, i64* %7, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %15, %16
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i1 [ false, %11 ], [ %17, %14 ]
  br i1 %19, label %20, label %53

20:                                               ; preds = %18
  %21 = load %struct.iovec*, %struct.iovec** %5, align 8
  %22 = getelementptr inbounds %struct.iovec, %struct.iovec* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i64 @min(i64 %23, i64 %24)
  store i64 %25, i64* %10, align 8
  %26 = load %struct.iovec*, %struct.iovec** %5, align 8
  %27 = getelementptr inbounds %struct.iovec, %struct.iovec* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.iovec*, %struct.iovec** %6, align 8
  %30 = getelementptr inbounds %struct.iovec, %struct.iovec* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load %struct.iovec*, %struct.iovec** %6, align 8
  %33 = getelementptr inbounds %struct.iovec, %struct.iovec* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load %struct.iovec*, %struct.iovec** %5, align 8
  %36 = getelementptr inbounds %struct.iovec, %struct.iovec* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub i64 %37, %34
  store i64 %38, i64* %36, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load %struct.iovec*, %struct.iovec** %5, align 8
  %41 = getelementptr inbounds %struct.iovec, %struct.iovec* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %42, %39
  store i64 %43, i64* %41, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %7, align 8
  %46 = sub i64 %45, %44
  store i64 %46, i64* %7, align 8
  %47 = load %struct.iovec*, %struct.iovec** %5, align 8
  %48 = getelementptr inbounds %struct.iovec, %struct.iovec* %47, i32 1
  store %struct.iovec* %48, %struct.iovec** %5, align 8
  %49 = load %struct.iovec*, %struct.iovec** %6, align 8
  %50 = getelementptr inbounds %struct.iovec, %struct.iovec* %49, i32 1
  store %struct.iovec* %50, %struct.iovec** %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %11

53:                                               ; preds = %18
  %54 = load i32, i32* %9, align 4
  ret i32 %54
}

declare dso_local i64 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
