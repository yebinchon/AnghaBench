; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_u32.c_u32_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_u32.c_u32_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { %struct.tc_u_hnode*, %struct.tc_u_common* }
%struct.tc_u_hnode = type { i32 }
%struct.tc_u_common = type { i32 }

@TC_U32_ROOT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tcf_proto*, i32)* @u32_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @u32_get(%struct.tcf_proto* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.tcf_proto*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tc_u_hnode*, align 8
  %7 = alloca %struct.tc_u_common*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %9 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %8, i32 0, i32 1
  %10 = load %struct.tc_u_common*, %struct.tc_u_common** %9, align 8
  store %struct.tc_u_common* %10, %struct.tc_u_common** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @TC_U32_HTID(i32 %11)
  %13 = load i64, i64* @TC_U32_ROOT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %17 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %16, i32 0, i32 0
  %18 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %17, align 8
  store %struct.tc_u_hnode* %18, %struct.tc_u_hnode** %6, align 8
  br label %24

19:                                               ; preds = %2
  %20 = load %struct.tc_u_common*, %struct.tc_u_common** %7, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @TC_U32_HTID(i32 %21)
  %23 = call %struct.tc_u_hnode* @u32_lookup_ht(%struct.tc_u_common* %20, i64 %22)
  store %struct.tc_u_hnode* %23, %struct.tc_u_hnode** %6, align 8
  br label %24

24:                                               ; preds = %19, %15
  %25 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %6, align 8
  %26 = icmp ne %struct.tc_u_hnode* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  store i64 0, i64* %3, align 8
  br label %39

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @TC_U32_KEY(i32 %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %6, align 8
  %34 = ptrtoint %struct.tc_u_hnode* %33 to i64
  store i64 %34, i64* %3, align 8
  br label %39

35:                                               ; preds = %28
  %36 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %6, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i64 @u32_lookup_key(%struct.tc_u_hnode* %36, i32 %37)
  store i64 %38, i64* %3, align 8
  br label %39

39:                                               ; preds = %35, %32, %27
  %40 = load i64, i64* %3, align 8
  ret i64 %40
}

declare dso_local i64 @TC_U32_HTID(i32) #1

declare dso_local %struct.tc_u_hnode* @u32_lookup_ht(%struct.tc_u_common*, i64) #1

declare dso_local i64 @TC_U32_KEY(i32) #1

declare dso_local i64 @u32_lookup_key(%struct.tc_u_hnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
