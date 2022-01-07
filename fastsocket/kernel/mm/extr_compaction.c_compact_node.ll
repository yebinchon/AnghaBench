; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_compaction.c_compact_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_compaction.c_compact_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compact_control = type { i32, i32, i32, i32, %struct.zone*, i32, i32 }
%struct.zone = type { i32 }
%struct.TYPE_3__ = type { %struct.zone* }

@nr_node_ids = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAX_NR_ZONES = common dso_local global i32 0, align 4
@__const.compact_node.cc = private unnamed_addr constant %struct.compact_control { i32 -1, i32 1, i32 0, i32 0, %struct.zone* null, i32 0, i32 0 }, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @compact_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compact_node(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.zone*, align 8
  %7 = alloca %struct.compact_control, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @nr_node_ids, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @node_online(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14, %10, %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %68

21:                                               ; preds = %14
  %22 = load i32, i32* %3, align 4
  %23 = call %struct.TYPE_3__* @NODE_DATA(i32 %22)
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %5, align 8
  %24 = call i32 (...) @lru_add_drain_all()
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %64, %21
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @MAX_NR_ZONES, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %67

29:                                               ; preds = %25
  %30 = bitcast %struct.compact_control* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 bitcast (%struct.compact_control* @__const.compact_node.cc to i8*), i64 32, i1 false)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %struct.zone*, %struct.zone** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.zone, %struct.zone* %33, i64 %35
  store %struct.zone* %36, %struct.zone** %6, align 8
  %37 = load %struct.zone*, %struct.zone** %6, align 8
  %38 = call i32 @populated_zone(%struct.zone* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %29
  br label %64

41:                                               ; preds = %29
  %42 = load %struct.zone*, %struct.zone** %6, align 8
  %43 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %7, i32 0, i32 4
  store %struct.zone* %42, %struct.zone** %43, align 8
  %44 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %7, i32 0, i32 3
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %7, i32 0, i32 2
  %47 = call i32 @INIT_LIST_HEAD(i32* %46)
  %48 = load %struct.zone*, %struct.zone** %6, align 8
  %49 = call i32 @__reset_isolation_suitable(%struct.zone* %48)
  %50 = load %struct.zone*, %struct.zone** %6, align 8
  %51 = call i32 @compact_zone(%struct.zone* %50, %struct.compact_control* %7)
  %52 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %7, i32 0, i32 3
  %53 = call i32 @list_empty(i32* %52)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i32 @VM_BUG_ON(i32 %56)
  %58 = getelementptr inbounds %struct.compact_control, %struct.compact_control* %7, i32 0, i32 2
  %59 = call i32 @list_empty(i32* %58)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i32 @VM_BUG_ON(i32 %62)
  br label %64

64:                                               ; preds = %41, %40
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %25

67:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %18
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @node_online(i32) #1

declare dso_local %struct.TYPE_3__* @NODE_DATA(i32) #1

declare dso_local i32 @lru_add_drain_all(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @populated_zone(%struct.zone*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @__reset_isolation_suitable(%struct.zone*) #1

declare dso_local i32 @compact_zone(%struct.zone*, %struct.compact_control*) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
