; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_inode.c_cifs_iget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_inode.c_cifs_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i64 }
%struct.super_block = type { i32 }
%struct.cifs_fattr = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"looking for uniqueid=%llu\00", align 1
@cifs_find_inode = common dso_local global i32 0, align 4
@cifs_init_inode = common dso_local global i32 0, align 4
@CIFS_FATTR_INO_COLLISION = common dso_local global i32 0, align 4
@ROOT_I = common dso_local global i32 0, align 4
@MS_NOATIME = common dso_local global i32 0, align 4
@S_NOATIME = common dso_local global i32 0, align 4
@S_NOCMTIME = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @cifs_iget(%struct.super_block* %0, %struct.cifs_fattr* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.cifs_fattr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.cifs_fattr* %1, %struct.cifs_fattr** %4, align 8
  br label %7

7:                                                ; preds = %41, %2
  %8 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %9 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %13 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @cifs_uniqueid_to_ino_t(i32 %14)
  store i64 %15, i64* %5, align 8
  %16 = load %struct.super_block*, %struct.super_block** %3, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i32, i32* @cifs_find_inode, align 4
  %19 = load i32, i32* @cifs_init_inode, align 4
  %20 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %21 = call %struct.inode* @iget5_locked(%struct.super_block* %16, i64 %17, i32 %18, i32 %19, %struct.cifs_fattr* %20)
  store %struct.inode* %21, %struct.inode** %6, align 8
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = icmp ne %struct.inode* %22, null
  br i1 %23, label %24, label %85

24:                                               ; preds = %7
  %25 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %26 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CIFS_FATTR_INO_COLLISION, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %24
  %32 = load i32, i32* @CIFS_FATTR_INO_COLLISION, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %35 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = call i64 @inode_has_hashed_dentries(%struct.inode* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %31
  %42 = load %struct.super_block*, %struct.super_block** %3, align 8
  %43 = call i32 @CIFS_SB(%struct.super_block* %42)
  %44 = call i32 @cifs_autodisable_serverino(i32 %43)
  %45 = load %struct.inode*, %struct.inode** %6, align 8
  %46 = call i32 @iput(%struct.inode* %45)
  %47 = load %struct.super_block*, %struct.super_block** %3, align 8
  %48 = load i32, i32* @ROOT_I, align 4
  %49 = call i32 @iunique(%struct.super_block* %47, i32 %48)
  %50 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %51 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %7

52:                                               ; preds = %31
  br label %53

53:                                               ; preds = %52, %24
  %54 = load %struct.inode*, %struct.inode** %6, align 8
  %55 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %56 = call i32 @cifs_fattr_to_inode(%struct.inode* %54, %struct.cifs_fattr* %55)
  %57 = load %struct.super_block*, %struct.super_block** %3, align 8
  %58 = getelementptr inbounds %struct.super_block, %struct.super_block* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @MS_NOATIME, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %53
  %64 = load i32, i32* @S_NOATIME, align 4
  %65 = load i32, i32* @S_NOCMTIME, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.inode*, %struct.inode** %6, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %63, %53
  %72 = load %struct.inode*, %struct.inode** %6, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @I_NEW, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load i64, i64* %5, align 8
  %80 = load %struct.inode*, %struct.inode** %6, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 2
  store i64 %79, i64* %81, align 8
  %82 = load %struct.inode*, %struct.inode** %6, align 8
  %83 = call i32 @unlock_new_inode(%struct.inode* %82)
  br label %84

84:                                               ; preds = %78, %71
  br label %85

85:                                               ; preds = %84, %7
  %86 = load %struct.inode*, %struct.inode** %6, align 8
  ret %struct.inode* %86
}

declare dso_local i32 @cFYI(i32, i8*, i32) #1

declare dso_local i64 @cifs_uniqueid_to_ino_t(i32) #1

declare dso_local %struct.inode* @iget5_locked(%struct.super_block*, i64, i32, i32, %struct.cifs_fattr*) #1

declare dso_local i64 @inode_has_hashed_dentries(%struct.inode*) #1

declare dso_local i32 @cifs_autodisable_serverino(i32) #1

declare dso_local i32 @CIFS_SB(%struct.super_block*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @iunique(%struct.super_block*, i32) #1

declare dso_local i32 @cifs_fattr_to_inode(%struct.inode*, %struct.cifs_fattr*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
