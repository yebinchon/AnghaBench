; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_initial_elimination_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_initial_elimination_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@STACK_POINTER_OFFSET = common dso_local global i32 0, align 4
@current_function_outgoing_args_size = common dso_local global i32 0, align 4
@cfun_frame_layout = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@RETURN_REGNUM = common dso_local global i32 0, align 4
@UNITS_PER_WORD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s390_initial_elimination_offset(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @s390_can_eliminate(i32 %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %48

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %44 [
    i32 129, label %15
    i32 131, label %21
    i32 128, label %26
    i32 130, label %43
  ]

15:                                               ; preds = %13
  %16 = call i32 (...) @get_frame_size()
  %17 = load i32, i32* @STACK_POINTER_OFFSET, align 4
  %18 = add nsw i32 %16, %17
  %19 = load i32, i32* @current_function_outgoing_args_size, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %6, align 4
  br label %46

21:                                               ; preds = %13
  %22 = call i32 (...) @s390_init_frame_layout()
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 0), align 4
  %24 = load i32, i32* @STACK_POINTER_OFFSET, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %6, align 4
  br label %46

26:                                               ; preds = %13
  %27 = call i32 (...) @s390_init_frame_layout()
  %28 = load i32, i32* @RETURN_REGNUM, align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 1), align 4
  %30 = sub nsw i32 %28, %29
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp sge i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @gcc_assert(i32 %33)
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 0), align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfun_frame_layout, i32 0, i32 2), align 4
  %37 = add nsw i32 %35, %36
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @UNITS_PER_WORD, align 4
  %40 = mul nsw i32 %38, %39
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %6, align 4
  br label %46

43:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  br label %46

44:                                               ; preds = %13
  %45 = call i32 (...) @gcc_unreachable()
  br label %46

46:                                               ; preds = %44, %43, %26, %21, %15
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %12
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @s390_can_eliminate(i32, i32) #1

declare dso_local i32 @get_frame_size(...) #1

declare dso_local i32 @s390_init_frame_layout(...) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
