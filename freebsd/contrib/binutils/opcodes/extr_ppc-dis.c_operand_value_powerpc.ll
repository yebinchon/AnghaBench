; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ppc-dis.c_operand_value_powerpc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ppc-dis.c_operand_value_powerpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powerpc_operand = type { i64 (i64, i32, i32*)*, i64, i64, i32 }

@PPC_OPERAND_SIGNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.powerpc_operand*, i64, i32)* @operand_value_powerpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @operand_value_powerpc(%struct.powerpc_operand* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.powerpc_operand*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.powerpc_operand* %0, %struct.powerpc_operand** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.powerpc_operand*, %struct.powerpc_operand** %4, align 8
  %11 = getelementptr inbounds %struct.powerpc_operand, %struct.powerpc_operand* %10, i32 0, i32 0
  %12 = load i64 (i64, i32, i32*)*, i64 (i64, i32, i32*)** %11, align 8
  %13 = icmp ne i64 (i64, i32, i32*)* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load %struct.powerpc_operand*, %struct.powerpc_operand** %4, align 8
  %16 = getelementptr inbounds %struct.powerpc_operand, %struct.powerpc_operand* %15, i32 0, i32 0
  %17 = load i64 (i64, i32, i32*)*, i64 (i64, i32, i32*)** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i64 %17(i64 %18, i32 %19, i32* %8)
  store i64 %20, i64* %7, align 8
  br label %59

21:                                               ; preds = %3
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.powerpc_operand*, %struct.powerpc_operand** %4, align 8
  %24 = getelementptr inbounds %struct.powerpc_operand, %struct.powerpc_operand* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = lshr i64 %22, %25
  %27 = load %struct.powerpc_operand*, %struct.powerpc_operand** %4, align 8
  %28 = getelementptr inbounds %struct.powerpc_operand, %struct.powerpc_operand* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = and i64 %26, %29
  store i64 %30, i64* %7, align 8
  %31 = load %struct.powerpc_operand*, %struct.powerpc_operand** %4, align 8
  %32 = getelementptr inbounds %struct.powerpc_operand, %struct.powerpc_operand* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @PPC_OPERAND_SIGNED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %21
  %38 = load %struct.powerpc_operand*, %struct.powerpc_operand** %4, align 8
  %39 = getelementptr inbounds %struct.powerpc_operand, %struct.powerpc_operand* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = sub i64 0, %42
  %44 = and i64 %41, %43
  %45 = sub i64 %44, 1
  %46 = load i64, i64* %9, align 8
  %47 = or i64 %46, %45
  store i64 %47, i64* %9, align 8
  %48 = load i64, i64* %9, align 8
  %49 = lshr i64 %48, 1
  %50 = xor i64 %49, -1
  %51 = load i64, i64* %9, align 8
  %52 = and i64 %51, %50
  store i64 %52, i64* %9, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %9, align 8
  %55 = xor i64 %53, %54
  %56 = load i64, i64* %9, align 8
  %57 = sub i64 %55, %56
  store i64 %57, i64* %7, align 8
  br label %58

58:                                               ; preds = %37, %21
  br label %59

59:                                               ; preds = %58, %14
  %60 = load i64, i64* %7, align 8
  ret i64 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
