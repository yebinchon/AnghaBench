; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_stmt.c_case_bit_test_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_stmt.c_case_bit_test_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.case_bit_test = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @case_bit_test_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @case_bit_test_cmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.case_bit_test*, align 8
  %7 = alloca %struct.case_bit_test*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.case_bit_test*
  store %struct.case_bit_test* %9, %struct.case_bit_test** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.case_bit_test*
  store %struct.case_bit_test* %11, %struct.case_bit_test** %7, align 8
  %12 = load %struct.case_bit_test*, %struct.case_bit_test** %7, align 8
  %13 = getelementptr inbounds %struct.case_bit_test, %struct.case_bit_test* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.case_bit_test*, %struct.case_bit_test** %6, align 8
  %16 = getelementptr inbounds %struct.case_bit_test, %struct.case_bit_test* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.case_bit_test*, %struct.case_bit_test** %7, align 8
  %21 = getelementptr inbounds %struct.case_bit_test, %struct.case_bit_test* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.case_bit_test*, %struct.case_bit_test** %6, align 8
  %24 = getelementptr inbounds %struct.case_bit_test, %struct.case_bit_test* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %22, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %3, align 4
  br label %38

28:                                               ; preds = %2
  %29 = load %struct.case_bit_test*, %struct.case_bit_test** %7, align 8
  %30 = getelementptr inbounds %struct.case_bit_test, %struct.case_bit_test* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @CODE_LABEL_NUMBER(i32 %31)
  %33 = load %struct.case_bit_test*, %struct.case_bit_test** %6, align 8
  %34 = getelementptr inbounds %struct.case_bit_test, %struct.case_bit_test* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @CODE_LABEL_NUMBER(i32 %35)
  %37 = sub nsw i32 %32, %36
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %28, %19
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @CODE_LABEL_NUMBER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
