; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ee/extr_new_curse.c_Get_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ee/extr_new_curse.c_Get_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TERM_data_ptr = common dso_local global i32 0, align 4
@Flip_Bytes = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Get_int() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @TERM_data_ptr, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @TERM_data_ptr, align 4
  %7 = sext i32 %5 to i64
  %8 = inttoptr i64 %7 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @TERM_data_ptr, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @TERM_data_ptr, align 4
  %13 = sext i32 %11 to i64
  %14 = inttoptr i64 %13 to i8*
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  store i32 %16, i32* %2, align 4
  %17 = load i64, i64* @Flip_Bytes, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %0
  %20 = load i32, i32* %3, align 4
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %2, align 4
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %19, %0
  %24 = load i32, i32* %2, align 4
  %25 = icmp eq i32 %24, 255
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* %3, align 4
  %28 = icmp eq i32 %27, 255
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 -1, i32* %1, align 4
  br label %35

30:                                               ; preds = %26, %23
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %2, align 4
  %33 = mul nsw i32 %32, 256
  %34 = add nsw i32 %31, %33
  store i32 %34, i32* %1, align 4
  br label %35

35:                                               ; preds = %30, %29
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
