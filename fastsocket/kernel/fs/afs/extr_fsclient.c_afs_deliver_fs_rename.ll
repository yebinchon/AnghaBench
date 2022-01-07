; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_fsclient.c_afs_deliver_fs_rename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_fsclient.c_afs_deliver_fs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_call = type { i64, i64, i32*, i32, %struct.afs_vnode*, %struct.afs_vnode* }
%struct.afs_vnode = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"{%u},{%u},%d\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c" = 0 [done]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_call*, %struct.sk_buff*, i32)* @afs_deliver_fs_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_deliver_fs_rename(%struct.afs_call* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.afs_call*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.afs_vnode*, align 8
  %9 = alloca %struct.afs_vnode*, align 8
  %10 = alloca i32*, align 8
  store %struct.afs_call* %0, %struct.afs_call** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %12 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %11, i32 0, i32 5
  %13 = load %struct.afs_vnode*, %struct.afs_vnode** %12, align 8
  store %struct.afs_vnode* %13, %struct.afs_vnode** %8, align 8
  %14 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %15 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %14, i32 0, i32 4
  %16 = load %struct.afs_vnode*, %struct.afs_vnode** %15, align 8
  store %struct.afs_vnode* %16, %struct.afs_vnode** %9, align 8
  %17 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %18 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @_enter(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22, i32 %23)
  %25 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = call i32 @afs_transfer_reply(%struct.afs_call* %25, %struct.sk_buff* %26)
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %60

31:                                               ; preds = %3
  %32 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %33 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %36 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* @EBADMSG, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %60

42:                                               ; preds = %31
  %43 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %44 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %10, align 8
  %46 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %47 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %46, i32 0, i32 0
  %48 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %49 = call i32 @xdr_decode_AFSFetchStatus(i32** %10, i32* %47, %struct.afs_vnode* %48, i32* null)
  %50 = load %struct.afs_vnode*, %struct.afs_vnode** %9, align 8
  %51 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %52 = icmp ne %struct.afs_vnode* %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %42
  %54 = load %struct.afs_vnode*, %struct.afs_vnode** %9, align 8
  %55 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %54, i32 0, i32 0
  %56 = load %struct.afs_vnode*, %struct.afs_vnode** %9, align 8
  %57 = call i32 @xdr_decode_AFSFetchStatus(i32** %10, i32* %55, %struct.afs_vnode* %56, i32* null)
  br label %58

58:                                               ; preds = %53, %42
  %59 = call i32 @_leave(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %58, %39, %30
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @_enter(i8*, i32, i32, i32) #1

declare dso_local i32 @afs_transfer_reply(%struct.afs_call*, %struct.sk_buff*) #1

declare dso_local i32 @xdr_decode_AFSFetchStatus(i32**, i32*, %struct.afs_vnode*, i32*) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
