; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_socket_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_selinux_socket_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64, i32 }
%struct.sockaddr = type { i32 }
%struct.inode_security_struct = type { i32, i32 }
%struct.common_audit_data = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_8__, i64, i8* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.sockaddr_in = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.sockaddr_in6 = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { %struct.inode_security_struct* }

@current = common dso_local global i32 0, align 4
@SOCKET__BIND = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i64 0, align 8
@PF_INET6 = common dso_local global i64 0, align 8
@PROT_SOCK = common dso_local global i32 0, align 4
@NET = common dso_local global i32 0, align 4
@SOCKET__NAME_BIND = common dso_local global i32 0, align 4
@TCP_SOCKET__NODE_BIND = common dso_local global i32 0, align 4
@UDP_SOCKET__NODE_BIND = common dso_local global i32 0, align 4
@DCCP_SOCKET__NODE_BIND = common dso_local global i32 0, align 4
@RAWIP_SOCKET__NODE_BIND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @selinux_socket_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_socket_bind(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.inode_security_struct*, align 8
  %11 = alloca %struct.common_audit_data, align 8
  %12 = alloca %struct.sockaddr_in*, align 8
  %13 = alloca %struct.sockaddr_in6*, align 8
  %14 = alloca i16, align 2
  %15 = alloca %struct.sock*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store i32 %2, i32* %6, align 4
  %20 = load i32, i32* @current, align 4
  %21 = load %struct.socket*, %struct.socket** %4, align 8
  %22 = load i32, i32* @SOCKET__BIND, align 4
  %23 = call i32 @socket_has_perm(i32 %20, %struct.socket* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %191

27:                                               ; preds = %3
  %28 = load %struct.socket*, %struct.socket** %4, align 8
  %29 = getelementptr inbounds %struct.socket, %struct.socket* %28, i32 0, i32 0
  %30 = load %struct.sock*, %struct.sock** %29, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @PF_INET, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %27
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @PF_INET6, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %190

40:                                               ; preds = %36, %27
  store %struct.sockaddr_in* null, %struct.sockaddr_in** %12, align 8
  store %struct.sockaddr_in6* null, %struct.sockaddr_in6** %13, align 8
  %41 = load %struct.socket*, %struct.socket** %4, align 8
  %42 = getelementptr inbounds %struct.socket, %struct.socket* %41, i32 0, i32 0
  %43 = load %struct.sock*, %struct.sock** %42, align 8
  store %struct.sock* %43, %struct.sock** %15, align 8
  %44 = load %struct.socket*, %struct.socket** %4, align 8
  %45 = call %struct.TYPE_14__* @SOCK_INODE(%struct.socket* %44)
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load %struct.inode_security_struct*, %struct.inode_security_struct** %46, align 8
  store %struct.inode_security_struct* %47, %struct.inode_security_struct** %10, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @PF_INET, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %40
  %52 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %53 = bitcast %struct.sockaddr* %52 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %53, %struct.sockaddr_in** %12, align 8
  %54 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %55 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call zeroext i16 @ntohs(i32 %56)
  store i16 %57, i16* %14, align 2
  %58 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %59 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = bitcast i64* %60 to i8*
  store i8* %61, i8** %9, align 8
  br label %73

62:                                               ; preds = %40
  %63 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %64 = bitcast %struct.sockaddr* %63 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %64, %struct.sockaddr_in6** %13, align 8
  %65 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %66 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call zeroext i16 @ntohs(i32 %67)
  store i16 %68, i16* %14, align 2
  %69 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %70 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = bitcast i32* %71 to i8*
  store i8* %72, i8** %9, align 8
  br label %73

73:                                               ; preds = %62, %51
  %74 = load i16, i16* %14, align 2
  %75 = icmp ne i16 %74, 0
  br i1 %75, label %76, label %125

76:                                               ; preds = %73
  %77 = call i32 @inet_get_local_port_range(i32* %18, i32* %19)
  %78 = load i16, i16* %14, align 2
  %79 = zext i16 %78 to i32
  %80 = load i32, i32* @PROT_SOCK, align 4
  %81 = load i32, i32* %18, align 4
  %82 = call zeroext i16 @max(i32 %80, i32 %81)
  %83 = zext i16 %82 to i32
  %84 = icmp slt i32 %79, %83
  br i1 %84, label %90, label %85

85:                                               ; preds = %76
  %86 = load i16, i16* %14, align 2
  %87 = zext i16 %86 to i32
  %88 = load i32, i32* %19, align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %90, label %124

90:                                               ; preds = %85, %76
  %91 = load %struct.sock*, %struct.sock** %15, align 8
  %92 = getelementptr inbounds %struct.sock, %struct.sock* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i16, i16* %14, align 2
  %95 = call i32 @sel_netport_sid(i32 %93, i16 zeroext %94, i32* %16)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  br label %191

99:                                               ; preds = %90
  %100 = load i32, i32* @NET, align 4
  %101 = call i32 @COMMON_AUDIT_DATA_INIT(%struct.common_audit_data* %11, i32 %100)
  %102 = load i16, i16* %14, align 2
  %103 = call i8* @htons(i16 zeroext %102)
  %104 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %11, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 3
  store i8* %103, i8** %106, align 8
  %107 = load i64, i64* %7, align 8
  %108 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %11, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 2
  store i64 %107, i64* %110, align 8
  %111 = load %struct.inode_security_struct*, %struct.inode_security_struct** %10, align 8
  %112 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %16, align 4
  %115 = load %struct.inode_security_struct*, %struct.inode_security_struct** %10, align 8
  %116 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @SOCKET__NAME_BIND, align 4
  %119 = call i32 @avc_has_perm(i32 %113, i32 %114, i32 %117, i32 %118, %struct.common_audit_data* %11)
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %99
  br label %191

123:                                              ; preds = %99
  br label %124

124:                                              ; preds = %123, %85
  br label %125

125:                                              ; preds = %124, %73
  %126 = load %struct.inode_security_struct*, %struct.inode_security_struct** %10, align 8
  %127 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  switch i32 %128, label %135 [
    i32 129, label %129
    i32 128, label %131
    i32 130, label %133
  ]

129:                                              ; preds = %125
  %130 = load i32, i32* @TCP_SOCKET__NODE_BIND, align 4
  store i32 %130, i32* %17, align 4
  br label %137

131:                                              ; preds = %125
  %132 = load i32, i32* @UDP_SOCKET__NODE_BIND, align 4
  store i32 %132, i32* %17, align 4
  br label %137

133:                                              ; preds = %125
  %134 = load i32, i32* @DCCP_SOCKET__NODE_BIND, align 4
  store i32 %134, i32* %17, align 4
  br label %137

135:                                              ; preds = %125
  %136 = load i32, i32* @RAWIP_SOCKET__NODE_BIND, align 4
  store i32 %136, i32* %17, align 4
  br label %137

137:                                              ; preds = %135, %133, %131, %129
  %138 = load i8*, i8** %9, align 8
  %139 = load i64, i64* %7, align 8
  %140 = call i32 @sel_netnode_sid(i8* %138, i64 %139, i32* %16)
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* %8, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  br label %191

144:                                              ; preds = %137
  %145 = load i32, i32* @NET, align 4
  %146 = call i32 @COMMON_AUDIT_DATA_INIT(%struct.common_audit_data* %11, i32 %145)
  %147 = load i16, i16* %14, align 2
  %148 = call i8* @htons(i16 zeroext %147)
  %149 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %11, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 3
  store i8* %148, i8** %151, align 8
  %152 = load i64, i64* %7, align 8
  %153 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %11, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 2
  store i64 %152, i64* %155, align 8
  %156 = load i64, i64* %7, align 8
  %157 = load i64, i64* @PF_INET, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %168

159:                                              ; preds = %144
  %160 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %161 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %11, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  store i64 %163, i64* %167, align 8
  br label %176

168:                                              ; preds = %144
  %169 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %11, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  %173 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %174 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %173, i32 0, i32 0
  %175 = call i32 @ipv6_addr_copy(i32* %172, %struct.TYPE_13__* %174)
  br label %176

176:                                              ; preds = %168, %159
  %177 = load %struct.inode_security_struct*, %struct.inode_security_struct** %10, align 8
  %178 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %16, align 4
  %181 = load %struct.inode_security_struct*, %struct.inode_security_struct** %10, align 8
  %182 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %17, align 4
  %185 = call i32 @avc_has_perm(i32 %179, i32 %180, i32 %183, i32 %184, %struct.common_audit_data* %11)
  store i32 %185, i32* %8, align 4
  %186 = load i32, i32* %8, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %176
  br label %191

189:                                              ; preds = %176
  br label %190

190:                                              ; preds = %189, %36
  br label %191

191:                                              ; preds = %190, %188, %143, %122, %98, %26
  %192 = load i32, i32* %8, align 4
  ret i32 %192
}

declare dso_local i32 @socket_has_perm(i32, %struct.socket*, i32) #1

declare dso_local %struct.TYPE_14__* @SOCK_INODE(%struct.socket*) #1

declare dso_local zeroext i16 @ntohs(i32) #1

declare dso_local i32 @inet_get_local_port_range(i32*, i32*) #1

declare dso_local zeroext i16 @max(i32, i32) #1

declare dso_local i32 @sel_netport_sid(i32, i16 zeroext, i32*) #1

declare dso_local i32 @COMMON_AUDIT_DATA_INIT(%struct.common_audit_data*, i32) #1

declare dso_local i8* @htons(i16 zeroext) #1

declare dso_local i32 @avc_has_perm(i32, i32, i32, i32, %struct.common_audit_data*) #1

declare dso_local i32 @sel_netnode_sid(i8*, i64, i32*) #1

declare dso_local i32 @ipv6_addr_copy(i32*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
