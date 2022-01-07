; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_core.c_ip_set_rename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_core.c_ip_set_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.ip_set = type { i64, i32 }

@IPSET_ATTR_SETNAME = common dso_local global i64 0, align 8
@IPSET_ATTR_SETNAME2 = common dso_local global i64 0, align 8
@IPSET_ERR_PROTOCOL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ip_set_ref_lock = common dso_local global i32 0, align 4
@IPSET_ERR_REFERENCED = common dso_local global i32 0, align 4
@ip_set_max = common dso_local global i64 0, align 8
@ip_set_list = common dso_local global %struct.TYPE_2__** null, align 8
@IPSET_ERR_EXIST_SETNAME2 = common dso_local global i32 0, align 4
@IPSET_MAXNAMELEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**)* @ip_set_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_set_rename(%struct.sock* %0, %struct.sk_buff* %1, %struct.nlmsghdr* %2, %struct.nlattr** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.nlmsghdr*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.ip_set*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.nlmsghdr* %2, %struct.nlmsghdr** %8, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %9, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %15 = call i64 @protocol_failed(%struct.nlattr** %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %4
  %18 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %19 = load i64, i64* @IPSET_ATTR_SETNAME, align 8
  %20 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %19
  %21 = load %struct.nlattr*, %struct.nlattr** %20, align 8
  %22 = icmp eq %struct.nlattr* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %25 = load i64, i64* @IPSET_ATTR_SETNAME2, align 8
  %26 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %25
  %27 = load %struct.nlattr*, %struct.nlattr** %26, align 8
  %28 = icmp eq %struct.nlattr* %27, null
  br label %29

29:                                               ; preds = %23, %17, %4
  %30 = phi i1 [ true, %17 ], [ true, %4 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @IPSET_ERR_PROTOCOL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %101

37:                                               ; preds = %29
  %38 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %39 = load i64, i64* @IPSET_ATTR_SETNAME, align 8
  %40 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %38, i64 %39
  %41 = load %struct.nlattr*, %struct.nlattr** %40, align 8
  %42 = call i8* @nla_data(%struct.nlattr* %41)
  %43 = call %struct.ip_set* @find_set(i8* %42)
  store %struct.ip_set* %43, %struct.ip_set** %10, align 8
  %44 = load %struct.ip_set*, %struct.ip_set** %10, align 8
  %45 = icmp eq %struct.ip_set* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load i32, i32* @ENOENT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %101

49:                                               ; preds = %37
  %50 = call i32 @read_lock_bh(i32* @ip_set_ref_lock)
  %51 = load %struct.ip_set*, %struct.ip_set** %10, align 8
  %52 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @IPSET_ERR_REFERENCED, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %13, align 4
  br label %98

58:                                               ; preds = %49
  %59 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %60 = load i64, i64* @IPSET_ATTR_SETNAME2, align 8
  %61 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %59, i64 %60
  %62 = load %struct.nlattr*, %struct.nlattr** %61, align 8
  %63 = call i8* @nla_data(%struct.nlattr* %62)
  store i8* %63, i8** %11, align 8
  store i64 0, i64* %12, align 8
  br label %64

64:                                               ; preds = %88, %58
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* @ip_set_max, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %91

68:                                               ; preds = %64
  %69 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @ip_set_list, align 8
  %70 = load i64, i64* %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %69, i64 %70
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = icmp ne %struct.TYPE_2__* %72, null
  br i1 %73, label %74, label %87

74:                                               ; preds = %68
  %75 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @ip_set_list, align 8
  %76 = load i64, i64* %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %75, i64 %76
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i8*, i8** %11, align 8
  %82 = call i64 @STREQ(i32 %80, i8* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %74
  %85 = load i32, i32* @IPSET_ERR_EXIST_SETNAME2, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %13, align 4
  br label %98

87:                                               ; preds = %74, %68
  br label %88

88:                                               ; preds = %87
  %89 = load i64, i64* %12, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %12, align 8
  br label %64

91:                                               ; preds = %64
  %92 = load %struct.ip_set*, %struct.ip_set** %10, align 8
  %93 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i8*, i8** %11, align 8
  %96 = load i32, i32* @IPSET_MAXNAMELEN, align 4
  %97 = call i32 @strncpy(i32 %94, i8* %95, i32 %96)
  br label %98

98:                                               ; preds = %91, %84, %55
  %99 = call i32 @read_unlock_bh(i32* @ip_set_ref_lock)
  %100 = load i32, i32* %13, align 4
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %98, %46, %34
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @protocol_failed(%struct.nlattr**) #1

declare dso_local %struct.ip_set* @find_set(i8*) #1

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i64 @STREQ(i32, i8*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
