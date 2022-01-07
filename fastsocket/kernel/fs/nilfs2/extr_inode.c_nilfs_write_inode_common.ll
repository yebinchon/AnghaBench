; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_inode.c_nilfs_write_inode_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_inode.c_nilfs_write_inode_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.nilfs_inode = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.nilfs_inode_info = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_write_inode_common(%struct.inode* %0, %struct.nilfs_inode* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.nilfs_inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nilfs_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.nilfs_inode* %1, %struct.nilfs_inode** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call %struct.nilfs_inode_info* @NILFS_I(%struct.inode* %8)
  store %struct.nilfs_inode_info* %9, %struct.nilfs_inode_info** %7, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @cpu_to_le16(i32 %12)
  %14 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %15 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %14, i32 0, i32 12
  store i8* %13, i8** %15, align 8
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 9
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @cpu_to_le32(i32 %18)
  %20 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %21 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %20, i32 0, i32 11
  store i8* %19, i8** %21, align 8
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @cpu_to_le32(i32 %24)
  %26 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %27 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %26, i32 0, i32 10
  store i8* %25, i8** %27, align 8
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @cpu_to_le16(i32 %30)
  %32 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %33 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %32, i32 0, i32 9
  store i8* %31, i8** %33, align 8
  %34 = load %struct.inode*, %struct.inode** %4, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @cpu_to_le64(i32 %36)
  %38 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %39 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %38, i32 0, i32 8
  store i8* %37, i8** %39, align 8
  %40 = load %struct.inode*, %struct.inode** %4, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @cpu_to_le64(i32 %43)
  %45 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %46 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %45, i32 0, i32 7
  store i8* %44, i8** %46, align 8
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @cpu_to_le64(i32 %50)
  %52 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %53 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %52, i32 0, i32 6
  store i8* %51, i8** %53, align 8
  %54 = load %struct.inode*, %struct.inode** %4, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @cpu_to_le32(i32 %57)
  %59 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %60 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %59, i32 0, i32 5
  store i8* %58, i8** %60, align 8
  %61 = load %struct.inode*, %struct.inode** %4, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @cpu_to_le32(i32 %64)
  %66 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %67 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %66, i32 0, i32 4
  store i8* %65, i8** %67, align 8
  %68 = load %struct.inode*, %struct.inode** %4, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @cpu_to_le64(i32 %70)
  %72 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %73 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %72, i32 0, i32 3
  store i8* %71, i8** %73, align 8
  %74 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %7, align 8
  %75 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @cpu_to_le32(i32 %76)
  %78 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %79 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %78, i32 0, i32 2
  store i8* %77, i8** %79, align 8
  %80 = load %struct.inode*, %struct.inode** %4, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @cpu_to_le32(i32 %82)
  %84 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %85 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %84, i32 0, i32 1
  store i8* %83, i8** %85, align 8
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %3
  %89 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %7, align 8
  %90 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %93 = call i32 @nilfs_bmap_write(i32 %91, %struct.nilfs_inode* %92)
  br label %115

94:                                               ; preds = %3
  %95 = load %struct.inode*, %struct.inode** %4, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @S_ISCHR(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %94
  %101 = load %struct.inode*, %struct.inode** %4, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @S_ISBLK(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %100, %94
  %107 = load %struct.inode*, %struct.inode** %4, align 8
  %108 = getelementptr inbounds %struct.inode, %struct.inode* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @new_encode_dev(i32 %109)
  %111 = call i8* @cpu_to_le64(i32 %110)
  %112 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %113 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %112, i32 0, i32 0
  store i8* %111, i8** %113, align 8
  br label %114

114:                                              ; preds = %106, %100
  br label %115

115:                                              ; preds = %114, %88
  ret void
}

declare dso_local %struct.nilfs_inode_info* @NILFS_I(%struct.inode*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @nilfs_bmap_write(i32, %struct.nilfs_inode*) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i32 @new_encode_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
