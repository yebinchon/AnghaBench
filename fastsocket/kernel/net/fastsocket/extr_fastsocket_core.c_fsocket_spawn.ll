; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/fastsocket/extr_fastsocket_core.c_fsocket_spawn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/fastsocket/extr_fastsocket_core.c_fsocket_spawn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64, i32 }
%struct.socket = type { %struct.TYPE_6__*, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i32 (%struct.socket*, %struct.sockaddr*, i32)*, i32 (%struct.socket*, i32)* }
%struct.sockaddr = type { i32 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.sockaddr_in = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Listen spawn listen fd %d on CPU %d. filp->sub_file(%p)\0A\00", align 1
@fastsocket_spawn_mutex = common dso_local global i32 0, align 4
@ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Spawn on a already spawned file 0x%p\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@TCP_LISTEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"Spawn on a non-listen socket[%d-%d] file 0x%p\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Set CPU affinity for process failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Clone listen socket failed[%d]\0A\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"Bind spawned socket %d failed[%d]\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Listen spawned socket %d failed[%d]\0A\00", align 1
@DEBUG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"fsocket_spawn return value is %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsocket_spawn(%struct.file* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.socket*, align 8
  %11 = alloca %struct.socket*, align 8
  %12 = alloca %struct.sockaddr_in, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = load i32, i32* @INFO, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.file*, %struct.file** %4, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (i32, i8*, i32, ...) @DPRINTK(i32 %14, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16, i32 %19)
  %21 = call i32 @mutex_lock(i32* @fastsocket_spawn_mutex)
  %22 = load %struct.file*, %struct.file** %4, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = load i32, i32* @ERR, align 4
  %28 = load %struct.file*, %struct.file** %4, align 8
  %29 = call i32 (i32, i8*, ...) @EPRINTK_LIMIT(i32 %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), %struct.file* %28)
  %30 = load i32, i32* @EEXIST, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %145

