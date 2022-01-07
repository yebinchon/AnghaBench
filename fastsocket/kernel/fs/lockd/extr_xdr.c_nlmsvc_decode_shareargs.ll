; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_xdr.c_nlmsvc_decode_shareargs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_xdr.c_nlmsvc_decode_shareargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.TYPE_4__ = type { i8*, i8*, i32, %struct.nlm_lock }
%struct.nlm_lock = type { i32, i32, i32, i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@NLM_MAXSTRLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlmsvc_decode_shareargs(%struct.svc_rqst* %0, i32* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.nlm_lock*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  store %struct.nlm_lock* %10, %struct.nlm_lock** %8, align 8
  %11 = load %struct.nlm_lock*, %struct.nlm_lock** %8, align 8
  %12 = call i32 @memset(%struct.nlm_lock* %11, i32 0, i32 32)
  %13 = load %struct.nlm_lock*, %struct.nlm_lock** %8, align 8
  %14 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %13, i32 0, i32 5
  %15 = call i32 @locks_init_lock(%struct.TYPE_5__* %14)
  %16 = load %struct.nlm_lock*, %struct.nlm_lock** %8, align 8
  %17 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %16, i32 0, i32 4
  store i64 -1, i64* %17, align 8
  %18 = load %struct.nlm_lock*, %struct.nlm_lock** %8, align 8
  %19 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.nlm_lock*, %struct.nlm_lock** %8, align 8
  %22 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i64 %20, i64* %23, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = call i32* @nlm_decode_cookie(i32* %24, i32* %26)
  store i32* %27, i32** %6, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %50

29:                                               ; preds = %3
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.nlm_lock*, %struct.nlm_lock** %8, align 8
  %32 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %31, i32 0, i32 3
  %33 = load %struct.nlm_lock*, %struct.nlm_lock** %8, align 8
  %34 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %33, i32 0, i32 2
  %35 = load i32, i32* @NLM_MAXSTRLEN, align 4
  %36 = call i32* @xdr_decode_string_inplace(i32* %30, i32* %32, i32* %34, i32 %35)
  store i32* %36, i32** %6, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %50

38:                                               ; preds = %29
  %39 = load i32*, i32** %6, align 8
  %40 = load %struct.nlm_lock*, %struct.nlm_lock** %8, align 8
  %41 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %40, i32 0, i32 1
  %42 = call i32* @nlm_decode_fh(i32* %39, i32* %41)
  store i32* %42, i32** %6, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load i32*, i32** %6, align 8
  %46 = load %struct.nlm_lock*, %struct.nlm_lock** %8, align 8
  %47 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %46, i32 0, i32 0
  %48 = call i32* @nlm_decode_oh(i32* %45, i32* %47)
  store i32* %48, i32** %6, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %44, %38, %29, %3
  store i32 0, i32* %4, align 4
  br label %67

51:                                               ; preds = %44
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %6, align 8
  %54 = load i32, i32* %52, align 4
  %55 = call i8* @ntohl(i32 %54)
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %6, align 8
  %60 = load i32, i32* %58, align 4
  %61 = call i8* @ntohl(i32 %60)
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  %64 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @xdr_argsize_check(%struct.svc_rqst* %64, i32* %65)
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %51, %50
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @memset(%struct.nlm_lock*, i32, i32) #1

declare dso_local i32 @locks_init_lock(%struct.TYPE_5__*) #1

declare dso_local i32* @nlm_decode_cookie(i32*, i32*) #1

declare dso_local i32* @xdr_decode_string_inplace(i32*, i32*, i32*, i32) #1

declare dso_local i32* @nlm_decode_fh(i32*, i32*) #1

declare dso_local i32* @nlm_decode_oh(i32*, i32*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @xdr_argsize_check(%struct.svc_rqst*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
