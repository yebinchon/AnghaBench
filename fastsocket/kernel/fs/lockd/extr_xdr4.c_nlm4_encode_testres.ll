; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_xdr4.c_nlm4_encode_testres.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_xdr4.c_nlm4_encode_testres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_res = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, i32, %struct.file_lock }
%struct.file_lock = type { i64, i64, i64 }

@.str = private unnamed_addr constant [43 x i8] c"xdr: before encode_testres (p %p resp %p)\0A\00", align 1
@nlm_lck_denied = common dso_local global i32 0, align 4
@F_RDLCK = common dso_local global i64 0, align 8
@xdr_zero = common dso_local global i32 0, align 4
@xdr_one = common dso_local global i32 0, align 4
@OFFSET_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [66 x i8] c"xdr: encode_testres (status %u pid %d type %d start %Ld end %Ld)\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"xdr: after encode_testres (p %p resp %p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.nlm_res*)* @nlm4_encode_testres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @nlm4_encode_testres(i32* %0, %struct.nlm_res* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.nlm_res*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.file_lock*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.nlm_res* %1, %struct.nlm_res** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %11 = call i32 (i8*, i32*, ...) @dprintk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32* %9, %struct.nlm_res* %10)
  %12 = load i32*, i32** %4, align 8
  %13 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %14 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %13, i32 0, i32 2
  %15 = call i32* @nlm4_encode_cookie(i32* %12, i32* %14)
  store i32* %15, i32** %4, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %113

18:                                               ; preds = %2
  %19 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %20 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %4, align 8
  store i32 %21, i32* %22, align 4
  %24 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %25 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @nlm_lck_denied, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %108

29:                                               ; preds = %18
  %30 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %31 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  store %struct.file_lock* %32, %struct.file_lock** %8, align 8
  %33 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %34 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @F_RDLCK, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* @xdr_zero, align 4
  br label %42

40:                                               ; preds = %29
  %41 = load i32, i32* @xdr_one, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = load i32*, i32** %4, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %4, align 8
  store i32 %43, i32* %44, align 4
  %46 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %47 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @htonl(i64 %49)
  %51 = load i32*, i32** %4, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %4, align 8
  store i32 %50, i32* %51, align 4
  %53 = load i32*, i32** %4, align 8
  %54 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %55 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = call i32* @xdr_encode_netobj(i32* %53, i32* %56)
  store i32* %57, i32** %4, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %42
  store i32* null, i32** %3, align 8
  br label %113

60:                                               ; preds = %42
  %61 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %62 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @loff_t_to_s64(i64 %63)
  store i32 %64, i32* %6, align 4
  %65 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %66 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @OFFSET_MAX, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  store i32 0, i32* %7, align 4
  br label %81

71:                                               ; preds = %60
  %72 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %73 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %76 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %74, %77
  %79 = add nsw i64 %78, 1
  %80 = call i32 @loff_t_to_s64(i64 %79)
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %71, %70
  %82 = load i32*, i32** %4, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32* @xdr_encode_hyper(i32* %82, i32 %83)
  store i32* %84, i32** %4, align 8
  %85 = load i32*, i32** %4, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32* @xdr_encode_hyper(i32* %85, i32 %86)
  store i32* %87, i32** %4, align 8
  %88 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %89 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to i32*
  %93 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %94 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %99 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %102 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %105 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = call i32 (i8*, i32*, ...) @dprintk(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32* %92, i32 %97, i64 %100, i64 %103, i64 %106)
  br label %108

108:                                              ; preds = %81, %18
  %109 = load i32*, i32** %4, align 8
  %110 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %111 = call i32 (i8*, i32*, ...) @dprintk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32* %109, %struct.nlm_res* %110)
  %112 = load i32*, i32** %4, align 8
  store i32* %112, i32** %3, align 8
  br label %113

113:                                              ; preds = %108, %59, %17
  %114 = load i32*, i32** %3, align 8
  ret i32* %114
}

declare dso_local i32 @dprintk(i8*, i32*, ...) #1

declare dso_local i32* @nlm4_encode_cookie(i32*, i32*) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i32* @xdr_encode_netobj(i32*, i32*) #1

declare dso_local i32 @loff_t_to_s64(i64) #1

declare dso_local i32* @xdr_encode_hyper(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
