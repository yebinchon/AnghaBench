; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcsock.c_svc_tcp_save_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcsock.c_svc_tcp_save_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_sock = type { i32, i32** }
%struct.svc_rqst = type { i32** }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svc_sock*, %struct.svc_rqst*)* @svc_tcp_save_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svc_tcp_save_pages(%struct.svc_sock* %0, %struct.svc_rqst* %1) #0 {
  %3 = alloca %struct.svc_sock*, align 8
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.svc_sock* %0, %struct.svc_sock** %3, align 8
  store %struct.svc_rqst* %1, %struct.svc_rqst** %4, align 8
  %8 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %9 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = icmp ule i64 %11, 4
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %54

14:                                               ; preds = %2
  %15 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %16 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = sub i64 %18, 4
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = add i32 %21, %22
  %24 = sub i32 %23, 1
  %25 = load i32, i32* @PAGE_SHIFT, align 4
  %26 = lshr i32 %24, %25
  store i32 %26, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %51, %14
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %54

31:                                               ; preds = %27
  %32 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %33 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %32, i32 0, i32 0
  %34 = load i32**, i32*** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.svc_sock*, %struct.svc_sock** %3, align 8
  %40 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %39, i32 0, i32 1
  %41 = load i32**, i32*** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  store i32* %38, i32** %44, align 8
  %45 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %46 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %45, i32 0, i32 0
  %47 = load i32**, i32*** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %31
  %52 = load i32, i32* %5, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %27

54:                                               ; preds = %13, %27
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
