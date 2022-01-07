; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_udp.c_udp_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_udp.c_udp_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.tport = type { i32 }
%struct.port_input = type { i64, i64, i32, i32, i32*, i32, i32 }
%struct.udp_port = type { i32 }
%struct.msghdr = type { i32, i8*, i32, i32, %struct.iovec*, i32, i32 }
%struct.iovec = type { i32, i32* }
%struct.cmsghdr = type { i64, i64 }
%struct.sockcred = type { i32 }

@CMGROUP_MAX = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4
@snmpd_stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@IPPROTO_IP = common dso_local global i64 0, align 8
@IP_RECVDSTADDR = common dso_local global i64 0, align 8
@SOL_SOCKET = common dso_local global i64 0, align 8
@SCM_CREDS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tport*, %struct.port_input*)* @udp_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udp_recv(%struct.tport* %0, %struct.port_input* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tport*, align 8
  %5 = alloca %struct.port_input*, align 8
  %6 = alloca [1000 x i32], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.udp_port*, align 8
  %10 = alloca %struct.msghdr, align 8
  %11 = alloca [1 x %struct.iovec], align 16
  %12 = alloca i32, align 4
  %13 = alloca %struct.cmsghdr*, align 8
  %14 = alloca %struct.sockcred*, align 8
  %15 = alloca i32, align 4
  store %struct.tport* %0, %struct.tport** %4, align 8
  store %struct.port_input* %1, %struct.port_input** %5, align 8
  %16 = load i32, i32* @CMGROUP_MAX, align 4
  %17 = call i32 @SOCKCREDSIZE(i32 %16)
  %18 = call i32 @CMSG_SPACE(i32 %17)
  %19 = call i32 @CMSG_SPACE(i32 4)
  %20 = add nsw i32 %18, %19
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %7, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %8, align 8
  %24 = load %struct.tport*, %struct.tport** %4, align 8
  %25 = bitcast %struct.tport* %24 to %struct.udp_port*
  store %struct.udp_port* %25, %struct.udp_port** %9, align 8
  store %struct.sockcred* null, %struct.sockcred** %14, align 8
  %26 = load %struct.port_input*, %struct.port_input** %5, align 8
  %27 = getelementptr inbounds %struct.port_input, %struct.port_input* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %45

30:                                               ; preds = %2
  %31 = call i32* @buf_alloc(i32 0)
  %32 = load %struct.port_input*, %struct.port_input** %5, align 8
  %33 = getelementptr inbounds %struct.port_input, %struct.port_input* %32, i32 0, i32 4
  store i32* %31, i32** %33, align 8
  %34 = icmp eq i32* %31, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.port_input*, %struct.port_input** %5, align 8
  %37 = getelementptr inbounds %struct.port_input, %struct.port_input* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds [1000 x i32], [1000 x i32]* %6, i64 0, i64 0
  %40 = call i32 @recvfrom(i32 %38, i32* %39, i32 4000, i32 0, i32* null, i32* null)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %152

41:                                               ; preds = %30
  %42 = call i32 @buf_size(i32 0)
  %43 = load %struct.port_input*, %struct.port_input** %5, align 8
  %44 = getelementptr inbounds %struct.port_input, %struct.port_input* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %2
  %46 = load %struct.port_input*, %struct.port_input** %5, align 8
  %47 = getelementptr inbounds %struct.port_input, %struct.port_input* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 6
  store i32 %48, i32* %49, align 4
  %50 = load %struct.port_input*, %struct.port_input** %5, align 8
  %51 = getelementptr inbounds %struct.port_input, %struct.port_input* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 5
  store i32 %52, i32* %53, align 8
  %54 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %11, i64 0, i64 0
  %55 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 4
  store %struct.iovec* %54, %struct.iovec** %55, align 8
  %56 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = trunc i64 %21 to i32
  %58 = call i32 @memset(i8* %23, i32 0, i32 %57)
  %59 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 1
  store i8* %23, i8** %59, align 8
  %60 = trunc i64 %21 to i32
  %61 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 2
  store i32 %60, i32* %61, align 8
  %62 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 3
  store i32 0, i32* %62, align 4
  %63 = load %struct.port_input*, %struct.port_input** %5, align 8
  %64 = getelementptr inbounds %struct.port_input, %struct.port_input* %63, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %11, i64 0, i64 0
  %67 = getelementptr inbounds %struct.iovec, %struct.iovec* %66, i32 0, i32 1
  store i32* %65, i32** %67, align 8
  %68 = load %struct.port_input*, %struct.port_input** %5, align 8
  %69 = getelementptr inbounds %struct.port_input, %struct.port_input* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %11, i64 0, i64 0
  %72 = getelementptr inbounds %struct.iovec, %struct.iovec* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 16
  %73 = load %struct.port_input*, %struct.port_input** %5, align 8
  %74 = getelementptr inbounds %struct.port_input, %struct.port_input* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @recvmsg(i32 %75, %struct.msghdr* %10, i32 0)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %82, label %79

79:                                               ; preds = %45
  %80 = load i32, i32* %12, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79, %45
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %152

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @MSG_TRUNC, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %83
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmpd_stats, i32 0, i32 1), align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmpd_stats, i32 0, i32 1), align 4
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmpd_stats, i32 0, i32 0), align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmpd_stats, i32 0, i32 0), align 4
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %152

