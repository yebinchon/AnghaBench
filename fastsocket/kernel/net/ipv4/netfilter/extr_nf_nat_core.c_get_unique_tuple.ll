; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_core.c_get_unique_tuple.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_core.c_get_unique_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_tuple = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nf_nat_range = type { i32, i32, i32 }
%struct.nf_conn = type { i32 }
%struct.net = type { i32 }
%struct.nf_nat_protocol = type { i32 (%struct.nf_conntrack_tuple.0*, %struct.nf_nat_range*, i32, %struct.nf_conn.1*)*, i64 (%struct.nf_conntrack_tuple.2*, i32, i32*, i32*)* }
%struct.nf_conntrack_tuple.0 = type opaque
%struct.nf_conn.1 = type opaque
%struct.nf_conntrack_tuple.2 = type opaque

@IP_NAT_MANIP_SRC = common dso_local global i32 0, align 4
@IP_NAT_RANGE_PROTO_RANDOM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"get_unique_tuple: Found current src map\0A\00", align 1
@IP_NAT_RANGE_PROTO_SPECIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple*, %struct.nf_nat_range*, %struct.nf_conn*, i32)* @get_unique_tuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_unique_tuple(%struct.nf_conntrack_tuple* %0, %struct.nf_conntrack_tuple* %1, %struct.nf_nat_range* %2, %struct.nf_conn* %3, i32 %4) #0 {
  %6 = alloca %struct.nf_conntrack_tuple*, align 8
  %7 = alloca %struct.nf_conntrack_tuple*, align 8
  %8 = alloca %struct.nf_nat_range*, align 8
  %9 = alloca %struct.nf_conn*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.net*, align 8
  %12 = alloca %struct.nf_nat_protocol*, align 8
  store %struct.nf_conntrack_tuple* %0, %struct.nf_conntrack_tuple** %6, align 8
  store %struct.nf_conntrack_tuple* %1, %struct.nf_conntrack_tuple** %7, align 8
  store %struct.nf_nat_range* %2, %struct.nf_nat_range** %8, align 8
  store %struct.nf_conn* %3, %struct.nf_conn** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %14 = call %struct.net* @nf_ct_net(%struct.nf_conn* %13)
  store %struct.net* %14, %struct.net** %11, align 8
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @IP_NAT_MANIP_SRC, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %58

18:                                               ; preds = %5
  %19 = load %struct.nf_nat_range*, %struct.nf_nat_range** %8, align 8
  %20 = getelementptr inbounds %struct.nf_nat_range, %struct.nf_nat_range* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IP_NAT_RANGE_PROTO_RANDOM, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %58, label %25

