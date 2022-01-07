; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c_build_all_zonelists.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c_build_all_zonelists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@system_state = common dso_local global i64 0, align 8
@SYSTEM_BOOTING = common dso_local global i64 0, align 8
@vm_total_pages = common dso_local global i32 0, align 4
@pageblock_nr_pages = common dso_local global i32 0, align 4
@MIGRATE_TYPES = common dso_local global i32 0, align 4
@page_group_by_mobility_disabled = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"Built %i zonelists in %s order, mobility grouping %s.  Total pages: %ld\0A\00", align 1
@nr_online_nodes = common dso_local global i32 0, align 4
@zonelist_order_name = common dso_local global i32* null, align 8
@current_zonelist_order = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@policy_zone = common dso_local global i64 0, align 8
@zone_names = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @build_all_zonelists(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i32 (...) @set_zonelist_order()
  %4 = load i64, i64* @system_state, align 8
  %5 = load i64, i64* @SYSTEM_BOOTING, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = call i32 @__build_all_zonelists(i32* null)
  %9 = call i32 (...) @mminit_verify_zonelist()
  %10 = call i32 (...) @cpuset_init_current_mems_allowed()
  br label %14

11:                                               ; preds = %1
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @stop_machine(i32 (i32*)* @__build_all_zonelists, i8* %12, i32* null)
  br label %14

14:                                               ; preds = %11, %7
  %15 = call i32 (...) @nr_free_pagecache_pages()
  store i32 %15, i32* @vm_total_pages, align 4
  %16 = load i32, i32* @vm_total_pages, align 4
  %17 = load i32, i32* @pageblock_nr_pages, align 4
  %18 = load i32, i32* @MIGRATE_TYPES, align 4
  %19 = mul nsw i32 %17, %18
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 1, i32* @page_group_by_mobility_disabled, align 4
  br label %23

22:                                               ; preds = %14
  store i32 0, i32* @page_group_by_mobility_disabled, align 4
  br label %23

23:                                               ; preds = %22, %21
  %24 = load i32, i32* @nr_online_nodes, align 4
  %25 = load i32*, i32** @zonelist_order_name, align 8
  %26 = load i64, i64* @current_zonelist_order, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @page_group_by_mobility_disabled, align 4
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %33 = load i32, i32* @vm_total_pages, align 4
  %34 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %28, i8* %32, i32 %33)
  ret void
}

declare dso_local i32 @set_zonelist_order(...) #1

declare dso_local i32 @__build_all_zonelists(i32*) #1

declare dso_local i32 @mminit_verify_zonelist(...) #1

declare dso_local i32 @cpuset_init_current_mems_allowed(...) #1

declare dso_local i32 @stop_machine(i32 (i32*)*, i8*, i32*) #1

declare dso_local i32 @nr_free_pagecache_pages(...) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
