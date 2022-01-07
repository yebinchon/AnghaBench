; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_hash.c_fn_hash_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_hash.c_fn_hash_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_table = type { i64 }
%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32* }
%struct.fn_zone = type { %struct.fn_zone* }
%struct.fn_hash = type { %struct.fn_zone* }

@fib_hash_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib_table*, %struct.sk_buff*, %struct.netlink_callback*)* @fn_hash_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fn_hash_dump(%struct.fib_table* %0, %struct.sk_buff* %1, %struct.netlink_callback* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fib_table*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.netlink_callback*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fn_zone*, align 8
  %11 = alloca %struct.fn_hash*, align 8
  store %struct.fib_table* %0, %struct.fib_table** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.netlink_callback* %2, %struct.netlink_callback** %7, align 8
  %12 = load %struct.fib_table*, %struct.fib_table** %5, align 8
  %13 = getelementptr inbounds %struct.fib_table, %struct.fib_table* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.fn_hash*
  store %struct.fn_hash* %15, %struct.fn_hash** %11, align 8
  %16 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %17 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = call i32 @read_lock(i32* @fib_hash_lock)
  %22 = load %struct.fn_hash*, %struct.fn_hash** %11, align 8
  %23 = getelementptr inbounds %struct.fn_hash, %struct.fn_hash* %22, i32 0, i32 0
  %24 = load %struct.fn_zone*, %struct.fn_zone** %23, align 8
  store %struct.fn_zone* %24, %struct.fn_zone** %10, align 8
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %53, %3
  %26 = load %struct.fn_zone*, %struct.fn_zone** %10, align 8
  %27 = icmp ne %struct.fn_zone* %26, null
  br i1 %27, label %28, label %59

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %53

33:                                               ; preds = %28
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %36 = load %struct.fib_table*, %struct.fib_table** %5, align 8
  %37 = load %struct.fn_zone*, %struct.fn_zone** %10, align 8
  %38 = call i64 @fn_hash_dump_zone(%struct.sk_buff* %34, %struct.netlink_callback* %35, %struct.fib_table* %36, %struct.fn_zone* %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %43 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  store i32 %41, i32* %45, align 4
  %46 = call i32 @read_unlock(i32* @fib_hash_lock)
  store i32 -1, i32* %4, align 4
  br label %69

47:                                               ; preds = %33
  %48 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %49 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  %52 = call i32 @memset(i32* %51, i32 0, i32 -4)
  br label %53

53:                                               ; preds = %47, %32
  %54 = load %struct.fn_zone*, %struct.fn_zone** %10, align 8
  %55 = getelementptr inbounds %struct.fn_zone, %struct.fn_zone* %54, i32 0, i32 0
  %56 = load %struct.fn_zone*, %struct.fn_zone** %55, align 8
  store %struct.fn_zone* %56, %struct.fn_zone** %10, align 8
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %25

59:                                               ; preds = %25
  %60 = call i32 @read_unlock(i32* @fib_hash_lock)
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %63 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  store i32 %61, i32* %65, align 4
  %66 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %59, %40
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i64 @fn_hash_dump_zone(%struct.sk_buff*, %struct.netlink_callback*, %struct.fib_table*, %struct.fn_zone*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