25:                                               ; preds = %18
  %26 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %7, align 8
  %27 = load %struct.nf_nat_range*, %struct.nf_nat_range** %8, align 8
  %28 = call i64 @in_range(%struct.nf_conntrack_tuple* %26, %struct.nf_nat_range* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %7, align 8
  %32 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %33 = call i32 @nf_nat_used_tuple(%struct.nf_conntrack_tuple* %31, %struct.nf_conn* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %37 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %7, align 8
  %38 = bitcast %struct.nf_conntrack_tuple* %36 to i8*
  %39 = bitcast %struct.nf_conntrack_tuple* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 4, i1 false)
  br label %130

40:                                               ; preds = %30
  br label %57

41:                                               ; preds = %25
  %42 = load %struct.net*, %struct.net** %11, align 8
  %43 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %7, align 8
  %44 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %45 = load %struct.nf_nat_range*, %struct.nf_nat_range** %8, align 8
  %46 = call i64 @find_appropriate_src(%struct.net* %42, %struct.nf_conntrack_tuple* %43, %struct.nf_conntrack_tuple* %44, %struct.nf_nat_range* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %41
  %49 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %51 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %52 = call i32 @nf_nat_used_tuple(%struct.nf_conntrack_tuple* %50, %struct.nf_conn* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  br label %130

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %41
  br label %57

57:                                               ; preds = %56, %40
  br label %58

58:                                               ; preds = %57, %18, %5
  %59 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %60 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %7, align 8
  %61 = bitcast %struct.nf_conntrack_tuple* %59 to i8*
  %62 = bitcast %struct.nf_conntrack_tuple* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %61, i8* align 4 %62, i64 4, i1 false)
  %63 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %64 = load %struct.nf_nat_range*, %struct.nf_nat_range** %8, align 8
  %65 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @find_best_ips_proto(%struct.nf_conntrack_tuple* %63, %struct.nf_nat_range* %64, %struct.nf_conn* %65, i32 %66)
  %68 = call i32 (...) @rcu_read_lock()
  %69 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %7, align 8
  %70 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call %struct.nf_nat_protocol* @__nf_nat_proto_find(i32 %72)
  store %struct.nf_nat_protocol* %73, %struct.nf_nat_protocol** %12, align 8
  %74 = load %struct.nf_nat_range*, %struct.nf_nat_range** %8, align 8
  %75 = getelementptr inbounds %struct.nf_nat_range, %struct.nf_nat_range* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @IP_NAT_RANGE_PROTO_RANDOM, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %58
  %81 = load %struct.nf_nat_protocol*, %struct.nf_nat_protocol** %12, align 8
  %82 = getelementptr inbounds %struct.nf_nat_protocol, %struct.nf_nat_protocol* %81, i32 0, i32 0
  %83 = load i32 (%struct.nf_conntrack_tuple.0*, %struct.nf_nat_range*, i32, %struct.nf_conn.1*)*, i32 (%struct.nf_conntrack_tuple.0*, %struct.nf_nat_range*, i32, %struct.nf_conn.1*)** %82, align 8
  %84 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %85 = bitcast %struct.nf_conntrack_tuple* %84 to %struct.nf_conntrack_tuple.0*
  %86 = load %struct.nf_nat_range*, %struct.nf_nat_range** %8, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %89 = bitcast %struct.nf_conn* %88 to %struct.nf_conn.1*
  %90 = call i32 %83(%struct.nf_conntrack_tuple.0* %85, %struct.nf_nat_range* %86, i32 %87, %struct.nf_conn.1* %89)
  br label %128

91:                                               ; preds = %58
  %92 = load %struct.nf_nat_range*, %struct.nf_nat_range** %8, align 8
  %93 = getelementptr inbounds %struct.nf_nat_range, %struct.nf_nat_range* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @IP_NAT_RANGE_PROTO_SPECIFIED, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %91
  %99 = load %struct.nf_nat_protocol*, %struct.nf_nat_protocol** %12, align 8
  %100 = getelementptr inbounds %struct.nf_nat_protocol, %struct.nf_nat_protocol* %99, i32 0, i32 1
  %101 = load i64 (%struct.nf_conntrack_tuple.2*, i32, i32*, i32*)*, i64 (%struct.nf_conntrack_tuple.2*, i32, i32*, i32*)** %100, align 8
  %102 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %103 = bitcast %struct.nf_conntrack_tuple* %102 to %struct.nf_conntrack_tuple.2*
  %104 = load i32, i32* %10, align 4
  %105 = load %struct.nf_nat_range*, %struct.nf_nat_range** %8, align 8
  %106 = getelementptr inbounds %struct.nf_nat_range, %struct.nf_nat_range* %105, i32 0, i32 2
  %107 = load %struct.nf_nat_range*, %struct.nf_nat_range** %8, align 8
  %108 = getelementptr inbounds %struct.nf_nat_range, %struct.nf_nat_range* %107, i32 0, i32 1
  %109 = call i64 %101(%struct.nf_conntrack_tuple.2* %103, i32 %104, i32* %106, i32* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %98, %91
  %112 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %113 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %114 = call i32 @nf_nat_used_tuple(%struct.nf_conntrack_tuple* %112, %struct.nf_conn* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %111
  br label %128

117:                                              ; preds = %111, %98
  %118 = load %struct.nf_nat_protocol*, %struct.nf_nat_protocol** %12, align 8
  %119 = getelementptr inbounds %struct.nf_nat_protocol, %struct.nf_nat_protocol* %118, i32 0, i32 0
  %120 = load i32 (%struct.nf_conntrack_tuple.0*, %struct.nf_nat_range*, i32, %struct.nf_conn.1*)*, i32 (%struct.nf_conntrack_tuple.0*, %struct.nf_nat_range*, i32, %struct.nf_conn.1*)** %119, align 8
  %121 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %122 = bitcast %struct.nf_conntrack_tuple* %121 to %struct.nf_conntrack_tuple.0*
  %123 = load %struct.nf_nat_range*, %struct.nf_nat_range** %8, align 8
  %124 = load i32, i32* %10, align 4
  %125 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %126 = bitcast %struct.nf_conn* %125 to %struct.nf_conn.1*
  %127 = call i32 %120(%struct.nf_conntrack_tuple.0* %122, %struct.nf_nat_range* %123, i32 %124, %struct.nf_conn.1* %126)
  br label %128

128:                                              ; preds = %117, %116, %80
  %129 = call i32 (...) @rcu_read_unlock()
  br label %130

130:                                              ; preds = %128, %54, %35
  ret void
}

declare dso_local %struct.net* @nf_ct_net(%struct.nf_conn*) #1

declare dso_local i64 @in_range(%struct.nf_conntrack_tuple*, %struct.nf_nat_range*) #1

declare dso_local i32 @nf_nat_used_tuple(%struct.nf_conntrack_tuple*, %struct.nf_conn*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @find_appropriate_src(%struct.net*, %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple*, %struct.nf_nat_range*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @find_best_ips_proto(%struct.nf_conntrack_tuple*, %struct.nf_nat_range*, %struct.nf_conn*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nf_nat_protocol* @__nf_nat_proto_find(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
