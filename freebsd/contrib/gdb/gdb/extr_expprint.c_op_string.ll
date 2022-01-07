; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_expprint.c_op_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_expprint.c_op_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.op_print* }
%struct.op_print = type { i64, i8* }

@current_language = common dso_local global %struct.TYPE_2__* null, align 8
@OP_NULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @op_string(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.op_print*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_language, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.op_print*, %struct.op_print** %7, align 8
  store %struct.op_print* %8, %struct.op_print** %5, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %36, %1
  %10 = load %struct.op_print*, %struct.op_print** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.op_print, %struct.op_print* %10, i64 %12
  %14 = getelementptr inbounds %struct.op_print, %struct.op_print* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @OP_NULL, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %9
  %19 = load %struct.op_print*, %struct.op_print** %5, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.op_print, %struct.op_print* %19, i64 %21
  %23 = getelementptr inbounds %struct.op_print, %struct.op_print* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = zext i32 %25 to i64
  %27 = icmp eq i64 %24, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %18
  %29 = load %struct.op_print*, %struct.op_print** %5, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.op_print, %struct.op_print* %29, i64 %31
  %33 = getelementptr inbounds %struct.op_print, %struct.op_print* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %2, align 8
  br label %40

35:                                               ; preds = %18
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %9

39:                                               ; preds = %9
  store i8* null, i8** %2, align 8
  br label %40

40:                                               ; preds = %39, %28
  %41 = load i8*, i8** %2, align 8
  ret i8* %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
