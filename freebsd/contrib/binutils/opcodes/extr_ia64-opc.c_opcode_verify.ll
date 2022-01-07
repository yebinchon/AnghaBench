; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-opc.c_opcode_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-opc.c_opcode_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32* }
%struct.ia64_operand = type { i32 (%struct.ia64_operand*, i64, i64*)* }

@main_table = common dso_local global %struct.TYPE_2__* null, align 8
@IA64_OPCODE_F2_EQ_F3 = common dso_local global i32 0, align 4
@IA64_OPCODE_LEN_EQ_64MCNT = common dso_local global i32 0, align 4
@elf64_ia64_operands = common dso_local global %struct.ia64_operand* null, align 8
@IA64_OPND_F2 = common dso_local global i32 0, align 4
@IA64_OPND_F3 = common dso_local global i32 0, align 4
@IA64_OPND_LEN6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32)* @opcode_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opcode_verify(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ia64_operand*, align 8
  %9 = alloca %struct.ia64_operand*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @main_table, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %107

23:                                               ; preds = %3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @main_table, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IA64_OPCODE_F2_EQ_F3, align 4
  %31 = load i32, i32* @IA64_OPCODE_LEN_EQ_64MCNT, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %106

35:                                               ; preds = %23
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @main_table, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IA64_OPCODE_F2_EQ_F3, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %71

45:                                               ; preds = %35
  %46 = load %struct.ia64_operand*, %struct.ia64_operand** @elf64_ia64_operands, align 8
  %47 = load i32, i32* @IA64_OPND_F2, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.ia64_operand, %struct.ia64_operand* %46, i64 %48
  store %struct.ia64_operand* %49, %struct.ia64_operand** %8, align 8
  %50 = load %struct.ia64_operand*, %struct.ia64_operand** @elf64_ia64_operands, align 8
  %51 = load i32, i32* @IA64_OPND_F3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.ia64_operand, %struct.ia64_operand* %50, i64 %52
  store %struct.ia64_operand* %53, %struct.ia64_operand** %9, align 8
  %54 = load %struct.ia64_operand*, %struct.ia64_operand** %8, align 8
  %55 = getelementptr inbounds %struct.ia64_operand, %struct.ia64_operand* %54, i32 0, i32 0
  %56 = load i32 (%struct.ia64_operand*, i64, i64*)*, i32 (%struct.ia64_operand*, i64, i64*)** %55, align 8
  %57 = load %struct.ia64_operand*, %struct.ia64_operand** %8, align 8
  %58 = load i64, i64* %5, align 8
  %59 = call i32 %56(%struct.ia64_operand* %57, i64 %58, i64* %10)
  %60 = load %struct.ia64_operand*, %struct.ia64_operand** %9, align 8
  %61 = getelementptr inbounds %struct.ia64_operand, %struct.ia64_operand* %60, i32 0, i32 0
  %62 = load i32 (%struct.ia64_operand*, i64, i64*)*, i32 (%struct.ia64_operand*, i64, i64*)** %61, align 8
  %63 = load %struct.ia64_operand*, %struct.ia64_operand** %9, align 8
  %64 = load i64, i64* %5, align 8
  %65 = call i32 %62(%struct.ia64_operand* %63, i64 %64, i64* %11)
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* %11, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %107

70:                                               ; preds = %45
  br label %105

71:                                               ; preds = %35
  %72 = load %struct.ia64_operand*, %struct.ia64_operand** @elf64_ia64_operands, align 8
  %73 = load i32, i32* @IA64_OPND_LEN6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.ia64_operand, %struct.ia64_operand* %72, i64 %74
  store %struct.ia64_operand* %75, %struct.ia64_operand** %8, align 8
  %76 = load %struct.ia64_operand*, %struct.ia64_operand** @elf64_ia64_operands, align 8
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @main_table, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.ia64_operand, %struct.ia64_operand* %76, i64 %85
  store %struct.ia64_operand* %86, %struct.ia64_operand** %9, align 8
  %87 = load %struct.ia64_operand*, %struct.ia64_operand** %8, align 8
  %88 = getelementptr inbounds %struct.ia64_operand, %struct.ia64_operand* %87, i32 0, i32 0
  %89 = load i32 (%struct.ia64_operand*, i64, i64*)*, i32 (%struct.ia64_operand*, i64, i64*)** %88, align 8
  %90 = load %struct.ia64_operand*, %struct.ia64_operand** %8, align 8
  %91 = load i64, i64* %5, align 8
  %92 = call i32 %89(%struct.ia64_operand* %90, i64 %91, i64* %12)
  %93 = load %struct.ia64_operand*, %struct.ia64_operand** %9, align 8
  %94 = getelementptr inbounds %struct.ia64_operand, %struct.ia64_operand* %93, i32 0, i32 0
  %95 = load i32 (%struct.ia64_operand*, i64, i64*)*, i32 (%struct.ia64_operand*, i64, i64*)** %94, align 8
  %96 = load %struct.ia64_operand*, %struct.ia64_operand** %9, align 8
  %97 = load i64, i64* %5, align 8
  %98 = call i32 %95(%struct.ia64_operand* %96, i64 %97, i64* %13)
  %99 = load i64, i64* %12, align 8
  %100 = load i64, i64* %13, align 8
  %101 = sub nsw i64 64, %100
  %102 = icmp ne i64 %99, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %71
  store i32 0, i32* %4, align 4
  br label %107

104:                                              ; preds = %71
  br label %105

105:                                              ; preds = %104, %70
  br label %106

106:                                              ; preds = %105, %23
  store i32 1, i32* %4, align 4
  br label %107

107:                                              ; preds = %106, %103, %69, %22
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
