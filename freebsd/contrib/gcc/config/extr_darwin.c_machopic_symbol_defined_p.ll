; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/extr_darwin.c_machopic_symbol_defined_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/extr_darwin.c_machopic_symbol_defined_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MACHO_SYMBOL_FLAG_DEFINED = common dso_local global i32 0, align 4
@MACHO_SYMBOL_FLAG_VARIABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @machopic_symbol_defined_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @machopic_symbol_defined_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @SYMBOL_REF_FLAGS(i32 %5)
  %7 = load i32, i32* @MACHO_SYMBOL_FLAG_DEFINED, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %39

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @SYMBOL_REF_LOCAL_P(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @SYMBOL_REF_EXTERNAL_P(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %38, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @SYMBOL_REF_FLAGS(i32 %20)
  %22 = load i32, i32* @MACHO_SYMBOL_FLAG_VARIABLE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %19
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @SYMBOL_REF_DECL(i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %39

31:                                               ; preds = %25
  %32 = load i32, i32* %4, align 4
  %33 = call i64 @DECL_COMMON(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %39

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %19
  store i32 1, i32* %2, align 4
  br label %39

38:                                               ; preds = %15, %11
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %37, %35, %30, %10
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @SYMBOL_REF_FLAGS(i32) #1

declare dso_local i64 @SYMBOL_REF_LOCAL_P(i32) #1

declare dso_local i32 @SYMBOL_REF_EXTERNAL_P(i32) #1

declare dso_local i32 @SYMBOL_REF_DECL(i32) #1

declare dso_local i64 @DECL_COMMON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
