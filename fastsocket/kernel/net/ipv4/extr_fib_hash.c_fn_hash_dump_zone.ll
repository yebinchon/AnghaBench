; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_hash.c_fn_hash_dump_zone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_hash.c_fn_hash_dump_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32* }
%struct.fib_table = type { i32 }
%struct.fn_zone = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*, %struct.fib_table*, %struct.fn_zone*)* @fn_hash_dump_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fn_hash_dump_zone(%struct.sk_buff* %0, %struct.netlink_callback* %1, %struct.fib_table* %2, %struct.fn_zone* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.netlink_callback*, align 8
  %8 = alloca %struct.fib_table*, align 8
  %9 = alloca %struct.fn_zone*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %7, align 8
  store %struct.fib_table* %2, %struct.fib_table** %8, align 8
  store %struct.fn_zone* %3, %struct.fn_zone** %9, align 8
  %12 = load %struct.fn_zone*, %struct.fn_zone** %9, align 8
  %13 = getelementptr inbounds %struct.fn_zone, %struct.fn_zone* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  br label %80

20:                                               ; preds = %4
  %21 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %22 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %68, %20
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.fn_zone*, %struct.fn_zone** %9, align 8
  %30 = getelementptr inbounds %struct.fn_zone, %struct.fn_zone* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %71

33:                                               ; preds = %27
  %34 = load %struct.fn_zone*, %struct.fn_zone** %9, align 8
  %35 = getelementptr inbounds %struct.fn_zone, %struct.fn_zone* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = call i64 @hlist_empty(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %68

43:                                               ; preds = %33
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %46 = load %struct.fib_table*, %struct.fib_table** %8, align 8
  %47 = load %struct.fn_zone*, %struct.fn_zone** %9, align 8
  %48 = load %struct.fn_zone*, %struct.fn_zone** %9, align 8
  %49 = getelementptr inbounds %struct.fn_zone, %struct.fn_zone* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = call i64 @fn_hash_dump_bucket(%struct.sk_buff* %44, %struct.netlink_callback* %45, %struct.fib_table* %46, %struct.fn_zone* %47, i32* %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %43
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %59 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 3
  store i32 %57, i32* %61, align 4
  store i32 -1, i32* %5, align 4
  br label %80

62:                                               ; preds = %43
  %63 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %64 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 4
  %67 = call i32 @memset(i32* %66, i32 0, i32 -8)
  br label %68

68:                                               ; preds = %62, %42
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %27

71:                                               ; preds = %27
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %74 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 3
  store i32 %72, i32* %76, align 4
  %77 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %71, %56, %16
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i64 @hlist_empty(i32*) #1

declare dso_local i64 @fn_hash_dump_bucket(%struct.sk_buff*, %struct.netlink_callback*, %struct.fib_table*, %struct.fn_zone*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
