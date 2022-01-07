; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_helper.c___nf_ct_try_assign_helper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_helper.c___nf_ct_try_assign_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nf_conntrack_helper = type { i32 }
%struct.nf_conn_help = type { i32, i32 }

@IP_CT_DIR_REPLY = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__nf_ct_try_assign_helper(%struct.nf_conn* %0, i32 %1) #0 {
  %3 = alloca %struct.nf_conn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.nf_conntrack_helper*, align 8
  %7 = alloca %struct.nf_conn_help*, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %9 = call %struct.nf_conn_help* @nfct_help(%struct.nf_conn* %8)
  store %struct.nf_conn_help* %9, %struct.nf_conn_help** %7, align 8
  %10 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %11 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call %struct.nf_conntrack_helper* @__nf_ct_helper_find(i32* %15)
  store %struct.nf_conntrack_helper* %16, %struct.nf_conntrack_helper** %6, align 8
  %17 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %6, align 8
  %18 = icmp eq %struct.nf_conntrack_helper* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.nf_conn_help*, %struct.nf_conn_help** %7, align 8
  %21 = icmp ne %struct.nf_conn_help* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load %struct.nf_conn_help*, %struct.nf_conn_help** %7, align 8
  %24 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @rcu_assign_pointer(i32 %25, %struct.nf_conntrack_helper* null)
  br label %27

27:                                               ; preds = %22, %19
  br label %51

28:                                               ; preds = %2
  %29 = load %struct.nf_conn_help*, %struct.nf_conn_help** %7, align 8
  %30 = icmp eq %struct.nf_conn_help* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call %struct.nf_conn_help* @nf_ct_helper_ext_add(%struct.nf_conn* %32, i32 %33)
  store %struct.nf_conn_help* %34, %struct.nf_conn_help** %7, align 8
  %35 = load %struct.nf_conn_help*, %struct.nf_conn_help** %7, align 8
  %36 = icmp eq %struct.nf_conn_help* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %51

40:                                               ; preds = %31
  br label %45

41:                                               ; preds = %28
  %42 = load %struct.nf_conn_help*, %struct.nf_conn_help** %7, align 8
  %43 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %42, i32 0, i32 1
  %44 = call i32 @memset(i32* %43, i32 0, i32 4)
  br label %45

45:                                               ; preds = %41, %40
  %46 = load %struct.nf_conn_help*, %struct.nf_conn_help** %7, align 8
  %47 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %6, align 8
  %50 = call i32 @rcu_assign_pointer(i32 %48, %struct.nf_conntrack_helper* %49)
  br label %51

51:                                               ; preds = %45, %37, %27
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local %struct.nf_conn_help* @nfct_help(%struct.nf_conn*) #1

declare dso_local %struct.nf_conntrack_helper* @__nf_ct_helper_find(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.nf_conntrack_helper*) #1

declare dso_local %struct.nf_conn_help* @nf_ct_helper_ext_add(%struct.nf_conn*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
