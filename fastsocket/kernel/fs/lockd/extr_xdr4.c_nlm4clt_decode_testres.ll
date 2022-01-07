; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_xdr4.c_nlm4clt_decode_testres.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_xdr4.c_nlm4clt_decode_testres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.nlm_res = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i8*, %struct.file_lock }
%struct.file_lock = type { i8*, i8*, i32, i32, i64 }

@EIO = common dso_local global i32 0, align 4
@nlm_lck_denied = common dso_local global i64 0, align 8
@FL_POSIX = common dso_local global i32 0, align 4
@F_WRLCK = common dso_local global i32 0, align 4
@F_RDLCK = common dso_local global i32 0, align 4
@OFFSET_MAX = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, i32*, %struct.nlm_res*)* @nlm4clt_decode_testres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlm4clt_decode_testres(%struct.rpc_rqst* %0, i32* %1, %struct.nlm_res* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_rqst*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nlm_res*, align 8
  %8 = alloca %struct.file_lock*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.nlm_res* %2, %struct.nlm_res** %7, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load %struct.nlm_res*, %struct.nlm_res** %7, align 8
  %15 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %14, i32 0, i32 2
  %16 = call i32* @nlm4_decode_cookie(i32* %13, i32* %15)
  store i32* %16, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %111

21:                                               ; preds = %3
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %6, align 8
  %24 = load i32, i32* %22, align 4
  %25 = sext i32 %24 to i64
  %26 = load %struct.nlm_res*, %struct.nlm_res** %7, align 8
  %27 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.nlm_res*, %struct.nlm_res** %7, align 8
  %29 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @nlm_lck_denied, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %110

33:                                               ; preds = %21
  %34 = load %struct.nlm_res*, %struct.nlm_res** %7, align 8
  %35 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store %struct.file_lock* %36, %struct.file_lock** %8, align 8
  %37 = load %struct.nlm_res*, %struct.nlm_res** %7, align 8
  %38 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %37, i32 0, i32 1
  %39 = call i32 @memset(%struct.TYPE_2__* %38, i32 0, i32 48)
  %40 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %41 = call i32 @locks_init_lock(%struct.file_lock* %40)
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %6, align 8
  %44 = load i32, i32* %42, align 4
  %45 = call i8* @ntohl(i32 %44)
  store i8* %45, i8** %9, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %6, align 8
  %48 = load i32, i32* %46, align 4
  %49 = call i8* @ntohl(i32 %48)
  %50 = load %struct.nlm_res*, %struct.nlm_res** %7, align 8
  %51 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i8* %49, i8** %52, align 8
  %53 = load %struct.nlm_res*, %struct.nlm_res** %7, align 8
  %54 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = ptrtoint i8* %56 to i64
  %58 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %59 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %58, i32 0, i32 4
  store i64 %57, i64* %59, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = load %struct.nlm_res*, %struct.nlm_res** %7, align 8
  %62 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = call i32* @nlm4_decode_oh(i32* %60, i32* %63)
  store i32* %64, i32** %6, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %33
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %111

69:                                               ; preds = %33
  %70 = load i32, i32* @FL_POSIX, align 4
  %71 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %72 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load i8*, i8** %9, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i32, i32* @F_WRLCK, align 4
  br label %79

77:                                               ; preds = %69
  %78 = load i32, i32* @F_RDLCK, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  %81 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %82 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = call i32* @xdr_decode_hyper(i32* %83, i64* %10)
  store i32* %84, i32** %6, align 8
  %85 = load i32*, i32** %6, align 8
  %86 = call i32* @xdr_decode_hyper(i32* %85, i64* %11)
  store i32* %86, i32** %6, align 8
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* %11, align 8
  %89 = add nsw i64 %87, %88
  %90 = sub nsw i64 %89, 1
  store i64 %90, i64* %12, align 8
  %91 = load i64, i64* %10, align 8
  %92 = call i8* @s64_to_loff_t(i64 %91)
  %93 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %94 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = load i64, i64* %11, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %79
  %98 = load i64, i64* %12, align 8
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97, %79
  %101 = load i8*, i8** @OFFSET_MAX, align 8
  %102 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %103 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %102, i32 0, i32 0
  store i8* %101, i8** %103, align 8
  br label %109

104:                                              ; preds = %97
  %105 = load i64, i64* %12, align 8
  %106 = call i8* @s64_to_loff_t(i64 %105)
  %107 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %108 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %107, i32 0, i32 0
  store i8* %106, i8** %108, align 8
  br label %109

109:                                              ; preds = %104, %100
  br label %110

110:                                              ; preds = %109, %21
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %110, %66, %18
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32* @nlm4_decode_cookie(i32*, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @locks_init_lock(%struct.file_lock*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32* @nlm4_decode_oh(i32*, i32*) #1

declare dso_local i32* @xdr_decode_hyper(i32*, i64*) #1

declare dso_local i8* @s64_to_loff_t(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
