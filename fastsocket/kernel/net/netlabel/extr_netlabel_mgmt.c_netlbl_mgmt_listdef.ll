; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_mgmt.c_netlbl_mgmt_listdef.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_mgmt.c_netlbl_mgmt_listdef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32 }
%struct.netlbl_dom_map = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@netlbl_mgmt_gnl_family = common dso_local global i32 0, align 4
@NLBL_MGMT_C_LISTDEF = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @netlbl_mgmt_listdef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netlbl_mgmt_listdef(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.netlbl_dom_map*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %6, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  %12 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.sk_buff* @nlmsg_new(i32 %12, i32 %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %7, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %16 = icmp eq %struct.sk_buff* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %57

20:                                               ; preds = %2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %23 = load i32, i32* @NLBL_MGMT_C_LISTDEF, align 4
  %24 = call i8* @genlmsg_put_reply(%struct.sk_buff* %21, %struct.genl_info* %22, i32* @netlbl_mgmt_gnl_family, i32 0, i32 %23)
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %53

28:                                               ; preds = %20
  %29 = call i32 (...) @rcu_read_lock()
  %30 = call %struct.netlbl_dom_map* @netlbl_domhsh_getentry(i32* null)
  store %struct.netlbl_dom_map* %30, %struct.netlbl_dom_map** %9, align 8
  %31 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %9, align 8
  %32 = icmp eq %struct.netlbl_dom_map* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %51

36:                                               ; preds = %28
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %9, align 8
  %39 = call i32 @netlbl_mgmt_listentry(%struct.sk_buff* %37, %struct.netlbl_dom_map* %38)
  store i32 %39, i32* %6, align 4
  %40 = call i32 (...) @rcu_read_unlock()
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %53

44:                                               ; preds = %36
  %45 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @genlmsg_end(%struct.sk_buff* %45, i8* %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %49 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %50 = call i32 @genlmsg_reply(%struct.sk_buff* %48, %struct.genl_info* %49)
  store i32 %50, i32* %3, align 4
  br label %57

51:                                               ; preds = %33
  %52 = call i32 (...) @rcu_read_unlock()
  br label %53

53:                                               ; preds = %51, %43, %27
  %54 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %55 = call i32 @kfree_skb(%struct.sk_buff* %54)
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %53, %44, %17
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @genlmsg_put_reply(%struct.sk_buff*, %struct.genl_info*, i32*, i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.netlbl_dom_map* @netlbl_domhsh_getentry(i32*) #1

declare dso_local i32 @netlbl_mgmt_listentry(%struct.sk_buff*, %struct.netlbl_dom_map*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
