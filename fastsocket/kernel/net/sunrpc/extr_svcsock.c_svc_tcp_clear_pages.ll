; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcsock.c_svc_tcp_clear_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcsock.c_svc_tcp_clear_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_sock = type { i32, i32** }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svc_sock*)* @svc_tcp_clear_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svc_tcp_clear_pages(%struct.svc_sock* %0) #0 {
  %2 = alloca %struct.svc_sock*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.svc_sock* %0, %struct.svc_sock** %2, align 8
  %6 = load %struct.svc_sock*, %struct.svc_sock** %2, align 8
  %7 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = icmp ule i64 %9, 4
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %58

12:                                               ; preds = %1
  %13 = load %struct.svc_sock*, %struct.svc_sock** %2, align 8
  %14 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = sub i64 %16, 4
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = add i32 %19, %20
  %22 = sub i32 %21, 1
  %23 = load i32, i32* @PAGE_SHIFT, align 4
  %24 = lshr i32 %22, %23
  store i32 %24, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %54, %12
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %57

29:                                               ; preds = %25
  %30 = load %struct.svc_sock*, %struct.svc_sock** %2, align 8
  %31 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %30, i32 0, i32 1
  %32 = load i32**, i32*** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load %struct.svc_sock*, %struct.svc_sock** %2, align 8
  %41 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %40, i32 0, i32 1
  %42 = load i32**, i32*** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @put_page(i32* %46)
  %48 = load %struct.svc_sock*, %struct.svc_sock** %2, align 8
  %49 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %48, i32 0, i32 1
  %50 = load i32**, i32*** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32*, i32** %50, i64 %52
  store i32* null, i32** %53, align 8
  br label %54

54:                                               ; preds = %29
  %55 = load i32, i32* %3, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %25

57:                                               ; preds = %25
  br label %58

58:                                               ; preds = %57, %11
  %59 = load %struct.svc_sock*, %struct.svc_sock** %2, align 8
  %60 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @put_page(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
