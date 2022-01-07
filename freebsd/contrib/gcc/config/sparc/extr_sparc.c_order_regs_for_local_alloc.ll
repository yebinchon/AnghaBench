; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_order_regs_for_local_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_order_regs_for_local_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@order_regs_for_local_alloc.last_order_nonleaf = internal global i32 1, align 4
@regs_ever_live = common dso_local global i32* null, align 8
@reg_alloc_order = common dso_local global i64 0, align 8
@reg_alloc_orders = common dso_local global i64* null, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @order_regs_for_local_alloc() #0 {
  %1 = load i32*, i32** @regs_ever_live, align 8
  %2 = getelementptr inbounds i32, i32* %1, i64 15
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @order_regs_for_local_alloc.last_order_nonleaf, align 4
  %5 = icmp ne i32 %3, %4
  br i1 %5, label %6, label %24

6:                                                ; preds = %0
  %7 = load i32, i32* @order_regs_for_local_alloc.last_order_nonleaf, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  store i32 %10, i32* @order_regs_for_local_alloc.last_order_nonleaf, align 4
  %11 = load i64, i64* @reg_alloc_order, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = load i64*, i64** @reg_alloc_orders, align 8
  %14 = load i32, i32* @order_regs_for_local_alloc.last_order_nonleaf, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = trunc i64 %21 to i32
  %23 = call i32 @memcpy(i8* %12, i8* %18, i32 %22)
  br label %24

24:                                               ; preds = %6, %0
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
