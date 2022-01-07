; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_fib.c_fib6_locate_1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_fib.c_fib6_locate_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_node = type { i32, %struct.fib6_node*, %struct.fib6_node*, i64 }
%struct.in6_addr = type { i32 }
%struct.rt6key = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fib6_node* (%struct.fib6_node*, %struct.in6_addr*, i32, i32)* @fib6_locate_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fib6_node* @fib6_locate_1(%struct.fib6_node* %0, %struct.in6_addr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.fib6_node*, align 8
  %6 = alloca %struct.fib6_node*, align 8
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fib6_node*, align 8
  %11 = alloca %struct.rt6key*, align 8
  store %struct.fib6_node* %0, %struct.fib6_node** %6, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.fib6_node*, %struct.fib6_node** %6, align 8
  store %struct.fib6_node* %12, %struct.fib6_node** %10, align 8
  br label %13

13:                                               ; preds = %63, %4
  %14 = load %struct.fib6_node*, %struct.fib6_node** %10, align 8
  %15 = icmp ne %struct.fib6_node* %14, null
  br i1 %15, label %16, label %64

16:                                               ; preds = %13
  %17 = load %struct.fib6_node*, %struct.fib6_node** %10, align 8
  %18 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = bitcast i32* %23 to %struct.rt6key*
  store %struct.rt6key* %24, %struct.rt6key** %11, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.fib6_node*, %struct.fib6_node** %10, align 8
  %27 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %39, label %30

30:                                               ; preds = %16
  %31 = load %struct.rt6key*, %struct.rt6key** %11, align 8
  %32 = getelementptr inbounds %struct.rt6key, %struct.rt6key* %31, i32 0, i32 0
  %33 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %34 = load %struct.fib6_node*, %struct.fib6_node** %10, align 8
  %35 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @ipv6_prefix_equal(i32* %32, %struct.in6_addr* %33, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %30, %16
  store %struct.fib6_node* null, %struct.fib6_node** %5, align 8
  br label %65

40:                                               ; preds = %30
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.fib6_node*, %struct.fib6_node** %10, align 8
  %43 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %41, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load %struct.fib6_node*, %struct.fib6_node** %10, align 8
  store %struct.fib6_node* %47, %struct.fib6_node** %5, align 8
  br label %65

48:                                               ; preds = %40
  %49 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %50 = load %struct.fib6_node*, %struct.fib6_node** %10, align 8
  %51 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @addr_bit_set(%struct.in6_addr* %49, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load %struct.fib6_node*, %struct.fib6_node** %10, align 8
  %57 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %56, i32 0, i32 2
  %58 = load %struct.fib6_node*, %struct.fib6_node** %57, align 8
  store %struct.fib6_node* %58, %struct.fib6_node** %10, align 8
  br label %63

59:                                               ; preds = %48
  %60 = load %struct.fib6_node*, %struct.fib6_node** %10, align 8
  %61 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %60, i32 0, i32 1
  %62 = load %struct.fib6_node*, %struct.fib6_node** %61, align 8
  store %struct.fib6_node* %62, %struct.fib6_node** %10, align 8
  br label %63

63:                                               ; preds = %59, %55
  br label %13

64:                                               ; preds = %13
  store %struct.fib6_node* null, %struct.fib6_node** %5, align 8
  br label %65

65:                                               ; preds = %64, %46, %39
  %66 = load %struct.fib6_node*, %struct.fib6_node** %5, align 8
  ret %struct.fib6_node* %66
}

declare dso_local i32 @ipv6_prefix_equal(i32*, %struct.in6_addr*, i32) #1

declare dso_local i64 @addr_bit_set(%struct.in6_addr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
