; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dmap.c_dbMount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dmap.c_dbMount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.bmap = type { i32, %struct.inode*, i32, i8*, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.dbmap_disk = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.metapage = type { i64 }
%struct.TYPE_2__ = type { i32, %struct.bmap* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BMAPBLKNO = common dso_local global i32 0, align 4
@PSIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MAXAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbMount(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.bmap*, align 8
  %5 = alloca %struct.dbmap_disk*, align 8
  %6 = alloca %struct.metapage*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.bmap* @kmalloc(i32 136, i32 %8)
  store %struct.bmap* %9, %struct.bmap** %4, align 8
  %10 = load %struct.bmap*, %struct.bmap** %4, align 8
  %11 = icmp eq %struct.bmap* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %162

15:                                               ; preds = %1
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = load i32, i32* @BMAPBLKNO, align 4
  %18 = load %struct.inode*, %struct.inode** %3, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.TYPE_2__* @JFS_SBI(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = shl i32 %17, %23
  %25 = load i32, i32* @PSIZE, align 4
  %26 = call %struct.metapage* @read_metapage(%struct.inode* %16, i32 %24, i32 %25, i32 0)
  store %struct.metapage* %26, %struct.metapage** %6, align 8
  %27 = load %struct.metapage*, %struct.metapage** %6, align 8
  %28 = icmp eq %struct.metapage* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %15
  %30 = load %struct.bmap*, %struct.bmap** %4, align 8
  %31 = call i32 @kfree(%struct.bmap* %30)
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %162

34:                                               ; preds = %15
  %35 = load %struct.metapage*, %struct.metapage** %6, align 8
  %36 = getelementptr inbounds %struct.metapage, %struct.metapage* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.dbmap_disk*
  store %struct.dbmap_disk* %38, %struct.dbmap_disk** %5, align 8
  %39 = load %struct.dbmap_disk*, %struct.dbmap_disk** %5, align 8
  %40 = getelementptr inbounds %struct.dbmap_disk, %struct.dbmap_disk* %39, i32 0, i32 14
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @le64_to_cpu(i32 %41)
  %43 = load %struct.bmap*, %struct.bmap** %4, align 8
  %44 = getelementptr inbounds %struct.bmap, %struct.bmap* %43, i32 0, i32 16
  store i8* %42, i8** %44, align 8
  %45 = load %struct.dbmap_disk*, %struct.dbmap_disk** %5, align 8
  %46 = getelementptr inbounds %struct.dbmap_disk, %struct.dbmap_disk* %45, i32 0, i32 13
  %47 = load i32, i32* %46, align 8
  %48 = call i8* @le64_to_cpu(i32 %47)
  %49 = load %struct.bmap*, %struct.bmap** %4, align 8
  %50 = getelementptr inbounds %struct.bmap, %struct.bmap* %49, i32 0, i32 15
  store i8* %48, i8** %50, align 8
  %51 = load %struct.dbmap_disk*, %struct.dbmap_disk** %5, align 8
  %52 = getelementptr inbounds %struct.dbmap_disk, %struct.dbmap_disk* %51, i32 0, i32 12
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @le32_to_cpu(i32 %53)
  %55 = load %struct.bmap*, %struct.bmap** %4, align 8
  %56 = getelementptr inbounds %struct.bmap, %struct.bmap* %55, i32 0, i32 14
  store i8* %54, i8** %56, align 8
  %57 = load %struct.dbmap_disk*, %struct.dbmap_disk** %5, align 8
  %58 = getelementptr inbounds %struct.dbmap_disk, %struct.dbmap_disk* %57, i32 0, i32 11
  %59 = load i32, i32* %58, align 8
  %60 = call i8* @le32_to_cpu(i32 %59)
  %61 = load %struct.bmap*, %struct.bmap** %4, align 8
  %62 = getelementptr inbounds %struct.bmap, %struct.bmap* %61, i32 0, i32 13
  store i8* %60, i8** %62, align 8
  %63 = load %struct.dbmap_disk*, %struct.dbmap_disk** %5, align 8
  %64 = getelementptr inbounds %struct.dbmap_disk, %struct.dbmap_disk* %63, i32 0, i32 10
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @le32_to_cpu(i32 %65)
  %67 = load %struct.bmap*, %struct.bmap** %4, align 8
  %68 = getelementptr inbounds %struct.bmap, %struct.bmap* %67, i32 0, i32 12
  store i8* %66, i8** %68, align 8
  %69 = load %struct.dbmap_disk*, %struct.dbmap_disk** %5, align 8
  %70 = getelementptr inbounds %struct.dbmap_disk, %struct.dbmap_disk* %69, i32 0, i32 9
  %71 = load i32, i32* %70, align 8
  %72 = call i8* @le32_to_cpu(i32 %71)
  %73 = load %struct.bmap*, %struct.bmap** %4, align 8
  %74 = getelementptr inbounds %struct.bmap, %struct.bmap* %73, i32 0, i32 11
  store i8* %72, i8** %74, align 8
  %75 = load %struct.dbmap_disk*, %struct.dbmap_disk** %5, align 8
  %76 = getelementptr inbounds %struct.dbmap_disk, %struct.dbmap_disk* %75, i32 0, i32 8
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @le32_to_cpu(i32 %77)
  %79 = load %struct.bmap*, %struct.bmap** %4, align 8
  %80 = getelementptr inbounds %struct.bmap, %struct.bmap* %79, i32 0, i32 10
  store i8* %78, i8** %80, align 8
  %81 = load %struct.dbmap_disk*, %struct.dbmap_disk** %5, align 8
  %82 = getelementptr inbounds %struct.dbmap_disk, %struct.dbmap_disk* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 8
  %84 = call i8* @le32_to_cpu(i32 %83)
  %85 = load %struct.bmap*, %struct.bmap** %4, align 8
  %86 = getelementptr inbounds %struct.bmap, %struct.bmap* %85, i32 0, i32 9
  store i8* %84, i8** %86, align 8
  %87 = load %struct.dbmap_disk*, %struct.dbmap_disk** %5, align 8
  %88 = getelementptr inbounds %struct.dbmap_disk, %struct.dbmap_disk* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @le32_to_cpu(i32 %89)
  %91 = load %struct.bmap*, %struct.bmap** %4, align 8
  %92 = getelementptr inbounds %struct.bmap, %struct.bmap* %91, i32 0, i32 8
  store i8* %90, i8** %92, align 8
  %93 = load %struct.dbmap_disk*, %struct.dbmap_disk** %5, align 8
  %94 = getelementptr inbounds %struct.dbmap_disk, %struct.dbmap_disk* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = call i8* @le32_to_cpu(i32 %95)
  %97 = load %struct.bmap*, %struct.bmap** %4, align 8
  %98 = getelementptr inbounds %struct.bmap, %struct.bmap* %97, i32 0, i32 7
  store i8* %96, i8** %98, align 8
  %99 = load %struct.dbmap_disk*, %struct.dbmap_disk** %5, align 8
  %100 = getelementptr inbounds %struct.dbmap_disk, %struct.dbmap_disk* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @le32_to_cpu(i32 %101)
  %103 = load %struct.bmap*, %struct.bmap** %4, align 8
  %104 = getelementptr inbounds %struct.bmap, %struct.bmap* %103, i32 0, i32 6
  store i8* %102, i8** %104, align 8
  %105 = load %struct.dbmap_disk*, %struct.dbmap_disk** %5, align 8
  %106 = getelementptr inbounds %struct.dbmap_disk, %struct.dbmap_disk* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = call i8* @le32_to_cpu(i32 %107)
  %109 = load %struct.bmap*, %struct.bmap** %4, align 8
  %110 = getelementptr inbounds %struct.bmap, %struct.bmap* %109, i32 0, i32 5
  store i8* %108, i8** %110, align 8
  store i32 0, i32* %7, align 4
  br label %111

111:                                              ; preds = %130, %34
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @MAXAG, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %133

115:                                              ; preds = %111
  %116 = load %struct.dbmap_disk*, %struct.dbmap_disk** %5, align 8
  %117 = getelementptr inbounds %struct.dbmap_disk, %struct.dbmap_disk* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = call i8* @le64_to_cpu(i32 %122)
  %124 = load %struct.bmap*, %struct.bmap** %4, align 8
  %125 = getelementptr inbounds %struct.bmap, %struct.bmap* %124, i32 0, i32 4
  %126 = load i8**, i8*** %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  store i8* %123, i8** %129, align 8
  br label %130

130:                                              ; preds = %115
  %131 = load i32, i32* %7, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %7, align 4
  br label %111

133:                                              ; preds = %111
  %134 = load %struct.dbmap_disk*, %struct.dbmap_disk** %5, align 8
  %135 = getelementptr inbounds %struct.dbmap_disk, %struct.dbmap_disk* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i8* @le64_to_cpu(i32 %136)
  %138 = load %struct.bmap*, %struct.bmap** %4, align 8
  %139 = getelementptr inbounds %struct.bmap, %struct.bmap* %138, i32 0, i32 3
  store i8* %137, i8** %139, align 8
  %140 = load %struct.dbmap_disk*, %struct.dbmap_disk** %5, align 8
  %141 = getelementptr inbounds %struct.dbmap_disk, %struct.dbmap_disk* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.bmap*, %struct.bmap** %4, align 8
  %144 = getelementptr inbounds %struct.bmap, %struct.bmap* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 8
  %145 = load %struct.metapage*, %struct.metapage** %6, align 8
  %146 = call i32 @release_metapage(%struct.metapage* %145)
  %147 = load %struct.inode*, %struct.inode** %3, align 8
  %148 = load %struct.bmap*, %struct.bmap** %4, align 8
  %149 = getelementptr inbounds %struct.bmap, %struct.bmap* %148, i32 0, i32 1
  store %struct.inode* %147, %struct.inode** %149, align 8
  %150 = load %struct.bmap*, %struct.bmap** %4, align 8
  %151 = load %struct.inode*, %struct.inode** %3, align 8
  %152 = getelementptr inbounds %struct.inode, %struct.inode* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call %struct.TYPE_2__* @JFS_SBI(i32 %153)
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 1
  store %struct.bmap* %150, %struct.bmap** %155, align 8
  %156 = load %struct.bmap*, %struct.bmap** %4, align 8
  %157 = getelementptr inbounds %struct.bmap, %struct.bmap* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @memset(i32 %158, i32 0, i32 4)
  %160 = load %struct.bmap*, %struct.bmap** %4, align 8
  %161 = call i32 @BMAP_LOCK_INIT(%struct.bmap* %160)
  store i32 0, i32* %2, align 4
  br label %162

162:                                              ; preds = %133, %29, %12
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local %struct.bmap* @kmalloc(i32, i32) #1

declare dso_local %struct.metapage* @read_metapage(%struct.inode*, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @JFS_SBI(i32) #1

declare dso_local i32 @kfree(%struct.bmap*) #1

declare dso_local i8* @le64_to_cpu(i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @release_metapage(%struct.metapage*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @BMAP_LOCK_INIT(%struct.bmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
