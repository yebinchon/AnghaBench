; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips_stab_reg_to_regnum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips_stab_reg_to_regnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@current_gdbarch = common dso_local global i32 0, align 4
@NUM_REGS = common dso_local global i32 0, align 4
@NUM_PSEUDO_REGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mips_stab_reg_to_regnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_stab_reg_to_regnum(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 32
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = load i32, i32* %3, align 4
  store i32 %11, i32* %4, align 4
  br label %49

12:                                               ; preds = %7, %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp sge i32 %13, 38
  br i1 %14, label %15, label %26

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 70
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @current_gdbarch, align 4
  %21 = call %struct.TYPE_2__* @mips_regnum(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %19, %23
  %25 = sub nsw i32 %24, 38
  store i32 %25, i32* %4, align 4
  br label %48

26:                                               ; preds = %15, %12
  %27 = load i32, i32* %3, align 4
  %28 = icmp eq i32 %27, 70
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32, i32* @current_gdbarch, align 4
  %31 = call %struct.TYPE_2__* @mips_regnum(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %4, align 4
  br label %47

34:                                               ; preds = %26
  %35 = load i32, i32* %3, align 4
  %36 = icmp eq i32 %35, 71
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32, i32* @current_gdbarch, align 4
  %39 = call %struct.TYPE_2__* @mips_regnum(i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %4, align 4
  br label %46

42:                                               ; preds = %34
  %43 = load i32, i32* @NUM_REGS, align 4
  %44 = load i32, i32* @NUM_PSEUDO_REGS, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %2, align 4
  br label %53

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %29
  br label %48

48:                                               ; preds = %47, %18
  br label %49

49:                                               ; preds = %48, %10
  %50 = load i32, i32* @NUM_REGS, align 4
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %49, %42
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.TYPE_2__* @mips_regnum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
