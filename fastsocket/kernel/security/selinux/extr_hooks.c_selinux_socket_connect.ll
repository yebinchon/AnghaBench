; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_socket_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_socket_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64, i32 }
%struct.sockaddr = type { i32 }
%struct.inode_security_struct = type { i64, i32 }
%struct.common_audit_data = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.TYPE_6__ = type { %struct.inode_security_struct* }

@current = common dso_local global i32 0, align 4
@SOCKET__CONNECT = common dso_local global i32 0, align 4
@SECCLASS_TCP_SOCKET = common dso_local global i64 0, align 8
@SECCLASS_DCCP_SOCKET = common dso_local global i64 0, align 8
@PF_INET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SIN6_LEN_RFC2133 = common dso_local global i32 0, align 4
@TCP_SOCKET__NAME_CONNECT = common dso_local global i32 0, align 4
@DCCP_SOCKET__NAME_CONNECT = common dso_local global i32 0, align 4
@NET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @selinux_socket_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_socket_connect(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.inode_security_struct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.common_audit_data, align 8
  %12 = alloca %struct.sockaddr_in*, align 8
  %13 = alloca %struct.sockaddr_in6*, align 8
  %14 = alloca i16, align 2
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.socket*, %struct.socket** %5, align 8
  %18 = getelementptr inbounds %struct.socket, %struct.socket* %17, i32 0, i32 0
  %19 = load %struct.sock*, %struct.sock** %18, align 8
  store %struct.sock* %19, %struct.sock** %8, align 8
  %20 = load i32, i32* @current, align 4
  %21 = load %struct.socket*, %struct.socket** %5, align 8
  %22 = load i32, i32* @SOCKET__CONNECT, align 4
  %23 = call i32 @socket_has_perm(i32 %20, %struct.socket* %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %4, align 4
  br label %131

28:                                               ; preds = %3
  %29 = load %struct.socket*, %struct.socket** %5, align 8
  %30 = call %struct.TYPE_6__* @SOCK_INODE(%struct.socket* %29)
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.inode_security_struct*, %struct.inode_security_struct** %31, align 8
  store %struct.inode_security_struct* %32, %struct.inode_security_struct** %9, align 8
  %33 = load %struct.inode_security_struct*, %struct.inode_security_struct** %9, align 8
  %34 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SECCLASS_TCP_SOCKET, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %28
  %39 = load %struct.inode_security_struct*, %struct.inode_security_struct** %9, align 8
  %40 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SECCLASS_DCCP_SOCKET, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %125

44:                                               ; preds = %38, %28
  store %struct.sockaddr_in* null, %struct.sockaddr_in** %12, align 8
  store %struct.sockaddr_in6* null, %struct.sockaddr_in6** %13, align 8
  %45 = load %struct.sock*, %struct.sock** %8, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PF_INET, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %44
  %51 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %52 = bitcast %struct.sockaddr* %51 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %52, %struct.sockaddr_in** %12, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp ult i64 %54, 4
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %131

59:                                               ; preds = %50
  %60 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %61 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call zeroext i16 @ntohs(i32 %62)
  store i16 %63, i16* %14, align 2
  br label %78

64:                                               ; preds = %44
  %65 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %66 = bitcast %struct.sockaddr* %65 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %66, %struct.sockaddr_in6** %13, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @SIN6_LEN_RFC2133, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %131

73:                                               ; preds = %64
  %74 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %75 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call zeroext i16 @ntohs(i32 %76)
  store i16 %77, i16* %14, align 2
  br label %78

78:                                               ; preds = %73, %59
  %79 = load %struct.sock*, %struct.sock** %8, align 8
  %80 = getelementptr inbounds %struct.sock, %struct.sock* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i16, i16* %14, align 2
  %83 = call i32 @sel_netport_sid(i32 %81, i16 zeroext %82, i32* %15)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  br label %129

87:                                               ; preds = %78
  %88 = load %struct.inode_security_struct*, %struct.inode_security_struct** %9, align 8
  %89 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @SECCLASS_TCP_SOCKET, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i32, i32* @TCP_SOCKET__NAME_CONNECT, align 4
  br label %97

95:                                               ; preds = %87
  %96 = load i32, i32* @DCCP_SOCKET__NAME_CONNECT, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %94, %93 ], [ %96, %95 ]
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* @NET, align 4
  %100 = call i32 @COMMON_AUDIT_DATA_INIT(%struct.common_audit_data* %11, i32 %99)
  %101 = load i16, i16* %14, align 2
  %102 = call i32 @htons(i16 zeroext %101)
  %103 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %11, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  store i32 %102, i32* %105, align 8
  %106 = load %struct.sock*, %struct.sock** %8, align 8
  %107 = getelementptr inbounds %struct.sock, %struct.sock* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %11, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  store i64 %108, i64* %111, align 8
  %112 = load %struct.inode_security_struct*, %struct.inode_security_struct** %9, align 8
  %113 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %15, align 4
  %116 = load %struct.inode_security_struct*, %struct.inode_security_struct** %9, align 8
  %117 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* %16, align 4
  %120 = call i32 @avc_has_perm(i32 %114, i32 %115, i64 %118, i32 %119, %struct.common_audit_data* %11)
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %97
  br label %129

124:                                              ; preds = %97
  br label %125

125:                                              ; preds = %124, %38
  %126 = load %struct.sock*, %struct.sock** %8, align 8
  %127 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %128 = call i32 @selinux_netlbl_socket_connect(%struct.sock* %126, %struct.sockaddr* %127)
  store i32 %128, i32* %10, align 4
  br label %129

129:                                              ; preds = %125, %123, %86
  %130 = load i32, i32* %10, align 4
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %129, %70, %56, %26
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @socket_has_perm(i32, %struct.socket*, i32) #1

declare dso_local %struct.TYPE_6__* @SOCK_INODE(%struct.socket*) #1

declare dso_local zeroext i16 @ntohs(i32) #1

declare dso_local i32 @sel_netport_sid(i32, i16 zeroext, i32*) #1

declare dso_local i32 @COMMON_AUDIT_DATA_INIT(%struct.common_audit_data*, i32) #1

declare dso_local i32 @htons(i16 zeroext) #1

declare dso_local i32 @avc_has_perm(i32, i32, i64, i32, %struct.common_audit_data*) #1

declare dso_local i32 @selinux_netlbl_socket_connect(%struct.sock*, %struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
