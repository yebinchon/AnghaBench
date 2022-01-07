; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/adfs/extr_inode.c_adfs_adfs2unix_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/adfs/extr_inode.c_adfs_adfs2unix_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }

@CURRENT_TIME_SEC = common dso_local global %struct.timespec zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timespec*, %struct.inode*)* @adfs_adfs2unix_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adfs_adfs2unix_time(%struct.timespec* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.timespec*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.timespec* %0, %struct.timespec** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = call %struct.TYPE_2__* @ADFS_I(%struct.inode* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %53

13:                                               ; preds = %2
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = call %struct.TYPE_2__* @ADFS_I(%struct.inode* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = shl i32 %17, 24
  store i32 %18, i32* %5, align 4
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = call %struct.TYPE_2__* @ADFS_I(%struct.inode* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = lshr i32 %23, 8
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 255
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ult i32 %29, 862886250
  br i1 %30, label %31, label %32

31:                                               ; preds = %13
  br label %56

32:                                               ; preds = %13
  %33 = load i32, i32* %5, align 4
  %34 = icmp uge i32 %33, 1701747049
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %61

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = sub i32 %37, 862886250
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = urem i32 %39, 100
  %41 = shl i32 %40, 8
  %42 = load i32, i32* %6, align 4
  %43 = add i32 %41, %42
  %44 = udiv i32 %43, 100
  %45 = load i32, i32* %5, align 4
  %46 = udiv i32 %45, 100
  %47 = shl i32 %46, 8
  %48 = add i32 %44, %47
  %49 = load %struct.timespec*, %struct.timespec** %3, align 8
  %50 = getelementptr inbounds %struct.timespec, %struct.timespec* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.timespec*, %struct.timespec** %3, align 8
  %52 = getelementptr inbounds %struct.timespec, %struct.timespec* %51, i32 0, i32 1
  store i32 0, i32* %52, align 4
  br label %66

53:                                               ; preds = %12
  %54 = load %struct.timespec*, %struct.timespec** %3, align 8
  %55 = bitcast %struct.timespec* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 4 bitcast (%struct.timespec* @CURRENT_TIME_SEC to i8*), i64 8, i1 false)
  br label %66

56:                                               ; preds = %31
  %57 = load %struct.timespec*, %struct.timespec** %3, align 8
  %58 = getelementptr inbounds %struct.timespec, %struct.timespec* %57, i32 0, i32 1
  store i32 0, i32* %58, align 4
  %59 = load %struct.timespec*, %struct.timespec** %3, align 8
  %60 = getelementptr inbounds %struct.timespec, %struct.timespec* %59, i32 0, i32 0
  store i32 0, i32* %60, align 4
  br label %66

61:                                               ; preds = %35
  %62 = load %struct.timespec*, %struct.timespec** %3, align 8
  %63 = getelementptr inbounds %struct.timespec, %struct.timespec* %62, i32 0, i32 0
  store i32 2147483645, i32* %63, align 4
  %64 = load %struct.timespec*, %struct.timespec** %3, align 8
  %65 = getelementptr inbounds %struct.timespec, %struct.timespec* %64, i32 0, i32 1
  store i32 0, i32* %65, align 4
  br label %66

66:                                               ; preds = %61, %56, %53, %36
  ret void
}

declare dso_local %struct.TYPE_2__* @ADFS_I(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
