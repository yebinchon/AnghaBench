; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_super.c_nfs_initialise_sb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_super.c_nfs_initialise_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32*, i32, i32, i32, i32, i32 }
%struct.nfs_server = type { i32, i32, i32 }

@NFS_SUPER_MAGIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%x:%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @nfs_initialise_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_initialise_sb(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.nfs_server*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = call %struct.nfs_server* @NFS_SB(%struct.super_block* %4)
  store %struct.nfs_server* %5, %struct.nfs_server** %3, align 8
  %6 = load i32, i32* @NFS_SUPER_MAGIC, align 4
  %7 = load %struct.super_block*, %struct.super_block** %2, align 8
  %8 = getelementptr inbounds %struct.super_block, %struct.super_block* %7, i32 0, i32 5
  store i32 %6, i32* %8, align 8
  %9 = load %struct.super_block*, %struct.super_block** %2, align 8
  %10 = getelementptr inbounds %struct.super_block, %struct.super_block* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.super_block*, %struct.super_block** %2, align 8
  %13 = getelementptr inbounds %struct.super_block, %struct.super_block* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @MAJOR(i32 %14)
  %16 = load %struct.super_block*, %struct.super_block** %2, align 8
  %17 = getelementptr inbounds %struct.super_block, %struct.super_block* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @MINOR(i32 %18)
  %20 = call i32 @snprintf(i32 %11, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %19)
  %21 = load %struct.super_block*, %struct.super_block** %2, align 8
  %22 = getelementptr inbounds %struct.super_block, %struct.super_block* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %1
  %26 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %27 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.super_block*, %struct.super_block** %2, align 8
  %30 = getelementptr inbounds %struct.super_block, %struct.super_block* %29, i32 0, i32 1
  %31 = call i32 @nfs_block_bits(i32 %28, i32* %30)
  %32 = load %struct.super_block*, %struct.super_block** %2, align 8
  %33 = getelementptr inbounds %struct.super_block, %struct.super_block* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %25, %1
  %35 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %36 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %35, i32 0, i32 1
  %37 = load %struct.super_block*, %struct.super_block** %2, align 8
  %38 = getelementptr inbounds %struct.super_block, %struct.super_block* %37, i32 0, i32 0
  store i32* %36, i32** %38, align 8
  %39 = load %struct.super_block*, %struct.super_block** %2, align 8
  %40 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %41 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @nfs_super_set_maxbytes(%struct.super_block* %39, i32 %42)
  ret void
}

declare dso_local %struct.nfs_server* @NFS_SB(%struct.super_block*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @nfs_block_bits(i32, i32*) #1

declare dso_local i32 @nfs_super_set_maxbytes(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
