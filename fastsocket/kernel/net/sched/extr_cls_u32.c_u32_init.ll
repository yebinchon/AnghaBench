; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_u32.c_u32_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_u32.c_u32_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { %struct.tc_u_common*, %struct.tc_u_hnode*, %struct.TYPE_2__*, i32 }
%struct.tc_u_common = type { %struct.tc_u_hnode*, i32, %struct.TYPE_2__* }
%struct.tc_u_hnode = type { i32, %struct.tc_u_common*, %struct.tc_u_hnode*, i32, i32, i64 }
%struct.TYPE_2__ = type { %struct.tc_u_common* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*)* @u32_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u32_init(%struct.tcf_proto* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tcf_proto*, align 8
  %4 = alloca %struct.tc_u_hnode*, align 8
  %5 = alloca %struct.tc_u_common*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %3, align 8
  %6 = load %struct.tcf_proto*, %struct.tcf_proto** %3, align 8
  %7 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.tc_u_common*, %struct.tc_u_common** %9, align 8
  store %struct.tc_u_common* %10, %struct.tc_u_common** %5, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @kzalloc(i32 40, i32 %11)
  %13 = bitcast i8* %12 to %struct.tc_u_hnode*
  store %struct.tc_u_hnode* %13, %struct.tc_u_hnode** %4, align 8
  %14 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %4, align 8
  %15 = icmp eq %struct.tc_u_hnode* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOBUFS, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %87

19:                                               ; preds = %1
  %20 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %4, align 8
  %21 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %20, i32 0, i32 5
  store i64 0, i64* %21, align 8
  %22 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %4, align 8
  %23 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load %struct.tc_u_common*, %struct.tc_u_common** %5, align 8
  %27 = icmp ne %struct.tc_u_common* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load %struct.tc_u_common*, %struct.tc_u_common** %5, align 8
  %30 = call i32 @gen_new_htid(%struct.tc_u_common* %29)
  br label %32

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31, %28
  %33 = phi i32 [ %30, %28 ], [ -2147483648, %31 ]
  %34 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %4, align 8
  %35 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.tcf_proto*, %struct.tcf_proto** %3, align 8
  %37 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %4, align 8
  %40 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.tc_u_common*, %struct.tc_u_common** %5, align 8
  %42 = icmp eq %struct.tc_u_common* %41, null
  br i1 %42, label %43, label %65

43:                                               ; preds = %32
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i8* @kzalloc(i32 24, i32 %44)
  %46 = bitcast i8* %45 to %struct.tc_u_common*
  store %struct.tc_u_common* %46, %struct.tc_u_common** %5, align 8
  %47 = load %struct.tc_u_common*, %struct.tc_u_common** %5, align 8
  %48 = icmp eq %struct.tc_u_common* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %4, align 8
  %51 = call i32 @kfree(%struct.tc_u_hnode* %50)
  %52 = load i32, i32* @ENOBUFS, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %87

54:                                               ; preds = %43
  %55 = load %struct.tcf_proto*, %struct.tcf_proto** %3, align 8
  %56 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load %struct.tc_u_common*, %struct.tc_u_common** %5, align 8
  %59 = getelementptr inbounds %struct.tc_u_common, %struct.tc_u_common* %58, i32 0, i32 2
  store %struct.TYPE_2__* %57, %struct.TYPE_2__** %59, align 8
  %60 = load %struct.tc_u_common*, %struct.tc_u_common** %5, align 8
  %61 = load %struct.tcf_proto*, %struct.tcf_proto** %3, align 8
  %62 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store %struct.tc_u_common* %60, %struct.tc_u_common** %64, align 8
  br label %65

65:                                               ; preds = %54, %32
  %66 = load %struct.tc_u_common*, %struct.tc_u_common** %5, align 8
  %67 = getelementptr inbounds %struct.tc_u_common, %struct.tc_u_common* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  %70 = load %struct.tc_u_common*, %struct.tc_u_common** %5, align 8
  %71 = getelementptr inbounds %struct.tc_u_common, %struct.tc_u_common* %70, i32 0, i32 0
  %72 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %71, align 8
  %73 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %4, align 8
  %74 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %73, i32 0, i32 2
  store %struct.tc_u_hnode* %72, %struct.tc_u_hnode** %74, align 8
  %75 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %4, align 8
  %76 = load %struct.tc_u_common*, %struct.tc_u_common** %5, align 8
  %77 = getelementptr inbounds %struct.tc_u_common, %struct.tc_u_common* %76, i32 0, i32 0
  store %struct.tc_u_hnode* %75, %struct.tc_u_hnode** %77, align 8
  %78 = load %struct.tc_u_common*, %struct.tc_u_common** %5, align 8
  %79 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %4, align 8
  %80 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %79, i32 0, i32 1
  store %struct.tc_u_common* %78, %struct.tc_u_common** %80, align 8
  %81 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %4, align 8
  %82 = load %struct.tcf_proto*, %struct.tcf_proto** %3, align 8
  %83 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %82, i32 0, i32 1
  store %struct.tc_u_hnode* %81, %struct.tc_u_hnode** %83, align 8
  %84 = load %struct.tc_u_common*, %struct.tc_u_common** %5, align 8
  %85 = load %struct.tcf_proto*, %struct.tcf_proto** %3, align 8
  %86 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %85, i32 0, i32 0
  store %struct.tc_u_common* %84, %struct.tc_u_common** %86, align 8
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %65, %49, %16
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @gen_new_htid(%struct.tc_u_common*) #1

declare dso_local i32 @kfree(%struct.tc_u_hnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
