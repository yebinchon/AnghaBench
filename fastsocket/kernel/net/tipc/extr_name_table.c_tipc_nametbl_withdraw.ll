; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_name_table.c_tipc_nametbl_withdraw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_name_table.c_tipc_nametbl_withdraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.publication = type { i64, i32 }

@.str = private unnamed_addr constant [40 x i8] c"tipc_nametbl_withdraw: {%u,%u}, key=%u\0A\00", align 1
@tipc_nametbl_lock = common dso_local global i32 0, align 4
@tipc_own_addr = common dso_local global i32 0, align 4
@table = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@TIPC_NODE_SCOPE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [72 x i8] c"Unable to remove local publication\0A(type=%u, lower=%u, ref=%u, key=%u)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_nametbl_withdraw(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.publication*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call i32 @dbg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12, i32 %13)
  %15 = call i32 @write_lock_bh(i32* @tipc_nametbl_lock)
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @tipc_own_addr, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call %struct.publication* @tipc_nametbl_remove_publ(i32 %16, i32 %17, i32 %18, i32 %19, i32 %20)
  store %struct.publication* %21, %struct.publication** %10, align 8
  %22 = load %struct.publication*, %struct.publication** %10, align 8
  %23 = call i64 @likely(%struct.publication* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @table, i32 0, i32 0), align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @table, i32 0, i32 0), align 4
  %28 = load %struct.publication*, %struct.publication** %10, align 8
  %29 = getelementptr inbounds %struct.publication, %struct.publication* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TIPC_NODE_SCOPE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load %struct.publication*, %struct.publication** %10, align 8
  %35 = call i32 @tipc_named_withdraw(%struct.publication* %34)
  br label %36

36:                                               ; preds = %33, %25
  %37 = call i32 @write_unlock_bh(i32* @tipc_nametbl_lock)
  %38 = load %struct.publication*, %struct.publication** %10, align 8
  %39 = getelementptr inbounds %struct.publication, %struct.publication* %38, i32 0, i32 1
  %40 = call i32 @list_del_init(i32* %39)
  %41 = load %struct.publication*, %struct.publication** %10, align 8
  %42 = call i32 @kfree(%struct.publication* %41)
  store i32 1, i32* %5, align 4
  br label %50

43:                                               ; preds = %4
  %44 = call i32 @write_unlock_bh(i32* @tipc_nametbl_lock)
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @err(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %46, i32 %47, i32 %48)
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %43, %36
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @dbg(i8*, i32, i32, i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local %struct.publication* @tipc_nametbl_remove_publ(i32, i32, i32, i32, i32) #1

declare dso_local i64 @likely(%struct.publication*) #1

declare dso_local i32 @tipc_named_withdraw(%struct.publication*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @kfree(%struct.publication*) #1

declare dso_local i32 @err(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
