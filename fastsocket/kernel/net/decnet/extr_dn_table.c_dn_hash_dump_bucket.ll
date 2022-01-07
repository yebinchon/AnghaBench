; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_table.c_dn_hash_dump_bucket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_table.c_dn_hash_dump_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.dn_fib_table = type { i32 }
%struct.dn_zone = type { i32 }
%struct.dn_fib_node = type { i32, i32, i32, i32, i32, %struct.dn_fib_node* }
%struct.TYPE_4__ = type { i32 }

@DN_S_ZOMBIE = common dso_local global i32 0, align 4
@RTM_NEWROUTE = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*, %struct.dn_fib_table*, %struct.dn_zone*, %struct.dn_fib_node*)* @dn_hash_dump_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_hash_dump_bucket(%struct.sk_buff* %0, %struct.netlink_callback* %1, %struct.dn_fib_table* %2, %struct.dn_zone* %3, %struct.dn_fib_node* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.netlink_callback*, align 8
  %9 = alloca %struct.dn_fib_table*, align 8
  %10 = alloca %struct.dn_zone*, align 8
  %11 = alloca %struct.dn_fib_node*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_4__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %8, align 8
  store %struct.dn_fib_table* %2, %struct.dn_fib_table** %9, align 8
  store %struct.dn_zone* %3, %struct.dn_zone** %10, align 8
  store %struct.dn_fib_node* %4, %struct.dn_fib_node** %11, align 8
  %15 = load %struct.netlink_callback*, %struct.netlink_callback** %8, align 8
  %16 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 4
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %20

20:                                               ; preds = %88, %5
  %21 = load %struct.dn_fib_node*, %struct.dn_fib_node** %11, align 8
  %22 = icmp ne %struct.dn_fib_node* %21, null
  br i1 %22, label %23, label %94

23:                                               ; preds = %20
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %88

28:                                               ; preds = %23
  %29 = load %struct.dn_fib_node*, %struct.dn_fib_node** %11, align 8
  %30 = getelementptr inbounds %struct.dn_fib_node, %struct.dn_fib_node* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @DN_S_ZOMBIE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %88

36:                                               ; preds = %28
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = load %struct.netlink_callback*, %struct.netlink_callback** %8, align 8
  %39 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @NETLINK_CB(i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.netlink_callback*, %struct.netlink_callback** %8, align 8
  %46 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @RTM_NEWROUTE, align 4
  %51 = load %struct.dn_fib_table*, %struct.dn_fib_table** %9, align 8
  %52 = getelementptr inbounds %struct.dn_fib_table, %struct.dn_fib_table* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.dn_fib_node*, %struct.dn_fib_node** %11, align 8
  %55 = getelementptr inbounds %struct.dn_fib_node, %struct.dn_fib_node* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @DN_S_ZOMBIE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %36
  br label %65

61:                                               ; preds = %36
  %62 = load %struct.dn_fib_node*, %struct.dn_fib_node** %11, align 8
  %63 = getelementptr inbounds %struct.dn_fib_node, %struct.dn_fib_node* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  br label %65

65:                                               ; preds = %61, %60
  %66 = phi i32 [ 0, %60 ], [ %64, %61 ]
  %67 = load %struct.dn_fib_node*, %struct.dn_fib_node** %11, align 8
  %68 = getelementptr inbounds %struct.dn_fib_node, %struct.dn_fib_node* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.dn_fib_node*, %struct.dn_fib_node** %11, align 8
  %71 = getelementptr inbounds %struct.dn_fib_node, %struct.dn_fib_node* %70, i32 0, i32 2
  %72 = load %struct.dn_zone*, %struct.dn_zone** %10, align 8
  %73 = getelementptr inbounds %struct.dn_zone, %struct.dn_zone* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.dn_fib_node*, %struct.dn_fib_node** %11, align 8
  %76 = getelementptr inbounds %struct.dn_fib_node, %struct.dn_fib_node* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @NLM_F_MULTI, align 4
  %79 = call i64 @dn_fib_dump_info(%struct.sk_buff* %37, i32 %44, i32 %49, i32 %50, i32 %53, i32 %66, i32 %69, i32* %71, i32 %74, i32 %77, i32 %78)
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %65
  %82 = load i32, i32* %12, align 4
  %83 = load %struct.netlink_callback*, %struct.netlink_callback** %8, align 8
  %84 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 4
  store i32 %82, i32* %86, align 4
  store i32 -1, i32* %6, align 4
  br label %103

87:                                               ; preds = %65
  br label %88

88:                                               ; preds = %87, %35, %27
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %12, align 4
  %91 = load %struct.dn_fib_node*, %struct.dn_fib_node** %11, align 8
  %92 = getelementptr inbounds %struct.dn_fib_node, %struct.dn_fib_node* %91, i32 0, i32 5
  %93 = load %struct.dn_fib_node*, %struct.dn_fib_node** %92, align 8
  store %struct.dn_fib_node* %93, %struct.dn_fib_node** %11, align 8
  br label %20

94:                                               ; preds = %20
  %95 = load i32, i32* %12, align 4
  %96 = load %struct.netlink_callback*, %struct.netlink_callback** %8, align 8
  %97 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 4
  store i32 %95, i32* %99, align 4
  %100 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %94, %81
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local i64 @dn_fib_dump_info(%struct.sk_buff*, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
