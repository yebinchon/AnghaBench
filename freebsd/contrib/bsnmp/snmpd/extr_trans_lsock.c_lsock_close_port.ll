; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_lsock.c_lsock_close_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_lsock.c_lsock_close_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tport = type { i32 }
%struct.lsock_port = type { i64, %struct.lsock_port*, i32, i32* }
%struct.lsock_peer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tport*)* @lsock_close_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lsock_close_port(%struct.tport* %0) #0 {
  %2 = alloca %struct.tport*, align 8
  %3 = alloca %struct.lsock_port*, align 8
  %4 = alloca %struct.lsock_peer*, align 8
  store %struct.tport* %0, %struct.tport** %2, align 8
  %5 = load %struct.tport*, %struct.tport** %2, align 8
  %6 = bitcast %struct.tport* %5 to %struct.lsock_port*
  store %struct.lsock_port* %6, %struct.lsock_port** %3, align 8
  %7 = load %struct.lsock_port*, %struct.lsock_port** %3, align 8
  %8 = getelementptr inbounds %struct.lsock_port, %struct.lsock_port* %7, i32 0, i32 3
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.lsock_port*, %struct.lsock_port** %3, align 8
  %13 = getelementptr inbounds %struct.lsock_port, %struct.lsock_port* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @fd_deselect(i32* %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.lsock_port*, %struct.lsock_port** %3, align 8
  %18 = getelementptr inbounds %struct.lsock_port, %struct.lsock_port* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.lsock_port*, %struct.lsock_port** %3, align 8
  %23 = getelementptr inbounds %struct.lsock_port, %struct.lsock_port* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @close(i64 %24)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.lsock_port*, %struct.lsock_port** %3, align 8
  %28 = getelementptr inbounds %struct.lsock_port, %struct.lsock_port* %27, i32 0, i32 1
  %29 = load %struct.lsock_port*, %struct.lsock_port** %28, align 8
  %30 = call i32 @remove(%struct.lsock_port* %29)
  %31 = load %struct.tport*, %struct.tport** %2, align 8
  %32 = call i32 @trans_remove_port(%struct.tport* %31)
  br label %33

33:                                               ; preds = %38, %26
  %34 = load %struct.lsock_port*, %struct.lsock_port** %3, align 8
  %35 = getelementptr inbounds %struct.lsock_port, %struct.lsock_port* %34, i32 0, i32 2
  %36 = call %struct.lsock_peer* @LIST_FIRST(i32* %35)
  store %struct.lsock_peer* %36, %struct.lsock_peer** %4, align 8
  %37 = icmp ne %struct.lsock_peer* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.lsock_peer*, %struct.lsock_peer** %4, align 8
  %40 = call i32 @lsock_peer_close(%struct.lsock_peer* %39)
  br label %33

41:                                               ; preds = %33
  %42 = load %struct.lsock_port*, %struct.lsock_port** %3, align 8
  %43 = getelementptr inbounds %struct.lsock_port, %struct.lsock_port* %42, i32 0, i32 1
  %44 = load %struct.lsock_port*, %struct.lsock_port** %43, align 8
  %45 = call i32 @free(%struct.lsock_port* %44)
  %46 = load %struct.lsock_port*, %struct.lsock_port** %3, align 8
  %47 = call i32 @free(%struct.lsock_port* %46)
  ret void
}

declare dso_local i32 @fd_deselect(i32*) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @remove(%struct.lsock_port*) #1

declare dso_local i32 @trans_remove_port(%struct.tport*) #1

declare dso_local %struct.lsock_peer* @LIST_FIRST(i32*) #1

declare dso_local i32 @lsock_peer_close(%struct.lsock_peer*) #1

declare dso_local i32 @free(%struct.lsock_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
