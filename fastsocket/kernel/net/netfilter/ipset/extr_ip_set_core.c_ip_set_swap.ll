; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_core.c_ip_set_swap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_core.c_ip_set_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { i8*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }

@IPSET_MAXNAMELEN = common dso_local global i32 0, align 4
@IPSET_ATTR_SETNAME = common dso_local global i64 0, align 8
@IPSET_ATTR_SETNAME2 = common dso_local global i64 0, align 8
@IPSET_ERR_PROTOCOL = common dso_local global i32 0, align 4
@IPSET_INVALID_ID = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@IPSET_ERR_EXIST_SETNAME2 = common dso_local global i32 0, align 4
@ip_set_list = common dso_local global %struct.ip_set** null, align 8
@IPSET_ERR_TYPE_MISMATCH = common dso_local global i32 0, align 4
@ip_set_ref_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**)* @ip_set_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_set_swap(%struct.sock* %0, %struct.sk_buff* %1, %struct.nlmsghdr* %2, %struct.nlattr** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.nlmsghdr*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.ip_set*, align 8
  %11 = alloca %struct.ip_set*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.nlmsghdr* %2, %struct.nlmsghdr** %8, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %9, align 8
  %17 = load i32, i32* @IPSET_MAXNAMELEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %14, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %15, align 8
  %21 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %22 = call i64 @protocol_failed(%struct.nlattr** %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %4
  %25 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %26 = load i64, i64* @IPSET_ATTR_SETNAME, align 8
  %27 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %26
  %28 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %29 = icmp eq %struct.nlattr* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %32 = load i64, i64* @IPSET_ATTR_SETNAME2, align 8
  %33 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %32
  %34 = load %struct.nlattr*, %struct.nlattr** %33, align 8
  %35 = icmp eq %struct.nlattr* %34, null
  br label %36

36:                                               ; preds = %30, %24, %4
  %37 = phi i1 [ true, %24 ], [ true, %4 ], [ %35, %30 ]
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @IPSET_ERR_PROTOCOL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %141

44:                                               ; preds = %36
  %45 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %46 = load i64, i64* @IPSET_ATTR_SETNAME, align 8
  %47 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %45, i64 %46
  %48 = load %struct.nlattr*, %struct.nlattr** %47, align 8
  %49 = call i32 @nla_data(%struct.nlattr* %48)
  %50 = call i64 @find_set_id(i32 %49)
  store i64 %50, i64* %12, align 8
  %51 = load i64, i64* %12, align 8
  %52 = load i64, i64* @IPSET_INVALID_ID, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load i32, i32* @ENOENT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %141

57:                                               ; preds = %44
  %58 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %59 = load i64, i64* @IPSET_ATTR_SETNAME2, align 8
  %60 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %58, i64 %59
  %61 = load %struct.nlattr*, %struct.nlattr** %60, align 8
  %62 = call i32 @nla_data(%struct.nlattr* %61)
  %63 = call i64 @find_set_id(i32 %62)
  store i64 %63, i64* %13, align 8
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* @IPSET_INVALID_ID, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %57
  %68 = load i32, i32* @IPSET_ERR_EXIST_SETNAME2, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %141

70:                                               ; preds = %57
  %71 = load %struct.ip_set**, %struct.ip_set*** @ip_set_list, align 8
  %72 = load i64, i64* %12, align 8
  %73 = getelementptr inbounds %struct.ip_set*, %struct.ip_set** %71, i64 %72
  %74 = load %struct.ip_set*, %struct.ip_set** %73, align 8
  store %struct.ip_set* %74, %struct.ip_set** %10, align 8
  %75 = load %struct.ip_set**, %struct.ip_set*** @ip_set_list, align 8
  %76 = load i64, i64* %13, align 8
  %77 = getelementptr inbounds %struct.ip_set*, %struct.ip_set** %75, i64 %76
  %78 = load %struct.ip_set*, %struct.ip_set** %77, align 8
  store %struct.ip_set* %78, %struct.ip_set** %11, align 8
  %79 = load %struct.ip_set*, %struct.ip_set** %10, align 8
  %80 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %79, i32 0, i32 2
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.ip_set*, %struct.ip_set** %11, align 8
  %85 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %84, i32 0, i32 2
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %83, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %70
  %91 = load %struct.ip_set*, %struct.ip_set** %10, align 8
  %92 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %91, i32 0, i32 2
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.ip_set*, %struct.ip_set** %11, align 8
  %97 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %96, i32 0, i32 2
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %95, %100
  br i1 %101, label %105, label %102

102:                                              ; preds = %90, %70
  %103 = load i32, i32* @IPSET_ERR_TYPE_MISMATCH, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %141

105:                                              ; preds = %90
  %106 = load %struct.ip_set*, %struct.ip_set** %10, align 8
  %107 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = load i32, i32* @IPSET_MAXNAMELEN, align 4
  %110 = call i32 @strncpy(i8* %20, i8* %108, i32 %109)
  %111 = load %struct.ip_set*, %struct.ip_set** %10, align 8
  %112 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.ip_set*, %struct.ip_set** %11, align 8
  %115 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load i32, i32* @IPSET_MAXNAMELEN, align 4
  %118 = call i32 @strncpy(i8* %113, i8* %116, i32 %117)
  %119 = load %struct.ip_set*, %struct.ip_set** %11, align 8
  %120 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = load i32, i32* @IPSET_MAXNAMELEN, align 4
  %123 = call i32 @strncpy(i8* %121, i8* %20, i32 %122)
  %124 = call i32 @write_lock_bh(i32* @ip_set_ref_lock)
  %125 = load %struct.ip_set*, %struct.ip_set** %10, align 8
  %126 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.ip_set*, %struct.ip_set** %11, align 8
  %129 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @swap(i32 %127, i32 %130)
  %132 = load %struct.ip_set*, %struct.ip_set** %11, align 8
  %133 = load %struct.ip_set**, %struct.ip_set*** @ip_set_list, align 8
  %134 = load i64, i64* %12, align 8
  %135 = getelementptr inbounds %struct.ip_set*, %struct.ip_set** %133, i64 %134
  store %struct.ip_set* %132, %struct.ip_set** %135, align 8
  %136 = load %struct.ip_set*, %struct.ip_set** %10, align 8
  %137 = load %struct.ip_set**, %struct.ip_set*** @ip_set_list, align 8
  %138 = load i64, i64* %13, align 8
  %139 = getelementptr inbounds %struct.ip_set*, %struct.ip_set** %137, i64 %138
  store %struct.ip_set* %136, %struct.ip_set** %139, align 8
  %140 = call i32 @write_unlock_bh(i32* @ip_set_ref_lock)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %141

141:                                              ; preds = %105, %102, %67, %54, %41
  %142 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %142)
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @unlikely(i32) #2

declare dso_local i64 @protocol_failed(%struct.nlattr**) #2

declare dso_local i64 @find_set_id(i32) #2

declare dso_local i32 @nla_data(%struct.nlattr*) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @write_lock_bh(i32*) #2

declare dso_local i32 @swap(i32, i32) #2

declare dso_local i32 @write_unlock_bh(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
