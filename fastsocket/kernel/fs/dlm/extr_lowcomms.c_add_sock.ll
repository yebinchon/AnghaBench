; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lowcomms.c_add_sock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lowcomms.c_add_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.connection*, i32, i32, i32 }
%struct.connection = type { %struct.socket* }

@lowcomms_data_ready = common dso_local global i32 0, align 4
@lowcomms_write_space = common dso_local global i32 0, align 4
@lowcomms_state_change = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.connection*)* @add_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_sock(%struct.socket* %0, %struct.connection* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.connection*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.connection* %1, %struct.connection** %4, align 8
  %5 = load %struct.socket*, %struct.socket** %3, align 8
  %6 = load %struct.connection*, %struct.connection** %4, align 8
  %7 = getelementptr inbounds %struct.connection, %struct.connection* %6, i32 0, i32 0
  store %struct.socket* %5, %struct.socket** %7, align 8
  %8 = load i32, i32* @lowcomms_data_ready, align 4
  %9 = load %struct.connection*, %struct.connection** %4, align 8
  %10 = getelementptr inbounds %struct.connection, %struct.connection* %9, i32 0, i32 0
  %11 = load %struct.socket*, %struct.socket** %10, align 8
  %12 = getelementptr inbounds %struct.socket, %struct.socket* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 4
  store i32 %8, i32* %14, align 8
  %15 = load i32, i32* @lowcomms_write_space, align 4
  %16 = load %struct.connection*, %struct.connection** %4, align 8
  %17 = getelementptr inbounds %struct.connection, %struct.connection* %16, i32 0, i32 0
  %18 = load %struct.socket*, %struct.socket** %17, align 8
  %19 = getelementptr inbounds %struct.socket, %struct.socket* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  store i32 %15, i32* %21, align 4
  %22 = load i32, i32* @lowcomms_state_change, align 4
  %23 = load %struct.connection*, %struct.connection** %4, align 8
  %24 = getelementptr inbounds %struct.connection, %struct.connection* %23, i32 0, i32 0
  %25 = load %struct.socket*, %struct.socket** %24, align 8
  %26 = getelementptr inbounds %struct.socket, %struct.socket* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i32 %22, i32* %28, align 8
  %29 = load %struct.connection*, %struct.connection** %4, align 8
  %30 = load %struct.connection*, %struct.connection** %4, align 8
  %31 = getelementptr inbounds %struct.connection, %struct.connection* %30, i32 0, i32 0
  %32 = load %struct.socket*, %struct.socket** %31, align 8
  %33 = getelementptr inbounds %struct.socket, %struct.socket* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store %struct.connection* %29, %struct.connection** %35, align 8
  %36 = load i32, i32* @GFP_NOFS, align 4
  %37 = load %struct.connection*, %struct.connection** %4, align 8
  %38 = getelementptr inbounds %struct.connection, %struct.connection* %37, i32 0, i32 0
  %39 = load %struct.socket*, %struct.socket** %38, align 8
  %40 = getelementptr inbounds %struct.socket, %struct.socket* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %36, i32* %42, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
