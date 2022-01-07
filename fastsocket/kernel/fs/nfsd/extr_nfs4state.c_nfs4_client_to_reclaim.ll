; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfs4_client_to_reclaim.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfs4_client_to_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_client_reclaim = type { i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"NFSD nfs4_client_to_reclaim NAME: %.*s\0A\00", align 1
@HEXDIR_LEN = common dso_local global i32 0, align 4
@reclaim_str_hashtbl = common dso_local global i32* null, align 8
@reclaim_str_hashtbl_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_client_to_reclaim(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfs4_client_reclaim*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.nfs4_client_reclaim* null, %struct.nfs4_client_reclaim** %5, align 8
  %6 = load i32, i32* @HEXDIR_LEN, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @dprintk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %6, i8* %7)
  %9 = call %struct.nfs4_client_reclaim* (...) @alloc_reclaim()
  store %struct.nfs4_client_reclaim* %9, %struct.nfs4_client_reclaim** %5, align 8
  %10 = load %struct.nfs4_client_reclaim*, %struct.nfs4_client_reclaim** %5, align 8
  %11 = icmp ne %struct.nfs4_client_reclaim* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @clientstr_hashval(i8* %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.nfs4_client_reclaim*, %struct.nfs4_client_reclaim** %5, align 8
  %17 = getelementptr inbounds %struct.nfs4_client_reclaim, %struct.nfs4_client_reclaim* %16, i32 0, i32 1
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.nfs4_client_reclaim*, %struct.nfs4_client_reclaim** %5, align 8
  %20 = getelementptr inbounds %struct.nfs4_client_reclaim, %struct.nfs4_client_reclaim* %19, i32 0, i32 1
  %21 = load i32*, i32** @reclaim_str_hashtbl, align 8
  %22 = load i32, i32* %4, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = call i32 @list_add(i32* %20, i32* %24)
  %26 = load %struct.nfs4_client_reclaim*, %struct.nfs4_client_reclaim** %5, align 8
  %27 = getelementptr inbounds %struct.nfs4_client_reclaim, %struct.nfs4_client_reclaim* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %3, align 8
  %30 = load i32, i32* @HEXDIR_LEN, align 4
  %31 = call i32 @memcpy(i32 %28, i8* %29, i32 %30)
  %32 = load i32, i32* @reclaim_str_hashtbl_size, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @reclaim_str_hashtbl_size, align 4
  store i32 1, i32* %2, align 4
  br label %34

34:                                               ; preds = %13, %12
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @dprintk(i8*, i32, i8*) #1

declare dso_local %struct.nfs4_client_reclaim* @alloc_reclaim(...) #1

declare dso_local i32 @clientstr_hashval(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
