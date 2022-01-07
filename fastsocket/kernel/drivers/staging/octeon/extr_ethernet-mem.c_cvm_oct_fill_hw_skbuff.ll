; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_ethernet-mem.c_cvm_oct_fill_hw_skbuff.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_ethernet-mem.c_cvm_oct_fill_hw_skbuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"Failed to allocate skb for hardware pool %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @cvm_oct_fill_hw_skbuff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvm_oct_fill_hw_skbuff(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  store i32 %9, i32* %7, align 4
  br label %10

10:                                               ; preds = %25, %3
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %52

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %14, 128
  %16 = call %struct.sk_buff* @dev_alloc_skb(i32 %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %8, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %18 = icmp eq %struct.sk_buff* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @pr_warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %52

25:                                               ; preds = %13
  %26 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = and i64 %30, 127
  %32 = sub i64 128, %31
  %33 = trunc i64 %32 to i32
  %34 = call i32 @skb_reserve(%struct.sk_buff* %26, i32 %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = sub i64 %39, 8
  %41 = inttoptr i64 %40 to %struct.sk_buff**
  store %struct.sk_buff* %35, %struct.sk_buff** %41, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = sdiv i32 %46, 128
  %48 = call i32 @DONT_WRITEBACK(i32 %47)
  %49 = call i32 @cvmx_fpa_free(i32 %44, i32 %45, i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %7, align 4
  br label %10

52:                                               ; preds = %22, %10
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 %53, %54
  ret i32 %55
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_warning(i8*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @cvmx_fpa_free(i32, i32, i32) #1

declare dso_local i32 @DONT_WRITEBACK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
