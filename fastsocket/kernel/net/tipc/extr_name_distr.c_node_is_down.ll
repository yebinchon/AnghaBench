; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_name_distr.c_node_is_down.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_name_distr.c_node_is_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.publication = type { i32, i32, i32, i32, i32, i32 }

@tipc_nametbl_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"node_is_down: withdrawing %u, %u, %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [94 x i8] c"Unable to remove publication from failed node\0A(type=%u, lower=%u, node=0x%x, ref=%u, key=%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.publication*)* @node_is_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @node_is_down(%struct.publication* %0) #0 {
  %2 = alloca %struct.publication*, align 8
  %3 = alloca %struct.publication*, align 8
  store %struct.publication* %0, %struct.publication** %2, align 8
  %4 = call i32 @write_lock_bh(i32* @tipc_nametbl_lock)
  %5 = load %struct.publication*, %struct.publication** %2, align 8
  %6 = getelementptr inbounds %struct.publication, %struct.publication* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.publication*, %struct.publication** %2, align 8
  %9 = getelementptr inbounds %struct.publication, %struct.publication* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.publication*, %struct.publication** %2, align 8
  %12 = getelementptr inbounds %struct.publication, %struct.publication* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %10, i32 %13)
  %15 = load %struct.publication*, %struct.publication** %2, align 8
  %16 = getelementptr inbounds %struct.publication, %struct.publication* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1222345
  store i32 %18, i32* %16, align 4
  %19 = load %struct.publication*, %struct.publication** %2, align 8
  %20 = getelementptr inbounds %struct.publication, %struct.publication* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.publication*, %struct.publication** %2, align 8
  %23 = getelementptr inbounds %struct.publication, %struct.publication* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.publication*, %struct.publication** %2, align 8
  %26 = getelementptr inbounds %struct.publication, %struct.publication* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.publication*, %struct.publication** %2, align 8
  %29 = getelementptr inbounds %struct.publication, %struct.publication* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.publication*, %struct.publication** %2, align 8
  %32 = getelementptr inbounds %struct.publication, %struct.publication* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.publication* @tipc_nametbl_remove_publ(i32 %21, i32 %24, i32 %27, i32 %30, i32 %33)
  store %struct.publication* %34, %struct.publication** %3, align 8
  %35 = call i32 @write_unlock_bh(i32* @tipc_nametbl_lock)
  %36 = load %struct.publication*, %struct.publication** %3, align 8
  %37 = load %struct.publication*, %struct.publication** %2, align 8
  %38 = icmp ne %struct.publication* %36, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %1
  %40 = load %struct.publication*, %struct.publication** %2, align 8
  %41 = getelementptr inbounds %struct.publication, %struct.publication* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.publication*, %struct.publication** %2, align 8
  %44 = getelementptr inbounds %struct.publication, %struct.publication* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.publication*, %struct.publication** %2, align 8
  %47 = getelementptr inbounds %struct.publication, %struct.publication* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.publication*, %struct.publication** %2, align 8
  %50 = getelementptr inbounds %struct.publication, %struct.publication* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.publication*, %struct.publication** %2, align 8
  %53 = getelementptr inbounds %struct.publication, %struct.publication* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @err(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %45, i32 %48, i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %39, %1
  %57 = load %struct.publication*, %struct.publication** %3, align 8
  %58 = icmp ne %struct.publication* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load %struct.publication*, %struct.publication** %3, align 8
  %61 = call i32 @kfree(%struct.publication* %60)
  br label %62

62:                                               ; preds = %59, %56
  ret void
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @dbg(i8*, i32, i32, i32) #1

declare dso_local %struct.publication* @tipc_nametbl_remove_publ(i32, i32, i32, i32, i32) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @err(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.publication*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
