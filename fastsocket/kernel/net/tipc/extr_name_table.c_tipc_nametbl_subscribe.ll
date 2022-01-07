; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_name_table.c_tipc_nametbl_subscribe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_name_table.c_tipc_nametbl_subscribe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.subscription = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.name_seq = type { i32 }

@tipc_nametbl_lock = common dso_local global i32 0, align 4
@table = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [48 x i8] c"tipc_nametbl_subscribe:found %p for {%u,%u,%u}\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Failed to create subscription for {%u,%u,%u}\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_nametbl_subscribe(%struct.subscription* %0) #0 {
  %2 = alloca %struct.subscription*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.name_seq*, align 8
  store %struct.subscription* %0, %struct.subscription** %2, align 8
  %5 = load %struct.subscription*, %struct.subscription** %2, align 8
  %6 = getelementptr inbounds %struct.subscription, %struct.subscription* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = call i32 @write_lock_bh(i32* @tipc_nametbl_lock)
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.name_seq* @nametbl_find_seq(i32 %10)
  store %struct.name_seq* %11, %struct.name_seq** %4, align 8
  %12 = load %struct.name_seq*, %struct.name_seq** %4, align 8
  %13 = icmp ne %struct.name_seq* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @table, i32 0, i32 0), align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i64 @hash(i32 %17)
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = call %struct.name_seq* @tipc_nameseq_create(i32 %15, i32* %19)
  store %struct.name_seq* %20, %struct.name_seq** %4, align 8
  br label %21

21:                                               ; preds = %14, %1
  %22 = load %struct.name_seq*, %struct.name_seq** %4, align 8
  %23 = icmp ne %struct.name_seq* %22, null
  br i1 %23, label %24, label %45

24:                                               ; preds = %21
  %25 = load %struct.name_seq*, %struct.name_seq** %4, align 8
  %26 = getelementptr inbounds %struct.name_seq, %struct.name_seq* %25, i32 0, i32 0
  %27 = call i32 @spin_lock_bh(i32* %26)
  %28 = load %struct.name_seq*, %struct.name_seq** %4, align 8
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.subscription*, %struct.subscription** %2, align 8
  %31 = getelementptr inbounds %struct.subscription, %struct.subscription* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.subscription*, %struct.subscription** %2, align 8
  %35 = getelementptr inbounds %struct.subscription, %struct.subscription* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dbg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), %struct.name_seq* %28, i32 %29, i32 %33, i32 %37)
  %39 = load %struct.name_seq*, %struct.name_seq** %4, align 8
  %40 = load %struct.subscription*, %struct.subscription** %2, align 8
  %41 = call i32 @tipc_nameseq_subscribe(%struct.name_seq* %39, %struct.subscription* %40)
  %42 = load %struct.name_seq*, %struct.name_seq** %4, align 8
  %43 = getelementptr inbounds %struct.name_seq, %struct.name_seq* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock_bh(i32* %43)
  br label %59

45:                                               ; preds = %21
  %46 = load %struct.subscription*, %struct.subscription** %2, align 8
  %47 = getelementptr inbounds %struct.subscription, %struct.subscription* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.subscription*, %struct.subscription** %2, align 8
  %51 = getelementptr inbounds %struct.subscription, %struct.subscription* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.subscription*, %struct.subscription** %2, align 8
  %55 = getelementptr inbounds %struct.subscription, %struct.subscription* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %53, i32 %57)
  br label %59

59:                                               ; preds = %45, %24
  %60 = call i32 @write_unlock_bh(i32* @tipc_nametbl_lock)
  ret void
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local %struct.name_seq* @nametbl_find_seq(i32) #1

declare dso_local %struct.name_seq* @tipc_nameseq_create(i32, i32*) #1

declare dso_local i64 @hash(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @dbg(i8*, %struct.name_seq*, i32, i32, i32) #1

declare dso_local i32 @tipc_nameseq_subscribe(%struct.name_seq*, %struct.subscription*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @warn(i8*, i32, i32, i32) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
