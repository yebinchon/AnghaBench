; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_neigh.c_dn_neigh_endnode_hello.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_neigh.c_dn_neigh_endnode_hello.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.endnode_hello_message = type { i32, i32 }
%struct.neighbour = type { i32, i32, i32, %struct.TYPE_3__*, i8*, i8* }
%struct.TYPE_3__ = type { i64 }
%struct.dn_neigh = type { i32, i64, i32 }
%struct.TYPE_4__ = type { i32 }

@dn_neigh_table = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@NUD_PERMANENT = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@DN_NDFLAG_R1 = common dso_local global i32 0, align 4
@DN_NDFLAG_R2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dn_neigh_endnode_hello(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.endnode_hello_message*, align 8
  %4 = alloca %struct.neighbour*, align 8
  %5 = alloca %struct.dn_neigh*, align 8
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.endnode_hello_message*
  store %struct.endnode_hello_message* %10, %struct.endnode_hello_message** %3, align 8
  %11 = load %struct.endnode_hello_message*, %struct.endnode_hello_message** %3, align 8
  %12 = getelementptr inbounds %struct.endnode_hello_message, %struct.endnode_hello_message* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dn_eth2dn(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.neighbour* @__neigh_lookup(i32* @dn_neigh_table, i32* %6, i32 %17, i32 1)
  store %struct.neighbour* %18, %struct.neighbour** %4, align 8
  %19 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %20 = bitcast %struct.neighbour* %19 to %struct.dn_neigh*
  store %struct.dn_neigh* %20, %struct.dn_neigh** %5, align 8
  %21 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %22 = icmp ne %struct.neighbour* %21, null
  br i1 %22, label %23, label %79

23:                                               ; preds = %1
  %24 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %25 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %24, i32 0, i32 1
  %26 = call i32 @write_lock(i32* %25)
  %27 = load i8*, i8** @jiffies, align 8
  %28 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %29 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %28, i32 0, i32 5
  store i8* %27, i8** %29, align 8
  %30 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %31 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @NUD_PERMANENT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %73, label %36

36:                                               ; preds = %23
  %37 = load i8*, i8** @jiffies, align 8
  %38 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %39 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %38, i32 0, i32 4
  store i8* %37, i8** %39, align 8
  %40 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %41 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %40, i32 0, i32 3
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ARPHRD_ETHER, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %36
  %48 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %49 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %52 = call %struct.TYPE_4__* @eth_hdr(%struct.sk_buff* %51)
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* @ETH_ALEN, align 4
  %55 = call i32 @memcpy(i32 %50, i32* %53, i32 %54)
  br label %56

56:                                               ; preds = %47, %36
  %57 = load i32, i32* @DN_NDFLAG_R1, align 4
  %58 = load i32, i32* @DN_NDFLAG_R2, align 4
  %59 = or i32 %57, %58
  %60 = xor i32 %59, -1
  %61 = load %struct.dn_neigh*, %struct.dn_neigh** %5, align 8
  %62 = getelementptr inbounds %struct.dn_neigh, %struct.dn_neigh* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load %struct.endnode_hello_message*, %struct.endnode_hello_message** %3, align 8
  %66 = getelementptr inbounds %struct.endnode_hello_message, %struct.endnode_hello_message* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @le16_to_cpu(i32 %67)
  %69 = load %struct.dn_neigh*, %struct.dn_neigh** %5, align 8
  %70 = getelementptr inbounds %struct.dn_neigh, %struct.dn_neigh* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.dn_neigh*, %struct.dn_neigh** %5, align 8
  %72 = getelementptr inbounds %struct.dn_neigh, %struct.dn_neigh* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %56, %23
  %74 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %75 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %74, i32 0, i32 1
  %76 = call i32 @write_unlock(i32* %75)
  %77 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %78 = call i32 @neigh_release(%struct.neighbour* %77)
  br label %79

79:                                               ; preds = %73, %1
  %80 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %81 = call i32 @kfree_skb(%struct.sk_buff* %80)
  ret i32 0
}

declare dso_local i32 @dn_eth2dn(i32) #1

declare dso_local %struct.neighbour* @__neigh_lookup(i32*, i32*, i32, i32) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local %struct.TYPE_4__* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @neigh_release(%struct.neighbour*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
