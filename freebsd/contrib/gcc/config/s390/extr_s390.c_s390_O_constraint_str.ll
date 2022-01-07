; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_O_constraint_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_O_constraint_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_EXTIMM = common dso_local global i32 0, align 4
@SImode = common dso_local global i32 0, align 4
@DImode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s390_O_constraint_str(i8 signext %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @TARGET_EXTIMM, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %47

9:                                                ; preds = %2
  %10 = load i8, i8* %4, align 1
  %11 = sext i8 %10 to i32
  switch i32 %11, label %45 [
    i32 115, label %12
    i32 112, label %19
    i32 110, label %32
  ]

12:                                               ; preds = %9
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @SImode, align 4
  %15 = call i32 @trunc_int_for_mode(i32 %13, i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %3, align 4
  br label %47

19:                                               ; preds = %9
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @GEN_INT(i32 %23)
  %25 = load i32, i32* @DImode, align 4
  %26 = load i32, i32* @SImode, align 4
  %27 = call i32 @s390_single_part(i32 %24, i32 %25, i32 %26, i32 0)
  %28 = icmp eq i32 %27, 1
  br label %29

29:                                               ; preds = %22, %19
  %30 = phi i1 [ true, %19 ], [ %28, %22 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %3, align 4
  br label %47

32:                                               ; preds = %9
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %42, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @GEN_INT(i32 %36)
  %38 = load i32, i32* @DImode, align 4
  %39 = load i32, i32* @SImode, align 4
  %40 = call i32 @s390_single_part(i32 %37, i32 %38, i32 %39, i32 -1)
  %41 = icmp eq i32 %40, 1
  br label %42

42:                                               ; preds = %35, %32
  %43 = phi i1 [ true, %32 ], [ %41, %35 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %3, align 4
  br label %47

45:                                               ; preds = %9
  %46 = call i32 (...) @gcc_unreachable()
  br label %47

47:                                               ; preds = %8, %12, %29, %42, %45
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @trunc_int_for_mode(i32, i32) #1

declare dso_local i32 @s390_single_part(i32, i32, i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
