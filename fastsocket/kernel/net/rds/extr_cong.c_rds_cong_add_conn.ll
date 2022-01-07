; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_cong.c_rds_cong_add_conn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_cong.c_rds_cong_add_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_connection = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"conn %p now on map %p\0A\00", align 1
@rds_cong_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_cong_add_conn(%struct.rds_connection* %0) #0 {
  %2 = alloca %struct.rds_connection*, align 8
  %3 = alloca i64, align 8
  store %struct.rds_connection* %0, %struct.rds_connection** %2, align 8
  %4 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %5 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %6 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = call i32 @rdsdebug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.rds_connection* %4, %struct.TYPE_2__* %7)
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @spin_lock_irqsave(i32* @rds_cong_lock, i64 %9)
  %11 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %12 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %11, i32 0, i32 1
  %13 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %14 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @list_add_tail(i32* %12, i32* %16)
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @spin_unlock_irqrestore(i32* @rds_cong_lock, i64 %18)
  ret void
}

declare dso_local i32 @rdsdebug(i8*, %struct.rds_connection*, %struct.TYPE_2__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
