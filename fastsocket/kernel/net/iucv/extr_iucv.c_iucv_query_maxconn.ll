; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_iucv.c_iucv_query_maxconn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_iucv.c_iucv_query_maxconn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IUCV_QUERY = common dso_local global i64 0, align 8
@iucv_max_pathid = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @iucv_query_maxconn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iucv_query_maxconn() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = load i32, i32* @GFP_DMA, align 4
  %8 = or i32 %6, %7
  %9 = call i8* @kzalloc(i32 4, i32 %8)
  store i8* %9, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %0
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %1, align 4
  br label %40

15:                                               ; preds = %0
  %16 = load i64, i64* @IUCV_QUERY, align 8
  store i64 %16, i64* %2, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = ptrtoint i8* %17 to i64
  store i64 %18, i64* %3, align 8
  %19 = load i64, i64* %2, align 8
  %20 = load i64, i64* %3, align 8
  %21 = call { i32, i64, i64 } asm sideeffect "\09.long\090xb2f01000\0A\09ipm\09$0\0A\09srl\09$0,28\0A", "={dx},={ax},={dx},1,2,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %19, i64 %20) #2, !srcloc !2
  %22 = extractvalue { i32, i64, i64 } %21, 0
  %23 = extractvalue { i32, i64, i64 } %21, 1
  %24 = extractvalue { i32, i64, i64 } %21, 2
  store i32 %22, i32* %5, align 4
  store i64 %23, i64* %2, align 8
  store i64 %24, i64* %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %15
  %28 = load i64, i64* %3, align 8
  store i64 %28, i64* @iucv_max_pathid, align 8
  br label %29

29:                                               ; preds = %27, %15
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @kfree(i8* %30)
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EPERM, align 4
  %36 = sub nsw i32 0, %35
  br label %38

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %34
  %39 = phi i32 [ %36, %34 ], [ 0, %37 ]
  store i32 %39, i32* %1, align 4
  br label %40

40:                                               ; preds = %38, %12
  %41 = load i32, i32* %1, align 4
  ret i32 %41
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 694, i32 719, i32 733}
