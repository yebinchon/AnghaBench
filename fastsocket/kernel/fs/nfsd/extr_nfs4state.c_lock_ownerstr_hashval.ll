; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_lock_ownerstr_hashval.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_lock_ownerstr_hashval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.xdr_netobj = type { i32, i32 }

@LOCK_HASH_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, %struct.xdr_netobj*)* @lock_ownerstr_hashval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lock_ownerstr_hashval(%struct.inode* %0, i32 %1, %struct.xdr_netobj* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xdr_netobj*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.xdr_netobj* %2, %struct.xdr_netobj** %6, align 8
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = call i32 @file_hashval(%struct.inode* %7)
  %9 = load i32, i32* %5, align 4
  %10 = add i32 %8, %9
  %11 = load %struct.xdr_netobj*, %struct.xdr_netobj** %6, align 8
  %12 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.xdr_netobj*, %struct.xdr_netobj** %6, align 8
  %15 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @opaque_hashval(i32 %13, i32 %16)
  %18 = add i32 %10, %17
  %19 = load i32, i32* @LOCK_HASH_MASK, align 4
  %20 = and i32 %18, %19
  ret i32 %20
}

declare dso_local i32 @file_hashval(%struct.inode*) #1

declare dso_local i32 @opaque_hashval(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
