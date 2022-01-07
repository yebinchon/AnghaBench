; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_fw.c_fw_walk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_fw.c_fw_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i64 }
%struct.tcf_walker = type { i32, i64, i64, i64 (%struct.tcf_proto.0*, i64, %struct.tcf_walker*)* }
%struct.tcf_proto.0 = type opaque
%struct.fw_head = type { %struct.fw_filter** }
%struct.fw_filter = type { %struct.fw_filter* }

@HTSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_proto*, %struct.tcf_walker*)* @fw_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fw_walk(%struct.tcf_proto* %0, %struct.tcf_walker* %1) #0 {
  %3 = alloca %struct.tcf_proto*, align 8
  %4 = alloca %struct.tcf_walker*, align 8
  %5 = alloca %struct.fw_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fw_filter*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %3, align 8
  store %struct.tcf_walker* %1, %struct.tcf_walker** %4, align 8
  %8 = load %struct.tcf_proto*, %struct.tcf_proto** %3, align 8
  %9 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.fw_head*
  store %struct.fw_head* %11, %struct.fw_head** %5, align 8
  %12 = load %struct.fw_head*, %struct.fw_head** %5, align 8
  %13 = icmp eq %struct.fw_head* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %16 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  br label %17

17:                                               ; preds = %14, %2
  %18 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %19 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %79

23:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %76, %23
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @HTSIZE, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %79

28:                                               ; preds = %24
  %29 = load %struct.fw_head*, %struct.fw_head** %5, align 8
  %30 = getelementptr inbounds %struct.fw_head, %struct.fw_head* %29, i32 0, i32 0
  %31 = load %struct.fw_filter**, %struct.fw_filter*** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.fw_filter*, %struct.fw_filter** %31, i64 %33
  %35 = load %struct.fw_filter*, %struct.fw_filter** %34, align 8
  store %struct.fw_filter* %35, %struct.fw_filter** %7, align 8
  br label %36

36:                                               ; preds = %71, %28
  %37 = load %struct.fw_filter*, %struct.fw_filter** %7, align 8
  %38 = icmp ne %struct.fw_filter* %37, null
  br i1 %38, label %39, label %75

39:                                               ; preds = %36
  %40 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %41 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %44 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %42, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %39
  %48 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %49 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %49, align 8
  br label %71

52:                                               ; preds = %39
  %53 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %54 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %53, i32 0, i32 3
  %55 = load i64 (%struct.tcf_proto.0*, i64, %struct.tcf_walker*)*, i64 (%struct.tcf_proto.0*, i64, %struct.tcf_walker*)** %54, align 8
  %56 = load %struct.tcf_proto*, %struct.tcf_proto** %3, align 8
  %57 = bitcast %struct.tcf_proto* %56 to %struct.tcf_proto.0*
  %58 = load %struct.fw_filter*, %struct.fw_filter** %7, align 8
  %59 = ptrtoint %struct.fw_filter* %58 to i64
  %60 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %61 = call i64 %55(%struct.tcf_proto.0* %57, i64 %59, %struct.tcf_walker* %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %52
  %64 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %65 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  br label %79

66:                                               ; preds = %52
  %67 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %68 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %68, align 8
  br label %71

71:                                               ; preds = %66, %47
  %72 = load %struct.fw_filter*, %struct.fw_filter** %7, align 8
  %73 = getelementptr inbounds %struct.fw_filter, %struct.fw_filter* %72, i32 0, i32 0
  %74 = load %struct.fw_filter*, %struct.fw_filter** %73, align 8
  store %struct.fw_filter* %74, %struct.fw_filter** %7, align 8
  br label %36

75:                                               ; preds = %36
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %24

79:                                               ; preds = %22, %63, %24
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
