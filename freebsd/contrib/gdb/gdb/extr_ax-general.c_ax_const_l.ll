; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-general.c_ax_const_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-general.c_ax_const_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agent_expr = type { i32 }

@ax_const_l.ops = internal global [4 x i32] [i32 128, i32 131, i32 130, i32 129], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ax_const_l(%struct.agent_expr* %0, i32 %1) #0 {
  %3 = alloca %struct.agent_expr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.agent_expr* %0, %struct.agent_expr** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 8, i32* %5, align 4
  br label %7

7:                                                ; preds = %23, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 64
  br i1 %9, label %10, label %28

10:                                               ; preds = %7
  %11 = load i32, i32* %5, align 4
  %12 = shl i32 1, %11
  %13 = sub nsw i32 0, %12
  %14 = load i32, i32* %4, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = shl i32 1, %18
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %28

22:                                               ; preds = %16, %10
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %5, align 4
  %25 = mul nsw i32 %24, 2
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %7

28:                                               ; preds = %21, %7
  %29 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* @ax_const_l.ops, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ax_simple(%struct.agent_expr* %29, i32 %33)
  %35 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = sdiv i32 %37, 8
  %39 = call i32 @append_const(%struct.agent_expr* %35, i32 %36, i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %28
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 64
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @ax_ext(%struct.agent_expr* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %42, %28
  ret void
}

declare dso_local i32 @ax_simple(%struct.agent_expr*, i32) #1

declare dso_local i32 @append_const(%struct.agent_expr*, i32, i32) #1

declare dso_local i32 @ax_ext(%struct.agent_expr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
