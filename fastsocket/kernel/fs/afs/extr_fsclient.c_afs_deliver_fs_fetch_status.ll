; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_fsclient.c_afs_deliver_fs_fetch_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_fsclient.c_afs_deliver_fs_fetch_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_call = type { i64, i64, i32, i32*, %struct.afs_vnode* }
%struct.afs_vnode = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c",,%u\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c" = 0 [done]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_call*, %struct.sk_buff*, i32)* @afs_deliver_fs_fetch_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_deliver_fs_fetch_status(%struct.afs_call* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.afs_call*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.afs_vnode*, align 8
  %9 = alloca i32*, align 8
  store %struct.afs_call* %0, %struct.afs_call** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %11 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %10, i32 0, i32 4
  %12 = load %struct.afs_vnode*, %struct.afs_vnode** %11, align 8
  store %struct.afs_vnode* %12, %struct.afs_vnode** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @_enter(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = call i32 @afs_transfer_reply(%struct.afs_call* %15, %struct.sk_buff* %16)
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %53

21:                                               ; preds = %3
  %22 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %23 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %26 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i32, i32* @EBADMSG, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %53

32:                                               ; preds = %21
  %33 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %34 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %9, align 8
  %36 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %37 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %36, i32 0, i32 0
  %38 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %39 = call i32 @xdr_decode_AFSFetchStatus(i32** %9, i32* %37, %struct.afs_vnode* %38, i32* null)
  %40 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %41 = call i32 @xdr_decode_AFSCallBack(i32** %9, %struct.afs_vnode* %40)
  %42 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %43 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %32
  %47 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %48 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @xdr_decode_AFSVolSync(i32** %9, i32 %49)
  br label %51

51:                                               ; preds = %46, %32
  %52 = call i32 @_leave(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %51, %29, %20
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @_enter(i8*, i32) #1

declare dso_local i32 @afs_transfer_reply(%struct.afs_call*, %struct.sk_buff*) #1

declare dso_local i32 @xdr_decode_AFSFetchStatus(i32**, i32*, %struct.afs_vnode*, i32*) #1

declare dso_local i32 @xdr_decode_AFSCallBack(i32**, %struct.afs_vnode*) #1

declare dso_local i32 @xdr_decode_AFSVolSync(i32**, i32) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
