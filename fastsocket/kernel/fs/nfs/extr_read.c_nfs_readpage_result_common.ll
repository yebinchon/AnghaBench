; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_read.c_nfs_readpage_result_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_read.c_nfs_readpage_result_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32 }
%struct.nfs_read_data = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.nfs_pgio_header* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.nfs_pgio_header = type { i64, i64, i32, i32 }

@NFS_IOHDR_EOF = common dso_local global i32 0, align 4
@NFS_IOHDR_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*, i8*)* @nfs_readpage_result_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_readpage_result_common(%struct.rpc_task* %0, i8* %1) #0 {
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nfs_read_data*, align 8
  %6 = alloca %struct.nfs_pgio_header*, align 8
  %7 = alloca i64, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.nfs_read_data*
  store %struct.nfs_read_data* %9, %struct.nfs_read_data** %5, align 8
  %10 = load %struct.nfs_read_data*, %struct.nfs_read_data** %5, align 8
  %11 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %10, i32 0, i32 2
  %12 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %11, align 8
  store %struct.nfs_pgio_header* %12, %struct.nfs_pgio_header** %6, align 8
  %13 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %14 = load %struct.nfs_read_data*, %struct.nfs_read_data** %5, align 8
  %15 = call i64 @nfs_readpage_result(%struct.rpc_task* %13, %struct.nfs_read_data* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %97

18:                                               ; preds = %2
  %19 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %20 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %6, align 8
  %25 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %26 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.nfs_read_data*, %struct.nfs_read_data** %5, align 8
  %29 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @nfs_set_pgio_error(%struct.nfs_pgio_header* %24, i32 %27, i64 %31)
  br label %97

33:                                               ; preds = %18
  %34 = load %struct.nfs_read_data*, %struct.nfs_read_data** %5, align 8
  %35 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %81

39:                                               ; preds = %33
  %40 = load %struct.nfs_read_data*, %struct.nfs_read_data** %5, align 8
  %41 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.nfs_read_data*, %struct.nfs_read_data** %5, align 8
  %45 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %43, %47
  store i64 %48, i64* %7, align 8
  %49 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %6, align 8
  %50 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %49, i32 0, i32 2
  %51 = call i32 @spin_lock(i32* %50)
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %6, align 8
  %54 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %6, align 8
  %57 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %55, %58
  %60 = icmp slt i64 %52, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %39
  %62 = load i32, i32* @NFS_IOHDR_EOF, align 4
  %63 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %6, align 8
  %64 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %63, i32 0, i32 3
  %65 = call i32 @set_bit(i32 %62, i32* %64)
  %66 = load i32, i32* @NFS_IOHDR_ERROR, align 4
  %67 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %6, align 8
  %68 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %67, i32 0, i32 3
  %69 = call i32 @clear_bit(i32 %66, i32* %68)
  %70 = load i64, i64* %7, align 8
  %71 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %6, align 8
  %72 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %70, %73
  %75 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %6, align 8
  %76 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %61, %39
  %78 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %6, align 8
  %79 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %78, i32 0, i32 2
  %80 = call i32 @spin_unlock(i32* %79)
  br label %96

81:                                               ; preds = %33
  %82 = load %struct.nfs_read_data*, %struct.nfs_read_data** %5, align 8
  %83 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.nfs_read_data*, %struct.nfs_read_data** %5, align 8
  %87 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %85, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %81
  %92 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %93 = load %struct.nfs_read_data*, %struct.nfs_read_data** %5, align 8
  %94 = call i32 @nfs_readpage_retry(%struct.rpc_task* %92, %struct.nfs_read_data* %93)
  br label %95

95:                                               ; preds = %91, %81
  br label %96

96:                                               ; preds = %95, %77
  br label %97

97:                                               ; preds = %17, %96, %23
  ret void
}

declare dso_local i64 @nfs_readpage_result(%struct.rpc_task*, %struct.nfs_read_data*) #1

declare dso_local i32 @nfs_set_pgio_error(%struct.nfs_pgio_header*, i32, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nfs_readpage_retry(%struct.rpc_task*, %struct.nfs_read_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
