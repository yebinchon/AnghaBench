; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_subreg_lowpart_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_subreg_lowpart_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUBREG = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @subreg_lowpart_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @GET_CODE(i32 %4)
  %6 = load i64, i64* @SUBREG, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %28

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @SUBREG_REG(i32 %10)
  %12 = call i64 @GET_MODE(i32 %11)
  %13 = load i64, i64* @VOIDmode, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %28

16:                                               ; preds = %9
  br label %17

17:                                               ; preds = %16
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @GET_MODE(i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @SUBREG_REG(i32 %20)
  %22 = call i64 @GET_MODE(i32 %21)
  %23 = call i64 @subreg_lowpart_offset(i64 %19, i64 %22)
  %24 = load i32, i32* %3, align 4
  %25 = call i64 @SUBREG_BYTE(i32 %24)
  %26 = icmp eq i64 %23, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %17, %15, %8
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i64 @subreg_lowpart_offset(i64, i64) #1

declare dso_local i64 @SUBREG_BYTE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
