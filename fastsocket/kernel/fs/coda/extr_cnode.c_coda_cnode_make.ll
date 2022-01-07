; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_cnode.c_coda_cnode_make.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_cnode.c_coda_cnode_make.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.CodaFid = type { i32 }
%struct.super_block = type { i32 }
%struct.coda_vattr = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"coda_cnode_make: coda_iget failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coda_cnode_make(%struct.inode** %0, %struct.CodaFid* %1, %struct.super_block* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode**, align 8
  %6 = alloca %struct.CodaFid*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.coda_vattr, align 4
  %9 = alloca i32, align 4
  store %struct.inode** %0, %struct.inode*** %5, align 8
  store %struct.CodaFid* %1, %struct.CodaFid** %6, align 8
  store %struct.super_block* %2, %struct.super_block** %7, align 8
  %10 = load %struct.super_block*, %struct.super_block** %7, align 8
  %11 = load %struct.CodaFid*, %struct.CodaFid** %6, align 8
  %12 = call i32 @venus_getattr(%struct.super_block* %10, %struct.CodaFid* %11, %struct.coda_vattr* %8)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.inode**, %struct.inode*** %5, align 8
  store %struct.inode* null, %struct.inode** %16, align 8
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %4, align 4
  br label %33

18:                                               ; preds = %3
  %19 = load %struct.super_block*, %struct.super_block** %7, align 8
  %20 = load %struct.CodaFid*, %struct.CodaFid** %6, align 8
  %21 = call %struct.inode* @coda_iget(%struct.super_block* %19, %struct.CodaFid* %20, %struct.coda_vattr* %8)
  %22 = load %struct.inode**, %struct.inode*** %5, align 8
  store %struct.inode* %21, %struct.inode** %22, align 8
  %23 = load %struct.inode**, %struct.inode*** %5, align 8
  %24 = load %struct.inode*, %struct.inode** %23, align 8
  %25 = call i64 @IS_ERR(%struct.inode* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = call i32 @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.inode**, %struct.inode*** %5, align 8
  %30 = load %struct.inode*, %struct.inode** %29, align 8
  %31 = call i32 @PTR_ERR(%struct.inode* %30)
  store i32 %31, i32* %4, align 4
  br label %33

32:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %27, %15
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @venus_getattr(%struct.super_block*, %struct.CodaFid*, %struct.coda_vattr*) #1

declare dso_local %struct.inode* @coda_iget(%struct.super_block*, %struct.CodaFid*, %struct.coda_vattr*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
