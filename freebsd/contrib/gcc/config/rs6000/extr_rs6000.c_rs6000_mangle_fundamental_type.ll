; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_mangle_fundamental_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_mangle_fundamental_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bool_char_type_node = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"U6__boolc\00", align 1
@bool_short_type_node = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"U6__bools\00", align 1
@pixel_type_node = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"u7__pixel\00", align 1
@bool_int_type_node = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"U6__booli\00", align 1
@long_double_type_node = common dso_local global i64 0, align 8
@TARGET_ELF = common dso_local global i64 0, align 8
@TARGET_LONG_DOUBLE_128 = common dso_local global i64 0, align 8
@TARGET_IEEEQUAD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @rs6000_mangle_fundamental_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rs6000_mangle_fundamental_type(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @bool_char_type_node, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %39

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @bool_short_type_node, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %39

13:                                               ; preds = %8
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @pixel_type_node, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %39

18:                                               ; preds = %13
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @bool_int_type_node, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %39

23:                                               ; preds = %18
  %24 = load i64, i64* %3, align 8
  %25 = call i64 @TYPE_MAIN_VARIANT(i64 %24)
  %26 = load i64, i64* @long_double_type_node, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load i64, i64* @TARGET_ELF, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i64, i64* @TARGET_LONG_DOUBLE_128, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* @TARGET_IEEEQUAD, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %39

38:                                               ; preds = %34, %31, %28, %23
  store i8* null, i8** %2, align 8
  br label %39

39:                                               ; preds = %38, %37, %22, %17, %12, %7
  %40 = load i8*, i8** %2, align 8
  ret i8* %40
}

declare dso_local i64 @TYPE_MAIN_VARIANT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
