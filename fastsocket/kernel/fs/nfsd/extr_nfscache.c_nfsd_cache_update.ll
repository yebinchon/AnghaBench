; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfscache.c_nfsd_cache_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfscache.c_nfsd_cache_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32, %struct.TYPE_2__, %struct.svc_cacherep* }
%struct.TYPE_2__ = type { %struct.kvec* }
%struct.kvec = type { i32, i64 }
%struct.svc_cacherep = type { i32, i32, i32, %struct.kvec, i32 }

@.str = private unnamed_addr constant [33 x i8] c"nfsd: RC_REPLSTAT/reply len %d!\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@cache_lock = common dso_local global i32 0, align 4
@drc_mem_usage = common dso_local global i64 0, align 8
@RC_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfsd_cache_update(%struct.svc_rqst* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.svc_cacherep*, align 8
  %8 = alloca %struct.kvec*, align 8
  %9 = alloca %struct.kvec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %12 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %13 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %12, i32 0, i32 2
  %14 = load %struct.svc_cacherep*, %struct.svc_cacherep** %13, align 8
  store %struct.svc_cacherep* %14, %struct.svc_cacherep** %7, align 8
  %15 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %16 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.kvec*, %struct.kvec** %17, align 8
  %19 = getelementptr inbounds %struct.kvec, %struct.kvec* %18, i64 0
  store %struct.kvec* %19, %struct.kvec** %8, align 8
  store i64 0, i64* %11, align 8
  %20 = load %struct.svc_cacherep*, %struct.svc_cacherep** %7, align 8
  %21 = icmp ne %struct.svc_cacherep* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  br label %113

23:                                               ; preds = %3
  %24 = load %struct.kvec*, %struct.kvec** %8, align 8
  %25 = getelementptr inbounds %struct.kvec, %struct.kvec* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = load i32*, i32** %6, align 8
  %29 = bitcast i32* %28 to i8*
  %30 = load %struct.kvec*, %struct.kvec** %8, align 8
  %31 = getelementptr inbounds %struct.kvec, %struct.kvec* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = ptrtoint i8* %29 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = sub nsw i64 %27, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = ashr i32 %39, 2
  store i32 %40, i32* %10, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %23
  %44 = load i32, i32* %10, align 4
  %45 = icmp sgt i32 %44, 64
  br i1 %45, label %46, label %49

46:                                               ; preds = %43, %23
  %47 = load %struct.svc_cacherep*, %struct.svc_cacherep** %7, align 8
  %48 = call i32 @nfsd_reply_cache_free(%struct.svc_cacherep* %47)
  br label %113

49:                                               ; preds = %43
  %50 = load i32, i32* %5, align 4
  switch i32 %50, label %94 [
    i32 128, label %51
    i32 129, label %62
    i32 130, label %91
  ]

51:                                               ; preds = %49
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 1
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.svc_cacherep*, %struct.svc_cacherep** %7, align 8
  %61 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 8
  br label %94

62:                                               ; preds = %49
  %63 = load %struct.svc_cacherep*, %struct.svc_cacherep** %7, align 8
  %64 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %63, i32 0, i32 3
  store %struct.kvec* %64, %struct.kvec** %9, align 8
  %65 = load i32, i32* %10, align 4
  %66 = shl i32 %65, 2
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %11, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call i64 @kmalloc(i64 %68, i32 %69)
  %71 = load %struct.kvec*, %struct.kvec** %9, align 8
  %72 = getelementptr inbounds %struct.kvec, %struct.kvec* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = load %struct.kvec*, %struct.kvec** %9, align 8
  %74 = getelementptr inbounds %struct.kvec, %struct.kvec* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %62
  %78 = load %struct.svc_cacherep*, %struct.svc_cacherep** %7, align 8
  %79 = call i32 @nfsd_reply_cache_free(%struct.svc_cacherep* %78)
  br label %113

80:                                               ; preds = %62
  %81 = load i64, i64* %11, align 8
  %82 = trunc i64 %81 to i32
  %83 = load %struct.kvec*, %struct.kvec** %9, align 8
  %84 = getelementptr inbounds %struct.kvec, %struct.kvec* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.kvec*, %struct.kvec** %9, align 8
  %86 = getelementptr inbounds %struct.kvec, %struct.kvec* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = load i64, i64* %11, align 8
  %90 = call i32 @memcpy(i64 %87, i32* %88, i64 %89)
  br label %94

91:                                               ; preds = %49
  %92 = load %struct.svc_cacherep*, %struct.svc_cacherep** %7, align 8
  %93 = call i32 @nfsd_reply_cache_free(%struct.svc_cacherep* %92)
  br label %113

94:                                               ; preds = %49, %80, %57
  %95 = call i32 @spin_lock(i32* @cache_lock)
  %96 = load i64, i64* %11, align 8
  %97 = load i64, i64* @drc_mem_usage, align 8
  %98 = add i64 %97, %96
  store i64 %98, i64* @drc_mem_usage, align 8
  %99 = load %struct.svc_cacherep*, %struct.svc_cacherep** %7, align 8
  %100 = call i32 @lru_put_end(%struct.svc_cacherep* %99)
  %101 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %102 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.svc_cacherep*, %struct.svc_cacherep** %7, align 8
  %105 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* %5, align 4
  %107 = load %struct.svc_cacherep*, %struct.svc_cacherep** %7, align 8
  %108 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* @RC_DONE, align 4
  %110 = load %struct.svc_cacherep*, %struct.svc_cacherep** %7, align 8
  %111 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = call i32 @spin_unlock(i32* @cache_lock)
  br label %113

113:                                              ; preds = %94, %91, %77, %46, %22
  ret void
}

declare dso_local i32 @nfsd_reply_cache_free(%struct.svc_cacherep*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i64 @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy(i64, i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @lru_put_end(%struct.svc_cacherep*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
