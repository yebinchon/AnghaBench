; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_name_table.c_tipc_nametbl_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_name_table.c_tipc_nametbl_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@table = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@tipc_nametbl_lock = common dso_local global i32 0, align 4
@tipc_nametbl_size = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"tipc_nametbl_stop(): hash chain %u is non-null\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_nametbl_stop() #0 {
  %1 = alloca i64, align 8
  %2 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @table, i32 0, i32 0), align 8
  %3 = icmp ne i32* %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %28

5:                                                ; preds = %0
  %6 = call i32 @write_lock_bh(i32* @tipc_nametbl_lock)
  store i64 0, i64* %1, align 8
  br label %7

7:                                                ; preds = %21, %5
  %8 = load i64, i64* %1, align 8
  %9 = load i64, i64* @tipc_nametbl_size, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %7
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @table, i32 0, i32 0), align 8
  %13 = load i64, i64* %1, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = call i32 @hlist_empty(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = load i64, i64* %1, align 8
  %19 = call i32 @err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %18)
  br label %20

20:                                               ; preds = %17, %11
  br label %21

21:                                               ; preds = %20
  %22 = load i64, i64* %1, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %1, align 8
  br label %7

24:                                               ; preds = %7
  %25 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @table, i32 0, i32 0), align 8
  %26 = call i32 @kfree(i32* %25)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @table, i32 0, i32 0), align 8
  %27 = call i32 @write_unlock_bh(i32* @tipc_nametbl_lock)
  br label %28

28:                                               ; preds = %24, %4
  ret void
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @hlist_empty(i32*) #1

declare dso_local i32 @err(i8*, i64) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
