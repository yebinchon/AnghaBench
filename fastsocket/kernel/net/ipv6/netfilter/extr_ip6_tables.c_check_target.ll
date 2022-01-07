; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_ip6_tables.c_check_target.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_ip6_tables.c_check_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6t_entry = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ip6t_entry_target = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.xt_tgchk_param = type { i8*, i32, i32, i32, %struct.TYPE_6__*, %struct.ip6t_entry* }

@NFPROTO_IPV6 = common dso_local global i32 0, align 4
@IP6T_INV_PROTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"ip_tables: check failed for `%s'.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip6t_entry*, i8*)* @check_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_target(%struct.ip6t_entry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ip6t_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ip6t_entry_target*, align 8
  %7 = alloca %struct.xt_tgchk_param, align 8
  %8 = alloca i32, align 4
  store %struct.ip6t_entry* %0, %struct.ip6t_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.ip6t_entry*, %struct.ip6t_entry** %4, align 8
  %10 = call %struct.ip6t_entry_target* @ip6t_get_target(%struct.ip6t_entry* %9)
  store %struct.ip6t_entry_target* %10, %struct.ip6t_entry_target** %6, align 8
  %11 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %7, i32 0, i32 0
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %11, align 8
  %13 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %7, i32 0, i32 1
  %14 = load i32, i32* @NFPROTO_IPV6, align 4
  store i32 %14, i32* %13, align 8
  %15 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %7, i32 0, i32 2
  %16 = load %struct.ip6t_entry*, %struct.ip6t_entry** %4, align 8
  %17 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %15, align 4
  %19 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %7, i32 0, i32 3
  %20 = load %struct.ip6t_entry_target*, %struct.ip6t_entry_target** %6, align 8
  %21 = getelementptr inbounds %struct.ip6t_entry_target, %struct.ip6t_entry_target* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %19, align 8
  %23 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %7, i32 0, i32 4
  %24 = load %struct.ip6t_entry_target*, %struct.ip6t_entry_target** %6, align 8
  %25 = getelementptr inbounds %struct.ip6t_entry_target, %struct.ip6t_entry_target* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %23, align 8
  %29 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %7, i32 0, i32 5
  %30 = load %struct.ip6t_entry*, %struct.ip6t_entry** %4, align 8
  store %struct.ip6t_entry* %30, %struct.ip6t_entry** %29, align 8
  %31 = load %struct.ip6t_entry*, %struct.ip6t_entry** %4, align 8
  %32 = call %struct.ip6t_entry_target* @ip6t_get_target(%struct.ip6t_entry* %31)
  store %struct.ip6t_entry_target* %32, %struct.ip6t_entry_target** %6, align 8
  %33 = load %struct.ip6t_entry_target*, %struct.ip6t_entry_target** %6, align 8
  %34 = getelementptr inbounds %struct.ip6t_entry_target, %struct.ip6t_entry_target* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = sub i64 %36, 24
  %38 = load %struct.ip6t_entry*, %struct.ip6t_entry** %4, align 8
  %39 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ip6t_entry*, %struct.ip6t_entry** %4, align 8
  %43 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IP6T_INV_PROTO, align 4
  %47 = and i32 %45, %46
  %48 = call i32 @xt_check_target(%struct.xt_tgchk_param* %7, i64 %37, i32 %41, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %2
  %52 = load %struct.ip6t_entry_target*, %struct.ip6t_entry_target** %6, align 8
  %53 = getelementptr inbounds %struct.ip6t_entry_target, %struct.ip6t_entry_target* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @duprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %3, align 4
  br label %62

61:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %51
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.ip6t_entry_target* @ip6t_get_target(%struct.ip6t_entry*) #1

declare dso_local i32 @xt_check_target(%struct.xt_tgchk_param*, i64, i32, i32) #1

declare dso_local i32 @duprintf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
