; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_client.c_nfs_get_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_client.c_nfs_get_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { i64, i32 }
%struct.nfs_client_initdata = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.nfs_client*, %struct.rpc_timeout*, i8*, i32, i32)*, i32 }
%struct.rpc_timeout = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"--> nfs_get_client(%s,v%u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@nfs_client_lock = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"--> nfs_get_client() = %ld [failed]\0A\00", align 1
@nfs_client_list = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"--> nfs_get_client() = %p [new]\0A\00", align 1
@nfs_client_active_wq = common dso_local global i32 0, align 4
@NFS_CS_INITING = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i32 0, align 4
@NFS_CS_READY = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"--> nfs_get_client() = %p [share]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs_client* (%struct.nfs_client_initdata*, %struct.rpc_timeout*, i8*, i32, i32)* @nfs_get_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs_client* @nfs_get_client(%struct.nfs_client_initdata* %0, %struct.rpc_timeout* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.nfs_client*, align 8
  %7 = alloca %struct.nfs_client_initdata*, align 8
  %8 = alloca %struct.rpc_timeout*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nfs_client*, align 8
  %13 = alloca %struct.nfs_client*, align 8
  %14 = alloca i32, align 4
  store %struct.nfs_client_initdata* %0, %struct.nfs_client_initdata** %7, align 8
  store %struct.rpc_timeout* %1, %struct.rpc_timeout** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.nfs_client* null, %struct.nfs_client** %13, align 8
  %15 = load %struct.nfs_client_initdata*, %struct.nfs_client_initdata** %7, align 8
  %16 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = inttoptr i64 %17 to i8*
  br label %22

21:                                               ; preds = %5
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i8* [ %20, %19 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %21 ]
  %24 = load %struct.nfs_client_initdata*, %struct.nfs_client_initdata** %7, align 8
  %25 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %28)
  br label %30

30:                                               ; preds = %45, %22
  %31 = call i32 @spin_lock(i32* @nfs_client_lock)
  %32 = load %struct.nfs_client_initdata*, %struct.nfs_client_initdata** %7, align 8
  %33 = call %struct.nfs_client* @nfs_match_client(%struct.nfs_client_initdata* %32)
  store %struct.nfs_client* %33, %struct.nfs_client** %12, align 8
  %34 = load %struct.nfs_client*, %struct.nfs_client** %12, align 8
  %35 = icmp ne %struct.nfs_client* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %83

37:                                               ; preds = %30
  %38 = load %struct.nfs_client*, %struct.nfs_client** %13, align 8
  %39 = icmp ne %struct.nfs_client* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %55

41:                                               ; preds = %37
  %42 = call i32 @spin_unlock(i32* @nfs_client_lock)
  %43 = load %struct.nfs_client_initdata*, %struct.nfs_client_initdata** %7, align 8
  %44 = call %struct.nfs_client* @nfs_alloc_client(%struct.nfs_client_initdata* %43)
  store %struct.nfs_client* %44, %struct.nfs_client** %13, align 8
  br label %45

45:                                               ; preds = %41
  %46 = load %struct.nfs_client*, %struct.nfs_client** %13, align 8
  %47 = call i32 @IS_ERR(%struct.nfs_client* %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  br i1 %49, label %30, label %50

50:                                               ; preds = %45
  %51 = load %struct.nfs_client*, %struct.nfs_client** %13, align 8
  %52 = call %struct.nfs_client* @PTR_ERR(%struct.nfs_client* %51)
  %53 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), %struct.nfs_client* %52)
  %54 = load %struct.nfs_client*, %struct.nfs_client** %13, align 8
  store %struct.nfs_client* %54, %struct.nfs_client** %6, align 8
  br label %133

55:                                               ; preds = %40
  %56 = load %struct.nfs_client*, %struct.nfs_client** %13, align 8
  store %struct.nfs_client* %56, %struct.nfs_client** %12, align 8
  %57 = load %struct.nfs_client*, %struct.nfs_client** %12, align 8
  %58 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %57, i32 0, i32 1
  %59 = call i32 @list_add(i32* %58, i32* @nfs_client_list)
  %60 = call i32 @spin_unlock(i32* @nfs_client_lock)
  %61 = load %struct.nfs_client_initdata*, %struct.nfs_client_initdata** %7, align 8
  %62 = getelementptr inbounds %struct.nfs_client_initdata, %struct.nfs_client_initdata* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32 (%struct.nfs_client*, %struct.rpc_timeout*, i8*, i32, i32)*, i32 (%struct.nfs_client*, %struct.rpc_timeout*, i8*, i32, i32)** %64, align 8
  %66 = load %struct.nfs_client*, %struct.nfs_client** %12, align 8
  %67 = load %struct.rpc_timeout*, %struct.rpc_timeout** %8, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 %65(%struct.nfs_client* %66, %struct.rpc_timeout* %67, i8* %68, i32 %69, i32 %70)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %55
  %75 = load %struct.nfs_client*, %struct.nfs_client** %12, align 8
  %76 = call i32 @nfs_put_client(%struct.nfs_client* %75)
  %77 = load i32, i32* %14, align 4
  %78 = call %struct.nfs_client* @ERR_PTR(i32 %77)
  store %struct.nfs_client* %78, %struct.nfs_client** %6, align 8
  br label %133

