; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_hash.c_get_gas_hash_table_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_hash.c_get_gas_hash_table_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_gas_hash_table_size.hash_size_primes = internal constant [5 x i64] [i64 1021, i64 4051, i64 8599, i64 16699, i64 65537], align 16
@gas_hash_table_size = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @get_gas_hash_table_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_gas_hash_table_size() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %16, %0
  %3 = load i32, i32* %1, align 4
  %4 = call i32 @ARRAY_SIZE(i64* getelementptr inbounds ([5 x i64], [5 x i64]* @get_gas_hash_table_size.hash_size_primes, i64 0, i64 0))
  %5 = sub nsw i32 %4, 1
  %6 = icmp ult i32 %3, %5
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = load i64, i64* @gas_hash_table_size, align 8
  %9 = load i32, i32* %1, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [5 x i64], [5 x i64]* @get_gas_hash_table_size.hash_size_primes, i64 0, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = icmp ule i64 %8, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  br label %19

15:                                               ; preds = %7
  br label %16

16:                                               ; preds = %15
  %17 = load i32, i32* %1, align 4
  %18 = add i32 %17, 1
  store i32 %18, i32* %1, align 4
  br label %2

19:                                               ; preds = %14, %2
  %20 = load i32, i32* %1, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [5 x i64], [5 x i64]* @get_gas_hash_table_size.hash_size_primes, i64 0, i64 %21
  %23 = load i64, i64* %22, align 8
  ret i64 %23
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
