; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_tipc_publish.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_tipc_publish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_name_seq = type { i32, i32, i32 }
%struct.port = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.publication = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"tipc_publ %u, p_ptr = %x, conn = %x, scope = %x, lower = %u, upper = %u\0A\00", align 1
@TIPC_ZONE_SCOPE = common dso_local global i32 0, align 4
@TIPC_NODE_SCOPE = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_publish(i64 %0, i32 %1, %struct.tipc_name_seq* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tipc_name_seq*, align 8
  %8 = alloca %struct.port*, align 8
  %9 = alloca %struct.publication*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.tipc_name_seq* %2, %struct.tipc_name_seq** %7, align 8
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %11, align 4
  %14 = load i64, i64* %5, align 8
  %15 = call %struct.port* @tipc_port_lock(i64 %14)
  store %struct.port* %15, %struct.port** %8, align 8
  %16 = load %struct.port*, %struct.port** %8, align 8
  %17 = icmp ne %struct.port* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %110

21:                                               ; preds = %3
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.port*, %struct.port** %8, align 8
  %24 = load %struct.port*, %struct.port** %8, align 8
  %25 = getelementptr inbounds %struct.port, %struct.port* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.tipc_name_seq*, %struct.tipc_name_seq** %7, align 8
  %30 = getelementptr inbounds %struct.tipc_name_seq, %struct.tipc_name_seq* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.tipc_name_seq*, %struct.tipc_name_seq** %7, align 8
  %33 = getelementptr inbounds %struct.tipc_name_seq, %struct.tipc_name_seq* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dbg(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i64 %22, %struct.port* %23, i64 %27, i32 %28, i32 %31, i32 %34)
  %36 = load %struct.port*, %struct.port** %8, align 8
  %37 = getelementptr inbounds %struct.port, %struct.port* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %21
  br label %106

42:                                               ; preds = %21
  %43 = load %struct.tipc_name_seq*, %struct.tipc_name_seq** %7, align 8
  %44 = getelementptr inbounds %struct.tipc_name_seq, %struct.tipc_name_seq* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.tipc_name_seq*, %struct.tipc_name_seq** %7, align 8
  %47 = getelementptr inbounds %struct.tipc_name_seq, %struct.tipc_name_seq* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %106

51:                                               ; preds = %42
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @TIPC_ZONE_SCOPE, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @TIPC_NODE_SCOPE, align 4
  %58 = icmp ugt i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55, %51
  br label %106

60:                                               ; preds = %55
  %61 = load i64, i64* %5, align 8
  %62 = load %struct.port*, %struct.port** %8, align 8
  %63 = getelementptr inbounds %struct.port, %struct.port* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %61, %64
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %10, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %5, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %60
  %71 = load i32, i32* @EADDRINUSE, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %11, align 4
  br label %106

73:                                               ; preds = %60
  %74 = load %struct.tipc_name_seq*, %struct.tipc_name_seq** %7, align 8
  %75 = getelementptr inbounds %struct.tipc_name_seq, %struct.tipc_name_seq* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.tipc_name_seq*, %struct.tipc_name_seq** %7, align 8
  %78 = getelementptr inbounds %struct.tipc_name_seq, %struct.tipc_name_seq* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.tipc_name_seq*, %struct.tipc_name_seq** %7, align 8
  %81 = getelementptr inbounds %struct.tipc_name_seq, %struct.tipc_name_seq* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.port*, %struct.port** %8, align 8
  %85 = getelementptr inbounds %struct.port, %struct.port* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i64, i64* %10, align 8
  %89 = call %struct.publication* @tipc_nametbl_publish(i32 %76, i32 %79, i32 %82, i32 %83, i32 %87, i64 %88)
  store %struct.publication* %89, %struct.publication** %9, align 8
  %90 = load %struct.publication*, %struct.publication** %9, align 8
  %91 = icmp ne %struct.publication* %90, null
  br i1 %91, label %92, label %105

92:                                               ; preds = %73
  %93 = load %struct.publication*, %struct.publication** %9, align 8
  %94 = getelementptr inbounds %struct.publication, %struct.publication* %93, i32 0, i32 0
  %95 = load %struct.port*, %struct.port** %8, align 8
  %96 = getelementptr inbounds %struct.port, %struct.port* %95, i32 0, i32 2
  %97 = call i32 @list_add(i32* %94, i32* %96)
  %98 = load %struct.port*, %struct.port** %8, align 8
  %99 = getelementptr inbounds %struct.port, %struct.port* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %99, align 8
  %102 = load %struct.port*, %struct.port** %8, align 8
  %103 = getelementptr inbounds %struct.port, %struct.port* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  store i32 0, i32* %11, align 4
  br label %105

105:                                              ; preds = %92, %73
  br label %106

106:                                              ; preds = %105, %70, %59, %50, %41
  %107 = load %struct.port*, %struct.port** %8, align 8
  %108 = call i32 @tipc_port_unlock(%struct.port* %107)
  %109 = load i32, i32* %11, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %106, %18
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local %struct.port* @tipc_port_lock(i64) #1

declare dso_local i32 @dbg(i8*, i64, %struct.port*, i64, i32, i32, i32) #1

declare dso_local %struct.publication* @tipc_nametbl_publish(i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @tipc_port_unlock(%struct.port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
