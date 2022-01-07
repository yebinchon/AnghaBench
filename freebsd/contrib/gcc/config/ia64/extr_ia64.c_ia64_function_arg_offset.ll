; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_function_arg_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_function_arg_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@INTEGER_TYPE = common dso_local global i64 0, align 8
@REAL_TYPE = common dso_local global i64 0, align 8
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i64, i32)* @ia64_function_arg_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ia64_function_arg_offset(%struct.TYPE_3__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %38

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %14
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @TREE_CODE(i64 %18)
  %20 = load i64, i64* @INTEGER_TYPE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %17
  %23 = load i64, i64* %6, align 8
  %24 = call i64 @TREE_CODE(i64 %23)
  %25 = load i64, i64* @REAL_TYPE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @TYPE_ALIGN(i64 %28)
  %30 = load i32, i32* @BITS_PER_UNIT, align 4
  %31 = mul nsw i32 8, %30
  %32 = icmp sgt i32 %29, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %4, align 4
  br label %38

34:                                               ; preds = %22, %17, %14
  %35 = load i32, i32* %7, align 4
  %36 = icmp sgt i32 %35, 1
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %34, %27, %13
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @TYPE_ALIGN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
