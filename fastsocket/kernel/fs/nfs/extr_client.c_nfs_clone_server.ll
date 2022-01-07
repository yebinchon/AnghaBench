; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_client.c_nfs_clone_server.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_client.c_nfs_clone_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i64, i32, %struct.TYPE_6__, i32, %struct.TYPE_5__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.nfs_fh = type { i32 }
%struct.nfs_fattr = type { %struct.TYPE_6__ }

@.str = private unnamed_addr constant [35 x i8] c"--> nfs_clone_server(,%llx:%llx,)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@NFS4_MAXNAMLEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Cloned FSID: %llx:%llx\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"<-- nfs_clone_server() = %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"<-- nfs_clone_server() = error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfs_server* @nfs_clone_server(%struct.nfs_server* %0, %struct.nfs_fh* %1, %struct.nfs_fattr* %2, i32 %3) #0 {
  %5 = alloca %struct.nfs_server*, align 8
  %6 = alloca %struct.nfs_server*, align 8
  %7 = alloca %struct.nfs_fh*, align 8
  %8 = alloca %struct.nfs_fattr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfs_server*, align 8
  %11 = alloca %struct.nfs_fattr*, align 8
  %12 = alloca i32, align 4
  store %struct.nfs_server* %0, %struct.nfs_server** %6, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %7, align 8
  store %struct.nfs_fattr* %2, %struct.nfs_fattr** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.nfs_fattr*, %struct.nfs_fattr** %8, align 8
  %14 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.nfs_fattr*, %struct.nfs_fattr** %8, align 8
  %18 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %16, i64 %20)
  %22 = call %struct.nfs_server* (...) @nfs_alloc_server()
  store %struct.nfs_server* %22, %struct.nfs_server** %10, align 8
  %23 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %24 = icmp ne %struct.nfs_server* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.nfs_server* @ERR_PTR(i32 %27)
  store %struct.nfs_server* %28, %struct.nfs_server** %5, align 8
  br label %139

29:                                               ; preds = %4
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %12, align 4
  %32 = call %struct.nfs_fattr* (...) @nfs_alloc_fattr()
  store %struct.nfs_fattr* %32, %struct.nfs_fattr** %11, align 8
  %33 = load %struct.nfs_fattr*, %struct.nfs_fattr** %11, align 8
  %34 = icmp eq %struct.nfs_fattr* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %130

36:                                               ; preds = %29
  %37 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %38 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %37, i32 0, i32 5
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %41 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %40, i32 0, i32 5
  store %struct.TYPE_4__* %39, %struct.TYPE_4__** %41, align 8
  %42 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %43 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %46 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %45, i32 0, i32 6
  store i32 %44, i32* %46, align 8
  %47 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %48 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %47, i32 0, i32 5
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = call i32 @atomic_inc(i32* %50)
  %52 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %53 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %54 = call i32 @nfs_server_copy_userdata(%struct.nfs_server* %52, %struct.nfs_server* %53)
  %55 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %56 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %55, i32 0, i32 2
  %57 = load %struct.nfs_fattr*, %struct.nfs_fattr** %8, align 8
  %58 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %57, i32 0, i32 0
  %59 = bitcast %struct.TYPE_6__* %56 to i8*
  %60 = bitcast %struct.TYPE_6__* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 16, i1 false)
  %61 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %62 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %63 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %62, i32 0, i32 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @nfs_init_server_rpcclient(%struct.nfs_server* %61, i32 %66, i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %36
  br label %130

72:                                               ; preds = %36
  %73 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %74 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @IS_ERR(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %72
  %79 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %80 = call i32 @nfs_init_server_aclclient(%struct.nfs_server* %79)
  br label %81

81:                                               ; preds = %78, %72
  %82 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %83 = load %struct.nfs_fh*, %struct.nfs_fh** %7, align 8
  %84 = load %struct.nfs_fattr*, %struct.nfs_fattr** %11, align 8
  %85 = call i32 @nfs_probe_fsinfo(%struct.nfs_server* %82, %struct.nfs_fh* %83, %struct.nfs_fattr* %84)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %130

89:                                               ; preds = %81
  %90 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %91 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %89
  %95 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %96 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @NFS4_MAXNAMLEN, align 8
  %99 = icmp sgt i64 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %94, %89
  %101 = load i64, i64* @NFS4_MAXNAMLEN, align 8
  %102 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %103 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  br label %104

104:                                              ; preds = %100, %94
  %105 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %106 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %110 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %108, i64 %112)
  %114 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %115 = call i32 @nfs_start_lockd(%struct.nfs_server* %114)
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* %12, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %104
  br label %130

119:                                              ; preds = %104
  %120 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %121 = call i32 @nfs_server_insert_lists(%struct.nfs_server* %120)
  %122 = load i32, i32* @jiffies, align 4
  %123 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %124 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 8
  %125 = load %struct.nfs_fattr*, %struct.nfs_fattr** %11, align 8
  %126 = call i32 @nfs_free_fattr(%struct.nfs_fattr* %125)
  %127 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %128 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), %struct.nfs_server* %127)
  %129 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  store %struct.nfs_server* %129, %struct.nfs_server** %5, align 8
  br label %139

130:                                              ; preds = %118, %88, %71, %35
  %131 = load %struct.nfs_fattr*, %struct.nfs_fattr** %11, align 8
  %132 = call i32 @nfs_free_fattr(%struct.nfs_fattr* %131)
  %133 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %134 = call i32 @nfs_free_server(%struct.nfs_server* %133)
  %135 = load i32, i32* %12, align 4
  %136 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* %12, align 4
  %138 = call %struct.nfs_server* @ERR_PTR(i32 %137)
  store %struct.nfs_server* %138, %struct.nfs_server** %5, align 8
  br label %139

139:                                              ; preds = %130, %119, %25
  %140 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  ret %struct.nfs_server* %140
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local %struct.nfs_server* @nfs_alloc_server(...) #1

declare dso_local %struct.nfs_server* @ERR_PTR(i32) #1

declare dso_local %struct.nfs_fattr* @nfs_alloc_fattr(...) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @nfs_server_copy_userdata(%struct.nfs_server*, %struct.nfs_server*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @nfs_init_server_rpcclient(%struct.nfs_server*, i32, i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @nfs_init_server_aclclient(%struct.nfs_server*) #1

declare dso_local i32 @nfs_probe_fsinfo(%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fattr*) #1

declare dso_local i32 @nfs_start_lockd(%struct.nfs_server*) #1

declare dso_local i32 @nfs_server_insert_lists(%struct.nfs_server*) #1

declare dso_local i32 @nfs_free_fattr(%struct.nfs_fattr*) #1

declare dso_local i32 @nfs_free_server(%struct.nfs_server*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
