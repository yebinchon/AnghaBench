; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_reset_used_decls.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_reset_used_decls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @reset_used_decls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_used_decls(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @BLOCK_VARS(i64 %4)
  store i64 %5, i64* %3, align 8
  br label %6

6:                                                ; preds = %18, %1
  %7 = load i64, i64* %3, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %6
  %10 = load i64, i64* %3, align 8
  %11 = call i64 @DECL_RTL_SET_P(i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @DECL_RTL(i64 %14)
  %16 = call i32 @reset_used_flags(i32 %15)
  br label %17

17:                                               ; preds = %13, %9
  br label %18

18:                                               ; preds = %17
  %19 = load i64, i64* %3, align 8
  %20 = call i64 @TREE_CHAIN(i64 %19)
  store i64 %20, i64* %3, align 8
  br label %6

21:                                               ; preds = %6
  %22 = load i64, i64* %2, align 8
  %23 = call i64 @BLOCK_SUBBLOCKS(i64 %22)
  store i64 %23, i64* %3, align 8
  br label %24

24:                                               ; preds = %29, %21
  %25 = load i64, i64* %3, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i64, i64* %3, align 8
  call void @reset_used_decls(i64 %28)
  br label %29

29:                                               ; preds = %27
  %30 = load i64, i64* %3, align 8
  %31 = call i64 @TREE_CHAIN(i64 %30)
  store i64 %31, i64* %3, align 8
  br label %24

32:                                               ; preds = %24
  ret void
}

declare dso_local i64 @BLOCK_VARS(i64) #1

declare dso_local i64 @DECL_RTL_SET_P(i64) #1

declare dso_local i32 @reset_used_flags(i32) #1

declare dso_local i32 @DECL_RTL(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @BLOCK_SUBBLOCKS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
