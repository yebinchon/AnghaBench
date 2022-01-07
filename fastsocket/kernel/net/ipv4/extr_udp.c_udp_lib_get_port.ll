; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_udp.c_udp_lib_get_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_udp.c_udp_lib_get_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i16, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.udp_table* }
%struct.udp_table = type { %struct.udp_hslot* }
%struct.udp_hslot = type { i32, i32 }
%struct.net = type { i32 }
%struct.TYPE_6__ = type { i16 }

@bitmap = common dso_local global i32* null, align 8
@PORTS_PER_CHAIN = common dso_local global i32 0, align 4
@UDP_HTABLE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udp_lib_get_port(%struct.sock* %0, i16 zeroext %1, i32 (%struct.sock*, %struct.sock*)* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32 (%struct.sock*, %struct.sock*)*, align 8
  %7 = alloca %struct.udp_hslot*, align 8
  %8 = alloca %struct.udp_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.net*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i16 %1, i16* %5, align 2
  store i32 (%struct.sock*, %struct.sock*)* %2, i32 (%struct.sock*, %struct.sock*)** %6, align 8
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.udp_table*, %struct.udp_table** %21, align 8
  store %struct.udp_table* %22, %struct.udp_table** %8, align 8
  store i32 1, i32* %9, align 4
  %23 = load %struct.sock*, %struct.sock** %4, align 8
  %24 = call %struct.net* @sock_net(%struct.sock* %23)
  store %struct.net* %24, %struct.net** %10, align 8
  %25 = load i16, i16* %5, align 2
  %26 = icmp ne i16 %25, 0
  br i1 %26, label %125, label %27

27:                                               ; preds = %3
  %28 = load i32*, i32** @bitmap, align 8
  %29 = load i32, i32* @PORTS_PER_CHAIN, align 4
  %30 = call i32 @DECLARE_BITMAP(i32* %28, i32 %29)
  %31 = call i32 @inet_get_local_port_range(i32* %11, i32* %12)
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %11, align 4
  %34 = sub nsw i32 %32, %33
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %13, align 4
  %36 = call i32 (...) @net_random()
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %13, align 4
  %39 = mul nsw i32 %37, %38
  %40 = ashr i32 %39, 32
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %40, %41
  %43 = trunc i32 %42 to i16
  store i16 %43, i16* %15, align 2
  %44 = load i32, i32* %14, align 4
  %45 = or i32 %44, 1
  %46 = load i32, i32* @UDP_HTABLE_SIZE, align 4
  %47 = mul i32 %45, %46
  store i32 %47, i32* %14, align 4
  %48 = load i16, i16* %15, align 2
  %49 = zext i16 %48 to i32
  %50 = load i32, i32* @UDP_HTABLE_SIZE, align 4
  %51 = add i32 %49, %50
  %52 = trunc i32 %51 to i16
  store i16 %52, i16* %16, align 2
  br label %53

53:                                               ; preds = %121, %27
  %54 = load i16, i16* %15, align 2
  %55 = zext i16 %54 to i32
  %56 = load i16, i16* %16, align 2
  %57 = zext i16 %56 to i32
  %58 = icmp ne i32 %55, %57
  br i1 %58, label %59, label %124

59:                                               ; preds = %53
  %60 = load %struct.udp_table*, %struct.udp_table** %8, align 8
  %61 = getelementptr inbounds %struct.udp_table, %struct.udp_table* %60, i32 0, i32 0
  %62 = load %struct.udp_hslot*, %struct.udp_hslot** %61, align 8
  %63 = load %struct.net*, %struct.net** %10, align 8
  %64 = load i16, i16* %15, align 2
  %65 = call i64 @udp_hashfn(%struct.net* %63, i16 zeroext %64)
  %66 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %62, i64 %65
  store %struct.udp_hslot* %66, %struct.udp_hslot** %7, align 8
  %67 = load i32*, i32** @bitmap, align 8
  %68 = load i32, i32* @PORTS_PER_CHAIN, align 4
  %69 = call i32 @bitmap_zero(i32* %67, i32 %68)
  %70 = load %struct.udp_hslot*, %struct.udp_hslot** %7, align 8
  %71 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %70, i32 0, i32 0
  %72 = call i32 @spin_lock_bh(i32* %71)
  %73 = load %struct.net*, %struct.net** %10, align 8
  %74 = load i16, i16* %5, align 2
  %75 = load %struct.udp_hslot*, %struct.udp_hslot** %7, align 8
  %76 = load i32*, i32** @bitmap, align 8
  %77 = load %struct.sock*, %struct.sock** %4, align 8
  %78 = load i32 (%struct.sock*, %struct.sock*)*, i32 (%struct.sock*, %struct.sock*)** %6, align 8
  %79 = call i64 @udp_lib_lport_inuse(%struct.net* %73, i16 zeroext %74, %struct.udp_hslot* %75, i32* %76, %struct.sock* %77, i32 (%struct.sock*, %struct.sock*)* %78)
  %80 = load i16, i16* %15, align 2
  store i16 %80, i16* %5, align 2
  br label %81

81:                                               ; preds = %111, %59
  %82 = load i32, i32* %11, align 4
  %83 = load i16, i16* %5, align 2
  %84 = zext i16 %83 to i32
  %85 = icmp sle i32 %82, %84
  br i1 %85, label %86, label %105

86:                                               ; preds = %81
  %87 = load i16, i16* %5, align 2
  %88 = zext i16 %87 to i32
  %89 = load i32, i32* %12, align 4
  %90 = icmp sle i32 %88, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %86
  %92 = load i16, i16* %5, align 2
  %93 = zext i16 %92 to i32
  %94 = load i32, i32* @UDP_HTABLE_SIZE, align 4
  %95 = udiv i32 %93, %94
  %96 = trunc i32 %95 to i16
  %97 = load i32*, i32** @bitmap, align 8
  %98 = call i32 @test_bit(i16 zeroext %96, i32* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %91
  %101 = load i16, i16* %5, align 2
  %102 = call i32 @inet_is_reserved_local_port(i16 zeroext %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %100
  br label %146

105:                                              ; preds = %100, %91, %86, %81
  %106 = load i32, i32* %14, align 4
  %107 = load i16, i16* %5, align 2
  %108 = zext i16 %107 to i32
  %109 = add i32 %108, %106
  %110 = trunc i32 %109 to i16
  store i16 %110, i16* %5, align 2
  br label %111

111:                                              ; preds = %105
  %112 = load i16, i16* %5, align 2
  %113 = zext i16 %112 to i32
  %114 = load i16, i16* %15, align 2
  %115 = zext i16 %114 to i32
  %116 = icmp ne i32 %113, %115
  br i1 %116, label %81, label %117

117:                                              ; preds = %111
  %118 = load %struct.udp_hslot*, %struct.udp_hslot** %7, align 8
  %119 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %118, i32 0, i32 0
  %120 = call i32 @spin_unlock_bh(i32* %119)
  br label %121

121:                                              ; preds = %117
  %122 = load i16, i16* %15, align 2
  %123 = add i16 %122, 1
  store i16 %123, i16* %15, align 2
  br label %53

124:                                              ; preds = %53
  br label %173

125:                                              ; preds = %3
  %126 = load %struct.udp_table*, %struct.udp_table** %8, align 8
  %127 = getelementptr inbounds %struct.udp_table, %struct.udp_table* %126, i32 0, i32 0
  %128 = load %struct.udp_hslot*, %struct.udp_hslot** %127, align 8
  %129 = load %struct.net*, %struct.net** %10, align 8
  %130 = load i16, i16* %5, align 2
  %131 = call i64 @udp_hashfn(%struct.net* %129, i16 zeroext %130)
  %132 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %128, i64 %131
  store %struct.udp_hslot* %132, %struct.udp_hslot** %7, align 8
  %133 = load %struct.udp_hslot*, %struct.udp_hslot** %7, align 8
  %134 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %133, i32 0, i32 0
  %135 = call i32 @spin_lock_bh(i32* %134)
  %136 = load %struct.net*, %struct.net** %10, align 8
  %137 = load i16, i16* %5, align 2
  %138 = load %struct.udp_hslot*, %struct.udp_hslot** %7, align 8
  %139 = load %struct.sock*, %struct.sock** %4, align 8
  %140 = load i32 (%struct.sock*, %struct.sock*)*, i32 (%struct.sock*, %struct.sock*)** %6, align 8
  %141 = call i64 @udp_lib_lport_inuse(%struct.net* %136, i16 zeroext %137, %struct.udp_hslot* %138, i32* null, %struct.sock* %139, i32 (%struct.sock*, %struct.sock*)* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %125
  br label %169

144:                                              ; preds = %125
  br label %145

145:                                              ; preds = %144
  br label %146

146:                                              ; preds = %145, %104
  %147 = load i16, i16* %5, align 2
  %148 = load %struct.sock*, %struct.sock** %4, align 8
  %149 = call %struct.TYPE_6__* @inet_sk(%struct.sock* %148)
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  store i16 %147, i16* %150, align 2
  %151 = load i16, i16* %5, align 2
  %152 = load %struct.sock*, %struct.sock** %4, align 8
  %153 = getelementptr inbounds %struct.sock, %struct.sock* %152, i32 0, i32 0
  store i16 %151, i16* %153, align 8
  %154 = load %struct.sock*, %struct.sock** %4, align 8
  %155 = call i64 @sk_unhashed(%struct.sock* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %168

157:                                              ; preds = %146
  %158 = load %struct.sock*, %struct.sock** %4, align 8
  %159 = load %struct.udp_hslot*, %struct.udp_hslot** %7, align 8
  %160 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %159, i32 0, i32 1
  %161 = call i32 @sk_nulls_add_node_rcu(%struct.sock* %158, i32* %160)
  %162 = load %struct.sock*, %struct.sock** %4, align 8
  %163 = call %struct.net* @sock_net(%struct.sock* %162)
  %164 = load %struct.sock*, %struct.sock** %4, align 8
  %165 = getelementptr inbounds %struct.sock, %struct.sock* %164, i32 0, i32 1
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %165, align 8
  %167 = call i32 @sock_prot_inuse_add(%struct.net* %163, %struct.TYPE_5__* %166, i32 1)
  br label %168

168:                                              ; preds = %157, %146
  store i32 0, i32* %9, align 4
  br label %169

169:                                              ; preds = %168, %143
  %170 = load %struct.udp_hslot*, %struct.udp_hslot** %7, align 8
  %171 = getelementptr inbounds %struct.udp_hslot, %struct.udp_hslot* %170, i32 0, i32 0
  %172 = call i32 @spin_unlock_bh(i32* %171)
  br label %173

173:                                              ; preds = %169, %124
  %174 = load i32, i32* %9, align 4
  ret i32 %174
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @DECLARE_BITMAP(i32*, i32) #1

declare dso_local i32 @inet_get_local_port_range(i32*, i32*) #1

declare dso_local i32 @net_random(...) #1

declare dso_local i64 @udp_hashfn(%struct.net*, i16 zeroext) #1

declare dso_local i32 @bitmap_zero(i32*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @udp_lib_lport_inuse(%struct.net*, i16 zeroext, %struct.udp_hslot*, i32*, %struct.sock*, i32 (%struct.sock*, %struct.sock*)*) #1

declare dso_local i32 @test_bit(i16 zeroext, i32*) #1

declare dso_local i32 @inet_is_reserved_local_port(i16 zeroext) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.TYPE_6__* @inet_sk(%struct.sock*) #1

declare dso_local i64 @sk_unhashed(%struct.sock*) #1

declare dso_local i32 @sk_nulls_add_node_rcu(%struct.sock*, i32*) #1

declare dso_local i32 @sock_prot_inuse_add(%struct.net*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
