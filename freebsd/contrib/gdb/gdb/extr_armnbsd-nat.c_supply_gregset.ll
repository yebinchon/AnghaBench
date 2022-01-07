; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_armnbsd-nat.c_supply_gregset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_armnbsd-nat.c_supply_gregset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg = type { i32, i32, i32, i32, i32* }

@ARM_A1_REGNUM = common dso_local global i32 0, align 4
@ARM_SP_REGNUM = common dso_local global i32 0, align 4
@ARM_LR_REGNUM = common dso_local global i32 0, align 4
@ARM_PC_REGNUM = common dso_local global i32 0, align 4
@arm_apcs_32 = common dso_local global i64 0, align 8
@ARM_PS_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.reg*)* @supply_gregset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @supply_gregset(%struct.reg* %0) #0 {
  %2 = alloca %struct.reg*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.reg* %0, %struct.reg** %2, align 8
  %5 = load i32, i32* @ARM_A1_REGNUM, align 4
  store i32 %5, i32* %3, align 4
  br label %6

6:                                                ; preds = %20, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @ARM_SP_REGNUM, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %6
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.reg*, %struct.reg** %2, align 8
  %13 = getelementptr inbounds %struct.reg, %struct.reg* %12, i32 0, i32 4
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = bitcast i32* %17 to i8*
  %19 = call i32 @supply_register(i32 %11, i8* %18)
  br label %20

20:                                               ; preds = %10
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %6

23:                                               ; preds = %6
  %24 = load i32, i32* @ARM_SP_REGNUM, align 4
  %25 = load %struct.reg*, %struct.reg** %2, align 8
  %26 = getelementptr inbounds %struct.reg, %struct.reg* %25, i32 0, i32 3
  %27 = bitcast i32* %26 to i8*
  %28 = call i32 @supply_register(i32 %24, i8* %27)
  %29 = load i32, i32* @ARM_LR_REGNUM, align 4
  %30 = load %struct.reg*, %struct.reg** %2, align 8
  %31 = getelementptr inbounds %struct.reg, %struct.reg* %30, i32 0, i32 2
  %32 = bitcast i32* %31 to i8*
  %33 = call i32 @supply_register(i32 %29, i8* %32)
  %34 = load %struct.reg*, %struct.reg** %2, align 8
  %35 = getelementptr inbounds %struct.reg, %struct.reg* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @ADDR_BITS_REMOVE(i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* @ARM_PC_REGNUM, align 4
  %39 = bitcast i32* %4 to i8*
  %40 = call i32 @supply_register(i32 %38, i8* %39)
  %41 = load i64, i64* @arm_apcs_32, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %23
  %44 = load i32, i32* @ARM_PS_REGNUM, align 4
  %45 = load %struct.reg*, %struct.reg** %2, align 8
  %46 = getelementptr inbounds %struct.reg, %struct.reg* %45, i32 0, i32 1
  %47 = bitcast i32* %46 to i8*
  %48 = call i32 @supply_register(i32 %44, i8* %47)
  br label %55

49:                                               ; preds = %23
  %50 = load i32, i32* @ARM_PS_REGNUM, align 4
  %51 = load %struct.reg*, %struct.reg** %2, align 8
  %52 = getelementptr inbounds %struct.reg, %struct.reg* %51, i32 0, i32 0
  %53 = bitcast i32* %52 to i8*
  %54 = call i32 @supply_register(i32 %50, i8* %53)
  br label %55

55:                                               ; preds = %49, %43
  ret void
}

declare dso_local i32 @supply_register(i32, i8*) #1

declare dso_local i32 @ADDR_BITS_REMOVE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
