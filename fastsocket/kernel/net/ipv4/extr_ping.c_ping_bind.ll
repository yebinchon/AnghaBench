; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ping.c_ping_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ping.c_ping_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i64 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.inet_sock = type { i64, i64, i64, i64, i64, i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"ping_v4_bind(sk=%p,sa_addr=%08x,sa_port=%d)\0A\00", align 1
@INADDR_ANY = common dso_local global i32 0, align 4
@RTN_LOCAL = common dso_local global i32 0, align 4
@sysctl_ip_nonlocal_bind = common dso_local global i64 0, align 8
@RTN_MULTICAST = common dso_local global i32 0, align 4
@RTN_BROADCAST = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"after bind(): num = %d, daddr = %pI4, dif = %d\0A\00", align 1
@SOCK_BINDADDR_LOCK = common dso_local global i32 0, align 4
@SOCK_BINDPORT_LOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"ping_v4_bind -> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sockaddr*, i32)* @ping_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ping_bind(%struct.sock* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca %struct.inet_sock*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %14 = bitcast %struct.sockaddr* %13 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %14, %struct.sockaddr_in** %8, align 8
  %15 = load %struct.sock*, %struct.sock** %5, align 8
  %16 = call %struct.inet_sock* @inet_sk(%struct.sock* %15)
  store %struct.inet_sock* %16, %struct.inet_sock** %9, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ult i64 %18, 16
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %163

23:                                               ; preds = %3
  %24 = load %struct.sock*, %struct.sock** %5, align 8
  %25 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call zeroext i16 @ntohs(i32 %31)
  %33 = zext i16 %32 to i32
  %34 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.sock* %24, i64 %28, i32 %33)
  %35 = load %struct.sock*, %struct.sock** %5, align 8
  %36 = call i32 @sock_net(%struct.sock* %35)
  %37 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @inet_addr_type(i32 %36, i64 %40)
  store i32 %41, i32* %11, align 4
  %42 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %43 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* @INADDR_ANY, align 4
  %47 = call i64 @htonl(i32 %46)
  %48 = icmp eq i64 %45, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %23
  %50 = load i32, i32* @RTN_LOCAL, align 4
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %49, %23
  %52 = load i64, i64* @sysctl_ip_nonlocal_bind, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %51
  %55 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %56 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %61 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @RTN_LOCAL, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %76, label %68

68:                                               ; preds = %64, %59, %54, %51
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @RTN_MULTICAST, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @RTN_BROADCAST, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %72, %68, %64
  %77 = load i32, i32* @EADDRNOTAVAIL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %163

79:                                               ; preds = %72
  %80 = load %struct.sock*, %struct.sock** %5, align 8
  %81 = call i32 @lock_sock(%struct.sock* %80)
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %12, align 4
  %84 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %85 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  br label %157

89:                                               ; preds = %79
  %90 = load i32, i32* @EADDRINUSE, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %12, align 4
  %92 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %93 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %97 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %96, i32 0, i32 4
  store i64 %95, i64* %97, align 8
  %98 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %99 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %98, i32 0, i32 3
  store i64 %95, i64* %99, align 8
  %100 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %101 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call zeroext i16 @ntohs(i32 %102)
  store i16 %103, i16* %10, align 2
  %104 = load %struct.sock*, %struct.sock** %5, align 8
  %105 = load i16, i16* %10, align 2
  %106 = call i64 @ping_v4_get_port(%struct.sock* %104, i16 zeroext %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %89
  %109 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %110 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %109, i32 0, i32 3
  store i64 0, i64* %110, align 8
  %111 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %112 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %111, i32 0, i32 4
  store i64 0, i64* %112, align 8
  br label %157

113:                                              ; preds = %89
  %114 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %115 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %119 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %118, i32 0, i32 3
  %120 = load %struct.sock*, %struct.sock** %5, align 8
  %121 = getelementptr inbounds %struct.sock, %struct.sock* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = trunc i64 %122 to i32
  %124 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %117, i64* %119, i32 %123)
  store i32 0, i32* %12, align 4
  %125 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %126 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %113
  %130 = load i32, i32* @SOCK_BINDADDR_LOCK, align 4
  %131 = load %struct.sock*, %struct.sock** %5, align 8
  %132 = getelementptr inbounds %struct.sock, %struct.sock* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 8
  br label %135

135:                                              ; preds = %129, %113
  %136 = load i16, i16* %10, align 2
  %137 = icmp ne i16 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %135
  %139 = load i32, i32* @SOCK_BINDPORT_LOCK, align 4
  %140 = load %struct.sock*, %struct.sock** %5, align 8
  %141 = getelementptr inbounds %struct.sock, %struct.sock* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 8
  br label %144

144:                                              ; preds = %138, %135
  %145 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %146 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @htons(i64 %147)
  %149 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %150 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %149, i32 0, i32 7
  store i32 %148, i32* %150, align 8
  %151 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %152 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %151, i32 0, i32 6
  store i64 0, i64* %152, align 8
  %153 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %154 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %153, i32 0, i32 5
  store i64 0, i64* %154, align 8
  %155 = load %struct.sock*, %struct.sock** %5, align 8
  %156 = call i32 @sk_dst_reset(%struct.sock* %155)
  br label %157

157:                                              ; preds = %144, %108, %88
  %158 = load %struct.sock*, %struct.sock** %5, align 8
  %159 = call i32 @release_sock(%struct.sock* %158)
  %160 = load i32, i32* %12, align 4
  %161 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %160)
  %162 = load i32, i32* %12, align 4
  store i32 %162, i32* %4, align 4
  br label %163

163:                                              ; preds = %157, %76, %20
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local zeroext i16 @ntohs(i32) #1

declare dso_local i32 @inet_addr_type(i32, i64) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i64 @htonl(i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @ping_v4_get_port(%struct.sock*, i16 zeroext) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @sk_dst_reset(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
