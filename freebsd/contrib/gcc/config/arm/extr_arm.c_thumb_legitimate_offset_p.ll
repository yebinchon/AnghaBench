; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_thumb_legitimate_offset_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_thumb_legitimate_offset_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thumb_legitimate_offset_p(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @GET_MODE_SIZE(i32 %6)
  switch i32 %7, label %30 [
    i32 1, label %8
    i32 2, label %17
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 32
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi i1 [ false, %8 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %3, align 4
  br label %46

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 64
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br label %27

27:                                               ; preds = %23, %20, %17
  %28 = phi i1 [ false, %20 ], [ false, %17 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %3, align 4
  br label %46

30:                                               ; preds = %2
  %31 = load i32, i32* %5, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @GET_MODE_SIZE(i32 %35)
  %37 = add nsw i32 %34, %36
  %38 = icmp sle i32 %37, 128
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, 3
  %42 = icmp eq i32 %41, 0
  br label %43

43:                                               ; preds = %39, %33, %30
  %44 = phi i1 [ false, %33 ], [ false, %30 ], [ %42, %39 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %43, %27, %14
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @GET_MODE_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
