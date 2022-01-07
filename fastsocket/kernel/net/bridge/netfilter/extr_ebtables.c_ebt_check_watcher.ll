; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebtables.c_ebt_check_watcher.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebtables.c_ebt_check_watcher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebt_entry_watcher = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.xt_target*, i32 }
%struct.xt_target = type { i32 }
%struct.xt_tgchk_param = type { i32, %struct.xt_target*, %struct.ebt_entry* }
%struct.ebt_entry = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@NFPROTO_BRIDGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ebt_%s\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@EBT_IPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ebt_entry_watcher*, %struct.xt_tgchk_param*, i32*)* @ebt_check_watcher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_check_watcher(%struct.ebt_entry_watcher* %0, %struct.xt_tgchk_param* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ebt_entry_watcher*, align 8
  %6 = alloca %struct.xt_tgchk_param*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ebt_entry*, align 8
  %9 = alloca %struct.xt_target*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ebt_entry_watcher* %0, %struct.ebt_entry_watcher** %5, align 8
  store %struct.xt_tgchk_param* %1, %struct.xt_tgchk_param** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %13 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %12, i32 0, i32 2
  %14 = load %struct.ebt_entry*, %struct.ebt_entry** %13, align 8
  store %struct.ebt_entry* %14, %struct.ebt_entry** %8, align 8
  %15 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %16 = bitcast %struct.ebt_entry* %15 to i8*
  %17 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %18 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %16, i64 %20
  %22 = load %struct.ebt_entry_watcher*, %struct.ebt_entry_watcher** %5, align 8
  %23 = bitcast %struct.ebt_entry_watcher* %22 to i8*
  %24 = ptrtoint i8* %21 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp ult i64 %27, 32
  br i1 %28, label %36, label %29

29:                                               ; preds = %3
  %30 = load i64, i64* %10, align 8
  %31 = sub i64 %30, 32
  %32 = load %struct.ebt_entry_watcher*, %struct.ebt_entry_watcher** %5, align 8
  %33 = getelementptr inbounds %struct.ebt_entry_watcher, %struct.ebt_entry_watcher* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29, %3
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %101

39:                                               ; preds = %29
  %40 = load i32, i32* @NFPROTO_BRIDGE, align 4
  %41 = load %struct.ebt_entry_watcher*, %struct.ebt_entry_watcher** %5, align 8
  %42 = getelementptr inbounds %struct.ebt_entry_watcher, %struct.ebt_entry_watcher* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @xt_find_target(i32 %40, i32 %44, i32 0)
  %46 = load %struct.ebt_entry_watcher*, %struct.ebt_entry_watcher** %5, align 8
  %47 = getelementptr inbounds %struct.ebt_entry_watcher, %struct.ebt_entry_watcher* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call %struct.xt_target* @try_then_request_module(i32 %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %49)
  store %struct.xt_target* %50, %struct.xt_target** %9, align 8
  %51 = load %struct.xt_target*, %struct.xt_target** %9, align 8
  %52 = call i64 @IS_ERR(%struct.xt_target* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %39
  %55 = load %struct.xt_target*, %struct.xt_target** %9, align 8
  %56 = call i32 @PTR_ERR(%struct.xt_target* %55)
  store i32 %56, i32* %4, align 4
  br label %101

57:                                               ; preds = %39
  %58 = load %struct.xt_target*, %struct.xt_target** %9, align 8
  %59 = icmp eq %struct.xt_target* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* @ENOENT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %101

63:                                               ; preds = %57
  %64 = load %struct.xt_target*, %struct.xt_target** %9, align 8
  %65 = load %struct.ebt_entry_watcher*, %struct.ebt_entry_watcher** %5, align 8
  %66 = getelementptr inbounds %struct.ebt_entry_watcher, %struct.ebt_entry_watcher* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store %struct.xt_target* %64, %struct.xt_target** %67, align 8
  %68 = load %struct.xt_target*, %struct.xt_target** %9, align 8
  %69 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %70 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %69, i32 0, i32 1
  store %struct.xt_target* %68, %struct.xt_target** %70, align 8
  %71 = load %struct.ebt_entry_watcher*, %struct.ebt_entry_watcher** %5, align 8
  %72 = getelementptr inbounds %struct.ebt_entry_watcher, %struct.ebt_entry_watcher* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %75 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %77 = load %struct.ebt_entry_watcher*, %struct.ebt_entry_watcher** %5, align 8
  %78 = getelementptr inbounds %struct.ebt_entry_watcher, %struct.ebt_entry_watcher* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %81 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ebt_entry*, %struct.ebt_entry** %8, align 8
  %84 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @EBT_IPROTO, align 4
  %87 = and i32 %85, %86
  %88 = call i32 @xt_check_target(%struct.xt_tgchk_param* %76, i64 %79, i32 %82, i32 %87)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %63
  %92 = load %struct.xt_target*, %struct.xt_target** %9, align 8
  %93 = getelementptr inbounds %struct.xt_target, %struct.xt_target* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @module_put(i32 %94)
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %4, align 4
  br label %101

97:                                               ; preds = %63
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* %98, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %98, align 4
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %97, %91, %60, %54, %36
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.xt_target* @try_then_request_module(i32, i8*, i32) #1

declare dso_local i32 @xt_find_target(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.xt_target*) #1

declare dso_local i32 @PTR_ERR(%struct.xt_target*) #1

declare dso_local i32 @xt_check_target(%struct.xt_tgchk_param*, i64, i32, i32) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
