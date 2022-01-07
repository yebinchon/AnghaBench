; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/irda/irnet/extr_irnet_ppp.c_dev_irnet_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/irda/irnet/extr_irnet_ppp.c_dev_irnet_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.inode = type { i32 }
%struct.file = type { %struct.irnet_socket* }
%struct.irnet_socket = type { i32, i32*, i32, i32, %struct.TYPE_3__, i64, %struct.file* }
%struct.TYPE_3__ = type { i32, i32, i32*, %struct.irnet_socket* }

@FS_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"(file=0x%p)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FS_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Can't allocate struct irnet...\0A\00", align 1
@irnet_ppp_ops = common dso_local global i32 0, align 4
@TTP_MAX_HEADER = common dso_local global i32 0, align 4
@PPP_HDRLEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Can't setup IrDA link...\0A\00", align 1
@irnet_events = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c" - ap=0x%p\0A\00", align 1
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @dev_irnet_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_irnet_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.irnet_socket*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load i32, i32* @FS_TRACE, align 4
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call i32 @DENTER(i32 %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.file* %9)
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.irnet_socket* @kzalloc(i32 64, i32 %11)
  store %struct.irnet_socket* %12, %struct.irnet_socket** %6, align 8
  %13 = load %struct.irnet_socket*, %struct.irnet_socket** %6, align 8
  %14 = icmp eq %struct.irnet_socket* %13, null
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = load i32, i32* @FS_ERROR, align 4
  %19 = call i32 @DABORT(i32 %15, i32 %17, i32 %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i32 (...) @lock_kernel()
  %21 = load %struct.file*, %struct.file** %5, align 8
  %22 = load %struct.irnet_socket*, %struct.irnet_socket** %6, align 8
  %23 = getelementptr inbounds %struct.irnet_socket, %struct.irnet_socket* %22, i32 0, i32 6
  store %struct.file* %21, %struct.file** %23, align 8
  %24 = load %struct.irnet_socket*, %struct.irnet_socket** %6, align 8
  %25 = getelementptr inbounds %struct.irnet_socket, %struct.irnet_socket* %24, i32 0, i32 5
  store i64 0, i64* %25, align 8
  %26 = load %struct.irnet_socket*, %struct.irnet_socket** %6, align 8
  %27 = load %struct.irnet_socket*, %struct.irnet_socket** %6, align 8
  %28 = getelementptr inbounds %struct.irnet_socket, %struct.irnet_socket* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 3
  store %struct.irnet_socket* %26, %struct.irnet_socket** %29, align 8
  %30 = load %struct.irnet_socket*, %struct.irnet_socket** %6, align 8
  %31 = getelementptr inbounds %struct.irnet_socket, %struct.irnet_socket* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  store i32* @irnet_ppp_ops, i32** %32, align 8
  %33 = load i32, i32* @TTP_MAX_HEADER, align 4
  %34 = sub nsw i32 2048, %33
  %35 = sub nsw i32 %34, 2
  %36 = load i32, i32* @PPP_HDRLEN, align 4
  %37 = sub nsw i32 %35, %36
  %38 = load %struct.irnet_socket*, %struct.irnet_socket** %6, align 8
  %39 = getelementptr inbounds %struct.irnet_socket, %struct.irnet_socket* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load i32, i32* @TTP_MAX_HEADER, align 4
  %42 = add nsw i32 2, %41
  %43 = load %struct.irnet_socket*, %struct.irnet_socket** %6, align 8
  %44 = getelementptr inbounds %struct.irnet_socket, %struct.irnet_socket* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @TTP_MAX_HEADER, align 4
  %47 = sub nsw i32 2048, %46
  %48 = sub nsw i32 %47, 2
  %49 = load i32, i32* @PPP_HDRLEN, align 4
  %50 = sub nsw i32 %48, %49
  %51 = load %struct.irnet_socket*, %struct.irnet_socket** %6, align 8
  %52 = getelementptr inbounds %struct.irnet_socket, %struct.irnet_socket* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.irnet_socket*, %struct.irnet_socket** %6, align 8
  %54 = getelementptr inbounds %struct.irnet_socket, %struct.irnet_socket* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  store i32 -1, i32* %56, align 4
  %57 = load %struct.irnet_socket*, %struct.irnet_socket** %6, align 8
  %58 = getelementptr inbounds %struct.irnet_socket, %struct.irnet_socket* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 3
  store i32 1610612736, i32* %60, align 4
  %61 = load %struct.irnet_socket*, %struct.irnet_socket** %6, align 8
  %62 = getelementptr inbounds %struct.irnet_socket, %struct.irnet_socket* %61, i32 0, i32 2
  store i32 -1, i32* %62, align 8
  %63 = load %struct.irnet_socket*, %struct.irnet_socket** %6, align 8
  %64 = call i32 @irda_irnet_create(%struct.irnet_socket* %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %2
  %68 = load i32, i32* @FS_ERROR, align 4
  %69 = call i32 @DERROR(i32 %68, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %70 = load %struct.irnet_socket*, %struct.irnet_socket** %6, align 8
  %71 = call i32 @kfree(%struct.irnet_socket* %70)
  %72 = call i32 (...) @unlock_kernel()
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %3, align 4
  br label %85

74:                                               ; preds = %2
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @irnet_events, i32 0, i32 0), align 4
  %76 = load %struct.irnet_socket*, %struct.irnet_socket** %6, align 8
  %77 = getelementptr inbounds %struct.irnet_socket, %struct.irnet_socket* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load %struct.irnet_socket*, %struct.irnet_socket** %6, align 8
  %79 = load %struct.file*, %struct.file** %5, align 8
  %80 = getelementptr inbounds %struct.file, %struct.file* %79, i32 0, i32 0
  store %struct.irnet_socket* %78, %struct.irnet_socket** %80, align 8
  %81 = load i32, i32* @FS_TRACE, align 4
  %82 = load %struct.irnet_socket*, %struct.irnet_socket** %6, align 8
  %83 = call i32 @DEXIT(i32 %81, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), %struct.irnet_socket* %82)
  %84 = call i32 (...) @unlock_kernel()
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %74, %67
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @DENTER(i32, i8*, %struct.file*) #1

declare dso_local %struct.irnet_socket* @kzalloc(i32, i32) #1

declare dso_local i32 @DABORT(i32, i32, i32, i8*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @irda_irnet_create(%struct.irnet_socket*) #1

declare dso_local i32 @DERROR(i32, i8*) #1

declare dso_local i32 @kfree(%struct.irnet_socket*) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i32 @DEXIT(i32, i8*, %struct.irnet_socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
