; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_protocol.c_sctp_inet_event_msgname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_protocol.c_sctp_inet_event_msgname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpevent = type { %struct.sctp_association* }
%struct.sctp_association = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.sockaddr_in }
%struct.sockaddr_in = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_ulpevent*, i8*, i32*)* @sctp_inet_event_msgname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_inet_event_msgname(%struct.sctp_ulpevent* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.sctp_ulpevent*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca %struct.sctp_association*, align 8
  store %struct.sctp_ulpevent* %0, %struct.sctp_ulpevent** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %39

12:                                               ; preds = %3
  %13 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %4, align 8
  %14 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %13, i32 0, i32 0
  %15 = load %struct.sctp_association*, %struct.sctp_association** %14, align 8
  store %struct.sctp_association* %15, %struct.sctp_association** %9, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @sctp_inet_msgname(i8* %16, i32* %17)
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %20, %struct.sockaddr_in** %7, align 8
  %21 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %22 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store %struct.sockaddr_in* %24, %struct.sockaddr_in** %8, align 8
  %25 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %26 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @htons(i32 %28)
  %30 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %37 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  br label %39

39:                                               ; preds = %12, %3
  ret void
}

declare dso_local i32 @sctp_inet_msgname(i8*, i32*) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
