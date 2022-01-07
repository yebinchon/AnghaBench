; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcsock.c_svc_tcp_restore_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcsock.c_svc_tcp_restore_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_sock = type { i32, i32** }
%struct.svc_rqst = type { i32**, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_sock*, %struct.svc_rqst*)* @svc_tcp_restore_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_tcp_restore_pages(%struct.svc_sock* %0, %struct.svc_rqst* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_sock*, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.svc_sock* %0, %struct.svc_sock** %4, align 8
  store %struct.svc_rqst* %1, %struct.svc_rqst** %5, align 8
  %9 = load %struct.svc_sock*, %struct.svc_sock** %4, align 8
  %10 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = icmp ule i64 %12, 4
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %97

15:                                               ; preds = %2
  %16 = load %struct.svc_sock*, %struct.svc_sock** %4, align 8
  %17 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = sub i64 %19, 4
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = add i32 %22, %23
  %25 = sub i32 %24, 1
  %26 = load i32, i32* @PAGE_SHIFT, align 4
  %27 = lshr i32 %25, %26
  store i32 %27, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %80, %15
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %83

32:                                               ; preds = %28
  %33 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %34 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %33, i32 0, i32 0
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %32
  %42 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %43 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %42, i32 0, i32 0
  %44 = load i32**, i32*** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @put_page(i32* %48)
  br label %50

50:                                               ; preds = %41, %32
  %51 = load %struct.svc_sock*, %struct.svc_sock** %4, align 8
  %52 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %51, i32 0, i32 1
  %53 = load i32**, i32*** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  %59 = zext i1 %58 to i32
  %60 = call i32 @BUG_ON(i32 %59)
  %61 = load %struct.svc_sock*, %struct.svc_sock** %4, align 8
  %62 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %61, i32 0, i32 1
  %63 = load i32**, i32*** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %69 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %68, i32 0, i32 0
  %70 = load i32**, i32*** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32*, i32** %70, i64 %72
  store i32* %67, i32** %73, align 8
  %74 = load %struct.svc_sock*, %struct.svc_sock** %4, align 8
  %75 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %74, i32 0, i32 1
  %76 = load i32**, i32*** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %76, i64 %78
  store i32* null, i32** %79, align 8
  br label %80

80:                                               ; preds = %50
  %81 = load i32, i32* %6, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %28

83:                                               ; preds = %28
  %84 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %85 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %84, i32 0, i32 0
  %86 = load i32**, i32*** %85, align 8
  %87 = getelementptr inbounds i32*, i32** %86, i64 0
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @page_address(i32* %88)
  %90 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %91 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  store i32 %89, i32* %95, align 4
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %83, %14
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @put_page(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @page_address(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
