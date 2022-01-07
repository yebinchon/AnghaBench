; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lowcomms.c___nodeid2con.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lowcomms.c___nodeid2con.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@con_cache = common dso_local global i32 0, align 4
@connection_hash = common dso_local global i32* null, align 8
@process_send_sockets = common dso_local global i32 0, align 4
@process_recv_sockets = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.connection* (i32, i32)* @__nodeid2con to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.connection* @__nodeid2con(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.connection*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.connection*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.connection* null, %struct.connection** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.connection* @__find_con(i32 %9)
  store %struct.connection* %10, %struct.connection** %6, align 8
  %11 = load %struct.connection*, %struct.connection** %6, align 8
  %12 = icmp ne %struct.connection* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13, %2
  %17 = load %struct.connection*, %struct.connection** %6, align 8
  store %struct.connection* %17, %struct.connection** %3, align 8
  br label %79

18:                                               ; preds = %13
  %19 = load i32, i32* @con_cache, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.connection* @kmem_cache_zalloc(i32 %19, i32 %20)
  store %struct.connection* %21, %struct.connection** %6, align 8
  %22 = load %struct.connection*, %struct.connection** %6, align 8
  %23 = icmp ne %struct.connection* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  store %struct.connection* null, %struct.connection** %3, align 8
  br label %79

25:                                               ; preds = %18
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @nodeid_hash(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load %struct.connection*, %struct.connection** %6, align 8
  %29 = getelementptr inbounds %struct.connection, %struct.connection* %28, i32 0, i32 8
  %30 = load i32*, i32** @connection_hash, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = call i32 @hlist_add_head(i32* %29, i32* %33)
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.connection*, %struct.connection** %6, align 8
  %37 = getelementptr inbounds %struct.connection, %struct.connection* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.connection*, %struct.connection** %6, align 8
  %39 = getelementptr inbounds %struct.connection, %struct.connection* %38, i32 0, i32 7
  %40 = call i32 @mutex_init(i32* %39)
  %41 = load %struct.connection*, %struct.connection** %6, align 8
  %42 = getelementptr inbounds %struct.connection, %struct.connection* %41, i32 0, i32 6
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = load %struct.connection*, %struct.connection** %6, align 8
  %45 = getelementptr inbounds %struct.connection, %struct.connection* %44, i32 0, i32 5
  %46 = call i32 @spin_lock_init(i32* %45)
  %47 = load %struct.connection*, %struct.connection** %6, align 8
  %48 = getelementptr inbounds %struct.connection, %struct.connection* %47, i32 0, i32 4
  %49 = load i32, i32* @process_send_sockets, align 4
  %50 = call i32 @INIT_WORK(i32* %48, i32 %49)
  %51 = load %struct.connection*, %struct.connection** %6, align 8
  %52 = getelementptr inbounds %struct.connection, %struct.connection* %51, i32 0, i32 3
  %53 = load i32, i32* @process_recv_sockets, align 4
  %54 = call i32 @INIT_WORK(i32* %52, i32 %53)
  %55 = load %struct.connection*, %struct.connection** %6, align 8
  %56 = getelementptr inbounds %struct.connection, %struct.connection* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %25
  %60 = call %struct.connection* @__find_con(i32 0)
  store %struct.connection* %60, %struct.connection** %8, align 8
  %61 = load %struct.connection*, %struct.connection** %8, align 8
  %62 = getelementptr inbounds %struct.connection, %struct.connection* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.connection*, %struct.connection** %6, align 8
  %65 = getelementptr inbounds %struct.connection, %struct.connection* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load %struct.connection*, %struct.connection** %6, align 8
  %67 = getelementptr inbounds %struct.connection, %struct.connection* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %59
  %71 = load %struct.connection*, %struct.connection** %8, align 8
  %72 = getelementptr inbounds %struct.connection, %struct.connection* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.connection*, %struct.connection** %6, align 8
  %75 = getelementptr inbounds %struct.connection, %struct.connection* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %70, %59
  br label %77

77:                                               ; preds = %76, %25
  %78 = load %struct.connection*, %struct.connection** %6, align 8
  store %struct.connection* %78, %struct.connection** %3, align 8
  br label %79

79:                                               ; preds = %77, %24, %16
  %80 = load %struct.connection*, %struct.connection** %3, align 8
  ret %struct.connection* %80
}

declare dso_local %struct.connection* @__find_con(i32) #1

declare dso_local %struct.connection* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @nodeid_hash(i32) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
