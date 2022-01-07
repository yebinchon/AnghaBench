; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_af_decnet.c___dn_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_af_decnet.c___dn_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.TYPE_5__*, i32, i32, %struct.socket* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.socket = type { i64 }
%struct.sockaddr_dn = type { i64, i32 }
%struct.dn_scp = type { i64, i32, i32, i32 }
%struct.flowi = type { i32, i8*, i8*, i32 }

@EISCONN = common dso_local global i32 0, align 4
@SS_CONNECTED = common dso_local global i64 0, align 8
@SS_CONNECTING = common dso_local global i64 0, align 8
@DN_RUN = common dso_local global i64 0, align 8
@ECONNREFUSED = common dso_local global i32 0, align 4
@DN_CI = common dso_local global i64 0, align 8
@DN_CC = common dso_local global i64 0, align 8
@SS_UNCONNECTED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DN_O = common dso_local global i64 0, align 8
@AF_DECnet = common dso_local global i64 0, align 8
@SDF_WILD = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4
@DNPROTO_NSP = common dso_local global i32 0, align 4
@RTAX_ADVMSS = common dso_local global i32 0, align 4
@NSP_CI = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sockaddr_dn*, i32, i64*, i32)* @__dn_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dn_connect(%struct.sock* %0, %struct.sockaddr_dn* %1, i32 %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sockaddr_dn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.socket*, align 8
  %13 = alloca %struct.dn_scp*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.flowi, align 8
  store %struct.sock* %0, %struct.sock** %7, align 8
  store %struct.sockaddr_dn* %1, %struct.sockaddr_dn** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.sock*, %struct.sock** %7, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 3
  %18 = load %struct.socket*, %struct.socket** %17, align 8
  store %struct.socket* %18, %struct.socket** %12, align 8
  %19 = load %struct.sock*, %struct.sock** %7, align 8
  %20 = call %struct.dn_scp* @DN_SK(%struct.sock* %19)
  store %struct.dn_scp* %20, %struct.dn_scp** %13, align 8
  %21 = load i32, i32* @EISCONN, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %14, align 4
  %23 = load %struct.socket*, %struct.socket** %12, align 8
  %24 = getelementptr inbounds %struct.socket, %struct.socket* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SS_CONNECTED, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  br label %180

29:                                               ; preds = %5
  %30 = load %struct.socket*, %struct.socket** %12, align 8
  %31 = getelementptr inbounds %struct.socket, %struct.socket* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SS_CONNECTING, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %67

35:                                               ; preds = %29
  store i32 0, i32* %14, align 4
  %36 = load %struct.dn_scp*, %struct.dn_scp** %13, align 8
  %37 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @DN_RUN, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i64, i64* @SS_CONNECTED, align 8
  %43 = load %struct.socket*, %struct.socket** %12, align 8
  %44 = getelementptr inbounds %struct.socket, %struct.socket* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %180

45:                                               ; preds = %35
  %46 = load i32, i32* @ECONNREFUSED, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %14, align 4
  %48 = load %struct.dn_scp*, %struct.dn_scp** %13, align 8
  %49 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @DN_CI, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %45
  %54 = load %struct.dn_scp*, %struct.dn_scp** %13, align 8
  %55 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @DN_CC, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i64, i64* @SS_UNCONNECTED, align 8
  %61 = load %struct.socket*, %struct.socket** %12, align 8
  %62 = getelementptr inbounds %struct.socket, %struct.socket* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  br label %180

63:                                               ; preds = %53, %45
  %64 = load %struct.sock*, %struct.sock** %7, align 8
  %65 = load i64*, i64** %10, align 8
  %66 = call i32 @dn_wait_run(%struct.sock* %64, i64* %65)
  store i32 %66, i32* %6, align 4
  br label %182

67:                                               ; preds = %29
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %14, align 4
  %70 = load %struct.dn_scp*, %struct.dn_scp** %13, align 8
  %71 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @DN_O, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %180

76:                                               ; preds = %67
  %77 = load %struct.sockaddr_dn*, %struct.sockaddr_dn** %8, align 8
  %78 = icmp eq %struct.sockaddr_dn* %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = icmp ne i64 %81, 16
  br i1 %82, label %83, label %84

83:                                               ; preds = %79, %76
  br label %180

84:                                               ; preds = %79
  %85 = load %struct.sockaddr_dn*, %struct.sockaddr_dn** %8, align 8
  %86 = getelementptr inbounds %struct.sockaddr_dn, %struct.sockaddr_dn* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @AF_DECnet, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %180

91:                                               ; preds = %84
  %92 = load %struct.sockaddr_dn*, %struct.sockaddr_dn** %8, align 8
  %93 = getelementptr inbounds %struct.sockaddr_dn, %struct.sockaddr_dn* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @SDF_WILD, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  br label %180

99:                                               ; preds = %91
  %100 = load %struct.sock*, %struct.sock** %7, align 8
  %101 = load i32, i32* @SOCK_ZAPPED, align 4
  %102 = call i64 @sock_flag(%struct.sock* %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %99
  %105 = load %struct.sock*, %struct.sock** %7, align 8
  %106 = getelementptr inbounds %struct.sock, %struct.sock* %105, i32 0, i32 3
  %107 = load %struct.socket*, %struct.socket** %106, align 8
  %108 = call i32 @dn_auto_bind(%struct.socket* %107)
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %14, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %180

112:                                              ; preds = %104
  br label %113

113:                                              ; preds = %112, %99
  %114 = load %struct.dn_scp*, %struct.dn_scp** %13, align 8
  %115 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %114, i32 0, i32 3
  %116 = load %struct.sockaddr_dn*, %struct.sockaddr_dn** %8, align 8
  %117 = call i32 @memcpy(i32* %115, %struct.sockaddr_dn* %116, i32 16)
  %118 = load i32, i32* @EHOSTUNREACH, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %14, align 4
  %120 = call i32 @memset(%struct.flowi* %15, i32 0, i32 32)
  %121 = load %struct.sock*, %struct.sock** %7, align 8
  %122 = getelementptr inbounds %struct.sock, %struct.sock* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.flowi, %struct.flowi* %15, i32 0, i32 3
  store i32 %123, i32* %124, align 8
  %125 = load %struct.dn_scp*, %struct.dn_scp** %13, align 8
  %126 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %125, i32 0, i32 3
  %127 = call i8* @dn_saddr2dn(i32* %126)
  %128 = getelementptr inbounds %struct.flowi, %struct.flowi* %15, i32 0, i32 2
  store i8* %127, i8** %128, align 8
  %129 = load %struct.dn_scp*, %struct.dn_scp** %13, align 8
  %130 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %129, i32 0, i32 2
  %131 = call i8* @dn_saddr2dn(i32* %130)
  %132 = getelementptr inbounds %struct.flowi, %struct.flowi* %15, i32 0, i32 1
  store i8* %131, i8** %132, align 8
  %133 = load %struct.dn_scp*, %struct.dn_scp** %13, align 8
  %134 = call i32 @dn_sk_ports_copy(%struct.flowi* %15, %struct.dn_scp* %133)
  %135 = load i32, i32* @DNPROTO_NSP, align 4
  %136 = getelementptr inbounds %struct.flowi, %struct.flowi* %15, i32 0, i32 0
  store i32 %135, i32* %136, align 8
  %137 = load %struct.sock*, %struct.sock** %7, align 8
  %138 = getelementptr inbounds %struct.sock, %struct.sock* %137, i32 0, i32 0
  %139 = load %struct.sock*, %struct.sock** %7, align 8
  %140 = load i32, i32* %11, align 4
  %141 = call i64 @dn_route_output_sock(%struct.TYPE_5__** %138, %struct.flowi* %15, %struct.sock* %139, i32 %140)
  %142 = icmp slt i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %113
  br label %180

144:                                              ; preds = %113
  %145 = load %struct.sock*, %struct.sock** %7, align 8
  %146 = getelementptr inbounds %struct.sock, %struct.sock* %145, i32 0, i32 0
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.sock*, %struct.sock** %7, align 8
  %153 = getelementptr inbounds %struct.sock, %struct.sock* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 8
  %154 = load i64, i64* @SS_CONNECTING, align 8
  %155 = load %struct.socket*, %struct.socket** %12, align 8
  %156 = getelementptr inbounds %struct.socket, %struct.socket* %155, i32 0, i32 0
  store i64 %154, i64* %156, align 8
  %157 = load i64, i64* @DN_CI, align 8
  %158 = load %struct.dn_scp*, %struct.dn_scp** %13, align 8
  %159 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %158, i32 0, i32 0
  store i64 %157, i64* %159, align 8
  %160 = load %struct.sock*, %struct.sock** %7, align 8
  %161 = getelementptr inbounds %struct.sock, %struct.sock* %160, i32 0, i32 0
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %161, align 8
  %163 = load i32, i32* @RTAX_ADVMSS, align 4
  %164 = call i32 @dst_metric(%struct.TYPE_5__* %162, i32 %163)
  %165 = load %struct.dn_scp*, %struct.dn_scp** %13, align 8
  %166 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 8
  %167 = load %struct.sock*, %struct.sock** %7, align 8
  %168 = load i32, i32* @NSP_CI, align 4
  %169 = call i32 @dn_nsp_send_conninit(%struct.sock* %167, i32 %168)
  %170 = load i32, i32* @EINPROGRESS, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %14, align 4
  %172 = load i64*, i64** %10, align 8
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %144
  %176 = load %struct.sock*, %struct.sock** %7, align 8
  %177 = load i64*, i64** %10, align 8
  %178 = call i32 @dn_wait_run(%struct.sock* %176, i64* %177)
  store i32 %178, i32* %14, align 4
  br label %179

179:                                              ; preds = %175, %144
  br label %180

180:                                              ; preds = %179, %143, %111, %98, %90, %83, %75, %59, %41, %28
  %181 = load i32, i32* %14, align 4
  store i32 %181, i32* %6, align 4
  br label %182

182:                                              ; preds = %180, %63
  %183 = load i32, i32* %6, align 4
  ret i32 %183
}

declare dso_local %struct.dn_scp* @DN_SK(%struct.sock*) #1

declare dso_local i32 @dn_wait_run(%struct.sock*, i64*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @dn_auto_bind(%struct.socket*) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr_dn*, i32) #1

declare dso_local i32 @memset(%struct.flowi*, i32, i32) #1

declare dso_local i8* @dn_saddr2dn(i32*) #1

declare dso_local i32 @dn_sk_ports_copy(%struct.flowi*, %struct.dn_scp*) #1

declare dso_local i64 @dn_route_output_sock(%struct.TYPE_5__**, %struct.flowi*, %struct.sock*, i32) #1

declare dso_local i32 @dst_metric(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @dn_nsp_send_conninit(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
