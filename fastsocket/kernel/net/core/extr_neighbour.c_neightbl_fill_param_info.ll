; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neightbl_fill_param_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neightbl_fill_param_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.neigh_table = type { i32, i32, i32 }
%struct.neigh_parms = type { i32 }
%struct.ndtmsg = type { i64, i64, i32 }
%struct.nlmsghdr = type { i32 }

@EMSGSIZE = common dso_local global i32 0, align 4
@NDTA_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.neigh_table*, %struct.neigh_parms*, i32, i32, i32, i32)* @neightbl_fill_param_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @neightbl_fill_param_info(%struct.sk_buff* %0, %struct.neigh_table* %1, %struct.neigh_parms* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.neigh_table*, align 8
  %11 = alloca %struct.neigh_parms*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ndtmsg*, align 8
  %17 = alloca %struct.nlmsghdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store %struct.neigh_table* %1, %struct.neigh_table** %10, align 8
  store %struct.neigh_parms* %2, %struct.neigh_parms** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* %14, align 4
  %22 = load i32, i32* %15, align 4
  %23 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %18, i32 %19, i32 %20, i32 %21, i32 24, i32 %22)
  store %struct.nlmsghdr* %23, %struct.nlmsghdr** %17, align 8
  %24 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8
  %25 = icmp eq %struct.nlmsghdr* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %7
  %27 = load i32, i32* @EMSGSIZE, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %73

29:                                               ; preds = %7
  %30 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8
  %31 = call %struct.ndtmsg* @nlmsg_data(%struct.nlmsghdr* %30)
  store %struct.ndtmsg* %31, %struct.ndtmsg** %16, align 8
  %32 = load %struct.neigh_table*, %struct.neigh_table** %10, align 8
  %33 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %32, i32 0, i32 0
  %34 = call i32 @read_lock_bh(i32* %33)
  %35 = load %struct.neigh_table*, %struct.neigh_table** %10, align 8
  %36 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ndtmsg*, %struct.ndtmsg** %16, align 8
  %39 = getelementptr inbounds %struct.ndtmsg, %struct.ndtmsg* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.ndtmsg*, %struct.ndtmsg** %16, align 8
  %41 = getelementptr inbounds %struct.ndtmsg, %struct.ndtmsg* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.ndtmsg*, %struct.ndtmsg** %16, align 8
  %43 = getelementptr inbounds %struct.ndtmsg, %struct.ndtmsg* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %45 = load i32, i32* @NDTA_NAME, align 4
  %46 = load %struct.neigh_table*, %struct.neigh_table** %10, align 8
  %47 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @nla_put_string(%struct.sk_buff* %44, i32 %45, i32 %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %29
  %52 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %53 = load %struct.neigh_parms*, %struct.neigh_parms** %11, align 8
  %54 = call i64 @neightbl_fill_parms(%struct.sk_buff* %52, %struct.neigh_parms* %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51, %29
  br label %64

57:                                               ; preds = %51
  %58 = load %struct.neigh_table*, %struct.neigh_table** %10, align 8
  %59 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %58, i32 0, i32 0
  %60 = call i32 @read_unlock_bh(i32* %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %62 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8
  %63 = call i32 @nlmsg_end(%struct.sk_buff* %61, %struct.nlmsghdr* %62)
  store i32 %63, i32* %8, align 4
  br label %73

64:                                               ; preds = %56
  %65 = load %struct.neigh_table*, %struct.neigh_table** %10, align 8
  %66 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %65, i32 0, i32 0
  %67 = call i32 @read_unlock_bh(i32* %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %69 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8
  %70 = call i32 @nlmsg_cancel(%struct.sk_buff* %68, %struct.nlmsghdr* %69)
  %71 = load i32, i32* @EMSGSIZE, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %64, %57, %26
  %74 = load i32, i32* %8, align 4
  ret i32 %74
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.ndtmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @neightbl_fill_parms(%struct.sk_buff*, %struct.neigh_parms*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
