; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_xip.c___inode_direct_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_xip.c___inode_direct_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.block_device* }
%struct.block_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.block_device_operations* }
%struct.block_device_operations = type { i32 (%struct.block_device.0*, i32, i8**, i64*)* }
%struct.block_device.0 = type opaque

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i8**, i64*)* @__inode_direct_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__inode_direct_access(%struct.inode* %0, i32 %1, i8** %2, i64* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.block_device*, align 8
  %10 = alloca %struct.block_device_operations*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i64* %3, i64** %8, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.block_device*, %struct.block_device** %15, align 8
  store %struct.block_device* %16, %struct.block_device** %9, align 8
  %17 = load %struct.block_device*, %struct.block_device** %9, align 8
  %18 = getelementptr inbounds %struct.block_device, %struct.block_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.block_device_operations*, %struct.block_device_operations** %20, align 8
  store %struct.block_device_operations* %21, %struct.block_device_operations** %10, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = sdiv i32 %23, 512
  %25 = mul nsw i32 %22, %24
  store i32 %25, i32* %11, align 4
  %26 = load %struct.block_device_operations*, %struct.block_device_operations** %10, align 8
  %27 = getelementptr inbounds %struct.block_device_operations, %struct.block_device_operations* %26, i32 0, i32 0
  %28 = load i32 (%struct.block_device.0*, i32, i8**, i64*)*, i32 (%struct.block_device.0*, i32, i8**, i64*)** %27, align 8
  %29 = icmp ne i32 (%struct.block_device.0*, i32, i8**, i64*)* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load %struct.block_device_operations*, %struct.block_device_operations** %10, align 8
  %34 = getelementptr inbounds %struct.block_device_operations, %struct.block_device_operations* %33, i32 0, i32 0
  %35 = load i32 (%struct.block_device.0*, i32, i8**, i64*)*, i32 (%struct.block_device.0*, i32, i8**, i64*)** %34, align 8
  %36 = load %struct.block_device*, %struct.block_device** %9, align 8
  %37 = bitcast %struct.block_device* %36 to %struct.block_device.0*
  %38 = load i32, i32* %11, align 4
  %39 = load i8**, i8*** %7, align 8
  %40 = load i64*, i64** %8, align 8
  %41 = call i32 %35(%struct.block_device.0* %37, i32 %38, i8** %39, i64* %40)
  ret i32 %41
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
