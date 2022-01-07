; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_parse_tuple_ip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_parse_tuple_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.nf_conntrack_tuple = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nf_conntrack_l3proto = type { i32 (%struct.nlattr**, %struct.nf_conntrack_tuple*)*, i32 }

@CTA_IP_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, %struct.nf_conntrack_tuple*)* @ctnetlink_parse_tuple_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_parse_tuple_ip(%struct.nlattr* %0, %struct.nf_conntrack_tuple* %1) #0 {
  %3 = alloca %struct.nlattr*, align 8
  %4 = alloca %struct.nf_conntrack_tuple*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.nf_conntrack_l3proto*, align 8
  %8 = alloca i32, align 4
  store %struct.nlattr* %0, %struct.nlattr** %3, align 8
  store %struct.nf_conntrack_tuple* %1, %struct.nf_conntrack_tuple** %4, align 8
  %9 = load i32, i32* @CTA_IP_MAX, align 4
  %10 = add nsw i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca %struct.nlattr*, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* @CTA_IP_MAX, align 4
  %15 = load %struct.nlattr*, %struct.nlattr** %3, align 8
  %16 = call i32 @nla_parse_nested(%struct.nlattr** %13, i32 %14, %struct.nlattr* %15, i32* null)
  %17 = call i32 (...) @rcu_read_lock()
  %18 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %4, align 8
  %19 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.nf_conntrack_l3proto* @__nf_ct_l3proto_find(i32 %21)
  store %struct.nf_conntrack_l3proto* %22, %struct.nf_conntrack_l3proto** %7, align 8
  %23 = load %struct.nf_conntrack_l3proto*, %struct.nf_conntrack_l3proto** %7, align 8
  %24 = getelementptr inbounds %struct.nf_conntrack_l3proto, %struct.nf_conntrack_l3proto* %23, i32 0, i32 0
  %25 = load i32 (%struct.nlattr**, %struct.nf_conntrack_tuple*)*, i32 (%struct.nlattr**, %struct.nf_conntrack_tuple*)** %24, align 8
  %26 = call i64 @likely(i32 (%struct.nlattr**, %struct.nf_conntrack_tuple*)* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %2
  %29 = load %struct.nlattr*, %struct.nlattr** %3, align 8
  %30 = load i32, i32* @CTA_IP_MAX, align 4
  %31 = load %struct.nf_conntrack_l3proto*, %struct.nf_conntrack_l3proto** %7, align 8
  %32 = getelementptr inbounds %struct.nf_conntrack_l3proto, %struct.nf_conntrack_l3proto* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @nla_validate_nested(%struct.nlattr* %29, i32 %30, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %28
  %38 = load %struct.nf_conntrack_l3proto*, %struct.nf_conntrack_l3proto** %7, align 8
  %39 = getelementptr inbounds %struct.nf_conntrack_l3proto, %struct.nf_conntrack_l3proto* %38, i32 0, i32 0
  %40 = load i32 (%struct.nlattr**, %struct.nf_conntrack_tuple*)*, i32 (%struct.nlattr**, %struct.nf_conntrack_tuple*)** %39, align 8
  %41 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %4, align 8
  %42 = call i32 %40(%struct.nlattr** %13, %struct.nf_conntrack_tuple* %41)
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %37, %28
  br label %44

44:                                               ; preds = %43, %2
  %45 = call i32 (...) @rcu_read_unlock()
  %46 = load i32, i32* %8, align 4
  %47 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %47)
  ret i32 %46
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32*) #2

declare dso_local i32 @rcu_read_lock(...) #2

declare dso_local %struct.nf_conntrack_l3proto* @__nf_ct_l3proto_find(i32) #2

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
