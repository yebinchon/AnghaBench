; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_eq_descriptor_pre_extension.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_eq_descriptor_pre_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.see_pre_extension_expr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @eq_descriptor_pre_extension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eq_descriptor_pre_extension(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.see_pre_extension_expr*, align 8
  %6 = alloca %struct.see_pre_extension_expr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.see_pre_extension_expr*
  store %struct.see_pre_extension_expr* %12, %struct.see_pre_extension_expr** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.see_pre_extension_expr*
  store %struct.see_pre_extension_expr* %14, %struct.see_pre_extension_expr** %6, align 8
  %15 = load %struct.see_pre_extension_expr*, %struct.see_pre_extension_expr** %5, align 8
  %16 = getelementptr inbounds %struct.see_pre_extension_expr, %struct.see_pre_extension_expr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @single_set(i32 %17)
  store i64 %18, i64* %7, align 8
  %19 = load %struct.see_pre_extension_expr*, %struct.see_pre_extension_expr** %6, align 8
  %20 = getelementptr inbounds %struct.see_pre_extension_expr, %struct.see_pre_extension_expr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @single_set(i32 %21)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i64, i64* %8, align 8
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %25, %2
  %29 = phi i1 [ false, %2 ], [ %27, %25 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @gcc_assert(i32 %30)
  %32 = load i64, i64* %7, align 8
  %33 = call i64 @SET_SRC(i64 %32)
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i64 @SET_SRC(i64 %34)
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @rtx_equal_p(i64 %36, i64 %37)
  ret i32 %38
}

declare dso_local i64 @single_set(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @SET_SRC(i64) #1

declare dso_local i32 @rtx_equal_p(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
