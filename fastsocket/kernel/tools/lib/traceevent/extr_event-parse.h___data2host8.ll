; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.h___data2host8.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.h___data2host8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pevent = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pevent*, i64)* @__data2host8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__data2host8(%struct.pevent* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.pevent*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.pevent* %0, %struct.pevent** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.pevent*, %struct.pevent** %4, align 8
  %8 = getelementptr inbounds %struct.pevent, %struct.pevent* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.pevent*, %struct.pevent** %4, align 8
  %11 = getelementptr inbounds %struct.pevent, %struct.pevent* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %9, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  store i64 %15, i64* %3, align 8
  br label %49

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  %18 = and i64 %17, 255
  %19 = shl i64 %18, 56
  %20 = load i64, i64* %5, align 8
  %21 = and i64 %20, 65280
  %22 = shl i64 %21, 40
  %23 = or i64 %19, %22
  %24 = load i64, i64* %5, align 8
  %25 = and i64 %24, 16711680
  %26 = shl i64 %25, 24
  %27 = or i64 %23, %26
  %28 = load i64, i64* %5, align 8
  %29 = and i64 %28, 4278190080
  %30 = shl i64 %29, 8
  %31 = or i64 %27, %30
  %32 = load i64, i64* %5, align 8
  %33 = and i64 %32, 1095216660480
  %34 = lshr i64 %33, 8
  %35 = or i64 %31, %34
  %36 = load i64, i64* %5, align 8
  %37 = and i64 %36, 280375465082880
  %38 = lshr i64 %37, 24
  %39 = or i64 %35, %38
  %40 = load i64, i64* %5, align 8
  %41 = and i64 %40, 71776119061217280
  %42 = lshr i64 %41, 40
  %43 = or i64 %39, %42
  %44 = load i64, i64* %5, align 8
  %45 = and i64 %44, -72057594037927936
  %46 = lshr i64 %45, 56
  %47 = or i64 %43, %46
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* %6, align 8
  store i64 %48, i64* %3, align 8
  br label %49

49:                                               ; preds = %16, %14
  %50 = load i64, i64* %3, align 8
  ret i64 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
