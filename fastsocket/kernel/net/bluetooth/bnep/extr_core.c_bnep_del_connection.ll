; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/bnep/extr_core.c_bnep_del_connection.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/bnep/extr_core.c_bnep_del_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnep_conndel_req = type { i32 }
%struct.bnep_session = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@bnep_session_sem = common dso_local global i32 0, align 4
@EUNATCH = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnep_del_connection(%struct.bnep_conndel_req* %0) #0 {
  %2 = alloca %struct.bnep_conndel_req*, align 8
  %3 = alloca %struct.bnep_session*, align 8
  %4 = alloca i32, align 4
  store %struct.bnep_conndel_req* %0, %struct.bnep_conndel_req** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = call i32 @BT_DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @down_read(i32* @bnep_session_sem)
  %7 = load %struct.bnep_conndel_req*, %struct.bnep_conndel_req** %2, align 8
  %8 = getelementptr inbounds %struct.bnep_conndel_req, %struct.bnep_conndel_req* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.bnep_session* @__bnep_get_session(i32 %9)
  store %struct.bnep_session* %10, %struct.bnep_session** %3, align 8
  %11 = load %struct.bnep_session*, %struct.bnep_session** %3, align 8
  %12 = icmp ne %struct.bnep_session* %11, null
  br i1 %12, label %13, label %32

13:                                               ; preds = %1
  %14 = load i32, i32* @EUNATCH, align 4
  %15 = load %struct.bnep_session*, %struct.bnep_session** %3, align 8
  %16 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i32 %14, i32* %20, align 4
  %21 = load %struct.bnep_session*, %struct.bnep_session** %3, align 8
  %22 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %21, i32 0, i32 1
  %23 = call i32 @atomic_inc(i32* %22)
  %24 = load %struct.bnep_session*, %struct.bnep_session** %3, align 8
  %25 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @wake_up_interruptible(i32 %30)
  br label %35

32:                                               ; preds = %1
  %33 = load i32, i32* @ENOENT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %32, %13
  %36 = call i32 @up_read(i32* @bnep_session_sem)
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @BT_DBG(i8*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.bnep_session* @__bnep_get_session(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
