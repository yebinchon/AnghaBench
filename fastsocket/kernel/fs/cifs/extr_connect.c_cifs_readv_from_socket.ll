; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_cifs_readv_from_socket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_cifs_readv_from_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i64, i32 }
%struct.kvec = type { i32 }
%struct.msghdr = type { i64, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@CifsExiting = common dso_local global i64 0, align 8
@ESHUTDOWN = common dso_local global i32 0, align 4
@CifsNeedReconnect = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Received no data or error: expecting %d got %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_readv_from_socket(%struct.TCP_Server_Info* %0, %struct.kvec* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TCP_Server_Info*, align 8
  %7 = alloca %struct.kvec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.msghdr, align 8
  %14 = alloca %struct.kvec*, align 8
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %6, align 8
  store %struct.kvec* %1, %struct.kvec** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.kvec* @get_server_iovec(%struct.TCP_Server_Info* %15, i32 %16)
  store %struct.kvec* %17, %struct.kvec** %14, align 8
  %18 = load %struct.kvec*, %struct.kvec** %14, align 8
  %19 = icmp ne %struct.kvec* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %109

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 0
  store i64 0, i64* %25, align 8
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %100, %23
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %107

29:                                               ; preds = %26
  %30 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %31 = call i64 @server_unresponsive(%struct.TCP_Server_Info* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @EAGAIN, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %11, align 4
  br label %107

36:                                               ; preds = %29
  %37 = load %struct.kvec*, %struct.kvec** %14, align 8
  %38 = load %struct.kvec*, %struct.kvec** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @kvec_array_init(%struct.kvec* %37, %struct.kvec* %38, i32 %39, i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %43 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.kvec*, %struct.kvec** %14, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @kernel_recvmsg(i32 %44, %struct.msghdr* %13, %struct.kvec* %45, i32 %46, i32 %47, i32 0)
  store i32 %48, i32* %10, align 4
  %49 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %50 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @CifsExiting, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %36
  %55 = load i32, i32* @ESHUTDOWN, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %11, align 4
  br label %107

57:                                               ; preds = %36
  %58 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %59 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @CifsNeedReconnect, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %65 = call i32 @cifs_reconnect(%struct.TCP_Server_Info* %64)
  %66 = load i32, i32* @EAGAIN, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %11, align 4
  br label %107

68:                                               ; preds = %57
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @ERESTARTSYS, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %83, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @EAGAIN, align 4
  %76 = sub nsw i32 0, %75
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @EINTR, align 4
  %81 = sub nsw i32 0, %80
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %78, %73, %68
  %84 = call i32 @usleep_range(i32 1000, i32 2000)
  store i32 0, i32* %10, align 4
  br label %100

85:                                               ; preds = %78
  %86 = load i32, i32* %10, align 4
  %87 = icmp sle i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %85
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %90)
  %92 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %93 = call i32 @cifs_reconnect(%struct.TCP_Server_Info* %92)
  %94 = load i32, i32* @EAGAIN, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %11, align 4
  br label %107

96:                                               ; preds = %85
  br label %97

97:                                               ; preds = %96
  br label %98

98:                                               ; preds = %97
  br label %99

99:                                               ; preds = %98
  br label %100

100:                                              ; preds = %99, %83
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %9, align 4
  %106 = sub i32 %105, %104
  store i32 %106, i32* %9, align 4
  br label %26

107:                                              ; preds = %88, %63, %54, %33, %26
  %108 = load i32, i32* %11, align 4
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %107, %20
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local %struct.kvec* @get_server_iovec(%struct.TCP_Server_Info*, i32) #1

declare dso_local i64 @server_unresponsive(%struct.TCP_Server_Info*) #1

declare dso_local i32 @kvec_array_init(%struct.kvec*, %struct.kvec*, i32, i32) #1

declare dso_local i32 @kernel_recvmsg(i32, %struct.msghdr*, %struct.kvec*, i32, i32, i32) #1

declare dso_local i32 @cifs_reconnect(%struct.TCP_Server_Info*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @cFYI(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
