; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_u32.c_u32_walk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_u32.c_u32_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i64, %struct.tc_u_common* }
%struct.tc_u_common = type { %struct.tc_u_hnode* }
%struct.tc_u_hnode = type { i64, i32, %struct.tc_u_knode**, %struct.tc_u_hnode* }
%struct.tc_u_knode = type { %struct.tc_u_knode* }
%struct.tcf_walker = type { i32, i64, i64, i64 (%struct.tcf_proto.0*, i64, %struct.tcf_walker*)* }
%struct.tcf_proto.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_proto*, %struct.tcf_walker*)* @u32_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @u32_walk(%struct.tcf_proto* %0, %struct.tcf_walker* %1) #0 {
  %3 = alloca %struct.tcf_proto*, align 8
  %4 = alloca %struct.tcf_walker*, align 8
  %5 = alloca %struct.tc_u_common*, align 8
  %6 = alloca %struct.tc_u_hnode*, align 8
  %7 = alloca %struct.tc_u_knode*, align 8
  %8 = alloca i32, align 4
  store %struct.tcf_proto* %0, %struct.tcf_proto** %3, align 8
  store %struct.tcf_walker* %1, %struct.tcf_walker** %4, align 8
  %9 = load %struct.tcf_proto*, %struct.tcf_proto** %3, align 8
  %10 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %9, i32 0, i32 1
  %11 = load %struct.tc_u_common*, %struct.tc_u_common** %10, align 8
  store %struct.tc_u_common* %11, %struct.tc_u_common** %5, align 8
  %12 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %13 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %123

17:                                               ; preds = %2
  %18 = load %struct.tc_u_common*, %struct.tc_u_common** %5, align 8
  %19 = getelementptr inbounds %struct.tc_u_common, %struct.tc_u_common* %18, i32 0, i32 0
  %20 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %19, align 8
  store %struct.tc_u_hnode* %20, %struct.tc_u_hnode** %6, align 8
  br label %21

21:                                               ; preds = %119, %17
  %22 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %6, align 8
  %23 = icmp ne %struct.tc_u_hnode* %22, null
  br i1 %23, label %24, label %123

24:                                               ; preds = %21
  %25 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %6, align 8
  %26 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.tcf_proto*, %struct.tcf_proto** %3, align 8
  %29 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %119

33:                                               ; preds = %24
  %34 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %35 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %38 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp sge i64 %36, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %33
  %42 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %43 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %42, i32 0, i32 3
  %44 = load i64 (%struct.tcf_proto.0*, i64, %struct.tcf_walker*)*, i64 (%struct.tcf_proto.0*, i64, %struct.tcf_walker*)** %43, align 8
  %45 = load %struct.tcf_proto*, %struct.tcf_proto** %3, align 8
  %46 = bitcast %struct.tcf_proto* %45 to %struct.tcf_proto.0*
  %47 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %6, align 8
  %48 = ptrtoint %struct.tc_u_hnode* %47 to i64
  %49 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %50 = call i64 %44(%struct.tcf_proto.0* %46, i64 %48, %struct.tcf_walker* %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %41
  %53 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %54 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  br label %123

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %55, %33
  %57 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %58 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %58, align 8
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %115, %56
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %6, align 8
  %64 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp ule i32 %62, %65
  br i1 %66, label %67, label %118

67:                                               ; preds = %61
  %68 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %6, align 8
  %69 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %68, i32 0, i32 2
  %70 = load %struct.tc_u_knode**, %struct.tc_u_knode*** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.tc_u_knode*, %struct.tc_u_knode** %70, i64 %72
  %74 = load %struct.tc_u_knode*, %struct.tc_u_knode** %73, align 8
  store %struct.tc_u_knode* %74, %struct.tc_u_knode** %7, align 8
  br label %75

75:                                               ; preds = %110, %67
  %76 = load %struct.tc_u_knode*, %struct.tc_u_knode** %7, align 8
  %77 = icmp ne %struct.tc_u_knode* %76, null
  br i1 %77, label %78, label %114

78:                                               ; preds = %75
  %79 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %80 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %83 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp slt i64 %81, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %78
  %87 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %88 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %88, align 8
  br label %110

91:                                               ; preds = %78
  %92 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %93 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %92, i32 0, i32 3
  %94 = load i64 (%struct.tcf_proto.0*, i64, %struct.tcf_walker*)*, i64 (%struct.tcf_proto.0*, i64, %struct.tcf_walker*)** %93, align 8
  %95 = load %struct.tcf_proto*, %struct.tcf_proto** %3, align 8
  %96 = bitcast %struct.tcf_proto* %95 to %struct.tcf_proto.0*
  %97 = load %struct.tc_u_knode*, %struct.tc_u_knode** %7, align 8
  %98 = ptrtoint %struct.tc_u_knode* %97 to i64
  %99 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %100 = call i64 %94(%struct.tcf_proto.0* %96, i64 %98, %struct.tcf_walker* %99)
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %91
  %103 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %104 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  br label %123

105:                                              ; preds = %91
  %106 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %107 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %107, align 8
  br label %110

110:                                              ; preds = %105, %86
  %111 = load %struct.tc_u_knode*, %struct.tc_u_knode** %7, align 8
  %112 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %111, i32 0, i32 0
  %113 = load %struct.tc_u_knode*, %struct.tc_u_knode** %112, align 8
  store %struct.tc_u_knode* %113, %struct.tc_u_knode** %7, align 8
  br label %75

114:                                              ; preds = %75
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %8, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %61

118:                                              ; preds = %61
  br label %119

119:                                              ; preds = %118, %32
  %120 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %6, align 8
  %121 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %120, i32 0, i32 3
  %122 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %121, align 8
  store %struct.tc_u_hnode* %122, %struct.tc_u_hnode** %6, align 8
  br label %21

123:                                              ; preds = %16, %52, %102, %21
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
