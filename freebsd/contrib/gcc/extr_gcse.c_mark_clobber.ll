; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_mark_clobber.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_mark_clobber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUBREG = common dso_local global i64 0, align 8
@STRICT_LOW_PART = common dso_local global i64 0, align 8
@reg_set_bitmap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @mark_clobber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_clobber(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @XEXP(i32 %6, i32 0)
  store i32 %7, i32* %5, align 4
  br label %8

8:                                                ; preds = %20, %2
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @GET_CODE(i32 %9)
  %11 = load i64, i64* @SUBREG, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @GET_CODE(i32 %14)
  %16 = load i64, i64* @STRICT_LOW_PART, align 8
  %17 = icmp eq i64 %15, %16
  br label %18

18:                                               ; preds = %13, %8
  %19 = phi i1 [ true, %8 ], [ %17, %13 ]
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @XEXP(i32 %21, i32 0)
  store i32 %22, i32* %5, align 4
  br label %8

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @REG_P(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i32, i32* @reg_set_bitmap, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @REGNO(i32 %29)
  %31 = call i32 @SET_REGNO_REG_SET(i32 %28, i32 %30)
  br label %35

32:                                               ; preds = %23
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @record_last_mem_set_info(i32 %33)
  br label %35

35:                                               ; preds = %32, %27
  ret void
}

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i32 @SET_REGNO_REG_SET(i32, i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i32 @record_last_mem_set_info(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