79:                                               ; preds = %55
  %80 = load %struct.nfs_client*, %struct.nfs_client** %12, align 8
  %81 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), %struct.nfs_client* %80)
  %82 = load %struct.nfs_client*, %struct.nfs_client** %12, align 8
  store %struct.nfs_client* %82, %struct.nfs_client** %6, align 8
  br label %133

83:                                               ; preds = %36
  %84 = call i32 @spin_unlock(i32* @nfs_client_lock)
  %85 = load %struct.nfs_client*, %struct.nfs_client** %13, align 8
  %86 = icmp ne %struct.nfs_client* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load %struct.nfs_client*, %struct.nfs_client** %13, align 8
  %89 = call i32 @nfs_free_client(%struct.nfs_client* %88)
  br label %90

90:                                               ; preds = %87, %83
  %91 = load i32, i32* @nfs_client_active_wq, align 4
  %92 = load %struct.nfs_client*, %struct.nfs_client** %12, align 8
  %93 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @NFS_CS_INITING, align 8
  %96 = icmp slt i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @wait_event_killable(i32 %91, i32 %97)
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %14, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %90
  %102 = load %struct.nfs_client*, %struct.nfs_client** %12, align 8
  %103 = call i32 @nfs_put_client(%struct.nfs_client* %102)
  %104 = load i32, i32* @ERESTARTSYS, align 4
  %105 = sub nsw i32 0, %104
  %106 = call %struct.nfs_client* @ERR_PTR(i32 %105)
  store %struct.nfs_client* %106, %struct.nfs_client** %6, align 8
  br label %133

107:                                              ; preds = %90
  %108 = load %struct.nfs_client*, %struct.nfs_client** %12, align 8
  %109 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @NFS_CS_READY, align 8
  %112 = icmp slt i64 %110, %111
  br i1 %112, label %113, label %122

113:                                              ; preds = %107
  %114 = load %struct.nfs_client*, %struct.nfs_client** %12, align 8
  %115 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %14, align 4
  %118 = load %struct.nfs_client*, %struct.nfs_client** %12, align 8
  %119 = call i32 @nfs_put_client(%struct.nfs_client* %118)
  %120 = load i32, i32* %14, align 4
  %121 = call %struct.nfs_client* @ERR_PTR(i32 %120)
  store %struct.nfs_client* %121, %struct.nfs_client** %6, align 8
  br label %133

122:                                              ; preds = %107
  %123 = load %struct.nfs_client*, %struct.nfs_client** %12, align 8
  %124 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @NFS_CS_READY, align 8
  %127 = icmp ne i64 %125, %126
  %128 = zext i1 %127 to i32
  %129 = call i32 @BUG_ON(i32 %128)
  %130 = load %struct.nfs_client*, %struct.nfs_client** %12, align 8
  %131 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), %struct.nfs_client* %130)
  %132 = load %struct.nfs_client*, %struct.nfs_client** %12, align 8
  store %struct.nfs_client* %132, %struct.nfs_client** %6, align 8
  br label %133

133:                                              ; preds = %122, %113, %101, %79, %74, %50
  %134 = load %struct.nfs_client*, %struct.nfs_client** %6, align 8
  ret %struct.nfs_client* %134
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.nfs_client* @nfs_match_client(%struct.nfs_client_initdata*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.nfs_client* @nfs_alloc_client(%struct.nfs_client_initdata*) #1

declare dso_local i32 @IS_ERR(%struct.nfs_client*) #1

declare dso_local %struct.nfs_client* @PTR_ERR(%struct.nfs_client*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @nfs_put_client(%struct.nfs_client*) #1

declare dso_local %struct.nfs_client* @ERR_PTR(i32) #1

declare dso_local i32 @nfs_free_client(%struct.nfs_client*) #1

declare dso_local i32 @wait_event_killable(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
