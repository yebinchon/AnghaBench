; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_expand_builtin_extract_return_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_expand_builtin_extract_return_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_RTX = common dso_local global i32 0, align 4
@Pmode = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i64 0, align 8
@MASK_RETURN_ADDR = common dso_local global i32 0, align 4
@RETURN_ADDR_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @expand_builtin_extract_return_addr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @NULL_RTX, align 4
  %6 = load i64, i64* @Pmode, align 8
  %7 = call i32 @expand_expr(i32 %4, i32 %5, i64 %6, i32 0)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @GET_MODE(i32 %8)
  %10 = load i64, i64* @Pmode, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @GET_MODE(i32 %13)
  %15 = load i64, i64* @VOIDmode, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i64, i64* @Pmode, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @convert_to_mode(i64 %18, i32 %19, i32 0)
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %12, %1
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @expand_expr(i32, i32, i64, i32) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i32 @convert_to_mode(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
