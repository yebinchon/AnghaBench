; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_symbolic_address_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_symbolic_address_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_MIPS16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @mips_symbolic_address_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_symbolic_address_p(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %27 [
    i32 140, label %7
    i32 132, label %12
    i32 142, label %13
    i32 133, label %24
    i32 134, label %25
    i32 136, label %26
    i32 138, label %26
    i32 139, label %26
    i32 137, label %26
    i32 131, label %26
    i32 130, label %26
    i32 129, label %26
    i32 141, label %26
    i32 135, label %26
    i32 128, label %26
    i32 145, label %26
    i32 143, label %26
    i32 144, label %26
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @TARGET_MIPS16, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %3, align 4
  br label %29

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %29

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @GET_MODE_SIZE(i32 %14)
  %16 = icmp eq i32 %15, 4
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @GET_MODE_SIZE(i32 %18)
  %20 = icmp eq i32 %19, 8
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i1 [ true, %13 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %3, align 4
  br label %29

24:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %29

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

26:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  store i32 1, i32* %3, align 4
  br label %29

27:                                               ; preds = %2
  %28 = call i32 (...) @gcc_unreachable()
  br label %29

29:                                               ; preds = %27, %26, %25, %24, %21, %12, %7
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
