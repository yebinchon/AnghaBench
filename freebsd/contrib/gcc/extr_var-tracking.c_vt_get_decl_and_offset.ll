; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_var-tracking.c_vt_get_decl_and_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_var-tracking.c_vt_get_decl_and_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @vt_get_decl_and_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt_get_decl_and_offset(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @REG_P(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @REG_ATTRS(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @REG_EXPR(i32 %16)
  %18 = load i32*, i32** %6, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @REG_OFFSET(i32 %19)
  %21 = load i32*, i32** %7, align 8
  store i32 %20, i32* %21, align 4
  store i32 1, i32* %4, align 4
  br label %41

22:                                               ; preds = %11
  br label %40

23:                                               ; preds = %3
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @MEM_P(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @MEM_ATTRS(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @MEM_EXPR(i32 %32)
  %34 = load i32*, i32** %6, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @INT_MEM_OFFSET(i32 %35)
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  store i32 1, i32* %4, align 4
  br label %41

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38, %23
  br label %40

40:                                               ; preds = %39, %22
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %31, %15
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i64 @REG_P(i32) #1

declare dso_local i64 @REG_ATTRS(i32) #1

declare dso_local i32 @REG_EXPR(i32) #1

declare dso_local i32 @REG_OFFSET(i32) #1

declare dso_local i64 @MEM_P(i32) #1

declare dso_local i64 @MEM_ATTRS(i32) #1

declare dso_local i32 @MEM_EXPR(i32) #1

declare dso_local i32 @INT_MEM_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
