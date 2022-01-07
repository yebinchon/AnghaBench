; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_core.c_nf_nat_setup_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_core.c_nf_nat_setup_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nf_conntrack_tuple }
%struct.nf_conntrack_tuple = type { i32 }
%struct.nf_nat_range = type { i32 }
%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.nf_conn_nat = type { i32, %struct.nf_conn* }

@NF_CT_EXT_NAT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to add NAT extension\0A\00", align 1
@NF_ACCEPT = common dso_local global i32 0, align 4
@IP_NAT_MANIP_SRC = common dso_local global i32 0, align 4
@IP_NAT_MANIP_DST = common dso_local global i32 0, align 4
@IP_CT_DIR_REPLY = common dso_local global i64 0, align 8
@IPS_SRC_NAT = common dso_local global i32 0, align 4
@IPS_DST_NAT = common dso_local global i32 0, align 4
@IP_CT_DIR_ORIGINAL = common dso_local global i64 0, align 8
@nf_nat_lock = common dso_local global i32 0, align 4
@IPS_DST_NAT_DONE_BIT = common dso_local global i32 0, align 4
@IPS_SRC_NAT_DONE_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_nat_setup_info(%struct.nf_conn* %0, %struct.nf_nat_range* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nf_conn*, align 8
  %6 = alloca %struct.nf_nat_range*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.nf_conntrack_tuple, align 4
  %10 = alloca %struct.nf_conntrack_tuple, align 4
  %11 = alloca %struct.nf_conn_nat*, align 8
  %12 = alloca %struct.nf_conntrack_tuple, align 4
  %13 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %5, align 8
  store %struct.nf_nat_range* %1, %struct.nf_nat_range** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %15 = call %struct.net* @nf_ct_net(%struct.nf_conn* %14)
  store %struct.net* %15, %struct.net** %8, align 8
  %16 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %17 = call %struct.nf_conn_nat* @nfct_nat(%struct.nf_conn* %16)
  store %struct.nf_conn_nat* %17, %struct.nf_conn_nat** %11, align 8
  %18 = load %struct.nf_conn_nat*, %struct.nf_conn_nat** %11, align 8
  %19 = icmp ne %struct.nf_conn_nat* %18, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %3
  %21 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %22 = load i32, i32* @NF_CT_EXT_NAT, align 4
  %23 = load i32, i32* @GFP_ATOMIC, align 4
  %24 = call %struct.nf_conn_nat* @nf_ct_ext_add(%struct.nf_conn* %21, i32 %22, i32 %23)
  store %struct.nf_conn_nat* %24, %struct.nf_conn_nat** %11, align 8
  %25 = load %struct.nf_conn_nat*, %struct.nf_conn_nat** %11, align 8
  %26 = icmp eq %struct.nf_conn_nat* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %29, i32* %4, align 4
  br label %126

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30, %3
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @IP_NAT_MANIP_SRC, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @IP_NAT_MANIP_DST, align 4
  %38 = icmp eq i32 %36, %37
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i1 [ true, %31 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @NF_CT_ASSERT(i32 %41)
  %43 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @nf_nat_initialized(%struct.nf_conn* %43, i32 %44)
  %46 = call i32 @BUG_ON(i32 %45)
  %47 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %48 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = call i32 @nf_ct_invert_tuplepr(%struct.nf_conntrack_tuple* %9, %struct.nf_conntrack_tuple* %52)
  %54 = load %struct.nf_nat_range*, %struct.nf_nat_range** %6, align 8
  %55 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @get_unique_tuple(%struct.nf_conntrack_tuple* %10, %struct.nf_conntrack_tuple* %9, %struct.nf_nat_range* %54, %struct.nf_conn* %55, i32 %56)
  %58 = call i32 @nf_ct_tuple_equal(%struct.nf_conntrack_tuple* %10, %struct.nf_conntrack_tuple* %9)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %80, label %60

60:                                               ; preds = %39
  %61 = call i32 @nf_ct_invert_tuplepr(%struct.nf_conntrack_tuple* %12, %struct.nf_conntrack_tuple* %10)
  %62 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %63 = call i32 @nf_conntrack_alter_reply(%struct.nf_conn* %62, %struct.nf_conntrack_tuple* %12)
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @IP_NAT_MANIP_SRC, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load i32, i32* @IPS_SRC_NAT, align 4
  %69 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %70 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %79

73:                                               ; preds = %60
  %74 = load i32, i32* @IPS_DST_NAT, align 4
  %75 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %76 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %73, %67
  br label %80

80:                                               ; preds = %79, %39
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @IP_NAT_MANIP_SRC, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %110

84:                                               ; preds = %80
  %85 = load %struct.net*, %struct.net** %8, align 8
  %86 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %87 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %86, i32 0, i32 1
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = call i32 @hash_by_src(%struct.net* %85, %struct.nf_conntrack_tuple* %91)
  store i32 %92, i32* %13, align 4
  %93 = call i32 @spin_lock_bh(i32* @nf_nat_lock)
  %94 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %95 = call %struct.nf_conn_nat* @nfct_nat(%struct.nf_conn* %94)
  store %struct.nf_conn_nat* %95, %struct.nf_conn_nat** %11, align 8
  %96 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %97 = load %struct.nf_conn_nat*, %struct.nf_conn_nat** %11, align 8
  %98 = getelementptr inbounds %struct.nf_conn_nat, %struct.nf_conn_nat* %97, i32 0, i32 1
  store %struct.nf_conn* %96, %struct.nf_conn** %98, align 8
  %99 = load %struct.nf_conn_nat*, %struct.nf_conn_nat** %11, align 8
  %100 = getelementptr inbounds %struct.nf_conn_nat, %struct.nf_conn_nat* %99, i32 0, i32 0
  %101 = load %struct.net*, %struct.net** %8, align 8
  %102 = getelementptr inbounds %struct.net, %struct.net* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %13, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = call i32 @hlist_add_head_rcu(i32* %100, i32* %107)
  %109 = call i32 @spin_unlock_bh(i32* @nf_nat_lock)
  br label %110

110:                                              ; preds = %84, %80
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @IP_NAT_MANIP_DST, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = load i32, i32* @IPS_DST_NAT_DONE_BIT, align 4
  %116 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %117 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %116, i32 0, i32 0
  %118 = call i32 @set_bit(i32 %115, i32* %117)
  br label %124

119:                                              ; preds = %110
  %120 = load i32, i32* @IPS_SRC_NAT_DONE_BIT, align 4
  %121 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %122 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %121, i32 0, i32 0
  %123 = call i32 @set_bit(i32 %120, i32* %122)
  br label %124

124:                                              ; preds = %119, %114
  %125 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %124, %27
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local %struct.net* @nf_ct_net(%struct.nf_conn*) #1

declare dso_local %struct.nf_conn_nat* @nfct_nat(%struct.nf_conn*) #1

declare dso_local %struct.nf_conn_nat* @nf_ct_ext_add(%struct.nf_conn*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @NF_CT_ASSERT(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @nf_nat_initialized(%struct.nf_conn*, i32) #1

declare dso_local i32 @nf_ct_invert_tuplepr(%struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple*) #1

declare dso_local i32 @get_unique_tuple(%struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple*, %struct.nf_nat_range*, %struct.nf_conn*, i32) #1

declare dso_local i32 @nf_ct_tuple_equal(%struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple*) #1

declare dso_local i32 @nf_conntrack_alter_reply(%struct.nf_conn*, %struct.nf_conntrack_tuple*) #1

declare dso_local i32 @hash_by_src(%struct.net*, %struct.nf_conntrack_tuple*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
