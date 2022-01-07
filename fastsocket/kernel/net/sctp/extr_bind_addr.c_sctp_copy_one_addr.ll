; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_bind_addr.c_sctp_copy_one_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_bind_addr.c_sctp_copy_one_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_bind_addr = type { i32 }
%union.sctp_addr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@AF_INET = common dso_local global i64 0, align 8
@SCTP_ADDR4_PEERSUPP = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@SCTP_ADDR6_ALLOWED = common dso_local global i32 0, align 4
@SCTP_ADDR6_PEERSUPP = common dso_local global i32 0, align 4
@SCTP_ADDR_SRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_bind_addr*, %union.sctp_addr*, i32, i32, i32)* @sctp_copy_one_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_copy_one_addr(%struct.sctp_bind_addr* %0, %union.sctp_addr* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sctp_bind_addr*, align 8
  %7 = alloca %union.sctp_addr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sctp_bind_addr* %0, %struct.sctp_bind_addr** %6, align 8
  store %union.sctp_addr* %1, %union.sctp_addr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load %union.sctp_addr*, %union.sctp_addr** %7, align 8
  %13 = call i64 @sctp_is_any(i32* null, %union.sctp_addr* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %5
  %16 = load %struct.sctp_bind_addr*, %struct.sctp_bind_addr** %6, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @sctp_copy_local_addr_list(%struct.sctp_bind_addr* %16, i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %11, align 4
  br label %63

21:                                               ; preds = %5
  %22 = load %union.sctp_addr*, %union.sctp_addr** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @sctp_in_scope(%union.sctp_addr* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %62

26:                                               ; preds = %21
  %27 = load i64, i64* @AF_INET, align 8
  %28 = load %union.sctp_addr*, %union.sctp_addr** %7, align 8
  %29 = bitcast %union.sctp_addr* %28 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %27, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @SCTP_ADDR4_PEERSUPP, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %55, label %38

38:                                               ; preds = %33, %26
  %39 = load i64, i64* @AF_INET6, align 8
  %40 = load %union.sctp_addr*, %union.sctp_addr** %7, align 8
  %41 = bitcast %union.sctp_addr* %40 to %struct.TYPE_2__*
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %39, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %38
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @SCTP_ADDR6_ALLOWED, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %45
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @SCTP_ADDR6_PEERSUPP, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50, %33
  %56 = load %struct.sctp_bind_addr*, %struct.sctp_bind_addr** %6, align 8
  %57 = load %union.sctp_addr*, %union.sctp_addr** %7, align 8
  %58 = load i32, i32* @SCTP_ADDR_SRC, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @sctp_add_bind_addr(%struct.sctp_bind_addr* %56, %union.sctp_addr* %57, i32 %58, i32 %59)
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %55, %50, %45, %38
  br label %62

62:                                               ; preds = %61, %21
  br label %63

63:                                               ; preds = %62, %15
  %64 = load i32, i32* %11, align 4
  ret i32 %64
}

declare dso_local i64 @sctp_is_any(i32*, %union.sctp_addr*) #1

declare dso_local i32 @sctp_copy_local_addr_list(%struct.sctp_bind_addr*, i32, i32, i32) #1

declare dso_local i64 @sctp_in_scope(%union.sctp_addr*, i32) #1

declare dso_local i32 @sctp_add_bind_addr(%struct.sctp_bind_addr*, %union.sctp_addr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
