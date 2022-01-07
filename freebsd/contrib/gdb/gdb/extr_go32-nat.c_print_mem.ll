; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_go32-nat.c_print_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_go32-nat.c_print_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%lu KB\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" (%lu MB)\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%lu Bytes\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i8*, i32)* @print_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_mem(i64 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i64, i64* %4, align 8
  %8 = icmp ne i64 %7, 4294967295
  br i1 %8, label %9, label %36

9:                                                ; preds = %3
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i64, i64* %4, align 8
  %14 = shl i64 %13, 12
  store i64 %14, i64* %4, align 8
  br label %15

15:                                               ; preds = %12, %9
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @puts_filtered(i8* %16)
  %18 = load i64, i64* %4, align 8
  %19 = icmp ugt i64 %18, 1024
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = load i64, i64* %4, align 8
  %22 = lshr i64 %21, 10
  %23 = call i32 @printf_filtered(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load i64, i64* %4, align 8
  %25 = icmp ugt i64 %24, 1048576
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i64, i64* %4, align 8
  %28 = lshr i64 %27, 20
  %29 = call i32 @printf_filtered(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  br label %30

30:                                               ; preds = %26, %20
  br label %34

31:                                               ; preds = %15
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @printf_filtered(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %32)
  br label %34

34:                                               ; preds = %31, %30
  %35 = call i32 @puts_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %3
  ret void
}

declare dso_local i32 @puts_filtered(i8*) #1

declare dso_local i32 @printf_filtered(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
