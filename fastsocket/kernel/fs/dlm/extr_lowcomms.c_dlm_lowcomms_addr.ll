; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lowcomms.c_dlm_lowcomms_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lowcomms.c_dlm_lowcomms_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32, i32, %struct.sockaddr_storage**, i32 }
%struct.dlm_node_addr = type { i32, i32, %struct.dlm_node_addr**, i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dlm_node_addrs_spin = common dso_local global i32 0, align 4
@dlm_node_addrs = common dso_local global i32 0, align 4
@DLM_MAX_ADDR_COUNT = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_lowcomms_addr(i32 %0, %struct.sockaddr_storage* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_storage*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_storage*, align 8
  %9 = alloca %struct.dlm_node_addr*, align 8
  %10 = alloca %struct.dlm_node_addr*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @GFP_NOFS, align 4
  %12 = call %struct.sockaddr_storage* @kzalloc(i32 24, i32 %11)
  %13 = bitcast %struct.sockaddr_storage* %12 to %struct.dlm_node_addr*
  store %struct.dlm_node_addr* %13, %struct.dlm_node_addr** %9, align 8
  %14 = load %struct.dlm_node_addr*, %struct.dlm_node_addr** %9, align 8
  %15 = icmp ne %struct.dlm_node_addr* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %89

19:                                               ; preds = %3
  %20 = load i32, i32* @GFP_NOFS, align 4
  %21 = call %struct.sockaddr_storage* @kzalloc(i32 24, i32 %20)
  store %struct.sockaddr_storage* %21, %struct.sockaddr_storage** %8, align 8
  %22 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %8, align 8
  %23 = icmp ne %struct.sockaddr_storage* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = load %struct.dlm_node_addr*, %struct.dlm_node_addr** %9, align 8
  %26 = bitcast %struct.dlm_node_addr* %25 to %struct.sockaddr_storage*
  %27 = call i32 @kfree(%struct.sockaddr_storage* %26)
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %89

30:                                               ; preds = %19
  %31 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %8, align 8
  %32 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @memcpy(%struct.sockaddr_storage* %31, %struct.sockaddr_storage* %32, i32 %33)
  %35 = call i32 @spin_lock(i32* @dlm_node_addrs_spin)
  %36 = load i32, i32* %5, align 4
  %37 = call %struct.sockaddr_storage* @find_node_addr(i32 %36)
  %38 = bitcast %struct.sockaddr_storage* %37 to %struct.dlm_node_addr*
  store %struct.dlm_node_addr* %38, %struct.dlm_node_addr** %10, align 8
  %39 = load %struct.dlm_node_addr*, %struct.dlm_node_addr** %10, align 8
  %40 = icmp ne %struct.dlm_node_addr* %39, null
  br i1 %40, label %57, label %41

41:                                               ; preds = %30
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.dlm_node_addr*, %struct.dlm_node_addr** %9, align 8
  %44 = getelementptr inbounds %struct.dlm_node_addr, %struct.dlm_node_addr* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %8, align 8
  %46 = bitcast %struct.sockaddr_storage* %45 to %struct.dlm_node_addr*
  %47 = load %struct.dlm_node_addr*, %struct.dlm_node_addr** %9, align 8
  %48 = getelementptr inbounds %struct.dlm_node_addr, %struct.dlm_node_addr* %47, i32 0, i32 2
  %49 = load %struct.dlm_node_addr**, %struct.dlm_node_addr*** %48, align 8
  %50 = getelementptr inbounds %struct.dlm_node_addr*, %struct.dlm_node_addr** %49, i64 0
  store %struct.dlm_node_addr* %46, %struct.dlm_node_addr** %50, align 8
  %51 = load %struct.dlm_node_addr*, %struct.dlm_node_addr** %9, align 8
  %52 = getelementptr inbounds %struct.dlm_node_addr, %struct.dlm_node_addr* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  %53 = load %struct.dlm_node_addr*, %struct.dlm_node_addr** %9, align 8
  %54 = getelementptr inbounds %struct.dlm_node_addr, %struct.dlm_node_addr* %53, i32 0, i32 3
  %55 = call i32 @list_add(i32* %54, i32* @dlm_node_addrs)
  %56 = call i32 @spin_unlock(i32* @dlm_node_addrs_spin)
  store i32 0, i32* %4, align 4
  br label %89

57:                                               ; preds = %30
  %58 = load %struct.dlm_node_addr*, %struct.dlm_node_addr** %10, align 8
  %59 = getelementptr inbounds %struct.dlm_node_addr, %struct.dlm_node_addr* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* @DLM_MAX_ADDR_COUNT, align 8
  %63 = icmp sge i64 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %57
  %65 = call i32 @spin_unlock(i32* @dlm_node_addrs_spin)
  %66 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %8, align 8
  %67 = call i32 @kfree(%struct.sockaddr_storage* %66)
  %68 = load %struct.dlm_node_addr*, %struct.dlm_node_addr** %9, align 8
  %69 = bitcast %struct.dlm_node_addr* %68 to %struct.sockaddr_storage*
  %70 = call i32 @kfree(%struct.sockaddr_storage* %69)
  %71 = load i32, i32* @ENOSPC, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %89

73:                                               ; preds = %57
  %74 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %8, align 8
  %75 = bitcast %struct.sockaddr_storage* %74 to %struct.dlm_node_addr*
  %76 = load %struct.dlm_node_addr*, %struct.dlm_node_addr** %10, align 8
  %77 = getelementptr inbounds %struct.dlm_node_addr, %struct.dlm_node_addr* %76, i32 0, i32 2
  %78 = load %struct.dlm_node_addr**, %struct.dlm_node_addr*** %77, align 8
  %79 = load %struct.dlm_node_addr*, %struct.dlm_node_addr** %10, align 8
  %80 = getelementptr inbounds %struct.dlm_node_addr, %struct.dlm_node_addr* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds %struct.dlm_node_addr*, %struct.dlm_node_addr** %78, i64 %83
  store %struct.dlm_node_addr* %75, %struct.dlm_node_addr** %84, align 8
  %85 = call i32 @spin_unlock(i32* @dlm_node_addrs_spin)
  %86 = load %struct.dlm_node_addr*, %struct.dlm_node_addr** %9, align 8
  %87 = bitcast %struct.dlm_node_addr* %86 to %struct.sockaddr_storage*
  %88 = call i32 @kfree(%struct.sockaddr_storage* %87)
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %73, %64, %41, %24, %16
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.sockaddr_storage* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.sockaddr_storage*) #1

declare dso_local i32 @memcpy(%struct.sockaddr_storage*, %struct.sockaddr_storage*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.sockaddr_storage* @find_node_addr(i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
