; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lowcomms.c_dlm_lowcomms_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lowcomms.c_dlm_lowcomms_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32, i32 }
%struct.dlm_node_addr = type { i64, %struct.dlm_node_addr**, i32 }

@.str = private unnamed_addr constant [30 x i8] c"closing connection to node %d\00", align 1
@CF_CONNECT_PENDING = common dso_local global i32 0, align 4
@CF_WRITE_PENDING = common dso_local global i32 0, align 4
@CF_CLOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"canceled swork for node %d\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"canceled rwork for node %d\00", align 1
@dlm_node_addrs_spin = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_lowcomms_close(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca %struct.dlm_node_addr*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @log_print(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.connection* @nodeid2con(i32 %7, i32 0)
  store %struct.connection* %8, %struct.connection** %3, align 8
  %9 = load %struct.connection*, %struct.connection** %3, align 8
  %10 = icmp ne %struct.connection* %9, null
  br i1 %10, label %11, label %44

11:                                               ; preds = %1
  %12 = load i32, i32* @CF_CONNECT_PENDING, align 4
  %13 = load %struct.connection*, %struct.connection** %3, align 8
  %14 = getelementptr inbounds %struct.connection, %struct.connection* %13, i32 0, i32 2
  %15 = call i32 @clear_bit(i32 %12, i32* %14)
  %16 = load i32, i32* @CF_WRITE_PENDING, align 4
  %17 = load %struct.connection*, %struct.connection** %3, align 8
  %18 = getelementptr inbounds %struct.connection, %struct.connection* %17, i32 0, i32 2
  %19 = call i32 @clear_bit(i32 %16, i32* %18)
  %20 = load i32, i32* @CF_CLOSE, align 4
  %21 = load %struct.connection*, %struct.connection** %3, align 8
  %22 = getelementptr inbounds %struct.connection, %struct.connection* %21, i32 0, i32 2
  %23 = call i32 @set_bit(i32 %20, i32* %22)
  %24 = load %struct.connection*, %struct.connection** %3, align 8
  %25 = getelementptr inbounds %struct.connection, %struct.connection* %24, i32 0, i32 1
  %26 = call i64 @cancel_work_sync(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %11
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @log_print(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %28, %11
  %32 = load %struct.connection*, %struct.connection** %3, align 8
  %33 = getelementptr inbounds %struct.connection, %struct.connection* %32, i32 0, i32 0
  %34 = call i64 @cancel_work_sync(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @log_print(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %36, %31
  %40 = load %struct.connection*, %struct.connection** %3, align 8
  %41 = call i32 @clean_one_writequeue(%struct.connection* %40)
  %42 = load %struct.connection*, %struct.connection** %3, align 8
  %43 = call i32 @close_connection(%struct.connection* %42, i32 1)
  br label %44

44:                                               ; preds = %39, %1
  %45 = call i32 @spin_lock(i32* @dlm_node_addrs_spin)
  %46 = load i32, i32* %2, align 4
  %47 = call %struct.dlm_node_addr* @find_node_addr(i32 %46)
  store %struct.dlm_node_addr* %47, %struct.dlm_node_addr** %4, align 8
  %48 = load %struct.dlm_node_addr*, %struct.dlm_node_addr** %4, align 8
  %49 = icmp ne %struct.dlm_node_addr* %48, null
  br i1 %49, label %50, label %73

50:                                               ; preds = %44
  %51 = load %struct.dlm_node_addr*, %struct.dlm_node_addr** %4, align 8
  %52 = getelementptr inbounds %struct.dlm_node_addr, %struct.dlm_node_addr* %51, i32 0, i32 2
  %53 = call i32 @list_del(i32* %52)
  br label %54

54:                                               ; preds = %60, %50
  %55 = load %struct.dlm_node_addr*, %struct.dlm_node_addr** %4, align 8
  %56 = getelementptr inbounds %struct.dlm_node_addr, %struct.dlm_node_addr* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %57, -1
  store i64 %58, i64* %56, align 8
  %59 = icmp ne i64 %57, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %54
  %61 = load %struct.dlm_node_addr*, %struct.dlm_node_addr** %4, align 8
  %62 = getelementptr inbounds %struct.dlm_node_addr, %struct.dlm_node_addr* %61, i32 0, i32 1
  %63 = load %struct.dlm_node_addr**, %struct.dlm_node_addr*** %62, align 8
  %64 = load %struct.dlm_node_addr*, %struct.dlm_node_addr** %4, align 8
  %65 = getelementptr inbounds %struct.dlm_node_addr, %struct.dlm_node_addr* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.dlm_node_addr*, %struct.dlm_node_addr** %63, i64 %66
  %68 = load %struct.dlm_node_addr*, %struct.dlm_node_addr** %67, align 8
  %69 = call i32 @kfree(%struct.dlm_node_addr* %68)
  br label %54

70:                                               ; preds = %54
  %71 = load %struct.dlm_node_addr*, %struct.dlm_node_addr** %4, align 8
  %72 = call i32 @kfree(%struct.dlm_node_addr* %71)
  br label %73

73:                                               ; preds = %70, %44
  %74 = call i32 @spin_unlock(i32* @dlm_node_addrs_spin)
  ret i32 0
}

declare dso_local i32 @log_print(i8*, i32) #1

declare dso_local %struct.connection* @nodeid2con(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @cancel_work_sync(i32*) #1

declare dso_local i32 @clean_one_writequeue(%struct.connection*) #1

declare dso_local i32 @close_connection(%struct.connection*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.dlm_node_addr* @find_node_addr(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.dlm_node_addr*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
