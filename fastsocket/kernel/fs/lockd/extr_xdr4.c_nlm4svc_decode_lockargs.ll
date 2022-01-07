; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_xdr4.c_nlm4svc_decode_lockargs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_xdr4.c_nlm4svc_decode_lockargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.TYPE_6__ = type { i32, i8*, i8*, %struct.TYPE_7__, i8*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@F_WRLCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlm4svc_decode_lockargs(%struct.svc_rqst* %0, i32* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 5
  %12 = call i32* @nlm4_decode_cookie(i32* %9, i32* %11)
  store i32* %12, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %59

15:                                               ; preds = %3
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %6, align 8
  %18 = load i32, i32* %16, align 4
  %19 = call i8* @ntohl(i32 %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 4
  store i8* %19, i8** %21, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %6, align 8
  %24 = load i32, i32* %22, align 4
  %25 = call i8* @ntohl(i32 %24)
  store i8* %25, i8** %8, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  %29 = call i32* @nlm4_decode_lock(i32* %26, %struct.TYPE_7__* %28)
  store i32* %29, i32** %6, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %59

32:                                               ; preds = %15
  %33 = load i8*, i8** %8, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i32, i32* @F_WRLCK, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 8
  br label %41

41:                                               ; preds = %35, %32
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %6, align 8
  %44 = load i32, i32* %42, align 4
  %45 = call i8* @ntohl(i32 %44)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %6, align 8
  %50 = load i32, i32* %48, align 4
  %51 = call i8* @ntohl(i32 %50)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @xdr_argsize_check(%struct.svc_rqst* %56, i32* %57)
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %41, %31, %14
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32* @nlm4_decode_cookie(i32*, i32*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32* @nlm4_decode_lock(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @xdr_argsize_check(%struct.svc_rqst*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
