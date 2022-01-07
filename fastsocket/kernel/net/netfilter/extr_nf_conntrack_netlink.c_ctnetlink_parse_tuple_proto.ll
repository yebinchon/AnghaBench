; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_parse_tuple_proto.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_parse_tuple_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.nf_conntrack_tuple = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.nf_conntrack_l4proto = type { i32 (%struct.nlattr**, %struct.nf_conntrack_tuple*)*, i32 }

@CTA_PROTO_MAX = common dso_local global i32 0, align 4
@proto_nla_policy = common dso_local global i32 0, align 4
@CTA_PROTO_NUM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, %struct.nf_conntrack_tuple*)* @ctnetlink_parse_tuple_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_parse_tuple_proto(%struct.nlattr* %0, %struct.nf_conntrack_tuple* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlattr*, align 8
  %5 = alloca %struct.nf_conntrack_tuple*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nf_conntrack_l4proto*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nlattr* %0, %struct.nlattr** %4, align 8
  store %struct.nf_conntrack_tuple* %1, %struct.nf_conntrack_tuple** %5, align 8
  %11 = load i32, i32* @CTA_PROTO_MAX, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca %struct.nlattr*, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* @CTA_PROTO_MAX, align 4
  %17 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %18 = load i32, i32* @proto_nla_policy, align 4
  %19 = call i32 @nla_parse_nested(%struct.nlattr** %15, i32 %16, %struct.nlattr* %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %74

24:                                               ; preds = %2
  %25 = load i64, i64* @CTA_PROTO_NUM, align 8
  %26 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %25
  %27 = load %struct.nlattr*, %struct.nlattr** %26, align 8
  %28 = icmp ne %struct.nlattr* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %74

32:                                               ; preds = %24
  %33 = load i64, i64* @CTA_PROTO_NUM, align 8
  %34 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %33
  %35 = load %struct.nlattr*, %struct.nlattr** %34, align 8
  %36 = call i32 @nla_get_u8(%struct.nlattr* %35)
  %37 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %5, align 8
  %38 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = call i32 (...) @rcu_read_lock()
  %41 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %5, align 8
  %42 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %5, align 8
  %46 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.nf_conntrack_l4proto* @__nf_ct_l4proto_find(i32 %44, i32 %48)
  store %struct.nf_conntrack_l4proto* %49, %struct.nf_conntrack_l4proto** %8, align 8
  %50 = load %struct.nf_conntrack_l4proto*, %struct.nf_conntrack_l4proto** %8, align 8
  %51 = getelementptr inbounds %struct.nf_conntrack_l4proto, %struct.nf_conntrack_l4proto* %50, i32 0, i32 0
  %52 = load i32 (%struct.nlattr**, %struct.nf_conntrack_tuple*)*, i32 (%struct.nlattr**, %struct.nf_conntrack_tuple*)** %51, align 8
  %53 = call i64 @likely(i32 (%struct.nlattr**, %struct.nf_conntrack_tuple*)* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %32
  %56 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %57 = load i32, i32* @CTA_PROTO_MAX, align 4
  %58 = load %struct.nf_conntrack_l4proto*, %struct.nf_conntrack_l4proto** %8, align 8
  %59 = getelementptr inbounds %struct.nf_conntrack_l4proto, %struct.nf_conntrack_l4proto* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @nla_validate_nested(%struct.nlattr* %56, i32 %57, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %55
  %65 = load %struct.nf_conntrack_l4proto*, %struct.nf_conntrack_l4proto** %8, align 8
  %66 = getelementptr inbounds %struct.nf_conntrack_l4proto, %struct.nf_conntrack_l4proto* %65, i32 0, i32 0
  %67 = load i32 (%struct.nlattr**, %struct.nf_conntrack_tuple*)*, i32 (%struct.nlattr**, %struct.nf_conntrack_tuple*)** %66, align 8
  %68 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %5, align 8
  %69 = call i32 %67(%struct.nlattr** %15, %struct.nf_conntrack_tuple* %68)
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %64, %55
  br label %71

71:                                               ; preds = %70, %32
  %72 = call i32 (...) @rcu_read_unlock()
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %74

74:                                               ; preds = %71, %29, %22
  %75 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32) #2

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #2

declare dso_local i32 @rcu_read_lock(...) #2

declare dso_local %struct.nf_conntrack_l4proto* @__nf_ct_l4proto_find(i32, i32) #2

declare dso_local i64 @likely(i32 (%struct.nlattr**, %struct.nf_conntrack_tuple*)*) #2

declare dso_local i32 @nla_validate_nested(%struct.nlattr*, i32, i32) #2

declare dso_local i32 @rcu_read_unlock(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
