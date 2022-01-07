; ModuleID = '/home/carl/AnghaBench/freebsd/bin/test/extr_test.c_find_op_1char.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/test/extr_test.c_find_op_1char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_op = type { i8*, i32 }

@OPERAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.t_op*, %struct.t_op*, i8*)* @find_op_1char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_op_1char(%struct.t_op* %0, %struct.t_op* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.t_op*, align 8
  %6 = alloca %struct.t_op*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  store %struct.t_op* %0, %struct.t_op** %5, align 8
  store %struct.t_op* %1, %struct.t_op** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  store i8 %11, i8* %8, align 1
  br label %12

12:                                               ; preds = %29, %3
  %13 = load %struct.t_op*, %struct.t_op** %5, align 8
  %14 = load %struct.t_op*, %struct.t_op** %6, align 8
  %15 = icmp ne %struct.t_op* %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %12
  %17 = load i8, i8* %8, align 1
  %18 = sext i8 %17 to i32
  %19 = load %struct.t_op*, %struct.t_op** %5, align 8
  %20 = getelementptr inbounds %struct.t_op, %struct.t_op* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %18, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load %struct.t_op*, %struct.t_op** %5, align 8
  %27 = getelementptr inbounds %struct.t_op, %struct.t_op* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %4, align 4
  br label %34

29:                                               ; preds = %16
  %30 = load %struct.t_op*, %struct.t_op** %5, align 8
  %31 = getelementptr inbounds %struct.t_op, %struct.t_op* %30, i32 1
  store %struct.t_op* %31, %struct.t_op** %5, align 8
  br label %12

32:                                               ; preds = %12
  %33 = load i32, i32* @OPERAND, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %32, %25
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
