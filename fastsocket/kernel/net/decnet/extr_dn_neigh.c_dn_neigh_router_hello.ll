; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_neigh.c_dn_neigh_router_hello.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_neigh.c_dn_neigh_router_hello.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.rtnode_hello_message = type { i64, i32, i32, i32 }
%struct.neighbour = type { i32, i32, i32, %struct.TYPE_3__*, i8*, i8* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.dn_neigh = type { i32, i64, i32 }
%struct.dn_dev = type { i64 }
%struct.TYPE_4__ = type { i32 }

@dn_neigh_table = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@NUD_PERMANENT = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@DN_NDFLAG_P3 = common dso_local global i32 0, align 4
@DN_RT_INFO_TYPE = common dso_local global i32 0, align 4
@DN_NDFLAG_R2 = common dso_local global i32 0, align 4
@DN_NDFLAG_R1 = common dso_local global i32 0, align 4
@decnet_address = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dn_neigh_router_hello(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.rtnode_hello_message*, align 8
  %4 = alloca %struct.neighbour*, align 8
  %5 = alloca %struct.dn_neigh*, align 8
  %6 = alloca %struct.dn_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.rtnode_hello_message*
  store %struct.rtnode_hello_message* %11, %struct.rtnode_hello_message** %3, align 8
  %12 = load %struct.rtnode_hello_message*, %struct.rtnode_hello_message** %3, align 8
  %13 = getelementptr inbounds %struct.rtnode_hello_message, %struct.rtnode_hello_message* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @dn_eth2dn(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.neighbour* @__neigh_lookup(i32* @dn_neigh_table, i32* %7, i32 %18, i32 1)
  store %struct.neighbour* %19, %struct.neighbour** %4, align 8
  %20 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %21 = bitcast %struct.neighbour* %20 to %struct.dn_neigh*
  store %struct.dn_neigh* %21, %struct.dn_neigh** %5, align 8
  %22 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %23 = icmp ne %struct.neighbour* %22, null
  br i1 %23, label %24, label %149

24:                                               ; preds = %1
  %25 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %26 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %25, i32 0, i32 1
  %27 = call i32 @write_lock(i32* %26)
  %28 = load i8*, i8** @jiffies, align 8
  %29 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %30 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %29, i32 0, i32 5
  store i8* %28, i8** %30, align 8
  %31 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %32 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %31, i32 0, i32 3
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.dn_dev*
  store %struct.dn_dev* %36, %struct.dn_dev** %6, align 8
  %37 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %38 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @NUD_PERMANENT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %105, label %43

43:                                               ; preds = %24
  %44 = load i8*, i8** @jiffies, align 8
  %45 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %46 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  %47 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %48 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %47, i32 0, i32 3
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @ARPHRD_ETHER, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %43
  %55 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %56 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %59 = call %struct.TYPE_4__* @eth_hdr(%struct.sk_buff* %58)
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* @ETH_ALEN, align 4
  %62 = call i32 @memcpy(i32 %57, i32* %60, i32 %61)
  br label %63

63:                                               ; preds = %54, %43
  %64 = load %struct.rtnode_hello_message*, %struct.rtnode_hello_message** %3, align 8
  %65 = getelementptr inbounds %struct.rtnode_hello_message, %struct.rtnode_hello_message* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @le16_to_cpu(i32 %66)
  %68 = load %struct.dn_neigh*, %struct.dn_neigh** %5, align 8
  %69 = getelementptr inbounds %struct.dn_neigh, %struct.dn_neigh* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.rtnode_hello_message*, %struct.rtnode_hello_message** %3, align 8
  %71 = getelementptr inbounds %struct.rtnode_hello_message, %struct.rtnode_hello_message* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.dn_neigh*, %struct.dn_neigh** %5, align 8
  %74 = getelementptr inbounds %struct.dn_neigh, %struct.dn_neigh* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  %75 = load i32, i32* @DN_NDFLAG_P3, align 4
  %76 = xor i32 %75, -1
  %77 = load %struct.dn_neigh*, %struct.dn_neigh** %5, align 8
  %78 = getelementptr inbounds %struct.dn_neigh, %struct.dn_neigh* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = and i32 %79, %76
  store i32 %80, i32* %78, align 8
  %81 = load %struct.rtnode_hello_message*, %struct.rtnode_hello_message** %3, align 8
  %82 = getelementptr inbounds %struct.rtnode_hello_message, %struct.rtnode_hello_message* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @DN_RT_INFO_TYPE, align 4
  %85 = and i32 %83, %84
  switch i32 %85, label %104 [
    i32 129, label %86
    i32 128, label %98
  ]

86:                                               ; preds = %63
  %87 = load i32, i32* @DN_NDFLAG_R2, align 4
  %88 = xor i32 %87, -1
  %89 = load %struct.dn_neigh*, %struct.dn_neigh** %5, align 8
  %90 = getelementptr inbounds %struct.dn_neigh, %struct.dn_neigh* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = and i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load i32, i32* @DN_NDFLAG_R1, align 4
  %94 = load %struct.dn_neigh*, %struct.dn_neigh** %5, align 8
  %95 = getelementptr inbounds %struct.dn_neigh, %struct.dn_neigh* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  br label %104

98:                                               ; preds = %63
  %99 = load i32, i32* @DN_NDFLAG_R2, align 4
  %100 = load %struct.dn_neigh*, %struct.dn_neigh** %5, align 8
  %101 = getelementptr inbounds %struct.dn_neigh, %struct.dn_neigh* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  br label %104

104:                                              ; preds = %98, %63, %86
  br label %105

105:                                              ; preds = %104, %24
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @le16_to_cpu(i32 %106)
  %108 = ashr i32 %107, 10
  %109 = load i32, i32* @decnet_address, align 4
  %110 = call i32 @le16_to_cpu(i32 %109)
  %111 = ashr i32 %110, 10
  %112 = icmp eq i32 %108, %111
  br i1 %112, label %113, label %143

113:                                              ; preds = %105
  %114 = load %struct.dn_dev*, %struct.dn_dev** %6, align 8
  %115 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %113
  %119 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %120 = call i64 @neigh_clone(%struct.neighbour* %119)
  %121 = load %struct.dn_dev*, %struct.dn_dev** %6, align 8
  %122 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  br label %142

123:                                              ; preds = %113
  %124 = load %struct.rtnode_hello_message*, %struct.rtnode_hello_message** %3, align 8
  %125 = getelementptr inbounds %struct.rtnode_hello_message, %struct.rtnode_hello_message* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.dn_dev*, %struct.dn_dev** %6, align 8
  %128 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = inttoptr i64 %129 to %struct.dn_neigh*
  %131 = getelementptr inbounds %struct.dn_neigh, %struct.dn_neigh* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp sgt i64 %126, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %123
  %135 = load %struct.dn_dev*, %struct.dn_dev** %6, align 8
  %136 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %135, i32 0, i32 0
  %137 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %138 = call i64 @neigh_clone(%struct.neighbour* %137)
  %139 = call %struct.neighbour* @xchg(i64* %136, i64 %138)
  %140 = call i32 @neigh_release(%struct.neighbour* %139)
  br label %141

141:                                              ; preds = %134, %123
  br label %142

142:                                              ; preds = %141, %118
  br label %143

143:                                              ; preds = %142, %105
  %144 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %145 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %144, i32 0, i32 1
  %146 = call i32 @write_unlock(i32* %145)
  %147 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %148 = call i32 @neigh_release(%struct.neighbour* %147)
  br label %149

149:                                              ; preds = %143, %1
  %150 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %151 = call i32 @kfree_skb(%struct.sk_buff* %150)
  ret i32 0
}

declare dso_local i32 @dn_eth2dn(i32) #1

declare dso_local %struct.neighbour* @__neigh_lookup(i32*, i32*, i32, i32) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local %struct.TYPE_4__* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @neigh_clone(%struct.neighbour*) #1

declare dso_local i32 @neigh_release(%struct.neighbour*) #1

declare dso_local %struct.neighbour* @xchg(i64*, i64) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
