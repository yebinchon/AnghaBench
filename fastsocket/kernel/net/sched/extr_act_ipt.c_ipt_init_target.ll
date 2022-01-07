; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_ipt.c_ipt_init_target.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_ipt.c_ipt_init_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipt_entry_target = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i64, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.xt_target* }
%struct.xt_target = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.xt_tgchk_param = type { i8*, i32, i32, i32, %struct.xt_target*, i32* }

@AF_INET = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@NFPROTO_IPV4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipt_entry_target*, i8*, i32)* @ipt_init_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipt_init_target(%struct.ipt_entry_target* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipt_entry_target*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xt_tgchk_param, align 8
  %9 = alloca %struct.xt_target*, align 8
  %10 = alloca i32, align 4
  store %struct.ipt_entry_target* %0, %struct.ipt_entry_target** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* @AF_INET, align 4
  %12 = load %struct.ipt_entry_target*, %struct.ipt_entry_target** %5, align 8
  %13 = getelementptr inbounds %struct.ipt_entry_target, %struct.ipt_entry_target* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ipt_entry_target*, %struct.ipt_entry_target** %5, align 8
  %18 = getelementptr inbounds %struct.ipt_entry_target, %struct.ipt_entry_target* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.xt_target* @xt_request_find_target(i32 %11, i32 %16, i32 %21)
  store %struct.xt_target* %22, %struct.xt_target** %9, align 8
  %23 = load %struct.xt_target*, %struct.xt_target** %9, align 8
  %24 = icmp ne %struct.xt_target* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOENT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %66

28:                                               ; preds = %3
  %29 = load %struct.xt_target*, %struct.xt_target** %9, align 8
  %30 = load %struct.ipt_entry_target*, %struct.ipt_entry_target** %5, align 8
  %31 = getelementptr inbounds %struct.ipt_entry_target, %struct.ipt_entry_target* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store %struct.xt_target* %29, %struct.xt_target** %33, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %8, i32 0, i32 0
  store i8* %34, i8** %35, align 8
  %36 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %8, i32 0, i32 5
  store i32* null, i32** %36, align 8
  %37 = load %struct.xt_target*, %struct.xt_target** %9, align 8
  %38 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %8, i32 0, i32 4
  store %struct.xt_target* %37, %struct.xt_target** %38, align 8
  %39 = load %struct.ipt_entry_target*, %struct.ipt_entry_target** %5, align 8
  %40 = getelementptr inbounds %struct.ipt_entry_target, %struct.ipt_entry_target* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %8, i32 0, i32 3
  store i32 %41, i32* %42, align 8
  %43 = load i32, i32* %7, align 4
  %44 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %8, i32 0, i32 1
  store i32 %43, i32* %44, align 8
  %45 = load i32, i32* @NFPROTO_IPV4, align 4
  %46 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %8, i32 0, i32 2
  store i32 %45, i32* %46, align 4
  %47 = load %struct.ipt_entry_target*, %struct.ipt_entry_target** %5, align 8
  %48 = getelementptr inbounds %struct.ipt_entry_target, %struct.ipt_entry_target* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = sub i64 %50, 32
  %52 = call i32 @xt_check_target(%struct.xt_tgchk_param* %8, i64 %51, i32 0, i32 0)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %28
  %56 = load %struct.ipt_entry_target*, %struct.ipt_entry_target** %5, align 8
  %57 = getelementptr inbounds %struct.ipt_entry_target, %struct.ipt_entry_target* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load %struct.xt_target*, %struct.xt_target** %59, align 8
  %61 = getelementptr inbounds %struct.xt_target, %struct.xt_target* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @module_put(i32 %62)
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %4, align 4
  br label %66

65:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %55, %25
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.xt_target* @xt_request_find_target(i32, i32, i32) #1

declare dso_local i32 @xt_check_target(%struct.xt_tgchk_param*, i64, i32, i32) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
