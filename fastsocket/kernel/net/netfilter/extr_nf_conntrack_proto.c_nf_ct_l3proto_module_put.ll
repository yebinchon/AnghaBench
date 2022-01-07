; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_proto.c_nf_ct_l3proto_module_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_proto.c_nf_ct_l3proto_module_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_l3proto = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nf_ct_l3proto_module_put(i16 zeroext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca %struct.nf_conntrack_l3proto*, align 8
  store i16 %0, i16* %2, align 2
  %4 = load i16, i16* %2, align 2
  %5 = call %struct.nf_conntrack_l3proto* @__nf_ct_l3proto_find(i16 zeroext %4)
  store %struct.nf_conntrack_l3proto* %5, %struct.nf_conntrack_l3proto** %3, align 8
  %6 = load %struct.nf_conntrack_l3proto*, %struct.nf_conntrack_l3proto** %3, align 8
  %7 = getelementptr inbounds %struct.nf_conntrack_l3proto, %struct.nf_conntrack_l3proto* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @module_put(i32 %8)
  ret void
}

declare dso_local %struct.nf_conntrack_l3proto* @__nf_ct_l3proto_find(i16 zeroext) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
