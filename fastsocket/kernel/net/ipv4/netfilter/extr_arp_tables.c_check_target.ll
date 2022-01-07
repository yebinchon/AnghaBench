; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_arp_tables.c_check_target.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_arp_tables.c_check_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arpt_entry = type { i32 }
%struct.arpt_entry_target = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.xt_tgchk_param = type { i8*, i32, i32, i32, %struct.TYPE_4__*, %struct.arpt_entry* }

@NFPROTO_ARP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"arp_tables: check failed for `%s'.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arpt_entry*, i8*)* @check_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_target(%struct.arpt_entry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.arpt_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.arpt_entry_target*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xt_tgchk_param, align 8
  store %struct.arpt_entry* %0, %struct.arpt_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.arpt_entry*, %struct.arpt_entry** %4, align 8
  %10 = call %struct.arpt_entry_target* @arpt_get_target(%struct.arpt_entry* %9)
  store %struct.arpt_entry_target* %10, %struct.arpt_entry_target** %6, align 8
  %11 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %8, i32 0, i32 0
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %11, align 8
  %13 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %8, i32 0, i32 1
  %14 = load i32, i32* @NFPROTO_ARP, align 4
  store i32 %14, i32* %13, align 8
  %15 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %8, i32 0, i32 2
  %16 = load %struct.arpt_entry*, %struct.arpt_entry** %4, align 8
  %17 = getelementptr inbounds %struct.arpt_entry, %struct.arpt_entry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %15, align 4
  %19 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %8, i32 0, i32 3
  %20 = load %struct.arpt_entry_target*, %struct.arpt_entry_target** %6, align 8
  %21 = getelementptr inbounds %struct.arpt_entry_target, %struct.arpt_entry_target* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %19, align 8
  %23 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %8, i32 0, i32 4
  %24 = load %struct.arpt_entry_target*, %struct.arpt_entry_target** %6, align 8
  %25 = getelementptr inbounds %struct.arpt_entry_target, %struct.arpt_entry_target* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %23, align 8
  %29 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %8, i32 0, i32 5
  %30 = load %struct.arpt_entry*, %struct.arpt_entry** %4, align 8
  store %struct.arpt_entry* %30, %struct.arpt_entry** %29, align 8
  %31 = load %struct.arpt_entry_target*, %struct.arpt_entry_target** %6, align 8
  %32 = getelementptr inbounds %struct.arpt_entry_target, %struct.arpt_entry_target* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = sub i64 %34, 24
  %36 = call i32 @xt_check_target(%struct.xt_tgchk_param* %8, i64 %35, i32 0, i32 0)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %2
  %40 = load %struct.arpt_entry_target*, %struct.arpt_entry_target** %6, align 8
  %41 = getelementptr inbounds %struct.arpt_entry_target, %struct.arpt_entry_target* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @duprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %50

49:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %39
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.arpt_entry_target* @arpt_get_target(%struct.arpt_entry*) #1

declare dso_local i32 @xt_check_target(%struct.xt_tgchk_param*, i64, i32, i32) #1

declare dso_local i32 @duprintf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
