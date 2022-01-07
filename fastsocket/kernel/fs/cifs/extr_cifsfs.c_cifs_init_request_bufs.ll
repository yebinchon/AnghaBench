; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsfs.c_cifs_init_request_bufs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsfs.c_cifs_init_request_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CIFSMaxBufSize = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"cifs_request\00", align 1
@MAX_CIFS_HDR_SIZE = common dso_local global i64 0, align 8
@SLAB_HWCACHE_ALIGN = common dso_local global i32 0, align 4
@cifs_req_cachep = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@cifs_min_rcv = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"cifs_min_rcv set to maximum (64)\00", align 1
@cifs_req_poolp = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"cifs_small_rq\00", align 1
@MAX_CIFS_SMALL_BUFFER_SIZE = common dso_local global i64 0, align 8
@cifs_sm_req_cachep = common dso_local global i32* null, align 8
@cifs_min_small = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"cifs_min_small set to maximum (256)\00", align 1
@cifs_sm_req_poolp = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @cifs_init_request_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_init_request_bufs() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @CIFSMaxBufSize, align 4
  %3 = icmp slt i32 %2, 8192
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i32 8192, i32* @CIFSMaxBufSize, align 4
  br label %13

5:                                                ; preds = %0
  %6 = load i32, i32* @CIFSMaxBufSize, align 4
  %7 = icmp sgt i32 %6, 130048
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  store i32 130048, i32* @CIFSMaxBufSize, align 4
  br label %12

9:                                                ; preds = %5
  %10 = load i32, i32* @CIFSMaxBufSize, align 4
  %11 = and i32 %10, 130560
  store i32 %11, i32* @CIFSMaxBufSize, align 4
  br label %12

12:                                               ; preds = %9, %8
  br label %13

13:                                               ; preds = %12, %4
  %14 = load i32, i32* @CIFSMaxBufSize, align 4
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* @MAX_CIFS_HDR_SIZE, align 8
  %17 = add nsw i64 %15, %16
  %18 = load i32, i32* @SLAB_HWCACHE_ALIGN, align 4
  %19 = call i32* @kmem_cache_create(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %17, i32 0, i32 %18, i32* null)
  store i32* %19, i32** @cifs_req_cachep, align 8
  %20 = load i32*, i32** @cifs_req_cachep, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %1, align 4
  br label %87

25:                                               ; preds = %13
  %26 = load i32, i32* @cifs_min_rcv, align 4
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 1, i32* @cifs_min_rcv, align 4
  br label %35

29:                                               ; preds = %25
  %30 = load i32, i32* @cifs_min_rcv, align 4
  %31 = icmp sgt i32 %30, 64
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  store i32 64, i32* @cifs_min_rcv, align 4
  %33 = call i32 @cERROR(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %29
  br label %35

35:                                               ; preds = %34, %28
  %36 = load i32, i32* @cifs_min_rcv, align 4
  %37 = load i32*, i32** @cifs_req_cachep, align 8
  %38 = call i8* @mempool_create_slab_pool(i32 %36, i32* %37)
  %39 = bitcast i8* %38 to i32*
  store i32* %39, i32** @cifs_req_poolp, align 8
  %40 = load i32*, i32** @cifs_req_poolp, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load i32*, i32** @cifs_req_cachep, align 8
  %44 = call i32 @kmem_cache_destroy(i32* %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %1, align 4
  br label %87

47:                                               ; preds = %35
  %48 = load i64, i64* @MAX_CIFS_SMALL_BUFFER_SIZE, align 8
  %49 = load i32, i32* @SLAB_HWCACHE_ALIGN, align 4
  %50 = call i32* @kmem_cache_create(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i64 %48, i32 0, i32 %49, i32* null)
  store i32* %50, i32** @cifs_sm_req_cachep, align 8
  %51 = load i32*, i32** @cifs_sm_req_cachep, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load i32*, i32** @cifs_req_poolp, align 8
  %55 = call i32 @mempool_destroy(i32* %54)
  %56 = load i32*, i32** @cifs_req_cachep, align 8
  %57 = call i32 @kmem_cache_destroy(i32* %56)
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %1, align 4
  br label %87

60:                                               ; preds = %47
  %61 = load i32, i32* @cifs_min_small, align 4
  %62 = icmp slt i32 %61, 2
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 2, i32* @cifs_min_small, align 4
  br label %70

64:                                               ; preds = %60
  %65 = load i32, i32* @cifs_min_small, align 4
  %66 = icmp sgt i32 %65, 256
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  store i32 256, i32* @cifs_min_small, align 4
  %68 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %64
  br label %70

70:                                               ; preds = %69, %63
  %71 = load i32, i32* @cifs_min_small, align 4
  %72 = load i32*, i32** @cifs_sm_req_cachep, align 8
  %73 = call i8* @mempool_create_slab_pool(i32 %71, i32* %72)
  %74 = bitcast i8* %73 to i32*
  store i32* %74, i32** @cifs_sm_req_poolp, align 8
  %75 = load i32*, i32** @cifs_sm_req_poolp, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %86

77:                                               ; preds = %70
  %78 = load i32*, i32** @cifs_req_poolp, align 8
  %79 = call i32 @mempool_destroy(i32* %78)
  %80 = load i32*, i32** @cifs_req_cachep, align 8
  %81 = call i32 @kmem_cache_destroy(i32* %80)
  %82 = load i32*, i32** @cifs_sm_req_cachep, align 8
  %83 = call i32 @kmem_cache_destroy(i32* %82)
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %1, align 4
  br label %87

86:                                               ; preds = %70
  store i32 0, i32* %1, align 4
  br label %87

87:                                               ; preds = %86, %77, %53, %42, %22
  %88 = load i32, i32* %1, align 4
  ret i32 %88
}

declare dso_local i32* @kmem_cache_create(i8*, i64, i32, i32, i32*) #1

declare dso_local i32 @cERROR(i32, i8*) #1

declare dso_local i8* @mempool_create_slab_pool(i32, i32*) #1

declare dso_local i32 @kmem_cache_destroy(i32*) #1

declare dso_local i32 @mempool_destroy(i32*) #1

declare dso_local i32 @cFYI(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
