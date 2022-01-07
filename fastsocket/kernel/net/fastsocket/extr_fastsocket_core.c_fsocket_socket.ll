; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/fastsocket/extr_fastsocket_core.c_fsocket_socket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/fastsocket/extr_fastsocket_core.c_fsocket_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.socket = type { i32 }
%struct.socket_alloc = type { i32 }

@SOCK_CLOEXEC = common dso_local global i32 0, align 4
@SOCK_NONBLOCK = common dso_local global i32 0, align 4
@ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Unsupported Socket Flags For Fastsocket\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Allocate New Socket failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Initialize Inet Socket failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Map Socket FD failed\0A\00", align 1
@PF_INET = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"security_socket_post_create failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsocket_socket(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @SOCK_CLOEXEC, align 4
  %9 = load i32, i32* @SOCK_NONBLOCK, align 4
  %10 = or i32 %8, %9
  %11 = xor i32 %10, -1
  %12 = and i32 %7, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i32, i32* @ERR, align 4
  %16 = call i32 @EPRINTK_LIMIT(i32 %15, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  br label %79

19:                                               ; preds = %1
  %20 = call %struct.socket* (...) @fsocket_alloc_socket()
  store %struct.socket* %20, %struct.socket** %4, align 8
  %21 = load %struct.socket*, %struct.socket** %4, align 8
  %22 = icmp eq %struct.socket* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i32, i32* @ERR, align 4
  %25 = call i32 @EPRINTK_LIMIT(i32 %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %79

28:                                               ; preds = %19
  %29 = load i32, i32* @SOCK_STREAM, align 4
  %30 = load %struct.socket*, %struct.socket** %4, align 8
  %31 = getelementptr inbounds %struct.socket, %struct.socket* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.socket*, %struct.socket** %4, align 8
  %38 = call i32 @inet_create(i32 %36, %struct.socket* %37, i32 0, i32 0)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %28
  %42 = load i32, i32* @ERR, align 4
  %43 = call i32 @EPRINTK_LIMIT(i32 %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %75

44:                                               ; preds = %28
  %45 = load %struct.socket*, %struct.socket** %4, align 8
  %46 = call i32 @fsocket_init_socket(%struct.socket* %45)
  %47 = load %struct.socket*, %struct.socket** %4, align 8
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @fsock_map_fd(%struct.socket* %47, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* @ERR, align 4
  %55 = call i32 @EPRINTK_LIMIT(i32 %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %72

56:                                               ; preds = %44
  %57 = load %struct.socket*, %struct.socket** %4, align 8
  %58 = load i32, i32* @PF_INET, align 4
  %59 = load i32, i32* @SOCK_STREAM, align 4
  %60 = load i32, i32* @IPPROTO_TCP, align 4
  %61 = call i32 @security_socket_post_create(%struct.socket* %57, i32 %58, i32 %59, i32 %60, i32 0)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %56
  %65 = load i32, i32* @ERR, align 4
  %66 = call i32 @EPRINTK_LIMIT(i32 %65, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @fsocket_close(i32 %67)
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %2, align 4
  br label %81

70:                                               ; preds = %56
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %2, align 4
  br label %81

72:                                               ; preds = %52
  %73 = load %struct.socket*, %struct.socket** %4, align 8
  %74 = call i32 @fsock_release_sock(%struct.socket* %73)
  br label %75

75:                                               ; preds = %72, %41
  %76 = load %struct.socket*, %struct.socket** %4, align 8
  %77 = bitcast %struct.socket* %76 to %struct.socket_alloc*
  %78 = call i32 @fsocket_free_socket_mem(%struct.socket_alloc* %77)
  br label %79

79:                                               ; preds = %75, %23, %14
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %79, %70, %64
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @EPRINTK_LIMIT(i32, i8*) #1

declare dso_local %struct.socket* @fsocket_alloc_socket(...) #1

declare dso_local i32 @inet_create(i32, %struct.socket*, i32, i32) #1

declare dso_local i32 @fsocket_init_socket(%struct.socket*) #1

declare dso_local i32 @fsock_map_fd(%struct.socket*, i32) #1

declare dso_local i32 @security_socket_post_create(%struct.socket*, i32, i32, i32, i32) #1

declare dso_local i32 @fsocket_close(i32) #1

declare dso_local i32 @fsock_release_sock(%struct.socket*) #1

declare dso_local i32 @fsocket_free_socket_mem(%struct.socket_alloc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
