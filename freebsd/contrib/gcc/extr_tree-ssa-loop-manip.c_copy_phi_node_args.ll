; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-manip.c_copy_phi_node_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-manip.c_copy_phi_node_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@last_basic_block = common dso_local global i64 0, align 8
@BB_DUPLICATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @copy_phi_node_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_phi_node_args(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  store i32 %4, i32* %3, align 4
  br label %5

5:                                                ; preds = %17, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i64, i64* @last_basic_block, align 8
  %8 = trunc i64 %7 to i32
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %5
  %11 = load i32, i32* @BB_DUPLICATED, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.TYPE_3__* @BASIC_BLOCK(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %11
  store i32 %16, i32* %14, align 4
  br label %17

17:                                               ; preds = %10
  %18 = load i32, i32* %3, align 4
  %19 = add i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %5

20:                                               ; preds = %5
  %21 = load i32, i32* %2, align 4
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %31, %20
  %23 = load i32, i32* %3, align 4
  %24 = load i64, i64* @last_basic_block, align 8
  %25 = trunc i64 %24 to i32
  %26 = icmp ult i32 %23, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load i32, i32* %3, align 4
  %29 = call %struct.TYPE_3__* @BASIC_BLOCK(i32 %28)
  %30 = call i32 @add_phi_args_after_copy_bb(%struct.TYPE_3__* %29)
  br label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %3, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %22

34:                                               ; preds = %22
  %35 = load i32, i32* %2, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %49, %34
  %37 = load i32, i32* %3, align 4
  %38 = load i64, i64* @last_basic_block, align 8
  %39 = trunc i64 %38 to i32
  %40 = icmp ult i32 %37, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load i32, i32* @BB_DUPLICATED, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %3, align 4
  %45 = call %struct.TYPE_3__* @BASIC_BLOCK(i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %43
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %41
  %50 = load i32, i32* %3, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %36

52:                                               ; preds = %36
  ret void
}

declare dso_local %struct.TYPE_3__* @BASIC_BLOCK(i32) #1

declare dso_local i32 @add_phi_args_after_copy_bb(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
