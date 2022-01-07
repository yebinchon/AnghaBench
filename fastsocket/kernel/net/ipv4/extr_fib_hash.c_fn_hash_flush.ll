; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_hash.c_fn_hash_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_hash.c_fn_hash_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_table = type { i64 }
%struct.fn_hash = type { %struct.fn_zone* }
%struct.fn_zone = type { i32, %struct.fn_zone* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib_table*)* @fn_hash_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fn_hash_flush(%struct.fib_table* %0) #0 {
  %2 = alloca %struct.fib_table*, align 8
  %3 = alloca %struct.fn_hash*, align 8
  %4 = alloca %struct.fn_zone*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fib_table* %0, %struct.fib_table** %2, align 8
  %7 = load %struct.fib_table*, %struct.fib_table** %2, align 8
  %8 = getelementptr inbounds %struct.fib_table, %struct.fib_table* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.fn_hash*
  store %struct.fn_hash* %10, %struct.fn_hash** %3, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.fn_hash*, %struct.fn_hash** %3, align 8
  %12 = getelementptr inbounds %struct.fn_hash, %struct.fn_hash* %11, i32 0, i32 0
  %13 = load %struct.fn_zone*, %struct.fn_zone** %12, align 8
  store %struct.fn_zone* %13, %struct.fn_zone** %4, align 8
  br label %14

14:                                               ; preds = %37, %1
  %15 = load %struct.fn_zone*, %struct.fn_zone** %4, align 8
  %16 = icmp ne %struct.fn_zone* %15, null
  br i1 %16, label %17, label %41

17:                                               ; preds = %14
  %18 = load %struct.fn_zone*, %struct.fn_zone** %4, align 8
  %19 = getelementptr inbounds %struct.fn_zone, %struct.fn_zone* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %33, %17
  %23 = load i32, i32* %6, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = load %struct.fn_zone*, %struct.fn_zone** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @fn_flush_list(%struct.fn_zone* %26, i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %25
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %6, align 4
  br label %22

36:                                               ; preds = %22
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.fn_zone*, %struct.fn_zone** %4, align 8
  %39 = getelementptr inbounds %struct.fn_zone, %struct.fn_zone* %38, i32 0, i32 1
  %40 = load %struct.fn_zone*, %struct.fn_zone** %39, align 8
  store %struct.fn_zone* %40, %struct.fn_zone** %4, align 8
  br label %14

41:                                               ; preds = %14
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i64 @fn_flush_list(%struct.fn_zone*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
