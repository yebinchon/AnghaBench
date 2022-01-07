; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_proto_gre.c_gre_unique_tuple.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_proto_gre.c_gre_unique_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_tuple = type { %struct.TYPE_17__, %struct.TYPE_14__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.nf_nat_range = type { i32, %struct.TYPE_11__, %struct.TYPE_19__ }
%struct.TYPE_11__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.nf_conn = type { i32 }

@gre_unique_tuple.key = internal global i32 0, align 4
@IP_NAT_MANIP_SRC = common dso_local global i32 0, align 4
@IP_NAT_RANGE_PROTO_SPECIFIED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%p: NATing GRE PPTP\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"min = %u, range_size = %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"%p: no NAT mapping\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conntrack_tuple*, %struct.nf_nat_range*, i32, %struct.nf_conn*)* @gre_unique_tuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gre_unique_tuple(%struct.nf_conntrack_tuple* %0, %struct.nf_nat_range* %1, i32 %2, %struct.nf_conn* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nf_conntrack_tuple*, align 8
  %7 = alloca %struct.nf_nat_range*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nf_conn*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nf_conntrack_tuple* %0, %struct.nf_conntrack_tuple** %6, align 8
  store %struct.nf_nat_range* %1, %struct.nf_nat_range** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nf_conn* %3, %struct.nf_conn** %9, align 8
  %14 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %15 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %91

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @IP_NAT_MANIP_SRC, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %25 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  store i32* %28, i32** %10, align 8
  br label %35

29:                                               ; preds = %19
  %30 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %31 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  store i32* %34, i32** %10, align 8
  br label %35

35:                                               ; preds = %29, %23
  %36 = load %struct.nf_nat_range*, %struct.nf_nat_range** %7, align 8
  %37 = getelementptr inbounds %struct.nf_nat_range, %struct.nf_nat_range* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IP_NAT_RANGE_PROTO_SPECIFIED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %44 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.nf_conn* %43)
  store i32 1, i32* %11, align 4
  store i32 65535, i32* %13, align 4
  br label %61

45:                                               ; preds = %35
  %46 = load %struct.nf_nat_range*, %struct.nf_nat_range** %7, align 8
  %47 = getelementptr inbounds %struct.nf_nat_range, %struct.nf_nat_range* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ntohs(i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load %struct.nf_nat_range*, %struct.nf_nat_range** %7, align 8
  %53 = getelementptr inbounds %struct.nf_nat_range, %struct.nf_nat_range* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ntohs(i32 %56)
  %58 = load i32, i32* %11, align 4
  %59 = sub i32 %57, %58
  %60 = add i32 %59, 1
  store i32 %60, i32* %13, align 4
  br label %61

61:                                               ; preds = %45, %42
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %63)
  store i32 0, i32* %12, align 4
  br label %65

65:                                               ; preds = %83, %61
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %88

69:                                               ; preds = %65
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @gre_unique_tuple.key, align 4
  %72 = load i32, i32* %13, align 4
  %73 = urem i32 %71, %72
  %74 = add i32 %70, %73
  %75 = call i32 @htons(i32 %74)
  %76 = load i32*, i32** %10, align 8
  store i32 %75, i32* %76, align 4
  %77 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %78 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %79 = call i32 @nf_nat_used_tuple(%struct.nf_conntrack_tuple* %77, %struct.nf_conn* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %69
  store i32 1, i32* %5, align 4
  br label %91

82:                                               ; preds = %69
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %12, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* @gre_unique_tuple.key, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* @gre_unique_tuple.key, align 4
  br label %65

88:                                               ; preds = %65
  %89 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %90 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), %struct.nf_conn* %89)
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %88, %81, %18
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @nf_nat_used_tuple(%struct.nf_conntrack_tuple*, %struct.nf_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
