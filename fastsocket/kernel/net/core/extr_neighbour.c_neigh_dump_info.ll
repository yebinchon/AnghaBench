; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neigh_dump_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neigh_dump_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neigh_table = type { i32, %struct.neigh_table* }
%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32*, i32 }
%struct.rtgenmsg = type { i32 }

@neigh_tbl_lock = common dso_local global i32 0, align 4
@neigh_tables = common dso_local global %struct.neigh_table* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*)* @neigh_dump_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @neigh_dump_info(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.netlink_callback*, align 8
  %5 = alloca %struct.neigh_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %4, align 8
  %9 = call i32 @read_lock(i32* @neigh_tbl_lock)
  %10 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %11 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @nlmsg_data(i32 %12)
  %14 = inttoptr i64 %13 to %struct.rtgenmsg*
  %15 = getelementptr inbounds %struct.rtgenmsg, %struct.rtgenmsg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %18 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load %struct.neigh_table*, %struct.neigh_table** @neigh_tables, align 8
  store %struct.neigh_table* %22, %struct.neigh_table** %5, align 8
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %58, %2
  %24 = load %struct.neigh_table*, %struct.neigh_table** %5, align 8
  %25 = icmp ne %struct.neigh_table* %24, null
  br i1 %25, label %26, label %64

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %39, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load %struct.neigh_table*, %struct.neigh_table** %5, align 8
  %35 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33, %26
  br label %58

40:                                               ; preds = %33, %30
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %46 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = call i32 @memset(i32* %48, i32 0, i32 4)
  br label %50

50:                                               ; preds = %44, %40
  %51 = load %struct.neigh_table*, %struct.neigh_table** %5, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %53 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %54 = call i64 @neigh_dump_table(%struct.neigh_table* %51, %struct.sk_buff* %52, %struct.netlink_callback* %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %64

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %39
  %59 = load %struct.neigh_table*, %struct.neigh_table** %5, align 8
  %60 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %59, i32 0, i32 1
  %61 = load %struct.neigh_table*, %struct.neigh_table** %60, align 8
  store %struct.neigh_table* %61, %struct.neigh_table** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %23

64:                                               ; preds = %56, %23
  %65 = call i32 @read_unlock(i32* @neigh_tbl_lock)
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %68 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  store i32 %66, i32* %70, align 4
  %71 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  ret i32 %73
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i64 @nlmsg_data(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @neigh_dump_table(%struct.neigh_table*, %struct.sk_buff*, %struct.netlink_callback*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
