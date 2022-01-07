; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ip_tables.c_cleanup_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ip_tables.c_cleanup_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipt_entry_match = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 (%struct.xt_mtdtor_param*)* }
%struct.xt_mtdtor_param = type { %struct.TYPE_4__*, i32, i32 }

@NFPROTO_IPV4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipt_entry_match*, i32*)* @cleanup_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cleanup_match(%struct.ipt_entry_match* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipt_entry_match*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.xt_mtdtor_param, align 8
  store %struct.ipt_entry_match* %0, %struct.ipt_entry_match** %4, align 8
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
  br label %45

15:                                               ; preds = %9, %2
  %16 = load %struct.ipt_entry_match*, %struct.ipt_entry_match** %4, align 8
  %17 = getelementptr inbounds %struct.ipt_entry_match, %struct.ipt_entry_match* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.xt_mtdtor_param, %struct.xt_mtdtor_param* %6, i32 0, i32 0
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %21, align 8
  %22 = load %struct.ipt_entry_match*, %struct.ipt_entry_match** %4, align 8
  %23 = getelementptr inbounds %struct.ipt_entry_match, %struct.ipt_entry_match* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds %struct.xt_mtdtor_param, %struct.xt_mtdtor_param* %6, i32 0, i32 2
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @NFPROTO_IPV4, align 4
  %27 = getelementptr inbounds %struct.xt_mtdtor_param, %struct.xt_mtdtor_param* %6, i32 0, i32 1
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.xt_mtdtor_param, %struct.xt_mtdtor_param* %6, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32 (%struct.xt_mtdtor_param*)*, i32 (%struct.xt_mtdtor_param*)** %30, align 8
  %32 = icmp ne i32 (%struct.xt_mtdtor_param*)* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %15
  %34 = getelementptr inbounds %struct.xt_mtdtor_param, %struct.xt_mtdtor_param* %6, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32 (%struct.xt_mtdtor_param*)*, i32 (%struct.xt_mtdtor_param*)** %36, align 8
  %38 = call i32 %37(%struct.xt_mtdtor_param* %6)
  br label %39

39:                                               ; preds = %33, %15
  %40 = getelementptr inbounds %struct.xt_mtdtor_param, %struct.xt_mtdtor_param* %6, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @module_put(i32 %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %39, %14
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
