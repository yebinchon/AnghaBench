; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_arc-opc.c_arc_opcode_lookup_suffix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_arc-opc.c_arc_opcode_lookup_suffix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arc_ext_operand_value = type { %struct.arc_ext_operand_value*, %struct.arc_operand_value }
%struct.arc_operand_value = type { i64, i32 }
%struct.arc_operand = type { i32 }

@arc_ext_operands = common dso_local global %struct.arc_ext_operand_value* null, align 8
@arc_operands = common dso_local global %struct.arc_operand* null, align 8
@arc_suffixes = common dso_local global %struct.arc_operand_value* null, align 8
@arc_suffixes_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.arc_operand_value* @arc_opcode_lookup_suffix(%struct.arc_operand* %0, i32 %1) #0 {
  %3 = alloca %struct.arc_operand_value*, align 8
  %4 = alloca %struct.arc_operand*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.arc_operand_value*, align 8
  %7 = alloca %struct.arc_operand_value*, align 8
  %8 = alloca %struct.arc_ext_operand_value*, align 8
  store %struct.arc_operand* %0, %struct.arc_operand** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.arc_ext_operand_value*, %struct.arc_ext_operand_value** @arc_ext_operands, align 8
  store %struct.arc_ext_operand_value* %9, %struct.arc_ext_operand_value** %8, align 8
  br label %10

10:                                               ; preds = %32, %2
  %11 = load %struct.arc_ext_operand_value*, %struct.arc_ext_operand_value** %8, align 8
  %12 = icmp ne %struct.arc_ext_operand_value* %11, null
  br i1 %12, label %13, label %36

13:                                               ; preds = %10
  %14 = load %struct.arc_operand*, %struct.arc_operand** %4, align 8
  %15 = load %struct.arc_operand*, %struct.arc_operand** @arc_operands, align 8
  %16 = load %struct.arc_ext_operand_value*, %struct.arc_ext_operand_value** %8, align 8
  %17 = getelementptr inbounds %struct.arc_ext_operand_value, %struct.arc_ext_operand_value* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.arc_operand_value, %struct.arc_operand_value* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %15, i64 %19
  %21 = icmp eq %struct.arc_operand* %14, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %13
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.arc_ext_operand_value*, %struct.arc_ext_operand_value** %8, align 8
  %25 = getelementptr inbounds %struct.arc_ext_operand_value, %struct.arc_ext_operand_value* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.arc_operand_value, %struct.arc_operand_value* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %23, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load %struct.arc_ext_operand_value*, %struct.arc_ext_operand_value** %8, align 8
  %31 = getelementptr inbounds %struct.arc_ext_operand_value, %struct.arc_ext_operand_value* %30, i32 0, i32 1
  store %struct.arc_operand_value* %31, %struct.arc_operand_value** %3, align 8
  br label %67

32:                                               ; preds = %22, %13
  %33 = load %struct.arc_ext_operand_value*, %struct.arc_ext_operand_value** %8, align 8
  %34 = getelementptr inbounds %struct.arc_ext_operand_value, %struct.arc_ext_operand_value* %33, i32 0, i32 0
  %35 = load %struct.arc_ext_operand_value*, %struct.arc_ext_operand_value** %34, align 8
  store %struct.arc_ext_operand_value* %35, %struct.arc_ext_operand_value** %8, align 8
  br label %10

36:                                               ; preds = %10
  %37 = load %struct.arc_operand_value*, %struct.arc_operand_value** @arc_suffixes, align 8
  store %struct.arc_operand_value* %37, %struct.arc_operand_value** %6, align 8
  %38 = load %struct.arc_operand_value*, %struct.arc_operand_value** @arc_suffixes, align 8
  %39 = load i32, i32* @arc_suffixes_count, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.arc_operand_value, %struct.arc_operand_value* %38, i64 %40
  store %struct.arc_operand_value* %41, %struct.arc_operand_value** %7, align 8
  br label %42

42:                                               ; preds = %63, %36
  %43 = load %struct.arc_operand_value*, %struct.arc_operand_value** %6, align 8
  %44 = load %struct.arc_operand_value*, %struct.arc_operand_value** %7, align 8
  %45 = icmp ult %struct.arc_operand_value* %43, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %42
  %47 = load %struct.arc_operand*, %struct.arc_operand** %4, align 8
  %48 = load %struct.arc_operand*, %struct.arc_operand** @arc_operands, align 8
  %49 = load %struct.arc_operand_value*, %struct.arc_operand_value** %6, align 8
  %50 = getelementptr inbounds %struct.arc_operand_value, %struct.arc_operand_value* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.arc_operand, %struct.arc_operand* %48, i64 %51
  %53 = icmp eq %struct.arc_operand* %47, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %46
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.arc_operand_value*, %struct.arc_operand_value** %6, align 8
  %57 = getelementptr inbounds %struct.arc_operand_value, %struct.arc_operand_value* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %55, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load %struct.arc_operand_value*, %struct.arc_operand_value** %6, align 8
  store %struct.arc_operand_value* %61, %struct.arc_operand_value** %3, align 8
  br label %67

62:                                               ; preds = %54, %46
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.arc_operand_value*, %struct.arc_operand_value** %6, align 8
  %65 = getelementptr inbounds %struct.arc_operand_value, %struct.arc_operand_value* %64, i32 1
  store %struct.arc_operand_value* %65, %struct.arc_operand_value** %6, align 8
  br label %42

66:                                               ; preds = %42
  store %struct.arc_operand_value* null, %struct.arc_operand_value** %3, align 8
  br label %67

67:                                               ; preds = %66, %60, %29
  %68 = load %struct.arc_operand_value*, %struct.arc_operand_value** %3, align 8
  ret %struct.arc_operand_value* %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
