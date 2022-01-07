; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/adfs/extr_dir.c_adfs_dir_lookup_byname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/adfs/extr_dir.c_adfs_dir_lookup_byname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.qstr = type { i32, i8* }
%struct.object_info = type { i32, i32, i64 }
%struct.adfs_dir_ops = type { i32 (%struct.super_block*, i32, i32, %struct.adfs_dir*)*, i32 (%struct.adfs_dir.0*, i32)*, i64 (%struct.adfs_dir.1*, %struct.object_info*)*, i32 (%struct.adfs_dir.2*)* }
%struct.adfs_dir = type opaque
%struct.adfs_dir.0 = type opaque
%struct.adfs_dir.1 = type opaque
%struct.adfs_dir.2 = type opaque
%struct.adfs_dir.3 = type { i64 }
%struct.TYPE_3__ = type { %struct.adfs_dir_ops* }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [54 x i8] c"parent directory changed under me! (%lx but got %lx)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@adfs_dir_lock = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.qstr*, %struct.object_info*)* @adfs_dir_lookup_byname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adfs_dir_lookup_byname(%struct.inode* %0, %struct.qstr* %1, %struct.object_info* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.qstr*, align 8
  %6 = alloca %struct.object_info*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.adfs_dir_ops*, align 8
  %9 = alloca %struct.adfs_dir.3, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.qstr* %1, %struct.qstr** %5, align 8
  store %struct.object_info* %2, %struct.object_info** %6, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 2
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %7, align 8
  %14 = load %struct.super_block*, %struct.super_block** %7, align 8
  %15 = call %struct.TYPE_3__* @ADFS_SB(%struct.super_block* %14)
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.adfs_dir_ops*, %struct.adfs_dir_ops** %16, align 8
  store %struct.adfs_dir_ops* %17, %struct.adfs_dir_ops** %8, align 8
  %18 = load %struct.adfs_dir_ops*, %struct.adfs_dir_ops** %8, align 8
  %19 = getelementptr inbounds %struct.adfs_dir_ops, %struct.adfs_dir_ops* %18, i32 0, i32 0
  %20 = load i32 (%struct.super_block*, i32, i32, %struct.adfs_dir*)*, i32 (%struct.super_block*, i32, i32, %struct.adfs_dir*)** %19, align 8
  %21 = load %struct.super_block*, %struct.super_block** %7, align 8
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = bitcast %struct.adfs_dir.3* %9 to %struct.adfs_dir*
  %29 = call i32 %20(%struct.super_block* %21, i32 %24, i32 %27, %struct.adfs_dir* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  br label %123

33:                                               ; preds = %3
  %34 = load %struct.inode*, %struct.inode** %4, align 8
  %35 = call %struct.TYPE_4__* @ADFS_I(%struct.inode* %34)
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.adfs_dir.3, %struct.adfs_dir.3* %9, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %37, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %33
  %42 = load %struct.super_block*, %struct.super_block** %7, align 8
  %43 = load %struct.inode*, %struct.inode** %4, align 8
  %44 = call %struct.TYPE_4__* @ADFS_I(%struct.inode* %43)
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.adfs_dir.3, %struct.adfs_dir.3* %9, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @adfs_error(%struct.super_block* %42, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %46, i64 %48)
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %10, align 4
  br label %117

52:                                               ; preds = %33
  %53 = load %struct.inode*, %struct.inode** %4, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.object_info*, %struct.object_info** %6, align 8
  %57 = getelementptr inbounds %struct.object_info, %struct.object_info* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.qstr*, %struct.qstr** %5, align 8
  %59 = getelementptr inbounds %struct.qstr, %struct.qstr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %86

62:                                               ; preds = %52
  %63 = load %struct.qstr*, %struct.qstr** %5, align 8
  %64 = getelementptr inbounds %struct.qstr, %struct.qstr* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 46
  br i1 %69, label %70, label %86

70:                                               ; preds = %62
  %71 = load %struct.qstr*, %struct.qstr** %5, align 8
  %72 = getelementptr inbounds %struct.qstr, %struct.qstr* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 46
  br i1 %77, label %78, label %86

78:                                               ; preds = %70
  %79 = load %struct.object_info*, %struct.object_info** %6, align 8
  %80 = getelementptr inbounds %struct.object_info, %struct.object_info* %79, i32 0, i32 2
  store i64 0, i64* %80, align 8
  %81 = load %struct.object_info*, %struct.object_info** %6, align 8
  %82 = getelementptr inbounds %struct.object_info, %struct.object_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.object_info*, %struct.object_info** %6, align 8
  %85 = getelementptr inbounds %struct.object_info, %struct.object_info* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  br label %117

86:                                               ; preds = %70, %62, %52
  %87 = call i32 @read_lock(i32* @adfs_dir_lock)
  %88 = load %struct.adfs_dir_ops*, %struct.adfs_dir_ops** %8, align 8
  %89 = getelementptr inbounds %struct.adfs_dir_ops, %struct.adfs_dir_ops* %88, i32 0, i32 1
  %90 = load i32 (%struct.adfs_dir.0*, i32)*, i32 (%struct.adfs_dir.0*, i32)** %89, align 8
  %91 = bitcast %struct.adfs_dir.3* %9 to %struct.adfs_dir.0*
  %92 = call i32 %90(%struct.adfs_dir.0* %91, i32 0)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  br label %115

96:                                               ; preds = %86
  %97 = load i32, i32* @ENOENT, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %10, align 4
  br label %99

99:                                               ; preds = %113, %96
  %100 = load %struct.adfs_dir_ops*, %struct.adfs_dir_ops** %8, align 8
  %101 = getelementptr inbounds %struct.adfs_dir_ops, %struct.adfs_dir_ops* %100, i32 0, i32 2
  %102 = load i64 (%struct.adfs_dir.1*, %struct.object_info*)*, i64 (%struct.adfs_dir.1*, %struct.object_info*)** %101, align 8
  %103 = bitcast %struct.adfs_dir.3* %9 to %struct.adfs_dir.1*
  %104 = load %struct.object_info*, %struct.object_info** %6, align 8
  %105 = call i64 %102(%struct.adfs_dir.1* %103, %struct.object_info* %104)
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %99
  %108 = load %struct.qstr*, %struct.qstr** %5, align 8
  %109 = load %struct.object_info*, %struct.object_info** %6, align 8
  %110 = call i64 @adfs_match(%struct.qstr* %108, %struct.object_info* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  store i32 0, i32* %10, align 4
  br label %114

113:                                              ; preds = %107
  br label %99

114:                                              ; preds = %112, %99
  br label %115

115:                                              ; preds = %114, %95
  %116 = call i32 @read_unlock(i32* @adfs_dir_lock)
  br label %117

117:                                              ; preds = %115, %78, %41
  %118 = load %struct.adfs_dir_ops*, %struct.adfs_dir_ops** %8, align 8
  %119 = getelementptr inbounds %struct.adfs_dir_ops, %struct.adfs_dir_ops* %118, i32 0, i32 3
  %120 = load i32 (%struct.adfs_dir.2*)*, i32 (%struct.adfs_dir.2*)** %119, align 8
  %121 = bitcast %struct.adfs_dir.3* %9 to %struct.adfs_dir.2*
  %122 = call i32 %120(%struct.adfs_dir.2* %121)
  br label %123

123:                                              ; preds = %117, %32
  %124 = load i32, i32* %10, align 4
  ret i32 %124
}

declare dso_local %struct.TYPE_3__* @ADFS_SB(%struct.super_block*) #1

declare dso_local %struct.TYPE_4__* @ADFS_I(%struct.inode*) #1

declare dso_local i32 @adfs_error(%struct.super_block*, i8*, i64, i64) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i64 @adfs_match(%struct.qstr*, %struct.object_info*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
