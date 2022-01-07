; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_u32.c_u32_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_u32.c_u32_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { %struct.tc_u_hnode* }
%struct.tc_u_hnode = type { i32, i32 }
%struct.tc_u_knode = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*, i64)* @u32_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u32_delete(%struct.tcf_proto* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcf_proto*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tc_u_hnode*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = inttoptr i64 %7 to %struct.tc_u_hnode*
  store %struct.tc_u_hnode* %8, %struct.tc_u_hnode** %6, align 8
  %9 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %6, align 8
  %10 = icmp eq %struct.tc_u_hnode* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

12:                                               ; preds = %2
  %13 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %6, align 8
  %14 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @TC_U32_KEY(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %20 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %6, align 8
  %21 = bitcast %struct.tc_u_hnode* %20 to %struct.tc_u_knode*
  %22 = call i32 @u32_delete_key(%struct.tcf_proto* %19, %struct.tc_u_knode* %21)
  store i32 %22, i32* %3, align 4
  br label %49

23:                                               ; preds = %12
  %24 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %25 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %24, i32 0, i32 0
  %26 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %25, align 8
  %27 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %6, align 8
  %28 = icmp eq %struct.tc_u_hnode* %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %49

32:                                               ; preds = %23
  %33 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %6, align 8
  %34 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %6, align 8
  %39 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %39, align 4
  %42 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %43 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %6, align 8
  %44 = call i32 @u32_destroy_hnode(%struct.tcf_proto* %42, %struct.tc_u_hnode* %43)
  br label %48

45:                                               ; preds = %32
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %49

48:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %45, %29, %18, %11
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @TC_U32_KEY(i32) #1

declare dso_local i32 @u32_delete_key(%struct.tcf_proto*, %struct.tc_u_knode*) #1

declare dso_local i32 @u32_destroy_hnode(%struct.tcf_proto*, %struct.tc_u_hnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
