; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_hash.c_bfd_hash_set_default_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_hash.c_bfd_hash_set_default_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bfd_hash_set_default_size.hash_size_primes = internal constant [8 x i32] [i32 251, i32 509, i32 1021, i32 2039, i32 4051, i32 8599, i32 16699, i32 32749], align 16
@bfd_default_hash_table_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfd_hash_set_default_size(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %18, %1
  %5 = load i64, i64* %3, align 8
  %6 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([8 x i32], [8 x i32]* @bfd_hash_set_default_size.hash_size_primes, i64 0, i64 0))
  %7 = sub nsw i32 %6, 1
  %8 = sext i32 %7 to i64
  %9 = icmp ult i64 %5, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %4
  %11 = load i32, i32* %2, align 4
  %12 = load i64, i64* %3, align 8
  %13 = getelementptr inbounds [8 x i32], [8 x i32]* @bfd_hash_set_default_size.hash_size_primes, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = icmp sle i32 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %21

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %17
  %19 = load i64, i64* %3, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %3, align 8
  br label %4

21:                                               ; preds = %16, %4
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* @bfd_hash_set_default_size.hash_size_primes, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* @bfd_default_hash_table_size, align 4
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
