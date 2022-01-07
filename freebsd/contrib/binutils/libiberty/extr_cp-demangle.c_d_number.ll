; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cp-demangle.c_d_number.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cp-demangle.c_d_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.d_info*)* @d_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @d_number(%struct.d_info* %0) #0 {
  %2 = alloca %struct.d_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  store %struct.d_info* %0, %struct.d_info** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.d_info*, %struct.d_info** %2, align 8
  %7 = call signext i8 @d_peek_char(%struct.d_info* %6)
  store i8 %7, i8* %4, align 1
  %8 = load i8, i8* %4, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 110
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  %12 = load %struct.d_info*, %struct.d_info** %2, align 8
  %13 = call i32 @d_advance(%struct.d_info* %12, i32 1)
  %14 = load %struct.d_info*, %struct.d_info** %2, align 8
  %15 = call signext i8 @d_peek_char(%struct.d_info* %14)
  store i8 %15, i8* %4, align 1
  br label %16

16:                                               ; preds = %11, %1
  store i64 0, i64* %5, align 8
  br label %17

17:                                               ; preds = %16, %29
  %18 = load i8, i8* %4, align 1
  %19 = call i32 @IS_DIGIT(i8 signext %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i64, i64* %5, align 8
  %26 = sub nsw i64 0, %25
  store i64 %26, i64* %5, align 8
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i64, i64* %5, align 8
  ret i64 %28

29:                                               ; preds = %17
  %30 = load i64, i64* %5, align 8
  %31 = mul nsw i64 %30, 10
  %32 = load i8, i8* %4, align 1
  %33 = sext i8 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = sub nsw i64 %34, 48
  store i64 %35, i64* %5, align 8
  %36 = load %struct.d_info*, %struct.d_info** %2, align 8
  %37 = call i32 @d_advance(%struct.d_info* %36, i32 1)
  %38 = load %struct.d_info*, %struct.d_info** %2, align 8
  %39 = call signext i8 @d_peek_char(%struct.d_info* %38)
  store i8 %39, i8* %4, align 1
  br label %17
}

declare dso_local signext i8 @d_peek_char(%struct.d_info*) #1

declare dso_local i32 @d_advance(%struct.d_info*, i32) #1

declare dso_local i32 @IS_DIGIT(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
