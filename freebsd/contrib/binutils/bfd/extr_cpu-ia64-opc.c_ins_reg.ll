; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_cpu-ia64-opc.c_ins_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_cpu-ia64-opc.c_ins_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ia64_operand = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"register number out of range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ia64_operand*, i32, i32*)* @ins_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ins_reg(%struct.ia64_operand* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ia64_operand*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.ia64_operand* %0, %struct.ia64_operand** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.ia64_operand*, %struct.ia64_operand** %5, align 8
  %10 = getelementptr inbounds %struct.ia64_operand, %struct.ia64_operand* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 1, %14
  %16 = icmp uge i32 %8, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %30

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.ia64_operand*, %struct.ia64_operand** %5, align 8
  %21 = getelementptr inbounds %struct.ia64_operand, %struct.ia64_operand* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %19, %25
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %26
  store i32 %29, i32* %27, align 4
  store i8* null, i8** %4, align 8
  br label %30

30:                                               ; preds = %18, %17
  %31 = load i8*, i8** %4, align 8
  ret i8* %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
