; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neigh_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neigh_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neigh_table = type { i64, i64, %struct.neigh_table* }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.net = type { i32 }
%struct.ndmsg = type { i64, i32, i64 }
%struct.nlattr = type { i32 }
%struct.net_device = type { i32 }
%struct.neighbour = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NDA_DST = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@neigh_tbl_lock = common dso_local global i32 0, align 4
@neigh_tables = common dso_local global %struct.neigh_table* null, align 8
@NTF_PROXY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@NUD_FAILED = common dso_local global i32 0, align 4
@NEIGH_UPDATE_F_OVERRIDE = common dso_local global i32 0, align 4
@NEIGH_UPDATE_F_ADMIN = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, i8*)* @neigh_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @neigh_delete(%struct.sk_buff* %0, %struct.nlmsghdr* %1, i8* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.ndmsg*, align 8
  %9 = alloca %struct.nlattr*, align 8
  %10 = alloca %struct.neigh_table*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.neighbour*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.net* @sock_net(i32 %16)
  store %struct.net* %17, %struct.net** %7, align 8
  store %struct.net_device* null, %struct.net_device** %11, align 8
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %12, align 4
  %20 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %21 = call i32 @nlmsg_len(%struct.nlmsghdr* %20)
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 24
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %128

25:                                               ; preds = %3
  %26 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %27 = load i32, i32* @NDA_DST, align 4
  %28 = call %struct.nlattr* @nlmsg_find_attr(%struct.nlmsghdr* %26, i32 24, i32 %27)
  store %struct.nlattr* %28, %struct.nlattr** %9, align 8
  %29 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %30 = icmp eq %struct.nlattr* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %128

32:                                               ; preds = %25
  %33 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %34 = call %struct.ndmsg* @nlmsg_data(%struct.nlmsghdr* %33)
  store %struct.ndmsg* %34, %struct.ndmsg** %8, align 8
  %35 = load %struct.ndmsg*, %struct.ndmsg** %8, align 8
  %36 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %32
  %40 = load %struct.net*, %struct.net** %7, align 8
  %41 = load %struct.ndmsg*, %struct.ndmsg** %8, align 8
  %42 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = call %struct.net_device* @dev_get_by_index(%struct.net* %40, i64 %43)
  store %struct.net_device* %44, %struct.net_device** %11, align 8
  %45 = load %struct.net_device*, %struct.net_device** %11, align 8
  %46 = icmp eq %struct.net_device* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %12, align 4
  br label %128

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50, %32
  %52 = call i32 @read_lock(i32* @neigh_tbl_lock)
  %53 = load %struct.neigh_table*, %struct.neigh_table** @neigh_tables, align 8
  store %struct.neigh_table* %53, %struct.neigh_table** %10, align 8
  br label %54

54:                                               ; preds = %113, %51
  %55 = load %struct.neigh_table*, %struct.neigh_table** %10, align 8
  %56 = icmp ne %struct.neigh_table* %55, null
  br i1 %56, label %57, label %117

57:                                               ; preds = %54
  %58 = load %struct.neigh_table*, %struct.neigh_table** %10, align 8
  %59 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.ndmsg*, %struct.ndmsg** %8, align 8
  %62 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %113

66:                                               ; preds = %57
  %67 = call i32 @read_unlock(i32* @neigh_tbl_lock)
  %68 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %69 = call i64 @nla_len(%struct.nlattr* %68)
  %70 = load %struct.neigh_table*, %struct.neigh_table** %10, align 8
  %71 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp slt i64 %69, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %121

75:                                               ; preds = %66
  %76 = load %struct.ndmsg*, %struct.ndmsg** %8, align 8
  %77 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @NTF_PROXY, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %75
  %83 = load %struct.neigh_table*, %struct.neigh_table** %10, align 8
  %84 = load %struct.net*, %struct.net** %7, align 8
  %85 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %86 = call i32 @nla_data(%struct.nlattr* %85)
  %87 = load %struct.net_device*, %struct.net_device** %11, align 8
  %88 = call i32 @pneigh_delete(%struct.neigh_table* %83, %struct.net* %84, i32 %86, %struct.net_device* %87)
  store i32 %88, i32* %12, align 4
  br label %121

89:                                               ; preds = %75
  %90 = load %struct.net_device*, %struct.net_device** %11, align 8
  %91 = icmp eq %struct.net_device* %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  br label %121

93:                                               ; preds = %89
  %94 = load %struct.neigh_table*, %struct.neigh_table** %10, align 8
  %95 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %96 = call i32 @nla_data(%struct.nlattr* %95)
  %97 = load %struct.net_device*, %struct.net_device** %11, align 8
  %98 = call %struct.neighbour* @neigh_lookup(%struct.neigh_table* %94, i32 %96, %struct.net_device* %97)
  store %struct.neighbour* %98, %struct.neighbour** %13, align 8
  %99 = load %struct.neighbour*, %struct.neighbour** %13, align 8
  %100 = icmp eq %struct.neighbour* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %93
  %102 = load i32, i32* @ENOENT, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %12, align 4
  br label %121

104:                                              ; preds = %93
  %105 = load %struct.neighbour*, %struct.neighbour** %13, align 8
  %106 = load i32, i32* @NUD_FAILED, align 4
  %107 = load i32, i32* @NEIGH_UPDATE_F_OVERRIDE, align 4
  %108 = load i32, i32* @NEIGH_UPDATE_F_ADMIN, align 4
  %109 = or i32 %107, %108
  %110 = call i32 @neigh_update(%struct.neighbour* %105, i32* null, i32 %106, i32 %109)
  store i32 %110, i32* %12, align 4
  %111 = load %struct.neighbour*, %struct.neighbour** %13, align 8
  %112 = call i32 @neigh_release(%struct.neighbour* %111)
  br label %121

113:                                              ; preds = %65
  %114 = load %struct.neigh_table*, %struct.neigh_table** %10, align 8
  %115 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %114, i32 0, i32 2
  %116 = load %struct.neigh_table*, %struct.neigh_table** %115, align 8
  store %struct.neigh_table* %116, %struct.neigh_table** %10, align 8
  br label %54

117:                                              ; preds = %54
  %118 = call i32 @read_unlock(i32* @neigh_tbl_lock)
  %119 = load i32, i32* @EAFNOSUPPORT, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %12, align 4
  br label %121

121:                                              ; preds = %117, %104, %101, %92, %82, %74
  %122 = load %struct.net_device*, %struct.net_device** %11, align 8
  %123 = icmp ne %struct.net_device* %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load %struct.net_device*, %struct.net_device** %11, align 8
  %126 = call i32 @dev_put(%struct.net_device* %125)
  br label %127

127:                                              ; preds = %124, %121
  br label %128

128:                                              ; preds = %127, %47, %31, %24
  %129 = load i32, i32* %12, align 4
  ret i32 %129
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @nlmsg_len(%struct.nlmsghdr*) #1

declare dso_local %struct.nlattr* @nlmsg_find_attr(%struct.nlmsghdr*, i32, i32) #1

declare dso_local %struct.ndmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local %struct.net_device* @dev_get_by_index(%struct.net*, i64) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i64 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @pneigh_delete(%struct.neigh_table*, %struct.net*, i32, %struct.net_device*) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local %struct.neighbour* @neigh_lookup(%struct.neigh_table*, i32, %struct.net_device*) #1

declare dso_local i32 @neigh_update(%struct.neighbour*, i32*, i32, i32) #1

declare dso_local i32 @neigh_release(%struct.neighbour*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
