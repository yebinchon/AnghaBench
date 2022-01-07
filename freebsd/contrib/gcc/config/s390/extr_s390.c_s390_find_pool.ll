; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_find_pool.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_find_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.constant_pool = type { i32, %struct.constant_pool* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.constant_pool* (%struct.constant_pool*, i32)* @s390_find_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.constant_pool* @s390_find_pool(%struct.constant_pool* %0, i32 %1) #0 {
  %3 = alloca %struct.constant_pool*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.constant_pool*, align 8
  store %struct.constant_pool* %0, %struct.constant_pool** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.constant_pool*, %struct.constant_pool** %3, align 8
  store %struct.constant_pool* %6, %struct.constant_pool** %5, align 8
  br label %7

7:                                                ; preds = %20, %2
  %8 = load %struct.constant_pool*, %struct.constant_pool** %5, align 8
  %9 = icmp ne %struct.constant_pool* %8, null
  br i1 %9, label %10, label %24

10:                                               ; preds = %7
  %11 = load %struct.constant_pool*, %struct.constant_pool** %5, align 8
  %12 = getelementptr inbounds %struct.constant_pool, %struct.constant_pool* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @INSN_UID(i32 %14)
  %16 = call i64 @bitmap_bit_p(i32 %13, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %24

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.constant_pool*, %struct.constant_pool** %5, align 8
  %22 = getelementptr inbounds %struct.constant_pool, %struct.constant_pool* %21, i32 0, i32 1
  %23 = load %struct.constant_pool*, %struct.constant_pool** %22, align 8
  store %struct.constant_pool* %23, %struct.constant_pool** %5, align 8
  br label %7

24:                                               ; preds = %18, %7
  %25 = load %struct.constant_pool*, %struct.constant_pool** %5, align 8
  ret %struct.constant_pool* %25
}

declare dso_local i64 @bitmap_bit_p(i32, i32) #1

declare dso_local i32 @INSN_UID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
