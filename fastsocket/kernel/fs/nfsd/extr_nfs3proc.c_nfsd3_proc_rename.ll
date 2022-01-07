; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_rename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd3_renameargs = type { i32, i32, i32, i32, i32, i32 }
%struct.nfsd3_renameres = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"nfsd: RENAME(3)   %s %.*s ->\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"nfsd: -> %s %.*s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nfsd3_renameargs*, %struct.nfsd3_renameres*)* @nfsd3_proc_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd3_proc_rename(%struct.svc_rqst* %0, %struct.nfsd3_renameargs* %1, %struct.nfsd3_renameres* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd3_renameargs*, align 8
  %7 = alloca %struct.nfsd3_renameres*, align 8
  %8 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd3_renameargs* %1, %struct.nfsd3_renameargs** %6, align 8
  store %struct.nfsd3_renameres* %2, %struct.nfsd3_renameres** %7, align 8
  %9 = load %struct.nfsd3_renameargs*, %struct.nfsd3_renameargs** %6, align 8
  %10 = getelementptr inbounds %struct.nfsd3_renameargs, %struct.nfsd3_renameargs* %9, i32 0, i32 5
  %11 = call i32 @SVCFH_fmt(i32* %10)
  %12 = load %struct.nfsd3_renameargs*, %struct.nfsd3_renameargs** %6, align 8
  %13 = getelementptr inbounds %struct.nfsd3_renameargs, %struct.nfsd3_renameargs* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.nfsd3_renameargs*, %struct.nfsd3_renameargs** %6, align 8
  %16 = getelementptr inbounds %struct.nfsd3_renameargs, %struct.nfsd3_renameargs* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dprintk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14, i32 %17)
  %19 = load %struct.nfsd3_renameargs*, %struct.nfsd3_renameargs** %6, align 8
  %20 = getelementptr inbounds %struct.nfsd3_renameargs, %struct.nfsd3_renameargs* %19, i32 0, i32 4
  %21 = call i32 @SVCFH_fmt(i32* %20)
  %22 = load %struct.nfsd3_renameargs*, %struct.nfsd3_renameargs** %6, align 8
  %23 = getelementptr inbounds %struct.nfsd3_renameargs, %struct.nfsd3_renameargs* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.nfsd3_renameargs*, %struct.nfsd3_renameargs** %6, align 8
  %26 = getelementptr inbounds %struct.nfsd3_renameargs, %struct.nfsd3_renameargs* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dprintk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32 %24, i32 %27)
  %29 = load %struct.nfsd3_renameres*, %struct.nfsd3_renameres** %7, align 8
  %30 = getelementptr inbounds %struct.nfsd3_renameres, %struct.nfsd3_renameres* %29, i32 0, i32 1
  %31 = load %struct.nfsd3_renameargs*, %struct.nfsd3_renameargs** %6, align 8
  %32 = getelementptr inbounds %struct.nfsd3_renameargs, %struct.nfsd3_renameargs* %31, i32 0, i32 5
  %33 = call i32 @fh_copy(i32* %30, i32* %32)
  %34 = load %struct.nfsd3_renameres*, %struct.nfsd3_renameres** %7, align 8
  %35 = getelementptr inbounds %struct.nfsd3_renameres, %struct.nfsd3_renameres* %34, i32 0, i32 0
  %36 = load %struct.nfsd3_renameargs*, %struct.nfsd3_renameargs** %6, align 8
  %37 = getelementptr inbounds %struct.nfsd3_renameargs, %struct.nfsd3_renameargs* %36, i32 0, i32 4
  %38 = call i32 @fh_copy(i32* %35, i32* %37)
  %39 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %40 = load %struct.nfsd3_renameres*, %struct.nfsd3_renameres** %7, align 8
  %41 = getelementptr inbounds %struct.nfsd3_renameres, %struct.nfsd3_renameres* %40, i32 0, i32 1
  %42 = load %struct.nfsd3_renameargs*, %struct.nfsd3_renameargs** %6, align 8
  %43 = getelementptr inbounds %struct.nfsd3_renameargs, %struct.nfsd3_renameargs* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.nfsd3_renameargs*, %struct.nfsd3_renameargs** %6, align 8
  %46 = getelementptr inbounds %struct.nfsd3_renameargs, %struct.nfsd3_renameargs* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.nfsd3_renameres*, %struct.nfsd3_renameres** %7, align 8
  %49 = getelementptr inbounds %struct.nfsd3_renameres, %struct.nfsd3_renameres* %48, i32 0, i32 0
  %50 = load %struct.nfsd3_renameargs*, %struct.nfsd3_renameargs** %6, align 8
  %51 = getelementptr inbounds %struct.nfsd3_renameargs, %struct.nfsd3_renameargs* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.nfsd3_renameargs*, %struct.nfsd3_renameargs** %6, align 8
  %54 = getelementptr inbounds %struct.nfsd3_renameargs, %struct.nfsd3_renameargs* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @nfsd_rename(%struct.svc_rqst* %39, i32* %41, i32 %44, i32 %47, i32* %49, i32 %52, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @RETURN_STATUS(i32 %57)
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @dprintk(i8*, i32, i32, i32) #1

declare dso_local i32 @SVCFH_fmt(i32*) #1

declare dso_local i32 @fh_copy(i32*, i32*) #1

declare dso_local i32 @nfsd_rename(%struct.svc_rqst*, i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @RETURN_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
