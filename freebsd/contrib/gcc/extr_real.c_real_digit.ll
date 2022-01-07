; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_real_digit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_real_digit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@real_digit.num = internal constant [10 x %struct.TYPE_4__] zeroinitializer, align 16
@rvc_zero = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i32)* @real_digit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @real_digit(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sge i32 %3, 0
  %5 = zext i1 %4 to i32
  %6 = call i32 @gcc_assert(i32 %5)
  %7 = load i32, i32* %2, align 4
  %8 = icmp sle i32 %7, 9
  %9 = zext i1 %8 to i32
  %10 = call i32 @gcc_assert(i32 %9)
  %11 = load i32, i32* %2, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [10 x %struct.TYPE_4__], [10 x %struct.TYPE_4__]* @real_digit.num, i64 0, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @rvc_zero, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %13
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [10 x %struct.TYPE_4__], [10 x %struct.TYPE_4__]* @real_digit.num, i64 0, i64 %23
  %25 = load i32, i32* @VOIDmode, align 4
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @real_from_integer(%struct.TYPE_4__* %24, i32 %25, i32 %26, i32 0, i32 1)
  br label %28

28:                                               ; preds = %21, %13, %1
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [10 x %struct.TYPE_4__], [10 x %struct.TYPE_4__]* @real_digit.num, i64 0, i64 %30
  ret %struct.TYPE_4__* %31
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @real_from_integer(%struct.TYPE_4__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
