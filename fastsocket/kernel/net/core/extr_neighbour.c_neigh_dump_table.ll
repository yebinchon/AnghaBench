; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neigh_dump_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neigh_dump_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neigh_table = type { i32, i32, %struct.neighbour** }
%struct.neighbour = type { i32, %struct.neighbour* }
%struct.sk_buff = type { i32, i32 }
%struct.netlink_callback = type { i32*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.net = type { i32 }
%struct.TYPE_4__ = type { i32 }

@RTM_NEWNEIGH = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.neigh_table*, %struct.sk_buff*, %struct.netlink_callback*)* @neigh_dump_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @neigh_dump_table(%struct.neigh_table* %0, %struct.sk_buff* %1, %struct.netlink_callback* %2) #0 {
  %4 = alloca %struct.neigh_table*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.netlink_callback*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.neighbour*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_4__, align 4
  store %struct.neigh_table* %0, %struct.neigh_table** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.netlink_callback* %2, %struct.netlink_callback** %6, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.net* @sock_net(i32 %17)
  store %struct.net* %18, %struct.net** %7, align 8
  %19 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %20 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  %24 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %25 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %12, align 4
  store i32 %28, i32* %13, align 4
  %29 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %30 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %29, i32 0, i32 1
  %31 = call i32 @read_lock_bh(i32* %30)
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %104, %3
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %35 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sle i32 %33, %36
  br i1 %37, label %38, label %107

38:                                               ; preds = %32
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %104

43:                                               ; preds = %38
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 0, i32* %13, align 4
  br label %48

48:                                               ; preds = %47, %43
  %49 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %50 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %49, i32 0, i32 2
  %51 = load %struct.neighbour**, %struct.neighbour*** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.neighbour*, %struct.neighbour** %51, i64 %53
  %55 = load %struct.neighbour*, %struct.neighbour** %54, align 8
  store %struct.neighbour* %55, %struct.neighbour** %8, align 8
  store i32 0, i32* %12, align 4
  br label %56

56:                                               ; preds = %99, %48
  %57 = load %struct.neighbour*, %struct.neighbour** %8, align 8
  %58 = icmp ne %struct.neighbour* %57, null
  br i1 %58, label %59, label %103

59:                                               ; preds = %56
  %60 = load %struct.neighbour*, %struct.neighbour** %8, align 8
  %61 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call %struct.net* @dev_net(i32 %62)
  %64 = load %struct.net*, %struct.net** %7, align 8
  %65 = icmp ne %struct.net* %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %99

67:                                               ; preds = %59
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %96

72:                                               ; preds = %67
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = load %struct.neighbour*, %struct.neighbour** %8, align 8
  %75 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %76 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @NETLINK_CB(i32 %77)
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 %78, i32* %79, align 4
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %83 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %82, i32 0, i32 1
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @RTM_NEWNEIGH, align 4
  %88 = load i32, i32* @NLM_F_MULTI, align 4
  %89 = call i64 @neigh_fill_info(%struct.sk_buff* %73, %struct.neighbour* %74, i32 %81, i32 %86, i32 %87, i32 %88)
  %90 = icmp sle i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %72
  %92 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %93 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %92, i32 0, i32 1
  %94 = call i32 @read_unlock_bh(i32* %93)
  store i32 -1, i32* %9, align 4
  br label %114

95:                                               ; preds = %72
  br label %96

96:                                               ; preds = %95, %71
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %12, align 4
  br label %99

99:                                               ; preds = %96, %66
  %100 = load %struct.neighbour*, %struct.neighbour** %8, align 8
  %101 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %100, i32 0, i32 1
  %102 = load %struct.neighbour*, %struct.neighbour** %101, align 8
  store %struct.neighbour* %102, %struct.neighbour** %8, align 8
  br label %56

103:                                              ; preds = %56
  br label %104

104:                                              ; preds = %103, %42
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %32

107:                                              ; preds = %32
  %108 = load %struct.neigh_table*, %struct.neigh_table** %4, align 8
  %109 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %108, i32 0, i32 1
  %110 = call i32 @read_unlock_bh(i32* %109)
  %111 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %9, align 4
  br label %114

114:                                              ; preds = %107, %91
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %117 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  store i32 %115, i32* %119, align 4
  %120 = load i32, i32* %12, align 4
  %121 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %122 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 2
  store i32 %120, i32* %124, align 4
  %125 = load i32, i32* %9, align 4
  ret i32 %125
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local i64 @neigh_fill_info(%struct.sk_buff*, %struct.neighbour*, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(i32) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
