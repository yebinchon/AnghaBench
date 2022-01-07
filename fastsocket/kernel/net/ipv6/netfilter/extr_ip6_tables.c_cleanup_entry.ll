; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_ip6_tables.c_cleanup_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_ip6_tables.c_cleanup_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6t_entry = type { i32 }
%struct.xt_tgdtor_param = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 (%struct.xt_tgdtor_param*)* }
%struct.ip6t_entry_target = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }

@cleanup_match = common dso_local global i32 0, align 4
@NFPROTO_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip6t_entry*, i32*)* @cleanup_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cleanup_entry(%struct.ip6t_entry* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ip6t_entry*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.xt_tgdtor_param, align 8
  %7 = alloca %struct.ip6t_entry_target*, align 8
  store %struct.ip6t_entry* %0, %struct.ip6t_entry** %4, align 8
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
  br label %51

16:                                               ; preds = %10, %2
  %17 = load %struct.ip6t_entry*, %struct.ip6t_entry** %4, align 8
  %18 = load i32, i32* @cleanup_match, align 4
  %19 = call i32 @IP6T_MATCH_ITERATE(%struct.ip6t_entry* %17, i32 %18, i32* null)
  %20 = load %struct.ip6t_entry*, %struct.ip6t_entry** %4, align 8
  %21 = call %struct.ip6t_entry_target* @ip6t_get_target(%struct.ip6t_entry* %20)
  store %struct.ip6t_entry_target* %21, %struct.ip6t_entry_target** %7, align 8
  %22 = load %struct.ip6t_entry_target*, %struct.ip6t_entry_target** %7, align 8
  %23 = getelementptr inbounds %struct.ip6t_entry_target, %struct.ip6t_entry_target* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.xt_tgdtor_param, %struct.xt_tgdtor_param* %6, i32 0, i32 0
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %27, align 8
  %28 = load %struct.ip6t_entry_target*, %struct.ip6t_entry_target** %7, align 8
  %29 = getelementptr inbounds %struct.ip6t_entry_target, %struct.ip6t_entry_target* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.xt_tgdtor_param, %struct.xt_tgdtor_param* %6, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @NFPROTO_IPV6, align 4
  %33 = getelementptr inbounds %struct.xt_tgdtor_param, %struct.xt_tgdtor_param* %6, i32 0, i32 1
  store i32 %32, i32* %33, align 8
  %34 = getelementptr inbounds %struct.xt_tgdtor_param, %struct.xt_tgdtor_param* %6, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32 (%struct.xt_tgdtor_param*)*, i32 (%struct.xt_tgdtor_param*)** %36, align 8
  %38 = icmp ne i32 (%struct.xt_tgdtor_param*)* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %16
  %40 = getelementptr inbounds %struct.xt_tgdtor_param, %struct.xt_tgdtor_param* %6, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32 (%struct.xt_tgdtor_param*)*, i32 (%struct.xt_tgdtor_param*)** %42, align 8
  %44 = call i32 %43(%struct.xt_tgdtor_param* %6)
  br label %45

45:                                               ; preds = %39, %16
  %46 = getelementptr inbounds %struct.xt_tgdtor_param, %struct.xt_tgdtor_param* %6, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @module_put(i32 %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %45, %15
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @IP6T_MATCH_ITERATE(%struct.ip6t_entry*, i32, i32*) #1

declare dso_local %struct.ip6t_entry_target* @ip6t_get_target(%struct.ip6t_entry*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
