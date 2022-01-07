; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_client.c_p9_fid_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_client.c_p9_fid_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_fid = type { i32, i32, i32, i32*, %struct.p9_client*, i32, i32 }
%struct.p9_client = type { i32, i32, i32 }

@P9_DEBUG_FID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"clnt %p\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.p9_fid* (%struct.p9_client*)* @p9_fid_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.p9_fid* @p9_fid_create(%struct.p9_client* %0) #0 {
  %2 = alloca %struct.p9_fid*, align 8
  %3 = alloca %struct.p9_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.p9_fid*, align 8
  %6 = alloca i64, align 8
  store %struct.p9_client* %0, %struct.p9_client** %3, align 8
  %7 = load i32, i32* @P9_DEBUG_FID, align 4
  %8 = load %struct.p9_client*, %struct.p9_client** %3, align 8
  %9 = call i32 @P9_DPRINTK(i32 %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.p9_client* %8)
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.p9_fid* @kmalloc(i32 40, i32 %10)
  store %struct.p9_fid* %11, %struct.p9_fid** %5, align 8
  %12 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %13 = icmp ne %struct.p9_fid* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.p9_fid* @ERR_PTR(i32 %16)
  store %struct.p9_fid* %17, %struct.p9_fid** %2, align 8
  br label %64

18:                                               ; preds = %1
  %19 = load %struct.p9_client*, %struct.p9_client** %3, align 8
  %20 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @p9_idpool_get(i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* @ENOSPC, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %59

28:                                               ; preds = %18
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %31 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %33 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %32, i32 0, i32 6
  %34 = call i32 @memset(i32* %33, i32 0, i32 4)
  %35 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %36 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %35, i32 0, i32 1
  store i32 -1, i32* %36, align 4
  %37 = call i32 (...) @current_fsuid()
  %38 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %39 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 8
  %40 = load %struct.p9_client*, %struct.p9_client** %3, align 8
  %41 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %42 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %41, i32 0, i32 4
  store %struct.p9_client* %40, %struct.p9_client** %42, align 8
  %43 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %44 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %43, i32 0, i32 3
  store i32* null, i32** %44, align 8
  %45 = load %struct.p9_client*, %struct.p9_client** %3, align 8
  %46 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %45, i32 0, i32 0
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  %49 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %50 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %49, i32 0, i32 2
  %51 = load %struct.p9_client*, %struct.p9_client** %3, align 8
  %52 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %51, i32 0, i32 1
  %53 = call i32 @list_add(i32* %50, i32* %52)
  %54 = load %struct.p9_client*, %struct.p9_client** %3, align 8
  %55 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %54, i32 0, i32 0
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  %58 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  store %struct.p9_fid* %58, %struct.p9_fid** %2, align 8
  br label %64

59:                                               ; preds = %25
  %60 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %61 = call i32 @kfree(%struct.p9_fid* %60)
  %62 = load i32, i32* %4, align 4
  %63 = call %struct.p9_fid* @ERR_PTR(i32 %62)
  store %struct.p9_fid* %63, %struct.p9_fid** %2, align 8
  br label %64

64:                                               ; preds = %59, %28, %14
  %65 = load %struct.p9_fid*, %struct.p9_fid** %2, align 8
  ret %struct.p9_fid* %65
}

declare dso_local i32 @P9_DPRINTK(i32, i8*, %struct.p9_client*) #1

declare dso_local %struct.p9_fid* @kmalloc(i32, i32) #1

declare dso_local %struct.p9_fid* @ERR_PTR(i32) #1

declare dso_local i32 @p9_idpool_get(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.p9_fid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
