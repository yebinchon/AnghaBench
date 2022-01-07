; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_associola.c_sctp_assoc_set_bind_addr_from_cookie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_associola.c_sctp_assoc_set_bind_addr_from_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { %struct.TYPE_9__*, %struct.TYPE_12__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.sctp_cookie = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_assoc_set_bind_addr_from_cookie(%struct.sctp_association* %0, %struct.sctp_cookie* %1, i32 %2) #0 {
  %4 = alloca %struct.sctp_association*, align 8
  %5 = alloca %struct.sctp_cookie*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %4, align 8
  store %struct.sctp_cookie* %1, %struct.sctp_cookie** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.sctp_cookie*, %struct.sctp_cookie** %5, align 8
  %11 = getelementptr inbounds %struct.sctp_cookie, %struct.sctp_cookie* %10, i32 0, i32 1
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ntohs(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.sctp_cookie*, %struct.sctp_cookie** %5, align 8
  %18 = getelementptr inbounds %struct.sctp_cookie, %struct.sctp_cookie* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  %20 = load %struct.sctp_cookie*, %struct.sctp_cookie** %5, align 8
  %21 = getelementptr inbounds %struct.sctp_cookie, %struct.sctp_cookie* %20, i32 0, i32 1
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = bitcast %struct.TYPE_11__* %22 to i32*
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32* %26, i32** %9, align 8
  %27 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %28 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %33 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %32, i32 0, i32 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @sctp_raw_to_bind_addrs(i32* %29, i32* %30, i32 %31, i32 %38, i32 %39)
  ret i32 %40
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @sctp_raw_to_bind_addrs(i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
