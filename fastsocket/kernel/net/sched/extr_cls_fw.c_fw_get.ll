; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_fw.c_fw_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_fw.c_fw_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i64 }
%struct.fw_head = type { %struct.fw_filter** }
%struct.fw_filter = type { i64, %struct.fw_filter* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tcf_proto*, i64)* @fw_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fw_get(%struct.tcf_proto* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.tcf_proto*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fw_head*, align 8
  %7 = alloca %struct.fw_filter*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %9 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.fw_head*
  store %struct.fw_head* %11, %struct.fw_head** %6, align 8
  %12 = load %struct.fw_head*, %struct.fw_head** %6, align 8
  %13 = icmp eq %struct.fw_head* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %41

15:                                               ; preds = %2
  %16 = load %struct.fw_head*, %struct.fw_head** %6, align 8
  %17 = getelementptr inbounds %struct.fw_head, %struct.fw_head* %16, i32 0, i32 0
  %18 = load %struct.fw_filter**, %struct.fw_filter*** %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @fw_hash(i64 %19)
  %21 = getelementptr inbounds %struct.fw_filter*, %struct.fw_filter** %18, i64 %20
  %22 = load %struct.fw_filter*, %struct.fw_filter** %21, align 8
  store %struct.fw_filter* %22, %struct.fw_filter** %7, align 8
  br label %23

23:                                               ; preds = %36, %15
  %24 = load %struct.fw_filter*, %struct.fw_filter** %7, align 8
  %25 = icmp ne %struct.fw_filter* %24, null
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = load %struct.fw_filter*, %struct.fw_filter** %7, align 8
  %28 = getelementptr inbounds %struct.fw_filter, %struct.fw_filter* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.fw_filter*, %struct.fw_filter** %7, align 8
  %34 = ptrtoint %struct.fw_filter* %33 to i64
  store i64 %34, i64* %3, align 8
  br label %41

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.fw_filter*, %struct.fw_filter** %7, align 8
  %38 = getelementptr inbounds %struct.fw_filter, %struct.fw_filter* %37, i32 0, i32 1
  %39 = load %struct.fw_filter*, %struct.fw_filter** %38, align 8
  store %struct.fw_filter* %39, %struct.fw_filter** %7, align 8
  br label %23

40:                                               ; preds = %23
  store i64 0, i64* %3, align 8
  br label %41

41:                                               ; preds = %40, %32, %14
  %42 = load i64, i64* %3, align 8
  ret i64 %42
}

declare dso_local i64 @fw_hash(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
