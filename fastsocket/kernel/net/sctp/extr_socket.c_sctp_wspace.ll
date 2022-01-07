; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_socket.c_sctp_wspace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_socket.c_sctp_wspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32, %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }

@SOCK_SNDBUF_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_association*)* @sctp_wspace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_wspace(%struct.sctp_association* %0) #0 {
  %2 = alloca %struct.sctp_association*, align 8
  %3 = alloca i32, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %2, align 8
  %4 = load %struct.sctp_association*, %struct.sctp_association** %2, align 8
  %5 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %4, i32 0, i32 2
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.sctp_association*, %struct.sctp_association** %2, align 8
  %12 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %3, align 4
  br label %20

14:                                               ; preds = %1
  %15 = load %struct.sctp_association*, %struct.sctp_association** %2, align 8
  %16 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = call i32 @sk_wmem_alloc_get(%struct.TYPE_7__* %18)
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %14, %10
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.sctp_association*, %struct.sctp_association** %2, align 8
  %23 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sge i32 %21, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %20
  %30 = load %struct.sctp_association*, %struct.sctp_association** %2, align 8
  %31 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SOCK_SNDBUF_LOCK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %50

40:                                               ; preds = %29
  %41 = load %struct.sctp_association*, %struct.sctp_association** %2, align 8
  %42 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = call i32 @sk_stream_wspace(%struct.TYPE_7__* %44)
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %40
  br label %50

50:                                               ; preds = %49, %39
  br label %60

51:                                               ; preds = %20
  %52 = load %struct.sctp_association*, %struct.sctp_association** %2, align 8
  %53 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %3, align 4
  %59 = sub nsw i32 %57, %58
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %51, %50
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @sk_wmem_alloc_get(%struct.TYPE_7__*) #1

declare dso_local i32 @sk_stream_wspace(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
