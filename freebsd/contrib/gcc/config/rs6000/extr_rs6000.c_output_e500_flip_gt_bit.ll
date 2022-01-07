; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_output_e500_flip_gt_bit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_output_e500_flip_gt_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@output_e500_flip_gt_bit.string = internal global [64 x i8] zeroinitializer, align 16
@REG = common dso_local global i64 0, align 8
@CR0_REGNO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"crnot %d,%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @output_e500_flip_gt_bit(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @GET_CODE(i32 %7)
  %9 = load i64, i64* @REG, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @REGNO(i32 %12)
  %14 = call i64 @CR_REGNO_P(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @GET_CODE(i32 %17)
  %19 = load i64, i64* @REG, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @REGNO(i32 %22)
  %24 = call i64 @CR_REGNO_P(i32 %23)
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %21, %16, %11, %2
  %27 = phi i1 [ false, %16 ], [ false, %11 ], [ false, %2 ], [ %25, %21 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @gcc_assert(i32 %28)
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @REGNO(i32 %30)
  %32 = load i32, i32* @CR0_REGNO, align 4
  %33 = sub nsw i32 %31, %32
  %34 = mul nsw i32 4, %33
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @REGNO(i32 %36)
  %38 = load i32, i32* @CR0_REGNO, align 4
  %39 = sub nsw i32 %37, %38
  %40 = mul nsw i32 4, %39
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @sprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @output_e500_flip_gt_bit.string, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  ret i8* getelementptr inbounds ([64 x i8], [64 x i8]* @output_e500_flip_gt_bit.string, i64 0, i64 0)
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i64 @CR_REGNO_P(i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
