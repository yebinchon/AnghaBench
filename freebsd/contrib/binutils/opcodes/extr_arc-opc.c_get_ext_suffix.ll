; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_arc-opc.c_get_ext_suffix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_arc-opc.c_get_ext_suffix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arc_ext_operand_value = type { %struct.arc_ext_operand_value*, %struct.arc_operand_value }
%struct.arc_operand_value = type { i64, i32 }

@arc_ext_operands = common dso_local global %struct.arc_ext_operand_value* null, align 8
@COND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.arc_operand_value* @get_ext_suffix(i8* %0) #0 {
  %2 = alloca %struct.arc_operand_value*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.arc_ext_operand_value*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.arc_ext_operand_value*, %struct.arc_ext_operand_value** @arc_ext_operands, align 8
  store %struct.arc_ext_operand_value* %5, %struct.arc_ext_operand_value** %4, align 8
  br label %6

6:                                                ; preds = %27, %1
  %7 = load %struct.arc_ext_operand_value*, %struct.arc_ext_operand_value** %4, align 8
  %8 = icmp ne %struct.arc_ext_operand_value* %7, null
  br i1 %8, label %9, label %31

9:                                                ; preds = %6
  %10 = load i64, i64* @COND, align 8
  %11 = load %struct.arc_ext_operand_value*, %struct.arc_ext_operand_value** %4, align 8
  %12 = getelementptr inbounds %struct.arc_ext_operand_value, %struct.arc_ext_operand_value* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.arc_operand_value, %struct.arc_operand_value* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %10, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %9
  %17 = load i8*, i8** %3, align 8
  %18 = load %struct.arc_ext_operand_value*, %struct.arc_ext_operand_value** %4, align 8
  %19 = getelementptr inbounds %struct.arc_ext_operand_value, %struct.arc_ext_operand_value* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.arc_operand_value, %struct.arc_operand_value* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @strcmp(i8* %17, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = load %struct.arc_ext_operand_value*, %struct.arc_ext_operand_value** %4, align 8
  %26 = getelementptr inbounds %struct.arc_ext_operand_value, %struct.arc_ext_operand_value* %25, i32 0, i32 1
  store %struct.arc_operand_value* %26, %struct.arc_operand_value** %2, align 8
  br label %32

27:                                               ; preds = %16, %9
  %28 = load %struct.arc_ext_operand_value*, %struct.arc_ext_operand_value** %4, align 8
  %29 = getelementptr inbounds %struct.arc_ext_operand_value, %struct.arc_ext_operand_value* %28, i32 0, i32 0
  %30 = load %struct.arc_ext_operand_value*, %struct.arc_ext_operand_value** %29, align 8
  store %struct.arc_ext_operand_value* %30, %struct.arc_ext_operand_value** %4, align 8
  br label %6

31:                                               ; preds = %6
  store %struct.arc_operand_value* null, %struct.arc_operand_value** %2, align 8
  br label %32

32:                                               ; preds = %31, %24
  %33 = load %struct.arc_operand_value*, %struct.arc_operand_value** %2, align 8
  ret %struct.arc_operand_value* %33
}

declare dso_local i32 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
