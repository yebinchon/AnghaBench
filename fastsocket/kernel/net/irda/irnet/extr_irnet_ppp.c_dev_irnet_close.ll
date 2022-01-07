; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/irda/irnet/extr_irnet_ppp.c_dev_irnet_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/irda/irnet/extr_irnet_ppp.c_dev_irnet_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32* }
%struct.irnet_socket = type { i32, i64 }

@FS_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"(file=0x%p, ap=0x%p)\0A\00", align 1
@FS_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"ap is NULL !!!\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Channel still registered - deregistering !\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @dev_irnet_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_irnet_close(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.irnet_socket*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.file*, %struct.file** %4, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = bitcast i32* %8 to %struct.irnet_socket*
  store %struct.irnet_socket* %9, %struct.irnet_socket** %5, align 8
  %10 = load i32, i32* @FS_TRACE, align 4
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = load %struct.irnet_socket*, %struct.irnet_socket** %5, align 8
  %13 = call i32 @DENTER(i32 %10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.file* %11, %struct.irnet_socket* %12)
  %14 = load %struct.irnet_socket*, %struct.irnet_socket** %5, align 8
  %15 = icmp eq %struct.irnet_socket* %14, null
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* @FS_ERROR, align 4
  %18 = call i32 @DABORT(i32 %16, i32 0, i32 %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.file*, %struct.file** %4, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  %21 = load %struct.irnet_socket*, %struct.irnet_socket** %5, align 8
  %22 = call i32 @irda_irnet_destroy(%struct.irnet_socket* %21)
  %23 = load %struct.irnet_socket*, %struct.irnet_socket** %5, align 8
  %24 = getelementptr inbounds %struct.irnet_socket, %struct.irnet_socket* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %2
  %28 = load i32, i32* @FS_ERROR, align 4
  %29 = call i32 @DERROR(i32 %28, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %30 = load %struct.irnet_socket*, %struct.irnet_socket** %5, align 8
  %31 = getelementptr inbounds %struct.irnet_socket, %struct.irnet_socket* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.irnet_socket*, %struct.irnet_socket** %5, align 8
  %33 = getelementptr inbounds %struct.irnet_socket, %struct.irnet_socket* %32, i32 0, i32 0
  %34 = call i32 @ppp_unregister_channel(i32* %33)
  br label %35

35:                                               ; preds = %27, %2
  %36 = load %struct.irnet_socket*, %struct.irnet_socket** %5, align 8
  %37 = call i32 @kfree(%struct.irnet_socket* %36)
  %38 = load i32, i32* @FS_TRACE, align 4
  %39 = call i32 @DEXIT(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @DENTER(i32, i8*, %struct.file*, %struct.irnet_socket*) #1

declare dso_local i32 @DABORT(i32, i32, i32, i8*) #1

declare dso_local i32 @irda_irnet_destroy(%struct.irnet_socket*) #1

declare dso_local i32 @DERROR(i32, i8*) #1

declare dso_local i32 @ppp_unregister_channel(i32*) #1

declare dso_local i32 @kfree(%struct.irnet_socket*) #1

declare dso_local i32 @DEXIT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
