; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_lec.c_lec_arp_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_lec.c_lec_arp_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lec_priv = type { %struct.hlist_head* }
%struct.hlist_head = type { i32 }
%struct.lec_arp_table = type { i32*, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"LEC_ARP: Added entry:%2.2x %2.2x %2.2x %2.2x %2.2x %2.2x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lec_priv*, %struct.lec_arp_table*)* @lec_arp_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lec_arp_add(%struct.lec_priv* %0, %struct.lec_arp_table* %1) #0 {
  %3 = alloca %struct.lec_priv*, align 8
  %4 = alloca %struct.lec_arp_table*, align 8
  %5 = alloca %struct.hlist_head*, align 8
  store %struct.lec_priv* %0, %struct.lec_priv** %3, align 8
  store %struct.lec_arp_table* %1, %struct.lec_arp_table** %4, align 8
  %6 = load %struct.lec_priv*, %struct.lec_priv** %3, align 8
  %7 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %6, i32 0, i32 0
  %8 = load %struct.hlist_head*, %struct.hlist_head** %7, align 8
  %9 = load %struct.lec_arp_table*, %struct.lec_arp_table** %4, align 8
  %10 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* @ETH_ALEN, align 4
  %13 = sub nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %11, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @HASH(i32 %16)
  %18 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %8, i64 %17
  store %struct.hlist_head* %18, %struct.hlist_head** %5, align 8
  %19 = load %struct.lec_arp_table*, %struct.lec_arp_table** %4, align 8
  %20 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %19, i32 0, i32 1
  %21 = load %struct.hlist_head*, %struct.hlist_head** %5, align 8
  %22 = call i32 @hlist_add_head(i32* %20, %struct.hlist_head* %21)
  %23 = load %struct.lec_arp_table*, %struct.lec_arp_table** %4, align 8
  %24 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 255, %27
  %29 = load %struct.lec_arp_table*, %struct.lec_arp_table** %4, align 8
  %30 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = and i32 255, %33
  %35 = load %struct.lec_arp_table*, %struct.lec_arp_table** %4, align 8
  %36 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  %39 = load i32, i32* %38, align 4
  %40 = and i32 255, %39
  %41 = load %struct.lec_arp_table*, %struct.lec_arp_table** %4, align 8
  %42 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  %45 = load i32, i32* %44, align 4
  %46 = and i32 255, %45
  %47 = load %struct.lec_arp_table*, %struct.lec_arp_table** %4, align 8
  %48 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 4
  %51 = load i32, i32* %50, align 4
  %52 = and i32 255, %51
  %53 = load %struct.lec_arp_table*, %struct.lec_arp_table** %4, align 8
  %54 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 5
  %57 = load i32, i32* %56, align 4
  %58 = and i32 255, %57
  %59 = call i32 @pr_debug(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %34, i32 %40, i32 %46, i32 %52, i32 %58)
  ret void
}

declare dso_local i64 @HASH(i32) #1

declare dso_local i32 @hlist_add_head(i32*, %struct.hlist_head*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
