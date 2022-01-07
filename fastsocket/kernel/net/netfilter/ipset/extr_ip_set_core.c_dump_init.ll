; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_core.c_dump_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_core.c_dump_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlink_callback = type { i64*, i32 }
%struct.nlmsghdr = type { i64 }
%struct.nlattr = type { i32 }

@IPSET_ATTR_CMD_MAX = common dso_local global i32 0, align 4
@ip_set_setname_policy = common dso_local global i32 0, align 4
@IPSET_ATTR_SETNAME = common dso_local global i64 0, align 8
@DUMP_ALL = common dso_local global i64 0, align 8
@IPSET_INVALID_ID = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@DUMP_ONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netlink_callback*)* @dump_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_init(%struct.netlink_callback* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netlink_callback*, align 8
  %4 = alloca %struct.nlmsghdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.netlink_callback* %0, %struct.netlink_callback** %3, align 8
  %11 = load %struct.netlink_callback*, %struct.netlink_callback** %3, align 8
  %12 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.nlmsghdr* @nlmsg_hdr(i32 %13)
  store %struct.nlmsghdr* %14, %struct.nlmsghdr** %4, align 8
  %15 = call i32 @NLMSG_SPACE(i32 4)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @IPSET_ATTR_CMD_MAX, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %6, align 8
  %20 = alloca %struct.nlattr*, i64 %18, align 16
  store i64 %18, i64* %7, align 8
  %21 = load %struct.nlmsghdr*, %struct.nlmsghdr** %4, align 8
  %22 = bitcast %struct.nlmsghdr* %21 to i8*
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr i8, i8* %22, i64 %24
  %26 = bitcast i8* %25 to %struct.nlattr*
  store %struct.nlattr* %26, %struct.nlattr** %8, align 8
  %27 = load i32, i32* @IPSET_ATTR_CMD_MAX, align 4
  %28 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %29 = load %struct.nlmsghdr*, %struct.nlmsghdr** %4, align 8
  %30 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = sub nsw i64 %31, %33
  %35 = load i32, i32* @ip_set_setname_policy, align 4
  %36 = call i32 @nla_parse(%struct.nlattr** %20, i32 %27, %struct.nlattr* %28, i64 %34, i32 %35)
  %37 = load i64, i64* @IPSET_ATTR_SETNAME, align 8
  %38 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %37
  %39 = load %struct.nlattr*, %struct.nlattr** %38, align 8
  %40 = icmp ne %struct.nlattr* %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %1
  %42 = load i64, i64* @DUMP_ALL, align 8
  %43 = load %struct.netlink_callback*, %struct.netlink_callback** %3, align 8
  %44 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  store i64 %42, i64* %46, align 8
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %70

47:                                               ; preds = %1
  %48 = load i64, i64* @IPSET_ATTR_SETNAME, align 8
  %49 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %48
  %50 = load %struct.nlattr*, %struct.nlattr** %49, align 8
  %51 = call i32 @nla_data(%struct.nlattr* %50)
  %52 = call i64 @find_set_id(i32 %51)
  store i64 %52, i64* %9, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* @IPSET_INVALID_ID, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load i32, i32* @ENOENT, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %70

59:                                               ; preds = %47
  %60 = load i64, i64* @DUMP_ONE, align 8
  %61 = load %struct.netlink_callback*, %struct.netlink_callback** %3, align 8
  %62 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  store i64 %60, i64* %64, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load %struct.netlink_callback*, %struct.netlink_callback** %3, align 8
  %67 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 1
  store i64 %65, i64* %69, align 8
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %70

70:                                               ; preds = %59, %56, %41
  %71 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %71)
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.nlmsghdr* @nlmsg_hdr(i32) #1

declare dso_local i32 @NLMSG_SPACE(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nla_parse(%struct.nlattr**, i32, %struct.nlattr*, i64, i32) #1

declare dso_local i64 @find_set_id(i32) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
