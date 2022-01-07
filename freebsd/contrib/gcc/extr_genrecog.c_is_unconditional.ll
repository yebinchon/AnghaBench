; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_is_unconditional.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_is_unconditional.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decision_test = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@DT_accept_op = common dso_local global i64 0, align 8
@DT_accept_insn = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.decision_test*, i32)* @is_unconditional to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_unconditional(%struct.decision_test* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.decision_test*, align 8
  %5 = alloca i32, align 4
  store %struct.decision_test* %0, %struct.decision_test** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %7 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @DT_accept_op, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %34

12:                                               ; preds = %2
  %13 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %14 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DT_accept_insn, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %30 [
    i32 129, label %20
    i32 128, label %28
    i32 130, label %29
  ]

20:                                               ; preds = %18
  %21 = load %struct.decision_test*, %struct.decision_test** %4, align 8
  %22 = getelementptr inbounds %struct.decision_test, %struct.decision_test* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %3, align 4
  br label %34

28:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %34

29:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %34

30:                                               ; preds = %18
  %31 = call i32 (...) @gcc_unreachable()
  br label %32

32:                                               ; preds = %30
  br label %33

33:                                               ; preds = %32, %12
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %29, %28, %20, %11
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
