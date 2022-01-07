; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_inode.c_ocfs2_refresh_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_inode.c_ocfs2_refresh_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i64, i8*, i64, i64, i32 }
%struct.TYPE_7__ = type { i64, i8* }
%struct.TYPE_6__ = type { i64, i8* }
%struct.TYPE_5__ = type { i64, i8* }
%struct.ocfs2_dinode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i8*, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_refresh_inode(%struct.inode* %0, %struct.ocfs2_dinode* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.ocfs2_dinode*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.ocfs2_dinode* %1, %struct.ocfs2_dinode** %4, align 8
  %5 = load %struct.inode*, %struct.inode** %3, align 8
  %6 = call %struct.TYPE_8__* @OCFS2_I(%struct.inode* %5)
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %4, align 8
  %10 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @le32_to_cpu(i32 %11)
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = call %struct.TYPE_8__* @OCFS2_I(%struct.inode* %13)
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 3
  store i64 %12, i64* %15, align 8
  %16 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %4, align 8
  %17 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %16, i32 0, i32 12
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @le32_to_cpu(i32 %18)
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = call %struct.TYPE_8__* @OCFS2_I(%struct.inode* %20)
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  store i64 %19, i64* %22, align 8
  %23 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %4, align 8
  %24 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %23, i32 0, i32 11
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @le16_to_cpu(i32 %25)
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = call %struct.TYPE_8__* @OCFS2_I(%struct.inode* %27)
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  store i8* %26, i8** %29, align 8
  %30 = load %struct.inode*, %struct.inode** %3, align 8
  %31 = call i32 @ocfs2_set_inode_flags(%struct.inode* %30)
  %32 = load %struct.inode*, %struct.inode** %3, align 8
  %33 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %4, align 8
  %34 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %33, i32 0, i32 10
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @le64_to_cpu(i32 %35)
  %37 = call i32 @i_size_write(%struct.inode* %32, i8* %36)
  %38 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %4, align 8
  %39 = call i32 @ocfs2_read_links_count(%struct.ocfs2_dinode* %38)
  %40 = load %struct.inode*, %struct.inode** %3, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 7
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %4, align 8
  %43 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %42, i32 0, i32 9
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @le32_to_cpu(i32 %44)
  %46 = load %struct.inode*, %struct.inode** %3, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 6
  store i64 %45, i64* %47, align 8
  %48 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %4, align 8
  %49 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %48, i32 0, i32 8
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @le32_to_cpu(i32 %50)
  %52 = load %struct.inode*, %struct.inode** %3, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 5
  store i64 %51, i64* %53, align 8
  %54 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %4, align 8
  %55 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @le16_to_cpu(i32 %56)
  %58 = load %struct.inode*, %struct.inode** %3, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 4
  store i8* %57, i8** %59, align 8
  %60 = load %struct.inode*, %struct.inode** %3, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 4
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @S_ISLNK(i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %2
  %66 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %4, align 8
  %67 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @le32_to_cpu(i32 %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load %struct.inode*, %struct.inode** %3, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 3
  store i64 0, i64* %73, align 8
  br label %79

74:                                               ; preds = %65, %2
  %75 = load %struct.inode*, %struct.inode** %3, align 8
  %76 = call i64 @ocfs2_inode_sector_count(%struct.inode* %75)
  %77 = load %struct.inode*, %struct.inode** %3, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 3
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %74, %71
  %80 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %4, align 8
  %81 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @le64_to_cpu(i32 %82)
  %84 = load %struct.inode*, %struct.inode** %3, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  store i8* %83, i8** %86, align 8
  %87 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %4, align 8
  %88 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @le32_to_cpu(i32 %89)
  %91 = load %struct.inode*, %struct.inode** %3, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  store i64 %90, i64* %93, align 8
  %94 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %4, align 8
  %95 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @le64_to_cpu(i32 %96)
  %98 = load %struct.inode*, %struct.inode** %3, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  store i8* %97, i8** %100, align 8
  %101 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %4, align 8
  %102 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @le32_to_cpu(i32 %103)
  %105 = load %struct.inode*, %struct.inode** %3, align 8
  %106 = getelementptr inbounds %struct.inode, %struct.inode* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  store i64 %104, i64* %107, align 8
  %108 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %4, align 8
  %109 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i8* @le64_to_cpu(i32 %110)
  %112 = load %struct.inode*, %struct.inode** %3, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  store i8* %111, i8** %114, align 8
  %115 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %4, align 8
  %116 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @le32_to_cpu(i32 %117)
  %119 = load %struct.inode*, %struct.inode** %3, align 8
  %120 = getelementptr inbounds %struct.inode, %struct.inode* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  store i64 %118, i64* %121, align 8
  %122 = load %struct.inode*, %struct.inode** %3, align 8
  %123 = call %struct.TYPE_8__* @OCFS2_I(%struct.inode* %122)
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = call i32 @spin_unlock(i32* %124)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_8__* @OCFS2_I(%struct.inode*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_set_inode_flags(%struct.inode*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i8*) #1

declare dso_local i8* @le64_to_cpu(i32) #1

declare dso_local i32 @ocfs2_read_links_count(%struct.ocfs2_dinode*) #1

declare dso_local i64 @S_ISLNK(i8*) #1

declare dso_local i64 @ocfs2_inode_sector_count(%struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
