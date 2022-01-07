; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_imap.c_diMount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_imap.c_diMount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.inomap = type { %struct.inode*, %struct.TYPE_5__*, i8*, i8*, i32, i32, i8*, i8* }
%struct.TYPE_5__ = type { i8*, i8*, i8*, i8* }
%struct.metapage = type { i64 }
%struct.dinomap_disk = type { %struct.TYPE_6__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.inomap* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"diMount: kmalloc returned NULL!\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IMAPBLKNO = common dso_local global i32 0, align 4
@PSIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MAXAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @diMount(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.inomap*, align 8
  %5 = alloca %struct.metapage*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dinomap_disk*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.inomap* @kmalloc(i32 56, i32 %8)
  store %struct.inomap* %9, %struct.inomap** %4, align 8
  %10 = load %struct.inomap*, %struct.inomap** %4, align 8
  %11 = icmp eq %struct.inomap* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = call i32 @jfs_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %174

16:                                               ; preds = %1
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = load i32, i32* @IMAPBLKNO, align 4
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.TYPE_7__* @JFS_SBI(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %18, %24
  %26 = load i32, i32* @PSIZE, align 4
  %27 = call %struct.metapage* @read_metapage(%struct.inode* %17, i32 %25, i32 %26, i32 0)
  store %struct.metapage* %27, %struct.metapage** %5, align 8
  %28 = load %struct.metapage*, %struct.metapage** %5, align 8
  %29 = icmp eq %struct.metapage* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %16
  %31 = load %struct.inomap*, %struct.inomap** %4, align 8
  %32 = call i32 @kfree(%struct.inomap* %31)
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %174

35:                                               ; preds = %16
  %36 = load %struct.metapage*, %struct.metapage** %5, align 8
  %37 = getelementptr inbounds %struct.metapage, %struct.metapage* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.dinomap_disk*
  store %struct.dinomap_disk* %39, %struct.dinomap_disk** %7, align 8
  %40 = load %struct.dinomap_disk*, %struct.dinomap_disk** %7, align 8
  %41 = getelementptr inbounds %struct.dinomap_disk, %struct.dinomap_disk* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @le32_to_cpu(i32 %42)
  %44 = load %struct.inomap*, %struct.inomap** %4, align 8
  %45 = getelementptr inbounds %struct.inomap, %struct.inomap* %44, i32 0, i32 7
  store i8* %43, i8** %45, align 8
  %46 = load %struct.dinomap_disk*, %struct.dinomap_disk** %7, align 8
  %47 = getelementptr inbounds %struct.dinomap_disk, %struct.dinomap_disk* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = call i8* @le32_to_cpu(i32 %48)
  %50 = load %struct.inomap*, %struct.inomap** %4, align 8
  %51 = getelementptr inbounds %struct.inomap, %struct.inomap* %50, i32 0, i32 6
  store i8* %49, i8** %51, align 8
  %52 = load %struct.inomap*, %struct.inomap** %4, align 8
  %53 = getelementptr inbounds %struct.inomap, %struct.inomap* %52, i32 0, i32 5
  %54 = load %struct.dinomap_disk*, %struct.dinomap_disk** %7, align 8
  %55 = getelementptr inbounds %struct.dinomap_disk, %struct.dinomap_disk* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @le32_to_cpu(i32 %56)
  %58 = call i32 @atomic_set(i32* %53, i8* %57)
  %59 = load %struct.inomap*, %struct.inomap** %4, align 8
  %60 = getelementptr inbounds %struct.inomap, %struct.inomap* %59, i32 0, i32 4
  %61 = load %struct.dinomap_disk*, %struct.dinomap_disk** %7, align 8
  %62 = getelementptr inbounds %struct.dinomap_disk, %struct.dinomap_disk* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i8* @le32_to_cpu(i32 %63)
  %65 = call i32 @atomic_set(i32* %60, i8* %64)
  %66 = load %struct.dinomap_disk*, %struct.dinomap_disk** %7, align 8
  %67 = getelementptr inbounds %struct.dinomap_disk, %struct.dinomap_disk* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @le32_to_cpu(i32 %68)
  %70 = load %struct.inomap*, %struct.inomap** %4, align 8
  %71 = getelementptr inbounds %struct.inomap, %struct.inomap* %70, i32 0, i32 3
  store i8* %69, i8** %71, align 8
  %72 = load %struct.dinomap_disk*, %struct.dinomap_disk** %7, align 8
  %73 = getelementptr inbounds %struct.dinomap_disk, %struct.dinomap_disk* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i8* @le32_to_cpu(i32 %74)
  %76 = load %struct.inomap*, %struct.inomap** %4, align 8
  %77 = getelementptr inbounds %struct.inomap, %struct.inomap* %76, i32 0, i32 2
  store i8* %75, i8** %77, align 8
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %147, %35
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @MAXAG, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %150

82:                                               ; preds = %78
  %83 = load %struct.dinomap_disk*, %struct.dinomap_disk** %7, align 8
  %84 = getelementptr inbounds %struct.dinomap_disk, %struct.dinomap_disk* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @le32_to_cpu(i32 %90)
  %92 = load %struct.inomap*, %struct.inomap** %4, align 8
  %93 = getelementptr inbounds %struct.inomap, %struct.inomap* %92, i32 0, i32 1
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 3
  store i8* %91, i8** %98, align 8
  %99 = load %struct.dinomap_disk*, %struct.dinomap_disk** %7, align 8
  %100 = getelementptr inbounds %struct.dinomap_disk, %struct.dinomap_disk* %99, i32 0, i32 0
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i8* @le32_to_cpu(i32 %106)
  %108 = load %struct.inomap*, %struct.inomap** %4, align 8
  %109 = getelementptr inbounds %struct.inomap, %struct.inomap* %108, i32 0, i32 1
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 2
  store i8* %107, i8** %114, align 8
  %115 = load %struct.dinomap_disk*, %struct.dinomap_disk** %7, align 8
  %116 = getelementptr inbounds %struct.dinomap_disk, %struct.dinomap_disk* %115, i32 0, i32 0
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i8* @le32_to_cpu(i32 %122)
  %124 = load %struct.inomap*, %struct.inomap** %4, align 8
  %125 = getelementptr inbounds %struct.inomap, %struct.inomap* %124, i32 0, i32 1
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  store i8* %123, i8** %130, align 8
  %131 = load %struct.dinomap_disk*, %struct.dinomap_disk** %7, align 8
  %132 = getelementptr inbounds %struct.dinomap_disk, %struct.dinomap_disk* %131, i32 0, i32 0
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i8* @le32_to_cpu(i32 %138)
  %140 = load %struct.inomap*, %struct.inomap** %4, align 8
  %141 = getelementptr inbounds %struct.inomap, %struct.inomap* %140, i32 0, i32 1
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %141, align 8
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  store i8* %139, i8** %146, align 8
  br label %147

147:                                              ; preds = %82
  %148 = load i32, i32* %6, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %6, align 4
  br label %78

150:                                              ; preds = %78
  %151 = load %struct.metapage*, %struct.metapage** %5, align 8
  %152 = call i32 @release_metapage(%struct.metapage* %151)
  %153 = load %struct.inomap*, %struct.inomap** %4, align 8
  %154 = call i32 @IAGFREE_LOCK_INIT(%struct.inomap* %153)
  store i32 0, i32* %6, align 4
  br label %155

155:                                              ; preds = %163, %150
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* @MAXAG, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %166

159:                                              ; preds = %155
  %160 = load %struct.inomap*, %struct.inomap** %4, align 8
  %161 = load i32, i32* %6, align 4
  %162 = call i32 @AG_LOCK_INIT(%struct.inomap* %160, i32 %161)
  br label %163

163:                                              ; preds = %159
  %164 = load i32, i32* %6, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %6, align 4
  br label %155

166:                                              ; preds = %155
  %167 = load %struct.inode*, %struct.inode** %3, align 8
  %168 = load %struct.inomap*, %struct.inomap** %4, align 8
  %169 = getelementptr inbounds %struct.inomap, %struct.inomap* %168, i32 0, i32 0
  store %struct.inode* %167, %struct.inode** %169, align 8
  %170 = load %struct.inomap*, %struct.inomap** %4, align 8
  %171 = load %struct.inode*, %struct.inode** %3, align 8
  %172 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %171)
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  store %struct.inomap* %170, %struct.inomap** %173, align 8
  store i32 0, i32* %2, align 4
  br label %174

174:                                              ; preds = %166, %30, %12
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local %struct.inomap* @kmalloc(i32, i32) #1

declare dso_local i32 @jfs_err(i8*) #1

declare dso_local %struct.metapage* @read_metapage(%struct.inode*, i32, i32, i32) #1

declare dso_local %struct.TYPE_7__* @JFS_SBI(i32) #1

declare dso_local i32 @kfree(%struct.inomap*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @atomic_set(i32*, i8*) #1

declare dso_local i32 @release_metapage(%struct.metapage*) #1

declare dso_local i32 @IAGFREE_LOCK_INIT(%struct.inomap*) #1

declare dso_local i32 @AG_LOCK_INIT(%struct.inomap*, i32) #1

declare dso_local %struct.TYPE_8__* @JFS_IP(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
