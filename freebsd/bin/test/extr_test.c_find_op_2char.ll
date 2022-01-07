; ModuleID = '/home/carl/AnghaBench/freebsd/bin/test/extr_test.c_find_op_2char.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/test/extr_test.c_find_op_2char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_op = type { i8*, i32 }

@OPERAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.t_op*, %struct.t_op*, i8*)* @find_op_2char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_op_2char(%struct.t_op* %0, %struct.t_op* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.t_op*, align 8
  %6 = alloca %struct.t_op*, align 8
  %7 = alloca i8*, align 8
  store %struct.t_op* %0, %struct.t_op** %5, align 8
  store %struct.t_op* %1, %struct.t_op** %6, align 8
  store i8* %2, i8** %7, align 8
  br label %8

8:                                                ; preds = %40, %3
  %9 = load %struct.t_op*, %struct.t_op** %5, align 8
  %10 = load %struct.t_op*, %struct.t_op** %6, align 8
  %11 = icmp ne %struct.t_op* %9, %10
  br i1 %11, label %12, label %43

12:                                               ; preds = %8
  %13 = load i8*, i8** %7, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = load %struct.t_op*, %struct.t_op** %5, align 8
  %18 = getelementptr inbounds %struct.t_op, %struct.t_op* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %16, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %12
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = load %struct.t_op*, %struct.t_op** %5, align 8
  %30 = getelementptr inbounds %struct.t_op, %struct.t_op* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %28, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %24
  %37 = load %struct.t_op*, %struct.t_op** %5, align 8
  %38 = getelementptr inbounds %struct.t_op, %struct.t_op* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %4, align 4
  br label %45

40:                                               ; preds = %24, %12
  %41 = load %struct.t_op*, %struct.t_op** %5, align 8
  %42 = getelementptr inbounds %struct.t_op, %struct.t_op* %41, i32 1
  store %struct.t_op* %42, %struct.t_op** %5, align 8
  br label %8

43:                                               ; preds = %8
  %44 = load i32, i32* @OPERAND, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %36
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
