; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_ebitmap.h_ebitmap_node_clr_bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_ebitmap.h_ebitmap_node_clr_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebitmap_node = type { i32* }

@EBITMAP_UNIT_NUMS = common dso_local global i32 0, align 4
@EBITMAP_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ebitmap_node*, i32)* @ebitmap_node_clr_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ebitmap_node_clr_bit(%struct.ebitmap_node* %0, i32 %1) #0 {
  %3 = alloca %struct.ebitmap_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ebitmap_node* %0, %struct.ebitmap_node** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ebitmap_node*, %struct.ebitmap_node** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @EBITMAP_NODE_INDEX(%struct.ebitmap_node* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.ebitmap_node*, %struct.ebitmap_node** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @EBITMAP_NODE_OFFSET(%struct.ebitmap_node* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @EBITMAP_UNIT_NUMS, align 4
  %15 = icmp uge i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load i32, i32* @EBITMAP_BIT, align 4
  %19 = load i32, i32* %6, align 4
  %20 = shl i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = load %struct.ebitmap_node*, %struct.ebitmap_node** %3, align 8
  %23 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %21
  store i32 %29, i32* %27, align 4
  ret void
}

declare dso_local i32 @EBITMAP_NODE_INDEX(%struct.ebitmap_node*, i32) #1

declare dso_local i32 @EBITMAP_NODE_OFFSET(%struct.ebitmap_node*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
