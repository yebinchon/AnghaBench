; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/adfs/extr_inode.c_adfs_unix2adfs_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/adfs/extr_inode.c_adfs_unix2adfs_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i32)* @adfs_unix2adfs_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adfs_unix2adfs_time(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = call %struct.TYPE_2__* @ADFS_I(%struct.inode* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %42

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, 255
  %15 = mul i32 %14, 100
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = udiv i32 %16, 256
  %18 = mul i32 %17, 100
  %19 = load i32, i32* %6, align 4
  %20 = lshr i32 %19, 8
  %21 = add i32 %18, %20
  %22 = add i32 %21, 862886250
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = lshr i32 %23, 24
  %25 = load %struct.inode*, %struct.inode** %3, align 8
  %26 = call %struct.TYPE_2__* @ADFS_I(%struct.inode* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, -256
  %30 = or i32 %24, %29
  %31 = load %struct.inode*, %struct.inode** %3, align 8
  %32 = call %struct.TYPE_2__* @ADFS_I(%struct.inode* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, 255
  %36 = load i32, i32* %5, align 4
  %37 = shl i32 %36, 8
  %38 = or i32 %35, %37
  %39 = load %struct.inode*, %struct.inode** %3, align 8
  %40 = call %struct.TYPE_2__* @ADFS_I(%struct.inode* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  br label %42

42:                                               ; preds = %12, %2
  ret void
}

declare dso_local %struct.TYPE_2__* @ADFS_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
