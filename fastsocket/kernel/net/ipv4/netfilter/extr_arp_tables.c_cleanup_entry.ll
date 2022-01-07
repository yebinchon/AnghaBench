; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_arp_tables.c_cleanup_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_arp_tables.c_cleanup_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arpt_entry = type { i32 }
%struct.xt_tgdtor_param = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 (%struct.xt_tgdtor_param*)* }
%struct.arpt_entry_target = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }

@NFPROTO_ARP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arpt_entry*, i32*)* @cleanup_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cleanup_entry(%struct.arpt_entry* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.arpt_entry*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.xt_tgdtor_param, align 8
  %7 = alloca %struct.arpt_entry_target*, align 8
  store %struct.arpt_entry* %0, %struct.arpt_entry** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %11, align 4
  %13 = add i32 %12, -1
  store i32 %13, i32* %11, align 4
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %48

16:                                               ; preds = %10, %2
  %17 = load %struct.arpt_entry*, %struct.arpt_entry** %4, align 8
  %18 = call %struct.arpt_entry_target* @arpt_get_target(%struct.arpt_entry* %17)
  store %struct.arpt_entry_target* %18, %struct.arpt_entry_target** %7, align 8
  %19 = load %struct.arpt_entry_target*, %struct.arpt_entry_target** %7, align 8
  %20 = getelementptr inbounds %struct.arpt_entry_target, %struct.arpt_entry_target* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.xt_tgdtor_param, %struct.xt_tgdtor_param* %6, i32 0, i32 0
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %24, align 8
  %25 = load %struct.arpt_entry_target*, %struct.arpt_entry_target** %7, align 8
  %26 = getelementptr inbounds %struct.arpt_entry_target, %struct.arpt_entry_target* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.xt_tgdtor_param, %struct.xt_tgdtor_param* %6, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @NFPROTO_ARP, align 4
  %30 = getelementptr inbounds %struct.xt_tgdtor_param, %struct.xt_tgdtor_param* %6, i32 0, i32 1
  store i32 %29, i32* %30, align 8
  %31 = getelementptr inbounds %struct.xt_tgdtor_param, %struct.xt_tgdtor_param* %6, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32 (%struct.xt_tgdtor_param*)*, i32 (%struct.xt_tgdtor_param*)** %33, align 8
  %35 = icmp ne i32 (%struct.xt_tgdtor_param*)* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %16
  %37 = getelementptr inbounds %struct.xt_tgdtor_param, %struct.xt_tgdtor_param* %6, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32 (%struct.xt_tgdtor_param*)*, i32 (%struct.xt_tgdtor_param*)** %39, align 8
  %41 = call i32 %40(%struct.xt_tgdtor_param* %6)
  br label %42

42:                                               ; preds = %36, %16
  %43 = getelementptr inbounds %struct.xt_tgdtor_param, %struct.xt_tgdtor_param* %6, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @module_put(i32 %46)
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %42, %15
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.arpt_entry_target* @arpt_get_target(%struct.arpt_entry*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
