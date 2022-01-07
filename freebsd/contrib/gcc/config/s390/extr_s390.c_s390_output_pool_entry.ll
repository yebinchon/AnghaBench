; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_output_pool_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_output_pool_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONST_DOUBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s390_output_pool_entry(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @GET_MODE_CLASS(i32 %8)
  switch i32 %9, label %30 [
    i32 129, label %10
    i32 130, label %10
    i32 128, label %24
  ]

10:                                               ; preds = %3, %3
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @GET_CODE(i32 %11)
  %13 = load i32, i32* @CONST_DOUBLE, align 4
  %14 = icmp eq i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @gcc_assert(i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @REAL_VALUE_FROM_CONST_DOUBLE(i32 %17, i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @assemble_real(i32 %20, i32 %21, i32 %22)
  br label %32

24:                                               ; preds = %3
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @GET_MODE_SIZE(i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @assemble_integer(i32 %25, i32 %27, i32 %28, i32 1)
  br label %32

30:                                               ; preds = %3
  %31 = call i32 (...) @gcc_unreachable()
  br label %32

32:                                               ; preds = %30, %24, %10
  ret void
}

declare dso_local i32 @GET_MODE_CLASS(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @REAL_VALUE_FROM_CONST_DOUBLE(i32, i32) #1

declare dso_local i32 @assemble_real(i32, i32, i32) #1

declare dso_local i32 @assemble_integer(i32, i32, i32, i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
