; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_inode.c_cifs_fattr_to_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_inode.c_cifs_fattr_to_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cifs_fattr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cifsInodeInfo = type { i64, i32, i32, i32 }
%struct.cifs_sb_info = type { i32 }

@I_NEW = common dso_local global i32 0, align 4
@CIFS_MOUNT_DYNPERM = common dso_local global i32 0, align 4
@CIFS_FATTR_NEED_REVAL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"inode 0x%p old_time=%ld new_time=%ld\00", align 1
@CIFS_FATTR_DELETE_PENDING = common dso_local global i32 0, align 4
@CIFS_FATTR_DFS_REFERRAL = common dso_local global i32 0, align 4
@S_AUTOMOUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cifs_fattr_to_inode(%struct.inode* %0, %struct.cifs_fattr* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.cifs_fattr*, align 8
  %5 = alloca %struct.cifsInodeInfo*, align 8
  %6 = alloca %struct.cifs_sb_info*, align 8
  %7 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.cifs_fattr* %1, %struct.cifs_fattr** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = call %struct.cifsInodeInfo* @CIFS_I(%struct.inode* %8)
  store %struct.cifsInodeInfo* %9, %struct.cifsInodeInfo** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 12
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.cifs_sb_info* @CIFS_SB(i32 %12)
  store %struct.cifs_sb_info* %13, %struct.cifs_sb_info** %6, align 8
  %14 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %15 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %19 = call i32 @cifs_revalidate_cache(%struct.inode* %17, %struct.cifs_fattr* %18)
  %20 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %21 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %20, i32 0, i32 11
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.inode*, %struct.inode** %3, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 11
  store i32 %22, i32* %24, align 4
  %25 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %26 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %25, i32 0, i32 10
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.inode*, %struct.inode** %3, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 10
  store i32 %27, i32* %29, align 4
  %30 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %31 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.inode*, %struct.inode** %3, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 9
  store i32 %32, i32* %34, align 4
  %35 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %36 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.inode*, %struct.inode** %3, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 8
  store i32 %37, i32* %39, align 4
  %40 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %41 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.inode*, %struct.inode** %3, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 7
  store i32 %42, i32* %44, align 4
  %45 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %46 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.inode*, %struct.inode** %3, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 4
  %50 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %51 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.inode*, %struct.inode** %3, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 4
  %55 = load %struct.inode*, %struct.inode** %3, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @I_NEW, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %2
  %62 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %6, align 8
  %63 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @CIFS_MOUNT_DYNPERM, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %61, %2
  %69 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %70 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.inode*, %struct.inode** %3, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %68, %61
  %75 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %76 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %79 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 8
  %80 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %81 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @CIFS_FATTR_NEED_REVAL, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %74
  %87 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %88 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %87, i32 0, i32 0
  store i64 0, i64* %88, align 8
  br label %93

89:                                               ; preds = %74
  %90 = load i64, i64* @jiffies, align 8
  %91 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %92 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  br label %93

93:                                               ; preds = %89, %86
  %94 = load %struct.inode*, %struct.inode** %3, align 8
  %95 = load i64, i64* %7, align 8
  %96 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %97 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.inode* %94, i64 %95, i64 %98)
  %100 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %101 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @CIFS_FATTR_DELETE_PENDING, align 4
  %104 = and i32 %102, %103
  %105 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %106 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 8
  %107 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %108 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %111 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 4
  %112 = load %struct.inode*, %struct.inode** %3, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 3
  %114 = call i32 @spin_lock(i32* %113)
  %115 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %5, align 8
  %116 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %117 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @is_size_safe_to_change(%struct.cifsInodeInfo* %115, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %93
  %122 = load %struct.inode*, %struct.inode** %3, align 8
  %123 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %124 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @i_size_write(%struct.inode* %122, i32 %125)
  %127 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %128 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 511, %129
  %131 = ashr i32 %130, 9
  %132 = load %struct.inode*, %struct.inode** %3, align 8
  %133 = getelementptr inbounds %struct.inode, %struct.inode* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  br label %134

134:                                              ; preds = %121, %93
  %135 = load %struct.inode*, %struct.inode** %3, align 8
  %136 = getelementptr inbounds %struct.inode, %struct.inode* %135, i32 0, i32 3
  %137 = call i32 @spin_unlock(i32* %136)
  %138 = load %struct.cifs_fattr*, %struct.cifs_fattr** %4, align 8
  %139 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @CIFS_FATTR_DFS_REFERRAL, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %134
  %145 = load i32, i32* @S_AUTOMOUNT, align 4
  %146 = load %struct.inode*, %struct.inode** %3, align 8
  %147 = getelementptr inbounds %struct.inode, %struct.inode* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %144, %134
  %151 = load %struct.inode*, %struct.inode** %3, align 8
  %152 = call i32 @cifs_set_ops(%struct.inode* %151)
  ret void
}

declare dso_local %struct.cifsInodeInfo* @CIFS_I(%struct.inode*) #1

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local i32 @cifs_revalidate_cache(%struct.inode*, %struct.cifs_fattr*) #1

declare dso_local i32 @cFYI(i32, i8*, %struct.inode*, i64, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @is_size_safe_to_change(%struct.cifsInodeInfo*, i32) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cifs_set_ops(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
