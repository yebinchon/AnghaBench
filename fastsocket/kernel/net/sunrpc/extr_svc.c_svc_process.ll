; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svc.c_svc_process.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svc.c_svc_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32, i32, %struct.TYPE_7__, i32*, %struct.svc_serv*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32, i64, i64, i64, i32*, %struct.kvec* }
%struct.TYPE_6__ = type { i64, i32* }
%struct.kvec = type { i64, i32 }
%struct.svc_serv = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { %struct.kvec* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"bad direction %d, dropping request\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svc_process(%struct.svc_rqst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca %struct.kvec*, align 8
  %5 = alloca %struct.kvec*, align 8
  %6 = alloca %struct.svc_serv*, align 8
  %7 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  %8 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %9 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %8, i32 0, i32 5
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.kvec*, %struct.kvec** %10, align 8
  %12 = getelementptr inbounds %struct.kvec, %struct.kvec* %11, i64 0
  store %struct.kvec* %12, %struct.kvec** %4, align 8
  %13 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %14 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 6
  %16 = load %struct.kvec*, %struct.kvec** %15, align 8
  %17 = getelementptr inbounds %struct.kvec, %struct.kvec* %16, i64 0
  store %struct.kvec* %17, %struct.kvec** %5, align 8
  %18 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %19 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %18, i32 0, i32 4
  %20 = load %struct.svc_serv*, %struct.svc_serv** %19, align 8
  store %struct.svc_serv* %20, %struct.svc_serv** %6, align 8
  %21 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %22 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %24 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @page_address(i32 %27)
  %29 = load %struct.kvec*, %struct.kvec** %5, align 8
  %30 = getelementptr inbounds %struct.kvec, %struct.kvec* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.kvec*, %struct.kvec** %5, align 8
  %32 = getelementptr inbounds %struct.kvec, %struct.kvec* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %34 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %38 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 5
  store i32* %36, i32** %39, align 8
  %40 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %41 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 4
  store i64 0, i64* %42, align 8
  %43 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %44 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 3
  store i64 0, i64* %45, align 8
  %46 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %47 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = load i32, i32* @PAGE_SIZE, align 4
  %50 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %51 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 8
  %53 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %54 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i32* null, i32** %58, align 8
  %59 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %60 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  %65 = load %struct.kvec*, %struct.kvec** %4, align 8
  %66 = call i32 @svc_getu32(%struct.kvec* %65)
  %67 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %68 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.kvec*, %struct.kvec** %4, align 8
  %70 = call i64 @svc_getnl(%struct.kvec* %69)
  store i64 %70, i64* %7, align 8
  %71 = load i64, i64* %7, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %1
  %74 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @svc_printk(%struct.svc_rqst* %74, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %75)
  %77 = load %struct.svc_serv*, %struct.svc_serv** %6, align 8
  %78 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %77, i32 0, i32 0
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  %83 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %84 = call i32 @svc_drop(%struct.svc_rqst* %83)
  store i32 0, i32* %2, align 4
  br label %97

85:                                               ; preds = %1
  %86 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %87 = load %struct.kvec*, %struct.kvec** %4, align 8
  %88 = load %struct.kvec*, %struct.kvec** %5, align 8
  %89 = call i64 @svc_process_common(%struct.svc_rqst* %86, %struct.kvec* %87, %struct.kvec* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %93 = call i32 @svc_send(%struct.svc_rqst* %92)
  store i32 %93, i32* %2, align 4
  br label %97

94:                                               ; preds = %85
  %95 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %96 = call i32 @svc_drop(%struct.svc_rqst* %95)
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %94, %91, %73
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @page_address(i32) #1

declare dso_local i32 @svc_getu32(%struct.kvec*) #1

declare dso_local i64 @svc_getnl(%struct.kvec*) #1

declare dso_local i32 @svc_printk(%struct.svc_rqst*, i8*, i64) #1

declare dso_local i32 @svc_drop(%struct.svc_rqst*) #1

declare dso_local i64 @svc_process_common(%struct.svc_rqst*, %struct.kvec*, %struct.kvec*) #1

declare dso_local i32 @svc_send(%struct.svc_rqst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
