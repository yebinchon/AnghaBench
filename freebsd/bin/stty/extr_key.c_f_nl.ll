; ModuleID = '/home/carl/AnghaBench/freebsd/bin/stty/extr_key.c_f_nl.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/stty/extr_key.c_f_nl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.info = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@ICRNL = common dso_local global i32 0, align 4
@ONLCR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f_nl(%struct.info* %0) #0 {
  %2 = alloca %struct.info*, align 8
  store %struct.info* %0, %struct.info** %2, align 8
  %3 = load %struct.info*, %struct.info** %2, align 8
  %4 = getelementptr inbounds %struct.info, %struct.info* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = load i32, i32* @ICRNL, align 4
  %9 = load %struct.info*, %struct.info** %2, align 8
  %10 = getelementptr inbounds %struct.info, %struct.info* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %8
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* @ONLCR, align 4
  %15 = load %struct.info*, %struct.info** %2, align 8
  %16 = getelementptr inbounds %struct.info, %struct.info* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %14
  store i32 %19, i32* %17, align 4
  br label %35

20:                                               ; preds = %1
  %21 = load i32, i32* @ICRNL, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.info*, %struct.info** %2, align 8
  %24 = getelementptr inbounds %struct.info, %struct.info* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %22
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* @ONLCR, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.info*, %struct.info** %2, align 8
  %31 = getelementptr inbounds %struct.info, %struct.info* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %29
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %20, %7
  %36 = load %struct.info*, %struct.info** %2, align 8
  %37 = getelementptr inbounds %struct.info, %struct.info* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
