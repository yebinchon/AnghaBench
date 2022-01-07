; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_socket.c_sctp_copy_sock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_socket.c_sctp_copy_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32, i32, i32, %struct.TYPE_3__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sctp_association = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.inet_sock = type { i32, i32, i32, i32*, i64, i32, i32, i32, i32, i32, i32 }

@inet_sock_destruct = common dso_local global i32 0, align 4
@IPPROTO_SCTP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_copy_sock(%struct.sock* %0, %struct.sock* %1, %struct.sctp_association* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sctp_association*, align 8
  %7 = alloca %struct.inet_sock*, align 8
  %8 = alloca %struct.inet_sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  store %struct.sctp_association* %2, %struct.sctp_association** %6, align 8
  %9 = load %struct.sock*, %struct.sock** %5, align 8
  %10 = call %struct.inet_sock* @inet_sk(%struct.sock* %9)
  store %struct.inet_sock* %10, %struct.inet_sock** %7, align 8
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = call %struct.inet_sock* @inet_sk(%struct.sock* %11)
  store %struct.inet_sock* %12, %struct.inet_sock** %8, align 8
  %13 = load %struct.sock*, %struct.sock** %5, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 15
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 15
  store i32 %15, i32* %17, align 4
  %18 = load %struct.sock*, %struct.sock** %5, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 14
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.sock*, %struct.sock** %4, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 14
  store i32 %20, i32* %22, align 8
  %23 = load %struct.sock*, %struct.sock** %5, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 13
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sock*, %struct.sock** %4, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 13
  store i32 %25, i32* %27, align 4
  %28 = load %struct.sock*, %struct.sock** %5, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 12
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.sock*, %struct.sock** %4, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 12
  store i32 %30, i32* %32, align 8
  %33 = load %struct.sock*, %struct.sock** %5, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 11
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sock*, %struct.sock** %4, align 8
  %37 = getelementptr inbounds %struct.sock, %struct.sock* %36, i32 0, i32 11
  store i32 %35, i32* %37, align 4
  %38 = load %struct.sock*, %struct.sock** %5, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 10
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.sock*, %struct.sock** %4, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 10
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @inet_sock_destruct, align 4
  %44 = load %struct.sock*, %struct.sock** %4, align 8
  %45 = getelementptr inbounds %struct.sock, %struct.sock* %44, i32 0, i32 9
  store i32 %43, i32* %45, align 4
  %46 = load %struct.sock*, %struct.sock** %5, align 8
  %47 = getelementptr inbounds %struct.sock, %struct.sock* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.sock*, %struct.sock** %4, align 8
  %50 = getelementptr inbounds %struct.sock, %struct.sock* %49, i32 0, i32 8
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @IPPROTO_SCTP, align 4
  %52 = load %struct.sock*, %struct.sock** %4, align 8
  %53 = getelementptr inbounds %struct.sock, %struct.sock* %52, i32 0, i32 7
  store i32 %51, i32* %53, align 4
  %54 = load %struct.sock*, %struct.sock** %5, align 8
  %55 = getelementptr inbounds %struct.sock, %struct.sock* %54, i32 0, i32 5
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.sock*, %struct.sock** %4, align 8
  %60 = getelementptr inbounds %struct.sock, %struct.sock* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 8
  %61 = load %struct.sock*, %struct.sock** %5, align 8
  %62 = getelementptr inbounds %struct.sock, %struct.sock* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.sock*, %struct.sock** %4, align 8
  %65 = getelementptr inbounds %struct.sock, %struct.sock* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load %struct.sock*, %struct.sock** %5, align 8
  %67 = getelementptr inbounds %struct.sock, %struct.sock* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.sock*, %struct.sock** %4, align 8
  %70 = getelementptr inbounds %struct.sock, %struct.sock* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.sock*, %struct.sock** %5, align 8
  %72 = getelementptr inbounds %struct.sock, %struct.sock* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.sock*, %struct.sock** %4, align 8
  %75 = getelementptr inbounds %struct.sock, %struct.sock* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.sock*, %struct.sock** %5, align 8
  %77 = getelementptr inbounds %struct.sock, %struct.sock* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.sock*, %struct.sock** %4, align 8
  %80 = getelementptr inbounds %struct.sock, %struct.sock* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.sock*, %struct.sock** %5, align 8
  %82 = getelementptr inbounds %struct.sock, %struct.sock* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.sock*, %struct.sock** %4, align 8
  %85 = getelementptr inbounds %struct.sock, %struct.sock* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.sock*, %struct.sock** %4, align 8
  %87 = call %struct.inet_sock* @inet_sk(%struct.sock* %86)
  store %struct.inet_sock* %87, %struct.inet_sock** %8, align 8
  %88 = load %struct.inet_sock*, %struct.inet_sock** %7, align 8
  %89 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %88, i32 0, i32 10
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %92 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %91, i32 0, i32 10
  store i32 %90, i32* %92, align 4
  %93 = load %struct.inet_sock*, %struct.inet_sock** %7, align 8
  %94 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %93, i32 0, i32 9
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %97 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %96, i32 0, i32 9
  store i32 %95, i32* %97, align 8
  %98 = load %struct.inet_sock*, %struct.inet_sock** %7, align 8
  %99 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %98, i32 0, i32 8
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %102 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %101, i32 0, i32 8
  store i32 %100, i32* %102, align 4
  %103 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %104 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @htons(i32 %106)
  %108 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %109 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %108, i32 0, i32 7
  store i32 %107, i32* %109, align 8
  %110 = load %struct.inet_sock*, %struct.inet_sock** %7, align 8
  %111 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %114 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %113, i32 0, i32 6
  store i32 %112, i32* %114, align 4
  %115 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %116 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @jiffies, align 4
  %119 = xor i32 %117, %118
  %120 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %121 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load %struct.inet_sock*, %struct.inet_sock** %7, align 8
  %123 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %126 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %125, i32 0, i32 5
  store i32 %124, i32* %126, align 8
  %127 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %128 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %127, i32 0, i32 1
  store i32 1, i32* %128, align 4
  %129 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %130 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %129, i32 0, i32 2
  store i32 1, i32* %130, align 8
  %131 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %132 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %131, i32 0, i32 4
  store i64 0, i64* %132, align 8
  %133 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %134 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %133, i32 0, i32 3
  store i32* null, i32** %134, align 8
  ret void
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
