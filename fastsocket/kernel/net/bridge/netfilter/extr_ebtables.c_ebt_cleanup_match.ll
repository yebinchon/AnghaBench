; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebtables.c_ebt_cleanup_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebtables.c_ebt_cleanup_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebt_entry_match = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 (%struct.xt_mtdtor_param*)* }
%struct.xt_mtdtor_param = type { %struct.TYPE_4__*, i32, i32 }

@NFPROTO_BRIDGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ebt_entry_match*, i32*)* @ebt_cleanup_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_cleanup_match(%struct.ebt_entry_match* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ebt_entry_match*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.xt_mtdtor_param, align 8
  store %struct.ebt_entry_match* %0, %struct.ebt_entry_match** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, -1
  store i32 %12, i32* %10, align 4
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 1, i32* %3, align 4
  br label %44

15:                                               ; preds = %9, %2
  %16 = load %struct.ebt_entry_match*, %struct.ebt_entry_match** %4, align 8
  %17 = getelementptr inbounds %struct.ebt_entry_match, %struct.ebt_entry_match* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.xt_mtdtor_param, %struct.xt_mtdtor_param* %6, i32 0, i32 0
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %20, align 8
  %21 = load %struct.ebt_entry_match*, %struct.ebt_entry_match** %4, align 8
  %22 = getelementptr inbounds %struct.ebt_entry_match, %struct.ebt_entry_match* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.xt_mtdtor_param, %struct.xt_mtdtor_param* %6, i32 0, i32 2
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @NFPROTO_BRIDGE, align 4
  %26 = getelementptr inbounds %struct.xt_mtdtor_param, %struct.xt_mtdtor_param* %6, i32 0, i32 1
  store i32 %25, i32* %26, align 8
  %27 = getelementptr inbounds %struct.xt_mtdtor_param, %struct.xt_mtdtor_param* %6, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32 (%struct.xt_mtdtor_param*)*, i32 (%struct.xt_mtdtor_param*)** %29, align 8
  %31 = icmp ne i32 (%struct.xt_mtdtor_param*)* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %15
  %33 = getelementptr inbounds %struct.xt_mtdtor_param, %struct.xt_mtdtor_param* %6, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32 (%struct.xt_mtdtor_param*)*, i32 (%struct.xt_mtdtor_param*)** %35, align 8
  %37 = call i32 %36(%struct.xt_mtdtor_param* %6)
  br label %38

38:                                               ; preds = %32, %15
  %39 = getelementptr inbounds %struct.xt_mtdtor_param, %struct.xt_mtdtor_param* %6, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @module_put(i32 %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %38, %14
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
