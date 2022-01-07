; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_integer_asm_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_integer_asm_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, %struct.asm_int_op, %struct.asm_int_op }
%struct.asm_int_op = type { i8*, i8*, i8*, i8* }

@targetm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @integer_asm_op(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.asm_int_op*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store %struct.asm_int_op* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 0, i32 2), %struct.asm_int_op** %6, align 8
  br label %11

10:                                               ; preds = %2
  store %struct.asm_int_op* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 0, i32 1), %struct.asm_int_op** %6, align 8
  br label %11

11:                                               ; preds = %10, %9
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %31 [
    i32 1, label %13
    i32 2, label %15
    i32 4, label %19
    i32 8, label %23
    i32 16, label %27
  ]

13:                                               ; preds = %11
  %14 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 0, i32 0), align 8
  store i8* %14, i8** %3, align 8
  br label %32

15:                                               ; preds = %11
  %16 = load %struct.asm_int_op*, %struct.asm_int_op** %6, align 8
  %17 = getelementptr inbounds %struct.asm_int_op, %struct.asm_int_op* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %3, align 8
  br label %32

19:                                               ; preds = %11
  %20 = load %struct.asm_int_op*, %struct.asm_int_op** %6, align 8
  %21 = getelementptr inbounds %struct.asm_int_op, %struct.asm_int_op* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %3, align 8
  br label %32

23:                                               ; preds = %11
  %24 = load %struct.asm_int_op*, %struct.asm_int_op** %6, align 8
  %25 = getelementptr inbounds %struct.asm_int_op, %struct.asm_int_op* %24, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %3, align 8
  br label %32

27:                                               ; preds = %11
  %28 = load %struct.asm_int_op*, %struct.asm_int_op** %6, align 8
  %29 = getelementptr inbounds %struct.asm_int_op, %struct.asm_int_op* %28, i32 0, i32 3
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %3, align 8
  br label %32

31:                                               ; preds = %11
  store i8* null, i8** %3, align 8
  br label %32

32:                                               ; preds = %31, %27, %23, %19, %15, %13
  %33 = load i8*, i8** %3, align 8
  ret i8* %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
