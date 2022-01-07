; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kfifo-new.c___kfifo_peek_n.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kfifo-new.c___kfifo_peek_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__kfifo = type { i32, i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.__kfifo*, i64)* @__kfifo_peek_n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__kfifo_peek_n(%struct.__kfifo* %0, i64 %1) #0 {
  %3 = alloca %struct.__kfifo*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.__kfifo* %0, %struct.__kfifo** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.__kfifo*, %struct.__kfifo** %3, align 8
  %9 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load %struct.__kfifo*, %struct.__kfifo** %3, align 8
  %12 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load %struct.__kfifo*, %struct.__kfifo** %3, align 8
  %16 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @__KFIFO_PEEK(i8* %14, i64 %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i64, i64* %4, align 8
  %21 = add i64 %20, -1
  store i64 %21, i64* %4, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %2
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.__kfifo*, %struct.__kfifo** %3, align 8
  %26 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @__KFIFO_PEEK(i8* %24, i64 %28, i32 %29)
  %31 = shl i32 %30, 8
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %23, %2
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @__KFIFO_PEEK(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
