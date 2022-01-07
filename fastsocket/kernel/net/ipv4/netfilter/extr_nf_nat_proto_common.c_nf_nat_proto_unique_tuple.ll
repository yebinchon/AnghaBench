; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_proto_common.c_nf_nat_proto_unique_tuple.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_proto_common.c_nf_nat_proto_unique_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_tuple = type { %struct.TYPE_16__, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_11__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.nf_nat_range = type { i32, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.nf_conn = type { i32 }

@IP_NAT_MANIP_SRC = common dso_local global i32 0, align 4
@IP_NAT_RANGE_PROTO_SPECIFIED = common dso_local global i32 0, align 4
@IP_NAT_MANIP_DST = common dso_local global i32 0, align 4
@IP_NAT_RANGE_PROTO_RANDOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_nat_proto_unique_tuple(%struct.nf_conntrack_tuple* %0, %struct.nf_nat_range* %1, i32 %2, %struct.nf_conn* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nf_conntrack_tuple*, align 8
  %8 = alloca %struct.nf_nat_range*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nf_conn*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.nf_conntrack_tuple* %0, %struct.nf_conntrack_tuple** %7, align 8
  store %struct.nf_nat_range* %1, %struct.nf_nat_range** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.nf_conn* %3, %struct.nf_conn** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @IP_NAT_MANIP_SRC, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %5
  %21 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %7, align 8
  %22 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  store i32* %24, i32** %15, align 8
  br label %30

25:                                               ; preds = %5
  %26 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %7, align 8
  %27 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  store i32* %29, i32** %15, align 8
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.nf_nat_range*, %struct.nf_nat_range** %8, align 8
  %32 = getelementptr inbounds %struct.nf_nat_range, %struct.nf_nat_range* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IP_NAT_RANGE_PROTO_SPECIFIED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %63, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @IP_NAT_MANIP_DST, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %151

42:                                               ; preds = %37
  %43 = load i32*, i32** %15, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ntohs(i32 %44)
  %46 = icmp ult i32 %45, 1024
  br i1 %46, label %47, label %61

47:                                               ; preds = %42
  %48 = load i32*, i32** %15, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ntohs(i32 %49)
  %51 = icmp ult i32 %50, 512
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  store i32 1, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = sub i32 511, %53
  %55 = add i32 %54, 1
  store i32 %55, i32* %12, align 4
  br label %60

56:                                               ; preds = %47
  store i32 600, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = sub i32 1023, %57
  %59 = add i32 %58, 1
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %56, %52
  br label %62

61:                                               ; preds = %42
  store i32 1024, i32* %13, align 4
  store i32 64512, i32* %12, align 4
  br label %62

62:                                               ; preds = %61, %60
  br label %77

63:                                               ; preds = %30
  %64 = load %struct.nf_nat_range*, %struct.nf_nat_range** %8, align 8
  %65 = getelementptr inbounds %struct.nf_nat_range, %struct.nf_nat_range* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ntohs(i32 %67)
  store i32 %68, i32* %13, align 4
  %69 = load %struct.nf_nat_range*, %struct.nf_nat_range** %8, align 8
  %70 = getelementptr inbounds %struct.nf_nat_range, %struct.nf_nat_range* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ntohs(i32 %72)
  %74 = load i32, i32* %13, align 4
  %75 = sub i32 %73, %74
  %76 = add i32 %75, 1
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %63, %62
  %78 = load %struct.nf_nat_range*, %struct.nf_nat_range** %8, align 8
  %79 = getelementptr inbounds %struct.nf_nat_range, %struct.nf_nat_range* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @IP_NAT_RANGE_PROTO_RANDOM, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %113

84:                                               ; preds = %77
  %85 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %7, align 8
  %86 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %7, align 8
  %91 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @IP_NAT_MANIP_SRC, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %84
  %99 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %7, align 8
  %100 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  br label %110

104:                                              ; preds = %84
  %105 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %7, align 8
  %106 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  br label %110

110:                                              ; preds = %104, %98
  %111 = phi i32 [ %103, %98 ], [ %109, %104 ]
  %112 = call i32 @secure_ipv4_port_ephemeral(i32 %89, i32 %94, i32 %111)
  store i32 %112, i32* %16, align 4
  br label %116

113:                                              ; preds = %77
  %114 = load i32*, i32** %11, align 8
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %16, align 4
  br label %116

116:                                              ; preds = %113, %110
  store i32 0, i32* %14, align 4
  br label %117

117:                                              ; preds = %145, %116
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %12, align 4
  %120 = icmp ult i32 %118, %119
  br i1 %120, label %121, label %150

121:                                              ; preds = %117
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* %12, align 4
  %125 = urem i32 %123, %124
  %126 = add i32 %122, %125
  %127 = call i32 @htons(i32 %126)
  %128 = load i32*, i32** %15, align 8
  store i32 %127, i32* %128, align 4
  %129 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %7, align 8
  %130 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %131 = call i64 @nf_nat_used_tuple(%struct.nf_conntrack_tuple* %129, %struct.nf_conn* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %121
  br label %145

134:                                              ; preds = %121
  %135 = load %struct.nf_nat_range*, %struct.nf_nat_range** %8, align 8
  %136 = getelementptr inbounds %struct.nf_nat_range, %struct.nf_nat_range* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @IP_NAT_RANGE_PROTO_RANDOM, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %134
  %142 = load i32, i32* %16, align 4
  %143 = load i32*, i32** %11, align 8
  store i32 %142, i32* %143, align 4
  br label %144

144:                                              ; preds = %141, %134
  store i32 1, i32* %6, align 4
  br label %151

145:                                              ; preds = %133
  %146 = load i32, i32* %14, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %14, align 4
  %148 = load i32, i32* %16, align 4
  %149 = add i32 %148, 1
  store i32 %149, i32* %16, align 4
  br label %117

150:                                              ; preds = %117
  store i32 0, i32* %6, align 4
  br label %151

151:                                              ; preds = %150, %144, %41
  %152 = load i32, i32* %6, align 4
  ret i32 %152
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @secure_ipv4_port_ephemeral(i32, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @nf_nat_used_tuple(%struct.nf_conntrack_tuple*, %struct.nf_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
