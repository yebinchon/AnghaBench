; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fscache/extr_page.c_fscache_alloc_retrieval.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fscache/extr_page.c_fscache_alloc_retrieval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_retrieval = type { %struct.TYPE_3__, i32, i32, i8*, i32, %struct.address_space* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.fscache_cookie = type { i32 }
%struct.address_space = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@fscache_n_retrievals_nomem = common dso_local global i32 0, align 4
@fscache_release_retrieval_op = common dso_local global i32 0, align 4
@FSCACHE_OP_MYTHREAD = common dso_local global i64 0, align 8
@FSCACHE_OP_WAITING = common dso_local global i64 0, align 8
@FSCACHE_OP_UNUSE_COOKIE = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@fscache_retrieval_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"Retr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fscache_retrieval* (%struct.fscache_cookie*, %struct.address_space*, i32, i8*)* @fscache_alloc_retrieval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fscache_retrieval* @fscache_alloc_retrieval(%struct.fscache_cookie* %0, %struct.address_space* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.fscache_retrieval*, align 8
  %6 = alloca %struct.fscache_cookie*, align 8
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.fscache_retrieval*, align 8
  store %struct.fscache_cookie* %0, %struct.fscache_cookie** %6, align 8
  store %struct.address_space* %1, %struct.address_space** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load i32, i32* @GFP_NOIO, align 4
  %12 = call %struct.fscache_retrieval* @kzalloc(i32 48, i32 %11)
  store %struct.fscache_retrieval* %12, %struct.fscache_retrieval** %10, align 8
  %13 = load %struct.fscache_retrieval*, %struct.fscache_retrieval** %10, align 8
  %14 = icmp ne %struct.fscache_retrieval* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = call i32 @fscache_stat(i32* @fscache_n_retrievals_nomem)
  store %struct.fscache_retrieval* null, %struct.fscache_retrieval** %5, align 8
  br label %59

17:                                               ; preds = %4
  %18 = load %struct.fscache_retrieval*, %struct.fscache_retrieval** %10, align 8
  %19 = getelementptr inbounds %struct.fscache_retrieval, %struct.fscache_retrieval* %18, i32 0, i32 0
  %20 = load i32, i32* @fscache_release_retrieval_op, align 4
  %21 = call i32 @fscache_operation_init(%struct.TYPE_3__* %19, i32 %20)
  %22 = load %struct.fscache_cookie*, %struct.fscache_cookie** %6, align 8
  %23 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %22, i32 0, i32 0
  %24 = call i32 @atomic_inc(i32* %23)
  %25 = load i64, i64* @FSCACHE_OP_MYTHREAD, align 8
  %26 = load i64, i64* @FSCACHE_OP_WAITING, align 8
  %27 = shl i64 1, %26
  %28 = or i64 %25, %27
  %29 = load i64, i64* @FSCACHE_OP_UNUSE_COOKIE, align 8
  %30 = shl i64 1, %29
  %31 = or i64 %28, %30
  %32 = load %struct.fscache_retrieval*, %struct.fscache_retrieval** %10, align 8
  %33 = getelementptr inbounds %struct.fscache_retrieval, %struct.fscache_retrieval* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i64 %31, i64* %34, align 8
  %35 = load %struct.address_space*, %struct.address_space** %7, align 8
  %36 = load %struct.fscache_retrieval*, %struct.fscache_retrieval** %10, align 8
  %37 = getelementptr inbounds %struct.fscache_retrieval, %struct.fscache_retrieval* %36, i32 0, i32 5
  store %struct.address_space* %35, %struct.address_space** %37, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.fscache_retrieval*, %struct.fscache_retrieval** %10, align 8
  %40 = getelementptr inbounds %struct.fscache_retrieval, %struct.fscache_retrieval* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load %struct.fscache_retrieval*, %struct.fscache_retrieval** %10, align 8
  %43 = getelementptr inbounds %struct.fscache_retrieval, %struct.fscache_retrieval* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* @jiffies, align 4
  %45 = load %struct.fscache_retrieval*, %struct.fscache_retrieval** %10, align 8
  %46 = getelementptr inbounds %struct.fscache_retrieval, %struct.fscache_retrieval* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.fscache_retrieval*, %struct.fscache_retrieval** %10, align 8
  %48 = getelementptr inbounds %struct.fscache_retrieval, %struct.fscache_retrieval* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* @fscache_retrieval_work, align 4
  %51 = call i32 @INIT_WORK(i32* %49, i32 %50)
  %52 = load %struct.fscache_retrieval*, %struct.fscache_retrieval** %10, align 8
  %53 = getelementptr inbounds %struct.fscache_retrieval, %struct.fscache_retrieval* %52, i32 0, i32 1
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  %55 = load %struct.fscache_retrieval*, %struct.fscache_retrieval** %10, align 8
  %56 = getelementptr inbounds %struct.fscache_retrieval, %struct.fscache_retrieval* %55, i32 0, i32 0
  %57 = call i32 @fscache_set_op_name(%struct.TYPE_3__* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.fscache_retrieval*, %struct.fscache_retrieval** %10, align 8
  store %struct.fscache_retrieval* %58, %struct.fscache_retrieval** %5, align 8
  br label %59

59:                                               ; preds = %17, %15
  %60 = load %struct.fscache_retrieval*, %struct.fscache_retrieval** %5, align 8
  ret %struct.fscache_retrieval* %60
}

declare dso_local %struct.fscache_retrieval* @kzalloc(i32, i32) #1

declare dso_local i32 @fscache_stat(i32*) #1

declare dso_local i32 @fscache_operation_init(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @fscache_set_op_name(%struct.TYPE_3__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
