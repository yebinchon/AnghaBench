; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pnfs.c_pnfs_ld_handle_write_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pnfs.c_pnfs_ld_handle_write_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_write_data = type { %struct.TYPE_5__, %struct.nfs_pgio_header* }
%struct.TYPE_5__ = type { i32 }
%struct.nfs_pgio_header = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"pnfs write error = %d\0A\00", align 1
@PNFS_LAYOUTRET_ON_ERROR = common dso_local global i32 0, align 4
@NFS_INO_LAYOUTCOMMIT = common dso_local global i32 0, align 4
@NFS_IOHDR_REDO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_write_data*)* @pnfs_ld_handle_write_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnfs_ld_handle_write_error(%struct.nfs_write_data* %0) #0 {
  %2 = alloca %struct.nfs_write_data*, align 8
  %3 = alloca %struct.nfs_pgio_header*, align 8
  store %struct.nfs_write_data* %0, %struct.nfs_write_data** %2, align 8
  %4 = load %struct.nfs_write_data*, %struct.nfs_write_data** %2, align 8
  %5 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %4, i32 0, i32 1
  %6 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  store %struct.nfs_pgio_header* %6, %struct.nfs_pgio_header** %3, align 8
  %7 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %3, align 8
  %8 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %3, align 8
  %12 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.TYPE_7__* @NFS_SERVER(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PNFS_LAYOUTRET_ON_ERROR, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %1
  %23 = load i32, i32* @NFS_INO_LAYOUTCOMMIT, align 4
  %24 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %3, align 8
  %25 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.TYPE_8__* @NFS_I(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = call i32 @clear_bit(i32 %23, i32* %28)
  %30 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %3, align 8
  %31 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pnfs_return_layout(i32 %32)
  br label %34

34:                                               ; preds = %22, %1
  %35 = load i32, i32* @NFS_IOHDR_REDO, align 4
  %36 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %3, align 8
  %37 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %36, i32 0, i32 3
  %38 = call i32 @test_and_set_bit(i32 %35, i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %34
  %41 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %3, align 8
  %42 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %3, align 8
  %45 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %44, i32 0, i32 1
  %46 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %3, align 8
  %47 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @pnfs_write_done_resend_to_mds(i32 %43, i32* %45, i32 %48)
  %50 = load %struct.nfs_write_data*, %struct.nfs_write_data** %2, align 8
  %51 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  br label %53

53:                                               ; preds = %40, %34
  ret void
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local %struct.TYPE_7__* @NFS_SERVER(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local %struct.TYPE_8__* @NFS_I(i32) #1

declare dso_local i32 @pnfs_return_layout(i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @pnfs_write_done_resend_to_mds(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
