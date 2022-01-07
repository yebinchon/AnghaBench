; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_ref.c_tipc_ref_table_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_ref.c_tipc_ref_table_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i64, %struct.reference* }
%struct.reference = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tipc_ref_table = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_ref_table_init(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.reference*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %4, align 4
  store i32 16, i32* %7, align 4
  br label %10

10:                                               ; preds = %15, %2
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  br label %15

15:                                               ; preds = %14
  %16 = load i32, i32* %7, align 4
  %17 = shl i32 %16, 1
  store i32 %17, i32* %7, align 4
  br label %10

18:                                               ; preds = %10
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = trunc i64 %21 to i32
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = load i32, i32* @__GFP_HIGHMEM, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @__GFP_ZERO, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @PAGE_KERNEL, align 4
  %29 = call %struct.reference* @__vmalloc(i32 %22, i32 %27, i32 %28)
  store %struct.reference* %29, %struct.reference** %6, align 8
  %30 = load %struct.reference*, %struct.reference** %6, align 8
  %31 = icmp eq %struct.reference* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %18
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %44

35:                                               ; preds = %18
  %36 = load %struct.reference*, %struct.reference** %6, align 8
  store %struct.reference* %36, %struct.reference** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tipc_ref_table, i32 0, i32 6), align 8
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tipc_ref_table, i32 0, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tipc_ref_table, i32 0, i32 1), align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tipc_ref_table, i32 0, i32 5), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tipc_ref_table, i32 0, i32 4), align 8
  %38 = load i32, i32* %7, align 4
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tipc_ref_table, i32 0, i32 2), align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tipc_ref_table, i32 0, i32 2), align 8
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tipc_ref_table, i32 0, i32 3), align 4
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %35, %32
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.reference* @__vmalloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
