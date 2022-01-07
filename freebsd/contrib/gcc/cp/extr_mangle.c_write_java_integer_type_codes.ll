; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_write_java_integer_type_codes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_mangle.c_write_java_integer_type_codes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@java_int_type_node = common dso_local global i64 0, align 8
@java_short_type_node = common dso_local global i64 0, align 8
@java_byte_type_node = common dso_local global i64 0, align 8
@java_char_type_node = common dso_local global i64 0, align 8
@java_long_type_node = common dso_local global i64 0, align 8
@java_boolean_type_node = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @write_java_integer_type_codes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_java_integer_type_codes(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* @java_int_type_node, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 @write_char(i8 signext 105)
  br label %45

8:                                                ; preds = %1
  %9 = load i64, i64* %2, align 8
  %10 = load i64, i64* @java_short_type_node, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = call i32 @write_char(i8 signext 115)
  br label %44

14:                                               ; preds = %8
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* @java_byte_type_node, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i32 @write_char(i8 signext 99)
  br label %43

20:                                               ; preds = %14
  %21 = load i64, i64* %2, align 8
  %22 = load i64, i64* @java_char_type_node, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 @write_char(i8 signext 119)
  br label %42

26:                                               ; preds = %20
  %27 = load i64, i64* %2, align 8
  %28 = load i64, i64* @java_long_type_node, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 @write_char(i8 signext 120)
  br label %41

32:                                               ; preds = %26
  %33 = load i64, i64* %2, align 8
  %34 = load i64, i64* @java_boolean_type_node, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = call i32 @write_char(i8 signext 98)
  br label %40

38:                                               ; preds = %32
  %39 = call i32 (...) @gcc_unreachable()
  br label %40

40:                                               ; preds = %38, %36
  br label %41

41:                                               ; preds = %40, %30
  br label %42

42:                                               ; preds = %41, %24
  br label %43

43:                                               ; preds = %42, %18
  br label %44

44:                                               ; preds = %43, %12
  br label %45

45:                                               ; preds = %44, %6
  ret void
}

declare dso_local i32 @write_char(i8 signext) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
