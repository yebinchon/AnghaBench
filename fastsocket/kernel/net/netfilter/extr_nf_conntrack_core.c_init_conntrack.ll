; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_core.c_init_conntrack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_core.c_init_conntrack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_tuple_hash = type { i32 }
%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nf_conntrack_tuple = type { i32 }
%struct.nf_conntrack_l3proto = type { i32 }
%struct.nf_conntrack_l4proto = type { i32 (%struct.nf_conn*, %struct.sk_buff*, i32)* }
%struct.nf_conn = type opaque
%struct.sk_buff = type { i32 }
%struct.nf_conn.0 = type { %struct.nf_conntrack_tuple_hash*, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.nf_conn_help = type { i32 }
%struct.nf_conntrack_expect = type { i32 (%struct.nf_conn.1*, %struct.nf_conntrack_expect*)*, %struct.TYPE_3__*, i64 }
%struct.nf_conn.1 = type opaque

@.str = private unnamed_addr constant [21 x i8] c"Can't invert tuple.\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Can't allocate conntrack.\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"init conntrack: can't track with proto module\0A\00", align 1
@nf_conntrack_lock = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"conntrack: expectation arrives ct=%p exp=%p\0A\00", align 1
@IPS_EXPECTED_BIT = common dso_local global i32 0, align 4
@expect_new = common dso_local global i32 0, align 4
@new = common dso_local global i32 0, align 4
@IP_CT_DIR_ORIGINAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nf_conntrack_tuple_hash* (%struct.net*, %struct.nf_conntrack_tuple*, %struct.nf_conntrack_l3proto*, %struct.nf_conntrack_l4proto*, %struct.sk_buff*, i32)* @init_conntrack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nf_conntrack_tuple_hash* @init_conntrack(%struct.net* %0, %struct.nf_conntrack_tuple* %1, %struct.nf_conntrack_l3proto* %2, %struct.nf_conntrack_l4proto* %3, %struct.sk_buff* %4, i32 %5) #0 {
  %7 = alloca %struct.nf_conntrack_tuple_hash*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.nf_conntrack_tuple*, align 8
  %10 = alloca %struct.nf_conntrack_l3proto*, align 8
  %11 = alloca %struct.nf_conntrack_l4proto*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.nf_conn.0*, align 8
  %15 = alloca %struct.nf_conn_help*, align 8
  %16 = alloca %struct.nf_conntrack_tuple, align 4
  %17 = alloca %struct.nf_conntrack_expect*, align 8
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.nf_conntrack_tuple* %1, %struct.nf_conntrack_tuple** %9, align 8
  store %struct.nf_conntrack_l3proto* %2, %struct.nf_conntrack_l3proto** %10, align 8
  store %struct.nf_conntrack_l4proto* %3, %struct.nf_conntrack_l4proto** %11, align 8
  store %struct.sk_buff* %4, %struct.sk_buff** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %9, align 8
  %19 = load %struct.nf_conntrack_l3proto*, %struct.nf_conntrack_l3proto** %10, align 8
  %20 = load %struct.nf_conntrack_l4proto*, %struct.nf_conntrack_l4proto** %11, align 8
  %21 = call i32 @nf_ct_invert_tuple(%struct.nf_conntrack_tuple* %16, %struct.nf_conntrack_tuple* %18, %struct.nf_conntrack_l3proto* %19, %struct.nf_conntrack_l4proto* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %6
  %24 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store %struct.nf_conntrack_tuple_hash* null, %struct.nf_conntrack_tuple_hash** %7, align 8
  br label %148

25:                                               ; preds = %6
  %26 = load %struct.net*, %struct.net** %8, align 8
  %27 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %9, align 8
  %28 = load i32, i32* @GFP_ATOMIC, align 4
  %29 = call %struct.nf_conn.0* @nf_conntrack_alloc(%struct.net* %26, %struct.nf_conntrack_tuple* %27, %struct.nf_conntrack_tuple* %16, i32 %28)
  store %struct.nf_conn.0* %29, %struct.nf_conn.0** %14, align 8
  %30 = load %struct.nf_conn.0*, %struct.nf_conn.0** %14, align 8
  %31 = call i64 @IS_ERR(%struct.nf_conn.0* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.nf_conn.0*, %struct.nf_conn.0** %14, align 8
  %36 = bitcast %struct.nf_conn.0* %35 to %struct.nf_conntrack_tuple_hash*
  store %struct.nf_conntrack_tuple_hash* %36, %struct.nf_conntrack_tuple_hash** %7, align 8
  br label %148

37:                                               ; preds = %25
  %38 = load %struct.nf_conntrack_l4proto*, %struct.nf_conntrack_l4proto** %11, align 8
  %39 = getelementptr inbounds %struct.nf_conntrack_l4proto, %struct.nf_conntrack_l4proto* %38, i32 0, i32 0
  %40 = load i32 (%struct.nf_conn*, %struct.sk_buff*, i32)*, i32 (%struct.nf_conn*, %struct.sk_buff*, i32)** %39, align 8
  %41 = load %struct.nf_conn.0*, %struct.nf_conn.0** %14, align 8
  %42 = bitcast %struct.nf_conn.0* %41 to %struct.nf_conn*
  %43 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %44 = load i32, i32* %13, align 4
  %45 = call i32 %40(%struct.nf_conn* %42, %struct.sk_buff* %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %37
  %48 = load %struct.nf_conn.0*, %struct.nf_conn.0** %14, align 8
  %49 = call i32 @nf_conntrack_free(%struct.nf_conn.0* %48)
  %50 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  store %struct.nf_conntrack_tuple_hash* null, %struct.nf_conntrack_tuple_hash** %7, align 8
  br label %148

51:                                               ; preds = %37
  %52 = load %struct.nf_conn.0*, %struct.nf_conn.0** %14, align 8
  %53 = load i32, i32* @GFP_ATOMIC, align 4
  %54 = call i32 @nf_ct_acct_ext_add(%struct.nf_conn.0* %52, i32 %53)
  %55 = load %struct.nf_conn.0*, %struct.nf_conn.0** %14, align 8
  %56 = load i32, i32* @GFP_ATOMIC, align 4
  %57 = call i32 @nf_ct_ecache_ext_add(%struct.nf_conn.0* %55, i32 %56)
  %58 = call i32 @spin_lock_bh(i32* @nf_conntrack_lock)
  %59 = load %struct.net*, %struct.net** %8, align 8
  %60 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %9, align 8
  %61 = call %struct.nf_conntrack_expect* @nf_ct_find_expectation(%struct.net* %59, %struct.nf_conntrack_tuple* %60)
  store %struct.nf_conntrack_expect* %61, %struct.nf_conntrack_expect** %17, align 8
  %62 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %63 = icmp ne %struct.nf_conntrack_expect* %62, null
  br i1 %63, label %64, label %105

64:                                               ; preds = %51
  %65 = load %struct.nf_conn.0*, %struct.nf_conn.0** %14, align 8
  %66 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %67 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), %struct.nf_conn.0* %65, %struct.nf_conntrack_expect* %66)
  %68 = load i32, i32* @IPS_EXPECTED_BIT, align 4
  %69 = load %struct.nf_conn.0*, %struct.nf_conn.0** %14, align 8
  %70 = getelementptr inbounds %struct.nf_conn.0, %struct.nf_conn.0* %69, i32 0, i32 4
  %71 = call i32 @__set_bit(i32 %68, i32* %70)
  %72 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %73 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %72, i32 0, i32 1
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = load %struct.nf_conn.0*, %struct.nf_conn.0** %14, align 8
  %76 = getelementptr inbounds %struct.nf_conn.0, %struct.nf_conn.0* %75, i32 0, i32 1
  store %struct.TYPE_3__* %74, %struct.TYPE_3__** %76, align 8
  %77 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %78 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %64
  %82 = load %struct.nf_conn.0*, %struct.nf_conn.0** %14, align 8
  %83 = load i32, i32* @GFP_ATOMIC, align 4
  %84 = call %struct.nf_conn_help* @nf_ct_helper_ext_add(%struct.nf_conn.0* %82, i32 %83)
  store %struct.nf_conn_help* %84, %struct.nf_conn_help** %15, align 8
  %85 = load %struct.nf_conn_help*, %struct.nf_conn_help** %15, align 8
  %86 = icmp ne %struct.nf_conn_help* %85, null
  br i1 %86, label %87, label %95

87:                                               ; preds = %81
  %88 = load %struct.nf_conn_help*, %struct.nf_conn_help** %15, align 8
  %89 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %92 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @rcu_assign_pointer(i32 %90, i64 %93)
  br label %95

95:                                               ; preds = %87, %81
  br label %96

96:                                               ; preds = %95, %64
  %97 = load %struct.nf_conn.0*, %struct.nf_conn.0** %14, align 8
  %98 = getelementptr inbounds %struct.nf_conn.0, %struct.nf_conn.0* %97, i32 0, i32 1
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = call i32 @nf_conntrack_get(i32* %100)
  %102 = load %struct.net*, %struct.net** %8, align 8
  %103 = load i32, i32* @expect_new, align 4
  %104 = call i32 @NF_CT_STAT_INC(%struct.net* %102, i32 %103)
  br label %112

105:                                              ; preds = %51
  %106 = load %struct.nf_conn.0*, %struct.nf_conn.0** %14, align 8
  %107 = load i32, i32* @GFP_ATOMIC, align 4
  %108 = call i32 @__nf_ct_try_assign_helper(%struct.nf_conn.0* %106, i32 %107)
  %109 = load %struct.net*, %struct.net** %8, align 8
  %110 = load i32, i32* @new, align 4
  %111 = call i32 @NF_CT_STAT_INC(%struct.net* %109, i32 %110)
  br label %112

112:                                              ; preds = %105, %96
  %113 = load %struct.nf_conn.0*, %struct.nf_conn.0** %14, align 8
  %114 = getelementptr inbounds %struct.nf_conn.0, %struct.nf_conn.0* %113, i32 0, i32 0
  %115 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %114, align 8
  %116 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %117 = getelementptr inbounds %struct.nf_conntrack_tuple_hash, %struct.nf_conntrack_tuple_hash* %115, i64 %116
  %118 = getelementptr inbounds %struct.nf_conntrack_tuple_hash, %struct.nf_conntrack_tuple_hash* %117, i32 0, i32 0
  %119 = load %struct.net*, %struct.net** %8, align 8
  %120 = getelementptr inbounds %struct.net, %struct.net* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = call i32 @hlist_nulls_add_head_rcu(i32* %118, i32* %121)
  %123 = call i32 @spin_unlock_bh(i32* @nf_conntrack_lock)
  %124 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %125 = icmp ne %struct.nf_conntrack_expect* %124, null
  br i1 %125, label %126, label %142

126:                                              ; preds = %112
  %127 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %128 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %127, i32 0, i32 0
  %129 = load i32 (%struct.nf_conn.1*, %struct.nf_conntrack_expect*)*, i32 (%struct.nf_conn.1*, %struct.nf_conntrack_expect*)** %128, align 8
  %130 = icmp ne i32 (%struct.nf_conn.1*, %struct.nf_conntrack_expect*)* %129, null
  br i1 %130, label %131, label %139

131:                                              ; preds = %126
  %132 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %133 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %132, i32 0, i32 0
  %134 = load i32 (%struct.nf_conn.1*, %struct.nf_conntrack_expect*)*, i32 (%struct.nf_conn.1*, %struct.nf_conntrack_expect*)** %133, align 8
  %135 = load %struct.nf_conn.0*, %struct.nf_conn.0** %14, align 8
  %136 = bitcast %struct.nf_conn.0* %135 to %struct.nf_conn.1*
  %137 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %138 = call i32 %134(%struct.nf_conn.1* %136, %struct.nf_conntrack_expect* %137)
  br label %139

139:                                              ; preds = %131, %126
  %140 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %17, align 8
  %141 = call i32 @nf_ct_expect_put(%struct.nf_conntrack_expect* %140)
  br label %142

142:                                              ; preds = %139, %112
  %143 = load %struct.nf_conn.0*, %struct.nf_conn.0** %14, align 8
  %144 = getelementptr inbounds %struct.nf_conn.0, %struct.nf_conn.0* %143, i32 0, i32 0
  %145 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %144, align 8
  %146 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %147 = getelementptr inbounds %struct.nf_conntrack_tuple_hash, %struct.nf_conntrack_tuple_hash* %145, i64 %146
  store %struct.nf_conntrack_tuple_hash* %147, %struct.nf_conntrack_tuple_hash** %7, align 8
  br label %148

148:                                              ; preds = %142, %47, %33, %23
  %149 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %7, align 8
  ret %struct.nf_conntrack_tuple_hash* %149
}

declare dso_local i32 @nf_ct_invert_tuple(%struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple*, %struct.nf_conntrack_l3proto*, %struct.nf_conntrack_l4proto*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local %struct.nf_conn.0* @nf_conntrack_alloc(%struct.net*, %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple*, i32) #1

declare dso_local i64 @IS_ERR(%struct.nf_conn.0*) #1

declare dso_local i32 @nf_conntrack_free(%struct.nf_conn.0*) #1

declare dso_local i32 @nf_ct_acct_ext_add(%struct.nf_conn.0*, i32) #1

declare dso_local i32 @nf_ct_ecache_ext_add(%struct.nf_conn.0*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.nf_conntrack_expect* @nf_ct_find_expectation(%struct.net*, %struct.nf_conntrack_tuple*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local %struct.nf_conn_help* @nf_ct_helper_ext_add(%struct.nf_conn.0*, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, i64) #1

declare dso_local i32 @nf_conntrack_get(i32*) #1

declare dso_local i32 @NF_CT_STAT_INC(%struct.net*, i32) #1

declare dso_local i32 @__nf_ct_try_assign_helper(%struct.nf_conn.0*, i32) #1

declare dso_local i32 @hlist_nulls_add_head_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @nf_ct_expect_put(%struct.nf_conntrack_expect*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
