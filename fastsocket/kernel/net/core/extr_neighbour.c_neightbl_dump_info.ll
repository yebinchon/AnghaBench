; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neightbl_dump_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neightbl_dump_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neigh_table = type { i32, %struct.TYPE_4__, %struct.neigh_table* }
%struct.TYPE_4__ = type { %struct.neigh_parms* }
%struct.neigh_parms = type { %struct.neigh_parms* }
%struct.sk_buff = type { i32, i32 }
%struct.netlink_callback = type { i32*, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.net = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.rtgenmsg = type { i32 }

@neigh_tbl_lock = common dso_local global i32 0, align 4
@neigh_tables = common dso_local global %struct.neigh_table* null, align 8
@RTM_NEWNEIGHTBL = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*)* @neightbl_dump_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @neightbl_dump_info(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.netlink_callback*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.neigh_table*, align 8
  %12 = alloca %struct.neigh_parms*, align 8
  %13 = alloca %struct.TYPE_6__, align 4
  %14 = alloca %struct.TYPE_6__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %4, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.net* @sock_net(i32 %17)
  store %struct.net* %18, %struct.net** %5, align 8
  store i32 0, i32* %8, align 4
  %19 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %20 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %25 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  %29 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %30 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = call i64 @nlmsg_data(%struct.TYPE_5__* %31)
  %33 = inttoptr i64 %32 to %struct.rtgenmsg*
  %34 = getelementptr inbounds %struct.rtgenmsg, %struct.rtgenmsg* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  %36 = call i32 @read_lock(i32* @neigh_tbl_lock)
  %37 = load %struct.neigh_table*, %struct.neigh_table** @neigh_tables, align 8
  store %struct.neigh_table* %37, %struct.neigh_table** %11, align 8
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %125, %2
  %39 = load %struct.neigh_table*, %struct.neigh_table** %11, align 8
  %40 = icmp ne %struct.neigh_table* %39, null
  br i1 %40, label %41, label %131

41:                                               ; preds = %38
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %54, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load %struct.neigh_table*, %struct.neigh_table** %11, align 8
  %50 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48, %41
  br label %125

55:                                               ; preds = %48, %45
  %56 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %57 = load %struct.neigh_table*, %struct.neigh_table** %11, align 8
  %58 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %59 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @NETLINK_CB(i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32 %61, i32* %62, align 4
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %66 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %65, i32 0, i32 1
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @RTM_NEWNEIGHTBL, align 4
  %71 = load i32, i32* @NLM_F_MULTI, align 4
  %72 = call i64 @neightbl_fill_info(%struct.sk_buff* %56, %struct.neigh_table* %57, i32 %64, i32 %69, i32 %70, i32 %71)
  %73 = icmp sle i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %55
  br label %131

75:                                               ; preds = %55
  store i32 0, i32* %8, align 4
  %76 = load %struct.neigh_table*, %struct.neigh_table** %11, align 8
  %77 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load %struct.neigh_parms*, %struct.neigh_parms** %78, align 8
  store %struct.neigh_parms* %79, %struct.neigh_parms** %12, align 8
  br label %80

80:                                               ; preds = %120, %75
  %81 = load %struct.neigh_parms*, %struct.neigh_parms** %12, align 8
  %82 = icmp ne %struct.neigh_parms* %81, null
  br i1 %82, label %83, label %124

83:                                               ; preds = %80
  %84 = load %struct.neigh_parms*, %struct.neigh_parms** %12, align 8
  %85 = call i32 @neigh_parms_net(%struct.neigh_parms* %84)
  %86 = load %struct.net*, %struct.net** %5, align 8
  %87 = call i32 @net_eq(i32 %85, %struct.net* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %83
  br label %120

90:                                               ; preds = %83
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %117

95:                                               ; preds = %90
  %96 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %97 = load %struct.neigh_table*, %struct.neigh_table** %11, align 8
  %98 = load %struct.neigh_parms*, %struct.neigh_parms** %12, align 8
  %99 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %100 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @NETLINK_CB(i32 %101)
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i32 %102, i32* %103, align 4
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %107 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %106, i32 0, i32 1
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @RTM_NEWNEIGHTBL, align 4
  %112 = load i32, i32* @NLM_F_MULTI, align 4
  %113 = call i64 @neightbl_fill_param_info(%struct.sk_buff* %96, %struct.neigh_table* %97, %struct.neigh_parms* %98, i32 %105, i32 %110, i32 %111, i32 %112)
  %114 = icmp sle i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %95
  br label %132

116:                                              ; preds = %95
  br label %117

117:                                              ; preds = %116, %94
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %8, align 4
  br label %120

120:                                              ; preds = %117, %89
  %121 = load %struct.neigh_parms*, %struct.neigh_parms** %12, align 8
  %122 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %121, i32 0, i32 0
  %123 = load %struct.neigh_parms*, %struct.neigh_parms** %122, align 8
  store %struct.neigh_parms* %123, %struct.neigh_parms** %12, align 8
  br label %80

124:                                              ; preds = %80
  store i32 0, i32* %10, align 4
  br label %125

125:                                              ; preds = %124, %54
  %126 = load %struct.neigh_table*, %struct.neigh_table** %11, align 8
  %127 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %126, i32 0, i32 2
  %128 = load %struct.neigh_table*, %struct.neigh_table** %127, align 8
  store %struct.neigh_table* %128, %struct.neigh_table** %11, align 8
  %129 = load i32, i32* %7, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %7, align 4
  br label %38

131:                                              ; preds = %74, %38
  br label %132

132:                                              ; preds = %131, %115
  %133 = call i32 @read_unlock(i32* @neigh_tbl_lock)
  %134 = load i32, i32* %7, align 4
  %135 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %136 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  store i32 %134, i32* %138, align 4
  %139 = load i32, i32* %8, align 4
  %140 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %141 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  store i32 %139, i32* %143, align 4
  %144 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %145 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  ret i32 %146
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i64 @nlmsg_data(%struct.TYPE_5__*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i64 @neightbl_fill_info(%struct.sk_buff*, %struct.neigh_table*, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(i32) #1

declare dso_local i32 @net_eq(i32, %struct.net*) #1

declare dso_local i32 @neigh_parms_net(%struct.neigh_parms*) #1

declare dso_local i64 @neightbl_fill_param_info(%struct.sk_buff*, %struct.neigh_table*, %struct.neigh_parms*, i32, i32, i32, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
