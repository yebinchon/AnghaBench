; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_tcp_connect.c_rds_tcp_state_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_tcp_connect.c_rds_tcp_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { {}*, i32, i32, %struct.rds_connection* }
%struct.rds_connection = type { %struct.rds_tcp_connection* }
%struct.rds_tcp_connection = type { {}*, i32 }

@.str = private unnamed_addr constant [28 x i8] c"sock %p state_change to %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_tcp_state_change(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca void (%struct.sock*)*, align 8
  %4 = alloca %struct.rds_connection*, align 8
  %5 = alloca %struct.rds_tcp_connection*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = getelementptr inbounds %struct.sock, %struct.sock* %6, i32 0, i32 2
  %8 = call i32 @read_lock(i32* %7)
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 3
  %11 = load %struct.rds_connection*, %struct.rds_connection** %10, align 8
  store %struct.rds_connection* %11, %struct.rds_connection** %4, align 8
  %12 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %13 = icmp ne %struct.rds_connection* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.sock*, %struct.sock** %2, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to void (%struct.sock*)**
  %18 = load void (%struct.sock*)*, void (%struct.sock*)** %17, align 8
  store void (%struct.sock*)* %18, void (%struct.sock*)** %3, align 8
  br label %46

19:                                               ; preds = %1
  %20 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %21 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %20, i32 0, i32 0
  %22 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %21, align 8
  store %struct.rds_tcp_connection* %22, %struct.rds_tcp_connection** %5, align 8
  %23 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %5, align 8
  %24 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %23, i32 0, i32 0
  %25 = bitcast {}** %24 to void (%struct.sock*)**
  %26 = load void (%struct.sock*)*, void (%struct.sock*)** %25, align 8
  store void (%struct.sock*)* %26, void (%struct.sock*)** %3, align 8
  %27 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %5, align 8
  %28 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.sock*, %struct.sock** %2, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @rdsdebug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32)
  %34 = load %struct.sock*, %struct.sock** %2, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %44 [
    i32 128, label %37
    i32 129, label %37
    i32 130, label %38
    i32 131, label %41
  ]

37:                                               ; preds = %19, %19
  br label %45

38:                                               ; preds = %19
  %39 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %40 = call i32 @rds_connect_complete(%struct.rds_connection* %39)
  br label %45

41:                                               ; preds = %19
  %42 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %43 = call i32 @rds_conn_drop(%struct.rds_connection* %42)
  br label %44

44:                                               ; preds = %19, %41
  br label %45

45:                                               ; preds = %44, %38, %37
  br label %46

46:                                               ; preds = %45, %14
  %47 = load %struct.sock*, %struct.sock** %2, align 8
  %48 = getelementptr inbounds %struct.sock, %struct.sock* %47, i32 0, i32 2
  %49 = call i32 @read_unlock(i32* %48)
  %50 = load void (%struct.sock*)*, void (%struct.sock*)** %3, align 8
  %51 = load %struct.sock*, %struct.sock** %2, align 8
  call void %50(%struct.sock* %51)
  ret void
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @rdsdebug(i8*, i32, i32) #1

declare dso_local i32 @rds_connect_complete(%struct.rds_connection*) #1

declare dso_local i32 @rds_conn_drop(%struct.rds_connection*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
