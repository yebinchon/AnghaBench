; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_gen_lowpart_or_truncate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_gen_lowpart_or_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUNCATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @gen_lowpart_or_truncate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_lowpart_or_truncate(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @GET_MODE(i32 %6)
  %8 = call i64 @GET_MODE_SIZE(i32 %7)
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @GET_MODE_SIZE(i32 %9)
  %11 = icmp sle i64 %8, %10
  br i1 %11, label %29, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @GET_MODE_BITSIZE(i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @GET_MODE(i32 %15)
  %17 = call i32 @GET_MODE_BITSIZE(i32 %16)
  %18 = call i64 @TRULY_NOOP_TRUNCATION(i32 %14, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %12
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @REG_P(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @reg_truncated_to_mode(i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24, %12, %2
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @gen_lowpart(i32 %30, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %40

33:                                               ; preds = %24, %20
  %34 = load i32, i32* @TRUNCATE, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @GET_MODE(i32 %37)
  %39 = call i32 @simplify_gen_unary(i32 %34, i32 %35, i32 %36, i32 %38)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %33, %29
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i64 @TRULY_NOOP_TRUNCATION(i32, i32) #1

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i64 @reg_truncated_to_mode(i32, i32) #1

declare dso_local i32 @gen_lowpart(i32, i32) #1

declare dso_local i32 @simplify_gen_unary(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
