; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_core.c_nf_conntrack_alter_reply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_core.c_nf_conntrack_alter_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nf_conntrack_tuple }
%struct.nf_conntrack_tuple = type { i32 }
%struct.nf_conn_help = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Altering reply tuple of %p to \00", align 1
@IP_CT_DIR_REPLY = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nf_conntrack_alter_reply(%struct.nf_conn* %0, %struct.nf_conntrack_tuple* %1) #0 {
  %3 = alloca %struct.nf_conn*, align 8
  %4 = alloca %struct.nf_conntrack_tuple*, align 8
  %5 = alloca %struct.nf_conn_help*, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %3, align 8
  store %struct.nf_conntrack_tuple* %1, %struct.nf_conntrack_tuple** %4, align 8
  %6 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %7 = call %struct.nf_conn_help* @nfct_help(%struct.nf_conn* %6)
  store %struct.nf_conn_help* %7, %struct.nf_conn_help** %5, align 8
  %8 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %9 = call i32 @nf_ct_is_confirmed(%struct.nf_conn* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @NF_CT_ASSERT(i32 %12)
  %14 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %15 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.nf_conn* %14)
  %16 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %4, align 8
  %17 = call i32 @nf_ct_dump_tuple(%struct.nf_conntrack_tuple* %16)
  %18 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %19 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %4, align 8
  %25 = bitcast %struct.nf_conntrack_tuple* %23 to i8*
  %26 = bitcast %struct.nf_conntrack_tuple* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 4, i1 false)
  %27 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %28 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %2
  %32 = load %struct.nf_conn_help*, %struct.nf_conn_help** %5, align 8
  %33 = icmp ne %struct.nf_conn_help* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load %struct.nf_conn_help*, %struct.nf_conn_help** %5, align 8
  %36 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %35, i32 0, i32 0
  %37 = call i32 @hlist_empty(i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34, %2
  br label %46

40:                                               ; preds = %34, %31
  %41 = call i32 (...) @rcu_read_lock()
  %42 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %43 = load i32, i32* @GFP_ATOMIC, align 4
  %44 = call i32 @__nf_ct_try_assign_helper(%struct.nf_conn* %42, i32 %43)
  %45 = call i32 (...) @rcu_read_unlock()
  br label %46

46:                                               ; preds = %40, %39
  ret void
}

declare dso_local %struct.nf_conn_help* @nfct_help(%struct.nf_conn*) #1

declare dso_local i32 @NF_CT_ASSERT(i32) #1

declare dso_local i32 @nf_ct_is_confirmed(%struct.nf_conn*) #1

declare dso_local i32 @pr_debug(i8*, %struct.nf_conn*) #1

declare dso_local i32 @nf_ct_dump_tuple(%struct.nf_conntrack_tuple*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @hlist_empty(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @__nf_ct_try_assign_helper(%struct.nf_conn*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
