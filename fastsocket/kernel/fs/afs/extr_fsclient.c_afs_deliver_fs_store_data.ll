; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_fsclient.c_afs_deliver_fs_store_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_fsclient.c_afs_deliver_fs_store_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_call = type { i64, i64, i32, i32*, %struct.afs_vnode* }
%struct.afs_vnode = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c",,%u\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c" = 0 [more]\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c" = -EBADMSG [%u != %u]\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c" = 0 [done]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_call*, %struct.sk_buff*, i32)* @afs_deliver_fs_store_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_deliver_fs_store_data(%struct.afs_call* %0, %struct.sk_buff* %1, i32 %2) #0 {
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
  br i1 %19, label %22, label %20

20:                                               ; preds = %3
  %21 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %54

22:                                               ; preds = %3
  %23 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %24 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %27 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %22
  %31 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %32 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %35 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %33, i64 %36)
  %38 = load i32, i32* @EBADMSG, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %54

40:                                               ; preds = %22
  %41 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %42 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %9, align 8
  %44 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %45 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %44, i32 0, i32 0
  %46 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %47 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %48 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %47, i32 0, i32 2
  %49 = call i32 @xdr_decode_AFSFetchStatus(i32** %9, i32* %45, %struct.afs_vnode* %46, i32* %48)
  %50 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %51 = load %struct.afs_call*, %struct.afs_call** %5, align 8
  %52 = call i32 @afs_pages_written_back(%struct.afs_vnode* %50, %struct.afs_call* %51)
  %53 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %40, %30, %20
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @_enter(i8*, i32) #1

declare dso_local i32 @afs_transfer_reply(%struct.afs_call*, %struct.sk_buff*) #1

declare dso_local i32 @_leave(i8*, ...) #1

declare dso_local i32 @xdr_decode_AFSFetchStatus(i32**, i32*, %struct.afs_vnode*, i32*) #1

declare dso_local i32 @afs_pages_written_back(%struct.afs_vnode*, %struct.afs_call*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
