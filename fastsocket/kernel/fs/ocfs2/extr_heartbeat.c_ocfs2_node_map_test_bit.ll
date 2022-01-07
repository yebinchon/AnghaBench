; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_heartbeat.c_ocfs2_node_map_test_bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_heartbeat.c_ocfs2_node_map_test_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_node_map = type { i32, i32 }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"bit=%d map->num_nodes=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_node_map_test_bit(%struct.ocfs2_super* %0, %struct.ocfs2_node_map* %1, i32 %2) #0 {
  %4 = alloca %struct.ocfs2_super*, align 8
  %5 = alloca %struct.ocfs2_node_map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %4, align 8
  store %struct.ocfs2_node_map* %1, %struct.ocfs2_node_map** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.ocfs2_node_map*, %struct.ocfs2_node_map** %5, align 8
  %10 = getelementptr inbounds %struct.ocfs2_node_map, %struct.ocfs2_node_map* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp sge i32 %8, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load i32, i32* @ML_ERROR, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.ocfs2_node_map*, %struct.ocfs2_node_map** %5, align 8
  %17 = getelementptr inbounds %struct.ocfs2_node_map, %struct.ocfs2_node_map* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @mlog(i32 %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  %20 = call i32 (...) @BUG()
  br label %21

21:                                               ; preds = %13, %3
  %22 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %23 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %22, i32 0, i32 0
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.ocfs2_node_map*, %struct.ocfs2_node_map** %5, align 8
  %27 = getelementptr inbounds %struct.ocfs2_node_map, %struct.ocfs2_node_map* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @test_bit(i32 %25, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %31 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %30, i32 0, i32 0
  %32 = call i32 @spin_unlock(i32* %31)
  %33 = load i32, i32* %7, align 4
  ret i32 %33
}

declare dso_local i32 @mlog(i32, i8*, i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
