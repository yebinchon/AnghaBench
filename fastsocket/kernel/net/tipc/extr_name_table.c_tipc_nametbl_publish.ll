; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_name_table.c_tipc_nametbl_publish.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_name_table.c_tipc_nametbl_publish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.publication = type { i32 }

@table = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@tipc_max_publications = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"Publication failed, local publication limit reached (%u)\0A\00", align 1
@TIPC_RESERVED_TYPES = common dso_local global i64 0, align 8
@rsv_publ_ok = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Publication failed, reserved name {%u,%u,%u}\0A\00", align 1
@tipc_nametbl_lock = common dso_local global i32 0, align 4
@tipc_own_addr = common dso_local global i32 0, align 4
@TIPC_NODE_SCOPE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.publication* @tipc_nametbl_publish(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.publication*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.publication*, align 8
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @table, i32 0, i32 0), align 8
  %16 = load i64, i64* @tipc_max_publications, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %6
  %19 = load i64, i64* @tipc_max_publications, align 8
  %20 = call i32 (i8*, i64, ...) @warn(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %19)
  store %struct.publication* null, %struct.publication** %7, align 8
  br label %57

21:                                               ; preds = %6
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @TIPC_RESERVED_TYPES, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = call i32 @atomic_read(i32* @rsv_publ_ok)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call i32 (i8*, i64, ...) @warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %29, i64 %30, i64 %31)
  store %struct.publication* null, %struct.publication** %7, align 8
  br label %57

33:                                               ; preds = %25, %21
  %34 = call i32 @write_lock_bh(i32* @tipc_nametbl_lock)
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @table, i32 0, i32 0), align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @table, i32 0, i32 0), align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load i32, i32* @tipc_own_addr, align 4
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* %13, align 8
  %44 = call %struct.publication* @tipc_nametbl_insert_publ(i64 %37, i64 %38, i64 %39, i64 %40, i32 %41, i64 %42, i64 %43)
  store %struct.publication* %44, %struct.publication** %14, align 8
  %45 = load %struct.publication*, %struct.publication** %14, align 8
  %46 = icmp ne %struct.publication* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %33
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* @TIPC_NODE_SCOPE, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load %struct.publication*, %struct.publication** %14, align 8
  %53 = call i32 @tipc_named_publish(%struct.publication* %52)
  br label %54

54:                                               ; preds = %51, %47, %33
  %55 = call i32 @write_unlock_bh(i32* @tipc_nametbl_lock)
  %56 = load %struct.publication*, %struct.publication** %14, align 8
  store %struct.publication* %56, %struct.publication** %7, align 8
  br label %57

57:                                               ; preds = %54, %28, %18
  %58 = load %struct.publication*, %struct.publication** %7, align 8
  ret %struct.publication* %58
}

declare dso_local i32 @warn(i8*, i64, ...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local %struct.publication* @tipc_nametbl_insert_publ(i64, i64, i64, i64, i32, i64, i64) #1

declare dso_local i32 @tipc_named_publish(%struct.publication*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
