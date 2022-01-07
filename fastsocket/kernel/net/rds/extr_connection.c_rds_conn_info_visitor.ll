; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_connection.c_rds_conn_info_visitor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_connection.c_rds_conn_info_visitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_connection = type { i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.rds_info_connection = type { i64, i32, i32, i32, i32, i32 }

@RDS_IN_XMIT = common dso_local global i32 0, align 4
@SENDING = common dso_local global i32 0, align 4
@RDS_CONN_CONNECTING = common dso_local global i64 0, align 8
@CONNECTING = common dso_local global i32 0, align 4
@RDS_CONN_UP = common dso_local global i64 0, align 8
@CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rds_connection*, i8*)* @rds_conn_info_visitor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rds_conn_info_visitor(%struct.rds_connection* %0, i8* %1) #0 {
  %3 = alloca %struct.rds_connection*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rds_info_connection*, align 8
  store %struct.rds_connection* %0, %struct.rds_connection** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.rds_info_connection*
  store %struct.rds_info_connection* %7, %struct.rds_info_connection** %5, align 8
  %8 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %9 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.rds_info_connection*, %struct.rds_info_connection** %5, align 8
  %12 = getelementptr inbounds %struct.rds_info_connection, %struct.rds_info_connection* %11, i32 0, i32 5
  store i32 %10, i32* %12, align 8
  %13 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %14 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.rds_info_connection*, %struct.rds_info_connection** %5, align 8
  %17 = getelementptr inbounds %struct.rds_info_connection, %struct.rds_info_connection* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 4
  %18 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %19 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.rds_info_connection*, %struct.rds_info_connection** %5, align 8
  %22 = getelementptr inbounds %struct.rds_info_connection, %struct.rds_info_connection* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %24 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.rds_info_connection*, %struct.rds_info_connection** %5, align 8
  %27 = getelementptr inbounds %struct.rds_info_connection, %struct.rds_info_connection* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.rds_info_connection*, %struct.rds_info_connection** %5, align 8
  %29 = getelementptr inbounds %struct.rds_info_connection, %struct.rds_info_connection* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %32 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @strncpy(i32 %30, i32 %35, i32 4)
  %37 = load %struct.rds_info_connection*, %struct.rds_info_connection** %5, align 8
  %38 = getelementptr inbounds %struct.rds_info_connection, %struct.rds_info_connection* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load %struct.rds_info_connection*, %struct.rds_info_connection** %5, align 8
  %40 = getelementptr inbounds %struct.rds_info_connection, %struct.rds_info_connection* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @RDS_IN_XMIT, align 4
  %43 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %44 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %43, i32 0, i32 1
  %45 = call i32 @test_bit(i32 %42, i32* %44)
  %46 = load i32, i32* @SENDING, align 4
  %47 = call i32 @rds_conn_info_set(i64 %41, i32 %45, i32 %46)
  %48 = load %struct.rds_info_connection*, %struct.rds_info_connection** %5, align 8
  %49 = getelementptr inbounds %struct.rds_info_connection, %struct.rds_info_connection* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %52 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %51, i32 0, i32 0
  %53 = call i64 @atomic_read(i32* %52)
  %54 = load i64, i64* @RDS_CONN_CONNECTING, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* @CONNECTING, align 4
  %58 = call i32 @rds_conn_info_set(i64 %50, i32 %56, i32 %57)
  %59 = load %struct.rds_info_connection*, %struct.rds_info_connection** %5, align 8
  %60 = getelementptr inbounds %struct.rds_info_connection, %struct.rds_info_connection* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %63 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %62, i32 0, i32 0
  %64 = call i64 @atomic_read(i32* %63)
  %65 = load i64, i64* @RDS_CONN_UP, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = load i32, i32* @CONNECTED, align 4
  %69 = call i32 @rds_conn_info_set(i64 %61, i32 %67, i32 %68)
  ret i32 1
}

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @rds_conn_info_set(i64, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
