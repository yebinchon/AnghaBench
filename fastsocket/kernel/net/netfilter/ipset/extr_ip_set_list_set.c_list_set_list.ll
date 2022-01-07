; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_list_set.c_list_set_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_list_set.c_list_set_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { %struct.list_set* }
%struct.list_set = type { i64, i32 }
%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i64* }
%struct.nlattr = type { i32 }
%struct.set_elem = type { i64 }
%struct.set_telem = type { i32 }

@IPSET_ATTR_ADT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@IPSET_INVALID_ID = common dso_local global i64 0, align 8
@IPSET_ATTR_DATA = common dso_local global i32 0, align 4
@IPSET_ATTR_NAME = common dso_local global i32 0, align 4
@IPSET_ATTR_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_set*, %struct.sk_buff*, %struct.netlink_callback*)* @list_set_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_set_list(%struct.ip_set* %0, %struct.sk_buff* %1, %struct.netlink_callback* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_set*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.netlink_callback*, align 8
  %8 = alloca %struct.list_set*, align 8
  %9 = alloca %struct.nlattr*, align 8
  %10 = alloca %struct.nlattr*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.set_elem*, align 8
  %14 = alloca %struct.set_telem*, align 8
  store %struct.ip_set* %0, %struct.ip_set** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.netlink_callback* %2, %struct.netlink_callback** %7, align 8
  %15 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %16 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %15, i32 0, i32 0
  %17 = load %struct.list_set*, %struct.list_set** %16, align 8
  store %struct.list_set* %17, %struct.list_set** %8, align 8
  %18 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %19 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 2
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %12, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = load i32, i32* @IPSET_ATTR_ADT, align 4
  %25 = call %struct.nlattr* @ipset_nest_start(%struct.sk_buff* %23, i32 %24)
  store %struct.nlattr* %25, %struct.nlattr** %9, align 8
  %26 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %27 = icmp ne %struct.nlattr* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @EMSGSIZE, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %151

31:                                               ; preds = %3
  br label %32

32:                                               ; preds = %114, %31
  %33 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %34 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.list_set*, %struct.list_set** %8, align 8
  %39 = getelementptr inbounds %struct.list_set, %struct.list_set* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %42, label %121

42:                                               ; preds = %32
  %43 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %44 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 2
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %11, align 8
  %48 = load %struct.list_set*, %struct.list_set** %8, align 8
  %49 = load i64, i64* %11, align 8
  %50 = call %struct.set_elem* @list_set_elem(%struct.list_set* %48, i64 %49)
  store %struct.set_elem* %50, %struct.set_elem** %13, align 8
  %51 = load %struct.set_elem*, %struct.set_elem** %13, align 8
  %52 = getelementptr inbounds %struct.set_elem, %struct.set_elem* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @IPSET_INVALID_ID, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %42
  br label %122

57:                                               ; preds = %42
  %58 = load %struct.list_set*, %struct.list_set** %8, align 8
  %59 = getelementptr inbounds %struct.list_set, %struct.list_set* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @with_timeout(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load %struct.list_set*, %struct.list_set** %8, align 8
  %65 = load i64, i64* %11, align 8
  %66 = call i64 @list_set_expired(%struct.list_set* %64, i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %114

69:                                               ; preds = %63, %57
  %70 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %71 = load i32, i32* @IPSET_ATTR_DATA, align 4
  %72 = call %struct.nlattr* @ipset_nest_start(%struct.sk_buff* %70, i32 %71)
  store %struct.nlattr* %72, %struct.nlattr** %10, align 8
  %73 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %74 = icmp ne %struct.nlattr* %73, null
  br i1 %74, label %86, label %75

75:                                               ; preds = %69
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* %12, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %81 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %82 = call i32 @nla_nest_cancel(%struct.sk_buff* %80, %struct.nlattr* %81)
  %83 = load i32, i32* @EMSGSIZE, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %151

85:                                               ; preds = %75
  br label %130

86:                                               ; preds = %69
  %87 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %88 = load i32, i32* @IPSET_ATTR_NAME, align 4
  %89 = load %struct.set_elem*, %struct.set_elem** %13, align 8
  %90 = getelementptr inbounds %struct.set_elem, %struct.set_elem* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @ip_set_name_byindex(i64 %91)
  %93 = call i32 @NLA_PUT_STRING(%struct.sk_buff* %87, i32 %88, i32 %92)
  %94 = load %struct.list_set*, %struct.list_set** %8, align 8
  %95 = getelementptr inbounds %struct.list_set, %struct.list_set* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @with_timeout(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %86
  %100 = load %struct.set_elem*, %struct.set_elem** %13, align 8
  %101 = bitcast %struct.set_elem* %100 to %struct.set_telem*
  store %struct.set_telem* %101, %struct.set_telem** %14, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %103 = load i32, i32* @IPSET_ATTR_TIMEOUT, align 4
  %104 = load %struct.set_telem*, %struct.set_telem** %14, align 8
  %105 = getelementptr inbounds %struct.set_telem, %struct.set_telem* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ip_set_timeout_get(i32 %106)
  %108 = call i32 @htonl(i32 %107)
  %109 = call i32 @NLA_PUT_NET32(%struct.sk_buff* %102, i32 %103, i32 %108)
  br label %110

110:                                              ; preds = %99, %86
  %111 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %112 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %113 = call i32 @ipset_nest_end(%struct.sk_buff* %111, %struct.nlattr* %112)
  br label %114

114:                                              ; preds = %110, %68
  %115 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %116 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %115, i32 0, i32 0
  %117 = load i64*, i64** %116, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 2
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %119, 1
  store i64 %120, i64* %118, align 8
  br label %32

121:                                              ; preds = %32
  br label %122

122:                                              ; preds = %121, %56
  %123 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %124 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %125 = call i32 @ipset_nest_end(%struct.sk_buff* %123, %struct.nlattr* %124)
  %126 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %127 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %126, i32 0, i32 0
  %128 = load i64*, i64** %127, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 2
  store i64 0, i64* %129, align 8
  store i32 0, i32* %4, align 4
  br label %151

130:                                              ; preds = %85
  %131 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %132 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %133 = call i32 @nla_nest_cancel(%struct.sk_buff* %131, %struct.nlattr* %132)
  %134 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %135 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %136 = call i32 @ipset_nest_end(%struct.sk_buff* %134, %struct.nlattr* %135)
  %137 = load i64, i64* %11, align 8
  %138 = load i64, i64* %12, align 8
  %139 = icmp eq i64 %137, %138
  %140 = zext i1 %139 to i32
  %141 = call i64 @unlikely(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %130
  %144 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %145 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %144, i32 0, i32 0
  %146 = load i64*, i64** %145, align 8
  %147 = getelementptr inbounds i64, i64* %146, i64 2
  store i64 0, i64* %147, align 8
  %148 = load i32, i32* @EMSGSIZE, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %4, align 4
  br label %151

150:                                              ; preds = %130
  store i32 0, i32* %4, align 4
  br label %151

151:                                              ; preds = %150, %143, %122, %79, %28
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local %struct.nlattr* @ipset_nest_start(%struct.sk_buff*, i32) #1

declare dso_local %struct.set_elem* @list_set_elem(%struct.list_set*, i64) #1

declare dso_local i64 @with_timeout(i32) #1

declare dso_local i64 @list_set_expired(%struct.list_set*, i64) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @NLA_PUT_STRING(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ip_set_name_byindex(i64) #1

declare dso_local i32 @NLA_PUT_NET32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @ip_set_timeout_get(i32) #1

declare dso_local i32 @ipset_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
