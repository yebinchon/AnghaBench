; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_cannot_force_const_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_cannot_force_const_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flag_pic = common dso_local global i32 0, align 4
@TARGET_CPU_ZARCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @s390_cannot_force_const_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s390_cannot_force_const_mem(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @GET_CODE(i32 %4)
  switch i32 %5, label %44 [
    i32 144, label %6
    i32 145, label %6
    i32 143, label %7
    i32 140, label %11
    i32 146, label %20
    i32 141, label %24
    i32 142, label %24
    i32 139, label %37
  ]

6:                                                ; preds = %1, %1
  store i32 0, i32* %2, align 4
  br label %46

7:                                                ; preds = %1
  %8 = load i32, i32* @flag_pic, align 4
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  store i32 %10, i32* %2, align 4
  br label %46

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @tls_symbolic_operand(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %46

16:                                               ; preds = %11
  %17 = load i32, i32* @flag_pic, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %2, align 4
  br label %46

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @XEXP(i32 %21, i32 0)
  %23 = call i32 @s390_cannot_force_const_mem(i32 %22)
  store i32 %23, i32* %2, align 4
  br label %46

24:                                               ; preds = %1, %1
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @XEXP(i32 %25, i32 0)
  %27 = call i32 @s390_cannot_force_const_mem(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @XEXP(i32 %30, i32 1)
  %32 = call i32 @s390_cannot_force_const_mem(i32 %31)
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %29, %24
  %35 = phi i1 [ true, %24 ], [ %33, %29 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %2, align 4
  br label %46

37:                                               ; preds = %1
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @XINT(i32 %38, i32 1)
  switch i32 %39, label %43 [
    i32 132, label %40
    i32 137, label %40
    i32 135, label %40
    i32 130, label %40
    i32 129, label %40
    i32 128, label %40
    i32 131, label %40
    i32 138, label %40
    i32 136, label %40
    i32 134, label %40
    i32 133, label %41
  ]

40:                                               ; preds = %37, %37, %37, %37, %37, %37, %37, %37, %37, %37
  store i32 0, i32* %2, align 4
  br label %46

41:                                               ; preds = %37
  %42 = load i32, i32* @TARGET_CPU_ZARCH, align 4
  store i32 %42, i32* %2, align 4
  br label %46

43:                                               ; preds = %37
  store i32 1, i32* %2, align 4
  br label %46

44:                                               ; preds = %1
  %45 = call i32 (...) @gcc_unreachable()
  br label %46

46:                                               ; preds = %6, %7, %15, %16, %20, %34, %40, %41, %43, %44
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @tls_symbolic_operand(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @XINT(i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