94:                                               ; preds = %83
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = load %struct.port_input*, %struct.port_input** %5, align 8
  %98 = getelementptr inbounds %struct.port_input, %struct.port_input* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  %99 = call %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr* %10)
  store %struct.cmsghdr* %99, %struct.cmsghdr** %13, align 8
  br label %100

100:                                              ; preds = %139, %94
  %101 = load %struct.cmsghdr*, %struct.cmsghdr** %13, align 8
  %102 = icmp ne %struct.cmsghdr* %101, null
  br i1 %102, label %103, label %142

103:                                              ; preds = %100
  %104 = load %struct.cmsghdr*, %struct.cmsghdr** %13, align 8
  %105 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @IPPROTO_IP, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %121

109:                                              ; preds = %103
  %110 = load %struct.cmsghdr*, %struct.cmsghdr** %13, align 8
  %111 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @IP_RECVDSTADDR, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = load %struct.udp_port*, %struct.udp_port** %9, align 8
  %117 = getelementptr inbounds %struct.udp_port, %struct.udp_port* %116, i32 0, i32 0
  %118 = load %struct.cmsghdr*, %struct.cmsghdr** %13, align 8
  %119 = call i64 @CMSG_DATA(%struct.cmsghdr* %118)
  %120 = call i32 @memcpy(i32* %117, i64 %119, i32 4)
  br label %121

121:                                              ; preds = %115, %109, %103
  %122 = load %struct.cmsghdr*, %struct.cmsghdr** %13, align 8
  %123 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @SOL_SOCKET, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %138

127:                                              ; preds = %121
  %128 = load %struct.cmsghdr*, %struct.cmsghdr** %13, align 8
  %129 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @SCM_CREDS, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %127
  %134 = load %struct.cmsghdr*, %struct.cmsghdr** %13, align 8
  %135 = call i64 @CMSG_DATA(%struct.cmsghdr* %134)
  %136 = inttoptr i64 %135 to i8*
  %137 = bitcast i8* %136 to %struct.sockcred*
  store %struct.sockcred* %137, %struct.sockcred** %14, align 8
  br label %138

138:                                              ; preds = %133, %127, %121
  br label %139

139:                                              ; preds = %138
  %140 = load %struct.cmsghdr*, %struct.cmsghdr** %13, align 8
  %141 = call %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr* %10, %struct.cmsghdr* %140)
  store %struct.cmsghdr* %141, %struct.cmsghdr** %13, align 8
  br label %100

142:                                              ; preds = %100
  %143 = load %struct.port_input*, %struct.port_input** %5, align 8
  %144 = getelementptr inbounds %struct.port_input, %struct.port_input* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %142
  %148 = load %struct.port_input*, %struct.port_input** %5, align 8
  %149 = load %struct.sockcred*, %struct.sockcred** %14, align 8
  %150 = call i32 @check_priv_dgram(%struct.port_input* %148, %struct.sockcred* %149)
  br label %151

151:                                              ; preds = %147, %142
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %152

152:                                              ; preds = %151, %89, %82, %35
  %153 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %153)
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @CMSG_SPACE(i32) #1

declare dso_local i32 @SOCKCREDSIZE(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @buf_alloc(i32) #1

declare dso_local i32 @recvfrom(i32, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @buf_size(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @recvmsg(i32, %struct.msghdr*, i32) #1

declare dso_local %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr*) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i64 @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr*, %struct.cmsghdr*) #1

declare dso_local i32 @check_priv_dgram(%struct.port_input*, %struct.sockcred*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
