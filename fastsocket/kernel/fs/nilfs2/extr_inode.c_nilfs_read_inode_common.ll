; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_inode.c_nilfs_read_inode_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_inode.c_nilfs_read_inode_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i64, i8*, i8*, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i8*, i64, i64 }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.nilfs_inode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nilfs_inode_info = type { i32, i32, i64, i64, i8*, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@NILFS_I_BMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_read_inode_common(%struct.inode* %0, %struct.nilfs_inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.nilfs_inode*, align 8
  %6 = alloca %struct.nilfs_inode_info*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.nilfs_inode* %1, %struct.nilfs_inode** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call %struct.nilfs_inode_info* @NILFS_I(%struct.inode* %8)
  store %struct.nilfs_inode_info* %9, %struct.nilfs_inode_info** %6, align 8
  %10 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %11 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %10, i32 0, i32 13
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @le16_to_cpu(i32 %12)
  %14 = ptrtoint i8* %13 to i64
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %18 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %17, i32 0, i32 12
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @le32_to_cpu(i32 %19)
  %21 = ptrtoint i8* %20 to i64
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 9
  store i64 %21, i64* %23, align 8
  %24 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %25 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %24, i32 0, i32 11
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @le32_to_cpu(i32 %26)
  %28 = ptrtoint i8* %27 to i64
  %29 = load %struct.inode*, %struct.inode** %4, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 8
  store i64 %28, i64* %30, align 8
  %31 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %32 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %31, i32 0, i32 10
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @le16_to_cpu(i32 %33)
  %35 = ptrtoint i8* %34 to i64
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %39 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %38, i32 0, i32 9
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @le64_to_cpu(i32 %40)
  %42 = load %struct.inode*, %struct.inode** %4, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 7
  store i8* %41, i8** %43, align 8
  %44 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %45 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @le64_to_cpu(i32 %46)
  %48 = load %struct.inode*, %struct.inode** %4, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 6
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i8* %47, i8** %50, align 8
  %51 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %52 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @le64_to_cpu(i32 %53)
  %55 = load %struct.inode*, %struct.inode** %4, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  store i8* %54, i8** %57, align 8
  %58 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %59 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @le64_to_cpu(i32 %60)
  %62 = load %struct.inode*, %struct.inode** %4, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  store i8* %61, i8** %64, align 8
  %65 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %66 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @le32_to_cpu(i32 %67)
  %69 = load %struct.inode*, %struct.inode** %4, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 6
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i8* %68, i8** %71, align 8
  %72 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %73 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @le32_to_cpu(i32 %74)
  %76 = load %struct.inode*, %struct.inode** %4, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i8* %75, i8** %78, align 8
  %79 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %80 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @le32_to_cpu(i32 %81)
  %83 = load %struct.inode*, %struct.inode** %4, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  store i8* %82, i8** %85, align 8
  %86 = load %struct.inode*, %struct.inode** %4, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %2
  %91 = load %struct.inode*, %struct.inode** %4, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %154

98:                                               ; preds = %90, %2
  %99 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %100 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @le64_to_cpu(i32 %101)
  %103 = load %struct.inode*, %struct.inode** %4, align 8
  %104 = getelementptr inbounds %struct.inode, %struct.inode* %103, i32 0, i32 3
  store i8* %102, i8** %104, align 8
  %105 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %106 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i8* @le32_to_cpu(i32 %107)
  %109 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %6, align 8
  %110 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %109, i32 0, i32 6
  store i8* %108, i8** %110, align 8
  %111 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %6, align 8
  %112 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %111, i32 0, i32 3
  store i64 0, i64* %112, align 8
  %113 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %6, align 8
  %114 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %113, i32 0, i32 2
  store i64 0, i64* %114, align 8
  %115 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %116 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @le32_to_cpu(i32 %117)
  %119 = load %struct.inode*, %struct.inode** %4, align 8
  %120 = getelementptr inbounds %struct.inode, %struct.inode* %119, i32 0, i32 2
  store i8* %118, i8** %120, align 8
  %121 = load %struct.inode*, %struct.inode** %4, align 8
  %122 = getelementptr inbounds %struct.inode, %struct.inode* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i64 @S_ISREG(i64 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %138, label %126

126:                                              ; preds = %98
  %127 = load %struct.inode*, %struct.inode** %4, align 8
  %128 = getelementptr inbounds %struct.inode, %struct.inode* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i64 @S_ISDIR(i64 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %126
  %133 = load %struct.inode*, %struct.inode** %4, align 8
  %134 = getelementptr inbounds %struct.inode, %struct.inode* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i64 @S_ISLNK(i64 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %153

138:                                              ; preds = %132, %126, %98
  %139 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %6, align 8
  %140 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.nilfs_inode*, %struct.nilfs_inode** %5, align 8
  %143 = call i32 @nilfs_bmap_read(i32 %141, %struct.nilfs_inode* %142)
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* %7, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %138
  %147 = load i32, i32* %7, align 4
  store i32 %147, i32* %3, align 4
  br label %154

148:                                              ; preds = %138
  %149 = load i32, i32* @NILFS_I_BMAP, align 4
  %150 = load %struct.nilfs_inode_info*, %struct.nilfs_inode_info** %6, align 8
  %151 = getelementptr inbounds %struct.nilfs_inode_info, %struct.nilfs_inode_info* %150, i32 0, i32 0
  %152 = call i32 @set_bit(i32 %149, i32* %151)
  br label %153

153:                                              ; preds = %148, %132
  store i32 0, i32* %3, align 4
  br label %154

154:                                              ; preds = %153, %146, %95
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local %struct.nilfs_inode_info* @NILFS_I(%struct.inode*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i8* @le64_to_cpu(i32) #1

declare dso_local i64 @S_ISREG(i64) #1

declare dso_local i64 @S_ISDIR(i64) #1

declare dso_local i64 @S_ISLNK(i64) #1

declare dso_local i32 @nilfs_bmap_read(i32, %struct.nilfs_inode*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
