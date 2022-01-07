; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_super.c_nfs_compare_mount_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_super.c_nfs_compare_mount_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, %struct.nfs_server* }
%struct.nfs_server = type { i64, i64, i64, i64, i64, i64, i64, i64, %struct.rpc_clnt* }
%struct.rpc_clnt = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@NFS_MS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.nfs_server*, i32)* @nfs_compare_mount_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_compare_mount_options(%struct.super_block* %0, %struct.nfs_server* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.nfs_server*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfs_server*, align 8
  %9 = alloca %struct.rpc_clnt*, align 8
  %10 = alloca %struct.rpc_clnt*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.nfs_server* %1, %struct.nfs_server** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = getelementptr inbounds %struct.super_block, %struct.super_block* %11, i32 0, i32 1
  %13 = load %struct.nfs_server*, %struct.nfs_server** %12, align 8
  store %struct.nfs_server* %13, %struct.nfs_server** %8, align 8
  %14 = load %struct.nfs_server*, %struct.nfs_server** %8, align 8
  %15 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %14, i32 0, i32 8
  %16 = load %struct.rpc_clnt*, %struct.rpc_clnt** %15, align 8
  store %struct.rpc_clnt* %16, %struct.rpc_clnt** %9, align 8
  %17 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %18 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %17, i32 0, i32 8
  %19 = load %struct.rpc_clnt*, %struct.rpc_clnt** %18, align 8
  store %struct.rpc_clnt* %19, %struct.rpc_clnt** %10, align 8
  %20 = load %struct.super_block*, %struct.super_block** %5, align 8
  %21 = getelementptr inbounds %struct.super_block, %struct.super_block* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @NFS_MS_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @NFS_MS_MASK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %116

30:                                               ; preds = %3
  %31 = load %struct.nfs_server*, %struct.nfs_server** %8, align 8
  %32 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %35 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %116

39:                                               ; preds = %30
  %40 = load %struct.nfs_server*, %struct.nfs_server** %8, align 8
  %41 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %44 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %116

48:                                               ; preds = %39
  %49 = load %struct.nfs_server*, %struct.nfs_server** %8, align 8
  %50 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %53 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %116

57:                                               ; preds = %48
  %58 = load %struct.nfs_server*, %struct.nfs_server** %8, align 8
  %59 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %62 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %116

66:                                               ; preds = %57
  %67 = load %struct.nfs_server*, %struct.nfs_server** %8, align 8
  %68 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %71 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %69, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %116

75:                                               ; preds = %66
  %76 = load %struct.nfs_server*, %struct.nfs_server** %8, align 8
  %77 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %76, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %80 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %79, i32 0, i32 5
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %78, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %116

84:                                               ; preds = %75
  %85 = load %struct.nfs_server*, %struct.nfs_server** %8, align 8
  %86 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %85, i32 0, i32 6
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %89 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %88, i32 0, i32 6
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %87, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %116

93:                                               ; preds = %84
  %94 = load %struct.nfs_server*, %struct.nfs_server** %8, align 8
  %95 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %94, i32 0, i32 7
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %98 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %97, i32 0, i32 7
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %96, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  br label %116

102:                                              ; preds = %93
  %103 = load %struct.rpc_clnt*, %struct.rpc_clnt** %9, align 8
  %104 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.rpc_clnt*, %struct.rpc_clnt** %10, align 8
  %109 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %107, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %102
  br label %116

115:                                              ; preds = %102
  store i32 1, i32* %4, align 4
  br label %117

116:                                              ; preds = %114, %101, %92, %83, %74, %65, %56, %47, %38, %29
  store i32 0, i32* %4, align 4
  br label %117

117:                                              ; preds = %116, %115
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
