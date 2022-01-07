; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsfs.c_cifs_umount_begin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsfs.c_cifs_umount_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.cifs_sb_info = type { i32 }
%struct.cifs_tcon = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@cifs_tcp_ses_lock = common dso_local global i32 0, align 4
@CifsExiting = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"wake up tasks now - umount begin not complete\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @cifs_umount_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cifs_umount_begin(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.cifs_sb_info*, align 8
  %4 = alloca %struct.cifs_tcon*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %5 = load %struct.super_block*, %struct.super_block** %2, align 8
  %6 = call %struct.cifs_sb_info* @CIFS_SB(%struct.super_block* %5)
  store %struct.cifs_sb_info* %6, %struct.cifs_sb_info** %3, align 8
  %7 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %3, align 8
  %8 = icmp eq %struct.cifs_sb_info* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %75

10:                                               ; preds = %1
  %11 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %3, align 8
  %12 = call %struct.cifs_tcon* @cifs_sb_master_tcon(%struct.cifs_sb_info* %11)
  store %struct.cifs_tcon* %12, %struct.cifs_tcon** %4, align 8
  %13 = call i32 @spin_lock(i32* @cifs_tcp_ses_lock)
  %14 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %15 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %24, label %18

18:                                               ; preds = %10
  %19 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %20 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CifsExiting, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18, %10
  %25 = call i32 @spin_unlock(i32* @cifs_tcp_ses_lock)
  br label %75

26:                                               ; preds = %18
  %27 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %28 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i64, i64* @CifsExiting, align 8
  %33 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %34 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %31, %26
  br label %36

36:                                               ; preds = %35
  %37 = call i32 @spin_unlock(i32* @cifs_tcp_ses_lock)
  %38 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %39 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = icmp ne %struct.TYPE_4__* %40, null
  br i1 %41, label %42, label %74

42:                                               ; preds = %36
  %43 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %44 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = icmp ne %struct.TYPE_3__* %47, null
  br i1 %48, label %49, label %74

49:                                               ; preds = %42
  %50 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %52 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = call i32 @wake_up_all(i32* %56)
  %58 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %59 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %58, i32 0, i32 2
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = call i32 @wake_up_all(i32* %63)
  %65 = call i32 @msleep(i32 1)
  %66 = load %struct.cifs_tcon*, %struct.cifs_tcon** %4, align 8
  %67 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %66, i32 0, i32 2
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = call i32 @wake_up_all(i32* %71)
  %73 = call i32 @msleep(i32 1)
  br label %74

74:                                               ; preds = %49, %42, %36
  br label %75

75:                                               ; preds = %74, %24, %9
  ret void
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(%struct.super_block*) #1

declare dso_local %struct.cifs_tcon* @cifs_sb_master_tcon(%struct.cifs_sb_info*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cFYI(i32, i8*) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
