; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_link_reset_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_link_reset_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_node = type { i64*, i32 }

@tipc_net_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Resetting all links to %s\0A\00", align 1
@MAX_BEARERS = common dso_local global i64 0, align 8
@TIPC_OUTPUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Resetting link\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @link_reset_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_reset_all(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.tipc_node*, align 8
  %4 = alloca [16 x i8], align 16
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = call i32 @read_lock_bh(i32* @tipc_net_lock)
  %7 = load i64, i64* %2, align 8
  %8 = call %struct.tipc_node* @tipc_node_find(i64 %7)
  store %struct.tipc_node* %8, %struct.tipc_node** %3, align 8
  %9 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %10 = icmp ne %struct.tipc_node* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = call i32 @read_unlock_bh(i32* @tipc_net_lock)
  br label %58

13:                                               ; preds = %1
  %14 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %15 = call i32 @tipc_node_lock(%struct.tipc_node* %14)
  %16 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %17 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %18 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @addr_string_fill(i8* %16, i32 %19)
  %21 = call i32 @warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i64 0, i64* %5, align 8
  br label %22

22:                                               ; preds = %51, %13
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @MAX_BEARERS, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %22
  %27 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %28 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %26
  %35 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %36 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @TIPC_OUTPUT, align 4
  %42 = call i32 @link_print(i64 %40, i32 %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %44 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %5, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @tipc_link_reset(i64 %48)
  br label %50

50:                                               ; preds = %34, %26
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %5, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %5, align 8
  br label %22

54:                                               ; preds = %22
  %55 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %56 = call i32 @tipc_node_unlock(%struct.tipc_node* %55)
  %57 = call i32 @read_unlock_bh(i32* @tipc_net_lock)
  br label %58

58:                                               ; preds = %54, %11
  ret void
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local %struct.tipc_node* @tipc_node_find(i64) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @tipc_node_lock(%struct.tipc_node*) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i32 @addr_string_fill(i8*, i32) #1

declare dso_local i32 @link_print(i64, i32, i8*) #1

declare dso_local i32 @tipc_link_reset(i64) #1

declare dso_local i32 @tipc_node_unlock(%struct.tipc_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
