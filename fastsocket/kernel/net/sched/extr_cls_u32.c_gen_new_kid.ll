; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_u32.c_gen_new_kid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_u32.c_gen_new_kid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_u_hnode = type { %struct.tc_u_knode** }
%struct.tc_u_knode = type { i32, %struct.tc_u_knode* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tc_u_hnode*, i32)* @gen_new_kid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_new_kid(%struct.tc_u_hnode* %0, i32 %1) #0 {
  %3 = alloca %struct.tc_u_hnode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tc_u_knode*, align 8
  %6 = alloca i32, align 4
  store %struct.tc_u_hnode* %0, %struct.tc_u_hnode** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 2047, i32* %6, align 4
  %7 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %3, align 8
  %8 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %7, i32 0, i32 0
  %9 = load %struct.tc_u_knode**, %struct.tc_u_knode*** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @TC_U32_HASH(i32 %10)
  %12 = getelementptr inbounds %struct.tc_u_knode*, %struct.tc_u_knode** %9, i64 %11
  %13 = load %struct.tc_u_knode*, %struct.tc_u_knode** %12, align 8
  store %struct.tc_u_knode* %13, %struct.tc_u_knode** %5, align 8
  br label %14

14:                                               ; preds = %30, %2
  %15 = load %struct.tc_u_knode*, %struct.tc_u_knode** %5, align 8
  %16 = icmp ne %struct.tc_u_knode* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %14
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.tc_u_knode*, %struct.tc_u_knode** %5, align 8
  %20 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @TC_U32_NODE(i32 %21)
  %23 = icmp ult i32 %18, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load %struct.tc_u_knode*, %struct.tc_u_knode** %5, align 8
  %26 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @TC_U32_NODE(i32 %27)
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %24, %17
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.tc_u_knode*, %struct.tc_u_knode** %5, align 8
  %32 = getelementptr inbounds %struct.tc_u_knode, %struct.tc_u_knode* %31, i32 0, i32 1
  %33 = load %struct.tc_u_knode*, %struct.tc_u_knode** %32, align 8
  store %struct.tc_u_knode* %33, %struct.tc_u_knode** %5, align 8
  br label %14

34:                                               ; preds = %14
  %35 = load i32, i32* %6, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ugt i32 %38, 4095
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %6, align 4
  br label %43

43:                                               ; preds = %41, %40
  %44 = phi i32 [ 4095, %40 ], [ %42, %41 ]
  %45 = or i32 %37, %44
  ret i32 %45
}

declare dso_local i64 @TC_U32_HASH(i32) #1

declare dso_local i32 @TC_U32_NODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
