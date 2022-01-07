; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-dis.c_unit_to_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-dis.c_unit_to_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IA64_TYPE_A = common dso_local global i32 0, align 4
@IA64_TYPE_I = common dso_local global i32 0, align 4
@IA64_TYPE_M = common dso_local global i32 0, align 4
@IA64_TYPE_B = common dso_local global i32 0, align 4
@IA64_TYPE_F = common dso_local global i32 0, align 4
@IA64_TYPE_X = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @unit_to_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unit_to_type(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @IA64_OP(i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp sge i32 %9, 8
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 131
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 129
  br i1 %16, label %17, label %19

17:                                               ; preds = %14, %11
  %18 = load i32, i32* @IA64_TYPE_A, align 4
  store i32 %18, i32* %5, align 4
  br label %33

19:                                               ; preds = %14, %2
  %20 = load i32, i32* %4, align 4
  switch i32 %20, label %31 [
    i32 131, label %21
    i32 129, label %23
    i32 133, label %25
    i32 132, label %27
    i32 130, label %29
    i32 128, label %29
  ]

21:                                               ; preds = %19
  %22 = load i32, i32* @IA64_TYPE_I, align 4
  store i32 %22, i32* %5, align 4
  br label %32

23:                                               ; preds = %19
  %24 = load i32, i32* @IA64_TYPE_M, align 4
  store i32 %24, i32* %5, align 4
  br label %32

25:                                               ; preds = %19
  %26 = load i32, i32* @IA64_TYPE_B, align 4
  store i32 %26, i32* %5, align 4
  br label %32

27:                                               ; preds = %19
  %28 = load i32, i32* @IA64_TYPE_F, align 4
  store i32 %28, i32* %5, align 4
  br label %32

29:                                               ; preds = %19, %19
  %30 = load i32, i32* @IA64_TYPE_X, align 4
  store i32 %30, i32* %5, align 4
  br label %32

31:                                               ; preds = %19
  store i32 -1, i32* %5, align 4
  br label %32

32:                                               ; preds = %31, %29, %27, %25, %23, %21
  br label %33

33:                                               ; preds = %32, %17
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @IA64_OP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
