; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_fw.c_fw_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_fw.c_fw_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { %struct.fw_head* }
%struct.fw_head = type { %struct.fw_filter** }
%struct.fw_filter = type { %struct.fw_filter* }

@HTSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_proto*)* @fw_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fw_destroy(%struct.tcf_proto* %0) #0 {
  %2 = alloca %struct.tcf_proto*, align 8
  %3 = alloca %struct.fw_head*, align 8
  %4 = alloca %struct.fw_filter*, align 8
  %5 = alloca i32, align 4
  store %struct.tcf_proto* %0, %struct.tcf_proto** %2, align 8
  %6 = load %struct.tcf_proto*, %struct.tcf_proto** %2, align 8
  %7 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %6, i32 0, i32 0
  %8 = load %struct.fw_head*, %struct.fw_head** %7, align 8
  store %struct.fw_head* %8, %struct.fw_head** %3, align 8
  %9 = load %struct.fw_head*, %struct.fw_head** %3, align 8
  %10 = icmp eq %struct.fw_head* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %47

12:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %41, %12
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @HTSIZE, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %13
  br label %18

18:                                               ; preds = %27, %17
  %19 = load %struct.fw_head*, %struct.fw_head** %3, align 8
  %20 = getelementptr inbounds %struct.fw_head, %struct.fw_head* %19, i32 0, i32 0
  %21 = load %struct.fw_filter**, %struct.fw_filter*** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.fw_filter*, %struct.fw_filter** %21, i64 %23
  %25 = load %struct.fw_filter*, %struct.fw_filter** %24, align 8
  store %struct.fw_filter* %25, %struct.fw_filter** %4, align 8
  %26 = icmp ne %struct.fw_filter* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %18
  %28 = load %struct.fw_filter*, %struct.fw_filter** %4, align 8
  %29 = getelementptr inbounds %struct.fw_filter, %struct.fw_filter* %28, i32 0, i32 0
  %30 = load %struct.fw_filter*, %struct.fw_filter** %29, align 8
  %31 = load %struct.fw_head*, %struct.fw_head** %3, align 8
  %32 = getelementptr inbounds %struct.fw_head, %struct.fw_head* %31, i32 0, i32 0
  %33 = load %struct.fw_filter**, %struct.fw_filter*** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.fw_filter*, %struct.fw_filter** %33, i64 %35
  store %struct.fw_filter* %30, %struct.fw_filter** %36, align 8
  %37 = load %struct.tcf_proto*, %struct.tcf_proto** %2, align 8
  %38 = load %struct.fw_filter*, %struct.fw_filter** %4, align 8
  %39 = call i32 @fw_delete_filter(%struct.tcf_proto* %37, %struct.fw_filter* %38)
  br label %18

40:                                               ; preds = %18
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %13

44:                                               ; preds = %13
  %45 = load %struct.fw_head*, %struct.fw_head** %3, align 8
  %46 = call i32 @kfree(%struct.fw_head* %45)
  br label %47

47:                                               ; preds = %44, %11
  ret void
}

declare dso_local i32 @fw_delete_filter(%struct.tcf_proto*, %struct.fw_filter*) #1

declare dso_local i32 @kfree(%struct.fw_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