32:                                               ; preds = %3
  %33 = load %struct.file*, %struct.file** %4, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.socket*
  store %struct.socket* %36, %struct.socket** %10, align 8
  %37 = load %struct.socket*, %struct.socket** %10, align 8
  %38 = getelementptr inbounds %struct.socket, %struct.socket* %37, i32 0, i32 1
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TCP_LISTEN, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %32
  %45 = load i32, i32* @ERR, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.socket*, %struct.socket** %10, align 8
  %48 = getelementptr inbounds %struct.socket, %struct.socket* %47, i32 0, i32 1
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.file*, %struct.file** %4, align 8
  %53 = call i32 (i32, i8*, ...) @EPRINTK_LIMIT(i32 %45, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %46, i64 %51, %struct.file* %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %7, align 4
  br label %145

56:                                               ; preds = %32
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @fsocket_process_affinity_check(i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* @ERR, align 4
  %63 = call i32 (i32, i8*, ...) @EPRINTK_LIMIT(i32 %62, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %145

64:                                               ; preds = %56
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %9, align 4
  store %struct.socket* null, %struct.socket** %11, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.socket*, %struct.socket** %10, align 8
  %68 = call i32 @fsocket_spawn_clone(i32 %66, %struct.socket* %67, %struct.socket** %11)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load i32, i32* @ERR, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 (i32, i8*, ...) @EPRINTK_LIMIT(i32 %72, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  br label %142

75:                                               ; preds = %64
  %76 = load %struct.socket*, %struct.socket** %11, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @fsocket_sk_affinity_set(%struct.socket* %76, i32 %77)
  %79 = call i32 @fsocket_set_bind_cap(i32* %13)
  %80 = load i32, i32* @AF_INET, align 4
  %81 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 2
  store i32 %80, i32* %81, align 4
  %82 = load %struct.socket*, %struct.socket** %10, align 8
  %83 = getelementptr inbounds %struct.socket, %struct.socket* %82, i32 0, i32 1
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = call %struct.TYPE_7__* @inet_sk(%struct.TYPE_8__* %84)
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 1
  store i32 %87, i32* %88, align 4
  %89 = load %struct.socket*, %struct.socket** %10, align 8
  %90 = getelementptr inbounds %struct.socket, %struct.socket* %89, i32 0, i32 1
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = call %struct.TYPE_7__* @inet_sk(%struct.TYPE_8__* %91)
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load %struct.socket*, %struct.socket** %11, align 8
  %98 = getelementptr inbounds %struct.socket, %struct.socket* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32 (%struct.socket*, %struct.sockaddr*, i32)*, i32 (%struct.socket*, %struct.sockaddr*, i32)** %100, align 8
  %102 = load %struct.socket*, %struct.socket** %11, align 8
  %103 = bitcast %struct.sockaddr_in* %12 to %struct.sockaddr*
  %104 = call i32 %101(%struct.socket* %102, %struct.sockaddr* %103, i32 12)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %75
  %108 = load i32, i32* @ERR, align 4
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* %7, align 4
  %111 = call i32 (i32, i8*, ...) @EPRINTK_LIMIT(i32 %108, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %109, i32 %110)
  br label %137

112:                                              ; preds = %75
  %113 = call i32 @fsocket_reset_bind_cap(i32* %13)
  %114 = load %struct.socket*, %struct.socket** %10, align 8
  %115 = getelementptr inbounds %struct.socket, %struct.socket* %114, i32 0, i32 1
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  store i32 %118, i32* %8, align 4
  %119 = load %struct.socket*, %struct.socket** %11, align 8
  %120 = getelementptr inbounds %struct.socket, %struct.socket* %119, i32 0, i32 0
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i32 (%struct.socket*, i32)*, i32 (%struct.socket*, i32)** %122, align 8
  %124 = load %struct.socket*, %struct.socket** %11, align 8
  %125 = load i32, i32* %8, align 4
  %126 = call i32 %123(%struct.socket* %124, i32 %125)
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %112
  %130 = load i32, i32* @ERR, align 4
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* %7, align 4
  %133 = call i32 (i32, i8*, ...) @EPRINTK_LIMIT(i32 %130, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %131, i32 %132)
  br label %137

134:                                              ; preds = %112
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @fsocket_process_affinity_set(i32 %135)
  br label %145

137:                                              ; preds = %129, %107
  %138 = load %struct.socket*, %struct.socket** %11, align 8
  %139 = call i32 @fsocket_sk_affinity_release(%struct.socket* %138)
  %140 = load i32, i32* %5, align 4
  %141 = call i32 @fsocket_filp_close_spawn(i32 %140)
  br label %142

142:                                              ; preds = %137, %71
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @fsocket_process_affinity_restore(i32 %143)
  br label %145

145:                                              ; preds = %142, %134, %61, %44, %26
  %146 = call i32 @mutex_unlock(i32* @fastsocket_spawn_mutex)
  %147 = load i32, i32* @DEBUG, align 4
  %148 = load i32, i32* %7, align 4
  %149 = call i32 (i32, i8*, i32, ...) @DPRINTK(i32 %147, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %148)
  %150 = load i32, i32* %7, align 4
  ret i32 %150
}

declare dso_local i32 @DPRINTK(i32, i8*, i32, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @EPRINTK_LIMIT(i32, i8*, ...) #1

declare dso_local i32 @fsocket_process_affinity_check(i32) #1

declare dso_local i32 @fsocket_spawn_clone(i32, %struct.socket*, %struct.socket**) #1

declare dso_local i32 @fsocket_sk_affinity_set(%struct.socket*, i32) #1

declare dso_local i32 @fsocket_set_bind_cap(i32*) #1

declare dso_local %struct.TYPE_7__* @inet_sk(%struct.TYPE_8__*) #1

declare dso_local i32 @fsocket_reset_bind_cap(i32*) #1

declare dso_local i32 @fsocket_process_affinity_set(i32) #1

declare dso_local i32 @fsocket_sk_affinity_release(%struct.socket*) #1

declare dso_local i32 @fsocket_filp_close_spawn(i32) #1

declare dso_local i32 @fsocket_process_affinity_restore(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
