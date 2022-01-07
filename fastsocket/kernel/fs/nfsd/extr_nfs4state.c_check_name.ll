; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_check_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_check_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_netobj = type { i64 }

@NFS4_OPAQUE_LIMIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"NFSD: check_name: name too long(%d)!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @check_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_name(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xdr_netobj, align 8
  %4 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %3, i32 0, i32 0
  store i64 %0, i64* %4, align 8
  %5 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %3, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %3, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @NFS4_OPAQUE_LIMIT, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %3, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @dprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %16)
  store i32 0, i32* %2, align 4
  br label %19

18:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %19

19:                                               ; preds = %18, %14, %8
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @dprintk(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
