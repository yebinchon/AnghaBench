; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_u32.c_u32_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_u32.c_u32_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { %struct.tc_u_hnode*, %struct.TYPE_2__*, %struct.tc_u_hnode* }
%struct.TYPE_2__ = type { i32* }
%struct.tc_u_hnode = type { i64, %struct.tc_u_hnode*, %struct.tc_u_hnode* }
%struct.tc_u_common = type { i64, %struct.tc_u_common*, %struct.tc_u_common* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_proto*)* @u32_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @u32_destroy(%struct.tcf_proto* %0) #0 {
  %2 = alloca %struct.tcf_proto*, align 8
  %3 = alloca %struct.tc_u_common*, align 8
  %4 = alloca %struct.tc_u_hnode*, align 8
  %5 = alloca %struct.tc_u_hnode*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %2, align 8
  %6 = load %struct.tcf_proto*, %struct.tcf_proto** %2, align 8
  %7 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %6, i32 0, i32 0
  %8 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %7, align 8
  %9 = bitcast %struct.tc_u_hnode* %8 to %struct.tc_u_common*
  store %struct.tc_u_common* %9, %struct.tc_u_common** %3, align 8
  %10 = load %struct.tcf_proto*, %struct.tcf_proto** %2, align 8
  %11 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %10, i32 0, i32 2
  %12 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %11, align 8
  store %struct.tc_u_hnode* %12, %struct.tc_u_hnode** %4, align 8
  %13 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %4, align 8
  %14 = icmp eq %struct.tc_u_hnode* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %4, align 8
  %18 = icmp ne %struct.tc_u_hnode* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %1
  %20 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %4, align 8
  %21 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, i64* %21, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.tcf_proto*, %struct.tcf_proto** %2, align 8
  %27 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %4, align 8
  %28 = call i32 @u32_destroy_hnode(%struct.tcf_proto* %26, %struct.tc_u_hnode* %27)
  br label %29

29:                                               ; preds = %25, %19, %1
  %30 = load %struct.tc_u_common*, %struct.tc_u_common** %3, align 8
  %31 = getelementptr inbounds %struct.tc_u_common, %struct.tc_u_common* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, -1
  store i64 %33, i64* %31, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %85

35:                                               ; preds = %29
  %36 = load %struct.tcf_proto*, %struct.tcf_proto** %2, align 8
  %37 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  %40 = load %struct.tc_u_common*, %struct.tc_u_common** %3, align 8
  %41 = getelementptr inbounds %struct.tc_u_common, %struct.tc_u_common* %40, i32 0, i32 2
  %42 = load %struct.tc_u_common*, %struct.tc_u_common** %41, align 8
  %43 = bitcast %struct.tc_u_common* %42 to %struct.tc_u_hnode*
  store %struct.tc_u_hnode* %43, %struct.tc_u_hnode** %5, align 8
  br label %44

44:                                               ; preds = %55, %35
  %45 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %5, align 8
  %46 = icmp ne %struct.tc_u_hnode* %45, null
  br i1 %46, label %47, label %59

47:                                               ; preds = %44
  %48 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %5, align 8
  %49 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, -1
  store i64 %51, i64* %49, align 8
  %52 = load %struct.tcf_proto*, %struct.tcf_proto** %2, align 8
  %53 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %5, align 8
  %54 = call i32 @u32_clear_hnode(%struct.tcf_proto* %52, %struct.tc_u_hnode* %53)
  br label %55

55:                                               ; preds = %47
  %56 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %5, align 8
  %57 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %56, i32 0, i32 1
  %58 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %57, align 8
  store %struct.tc_u_hnode* %58, %struct.tc_u_hnode** %5, align 8
  br label %44

59:                                               ; preds = %44
  br label %60

60:                                               ; preds = %66, %59
  %61 = load %struct.tc_u_common*, %struct.tc_u_common** %3, align 8
  %62 = getelementptr inbounds %struct.tc_u_common, %struct.tc_u_common* %61, i32 0, i32 2
  %63 = load %struct.tc_u_common*, %struct.tc_u_common** %62, align 8
  %64 = bitcast %struct.tc_u_common* %63 to %struct.tc_u_hnode*
  store %struct.tc_u_hnode* %64, %struct.tc_u_hnode** %5, align 8
  %65 = icmp ne %struct.tc_u_hnode* %64, null
  br i1 %65, label %66, label %81

66:                                               ; preds = %60
  %67 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %5, align 8
  %68 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %67, i32 0, i32 1
  %69 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %68, align 8
  %70 = bitcast %struct.tc_u_hnode* %69 to %struct.tc_u_common*
  %71 = load %struct.tc_u_common*, %struct.tc_u_common** %3, align 8
  %72 = getelementptr inbounds %struct.tc_u_common, %struct.tc_u_common* %71, i32 0, i32 2
  store %struct.tc_u_common* %70, %struct.tc_u_common** %72, align 8
  %73 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %5, align 8
  %74 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i32 @WARN_ON(i32 %77)
  %79 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %5, align 8
  %80 = call i32 @kfree(%struct.tc_u_hnode* %79)
  br label %60

81:                                               ; preds = %60
  %82 = load %struct.tc_u_common*, %struct.tc_u_common** %3, align 8
  %83 = bitcast %struct.tc_u_common* %82 to %struct.tc_u_hnode*
  %84 = call i32 @kfree(%struct.tc_u_hnode* %83)
  br label %85

85:                                               ; preds = %81, %29
  %86 = load %struct.tcf_proto*, %struct.tcf_proto** %2, align 8
  %87 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %86, i32 0, i32 0
  store %struct.tc_u_hnode* null, %struct.tc_u_hnode** %87, align 8
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @u32_destroy_hnode(%struct.tcf_proto*, %struct.tc_u_hnode*) #1

declare dso_local i32 @u32_clear_hnode(%struct.tcf_proto*, %struct.tc_u_hnode*) #1

declare dso_local i32 @kfree(%struct.tc_u_hnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
