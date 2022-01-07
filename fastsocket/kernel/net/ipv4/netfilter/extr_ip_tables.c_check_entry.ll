; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ip_tables.c_check_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ip_tables.c_check_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipt_entry = type { i64, i64, i32 }
%struct.ipt_entry_target = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"ip_tables: ip check failed %p %s.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipt_entry*, i8*)* @check_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_entry(%struct.ipt_entry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipt_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ipt_entry_target*, align 8
  store %struct.ipt_entry* %0, %struct.ipt_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.ipt_entry*, %struct.ipt_entry** %4, align 8
  %8 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %7, i32 0, i32 2
  %9 = call i32 @ip_checkentry(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.ipt_entry*, %struct.ipt_entry** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @duprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.ipt_entry* %12, i8* %13)
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %48

17:                                               ; preds = %2
  %18 = load %struct.ipt_entry*, %struct.ipt_entry** %4, align 8
  %19 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add i64 %20, 8
  %22 = load %struct.ipt_entry*, %struct.ipt_entry** %4, align 8
  %23 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ugt i64 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %48

29:                                               ; preds = %17
  %30 = load %struct.ipt_entry*, %struct.ipt_entry** %4, align 8
  %31 = call %struct.ipt_entry_target* @ipt_get_target(%struct.ipt_entry* %30)
  store %struct.ipt_entry_target* %31, %struct.ipt_entry_target** %6, align 8
  %32 = load %struct.ipt_entry*, %struct.ipt_entry** %4, align 8
  %33 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ipt_entry_target*, %struct.ipt_entry_target** %6, align 8
  %36 = getelementptr inbounds %struct.ipt_entry_target, %struct.ipt_entry_target* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %34, %38
  %40 = load %struct.ipt_entry*, %struct.ipt_entry** %4, align 8
  %41 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %39, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %29
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %48

47:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %44, %26, %11
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @ip_checkentry(i32*) #1

declare dso_local i32 @duprintf(i8*, %struct.ipt_entry*, i8*) #1

declare dso_local %struct.ipt_entry_target* @ipt_get_target(%struct.ipt_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
