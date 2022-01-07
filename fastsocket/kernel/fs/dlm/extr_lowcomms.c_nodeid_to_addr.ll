; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lowcomms.c_nodeid_to_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lowcomms.c_nodeid_to_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }
%struct.dlm_node_addr = type { i64, %struct.sockaddr_storage** }
%struct.sockaddr_in = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@dlm_local_count = common dso_local global i32 0, align 4
@dlm_node_addrs_spin = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@dlm_local_addr = common dso_local global %struct.TYPE_4__** null, align 8
@AF_INET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sockaddr_storage*, %struct.sockaddr*)* @nodeid_to_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nodeid_to_addr(i32 %0, %struct.sockaddr_storage* %1, %struct.sockaddr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_storage*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.sockaddr_storage, align 4
  %9 = alloca %struct.dlm_node_addr*, align 8
  %10 = alloca %struct.sockaddr_in*, align 8
  %11 = alloca %struct.sockaddr_in*, align 8
  %12 = alloca %struct.sockaddr_in6*, align 8
  %13 = alloca %struct.sockaddr_in6*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %6, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %7, align 8
  %14 = load i32, i32* @dlm_local_count, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %89

17:                                               ; preds = %3
  %18 = call i32 @spin_lock(i32* @dlm_node_addrs_spin)
  %19 = load i32, i32* %5, align 4
  %20 = call %struct.dlm_node_addr* @find_node_addr(i32 %19)
  store %struct.dlm_node_addr* %20, %struct.dlm_node_addr** %9, align 8
  %21 = load %struct.dlm_node_addr*, %struct.dlm_node_addr** %9, align 8
  %22 = icmp ne %struct.dlm_node_addr* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %17
  %24 = load %struct.dlm_node_addr*, %struct.dlm_node_addr** %9, align 8
  %25 = getelementptr inbounds %struct.dlm_node_addr, %struct.dlm_node_addr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.dlm_node_addr*, %struct.dlm_node_addr** %9, align 8
  %30 = getelementptr inbounds %struct.dlm_node_addr, %struct.dlm_node_addr* %29, i32 0, i32 1
  %31 = load %struct.sockaddr_storage**, %struct.sockaddr_storage*** %30, align 8
  %32 = getelementptr inbounds %struct.sockaddr_storage*, %struct.sockaddr_storage** %31, i64 0
  %33 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %32, align 8
  %34 = call i32 @memcpy(%struct.sockaddr_storage* %8, %struct.sockaddr_storage* %33, i32 4)
  br label %35

35:                                               ; preds = %28, %23, %17
  %36 = call i32 @spin_unlock(i32* @dlm_node_addrs_spin)
  %37 = load %struct.dlm_node_addr*, %struct.dlm_node_addr** %9, align 8
  %38 = icmp ne %struct.dlm_node_addr* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @EEXIST, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %89

42:                                               ; preds = %35
  %43 = load %struct.dlm_node_addr*, %struct.dlm_node_addr** %9, align 8
  %44 = getelementptr inbounds %struct.dlm_node_addr, %struct.dlm_node_addr* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @ENOENT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %89

50:                                               ; preds = %42
  %51 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %52 = icmp ne %struct.sockaddr_storage* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %55 = call i32 @memcpy(%struct.sockaddr_storage* %54, %struct.sockaddr_storage* %8, i32 4)
  br label %56

56:                                               ; preds = %53, %50
  %57 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %58 = icmp ne %struct.sockaddr* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %89

60:                                               ; preds = %56
  %61 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @dlm_local_addr, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %61, i64 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @AF_INET, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %60
  %69 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %69, %struct.sockaddr_in** %10, align 8
  %70 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %71 = bitcast %struct.sockaddr* %70 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %71, %struct.sockaddr_in** %11, align 8
  %72 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %73 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %77 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 4
  br label %88

79:                                               ; preds = %60
  %80 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %80, %struct.sockaddr_in6** %12, align 8
  %81 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %82 = bitcast %struct.sockaddr* %81 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %82, %struct.sockaddr_in6** %13, align 8
  %83 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %12, align 8
  %84 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %87 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %79, %68
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %88, %59, %47, %39, %16
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.dlm_node_addr* @find_node_addr(i32) #1

declare dso_local i32 @memcpy(%struct.sockaddr_storage*, %struct.sockaddr_storage*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
