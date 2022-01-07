; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-reference.c_look_for_address_of.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-reference.c_look_for_address_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADDR_EXPR = common dso_local global i64 0, align 8
@VAR_DECL = common dso_local global i64 0, align 8
@FUNCTION_DECL = common dso_local global i64 0, align 8
@module_statics_escape = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @look_for_address_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @look_for_address_of(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i64 @TREE_CODE(i32 %4)
  %6 = load i64, i64* @ADDR_EXPR, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %31

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @get_base_var(i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @TREE_CODE(i32 %11)
  %13 = load i64, i64* @VAR_DECL, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %20, label %15

15:                                               ; preds = %8
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @TREE_CODE(i32 %16)
  %18 = load i64, i64* @FUNCTION_DECL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %15, %8
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @has_proper_scope_for_analysis(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32, i32* @module_statics_escape, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @DECL_UID(i32 %26)
  %28 = call i32 @bitmap_set_bit(i32 %25, i32 %27)
  br label %29

29:                                               ; preds = %24, %20
  br label %30

30:                                               ; preds = %29, %15
  br label %31

31:                                               ; preds = %30, %1
  ret void
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @get_base_var(i32) #1

declare dso_local i64 @has_proper_scope_for_analysis(i32) #1

declare dso_local i32 @bitmap_set_bit(i32, i32) #1

declare dso_local i32 @DECL_UID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
