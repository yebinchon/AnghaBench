; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_aops.c_ocfs2_write_end_inline.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_aops.c_ocfs2_write_end_inline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_dinode = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ocfs2_write_ctxt = type { i32 }

@KM_USER0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [89 x i8] c"Data written to inode at offset %llu. id_count = %u, copied = %u, i_dyn_features = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i32, i32, i32*, %struct.ocfs2_dinode*, %struct.ocfs2_write_ctxt*)* @ocfs2_write_end_inline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_write_end_inline(%struct.inode* %0, i32 %1, i32 %2, i32* %3, %struct.ocfs2_dinode* %4, %struct.ocfs2_write_ctxt* %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ocfs2_dinode*, align 8
  %12 = alloca %struct.ocfs2_write_ctxt*, align 8
  %13 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store %struct.ocfs2_dinode* %4, %struct.ocfs2_dinode** %11, align 8
  store %struct.ocfs2_write_ctxt* %5, %struct.ocfs2_write_ctxt** %12, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ult i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %6
  %22 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %12, align 8
  %23 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @PageUptodate(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = load i32*, i32** %10, align 8
  store i32 0, i32* %28, align 4
  br label %68

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %6
  %31 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %12, align 8
  %32 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @KM_USER0, align 4
  %35 = call i8* @kmap_atomic(i32 %33, i32 %34)
  store i8* %35, i8** %13, align 8
  %36 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %37 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %40, %41
  %43 = load i8*, i8** %13, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr i8, i8* %43, i64 %45
  %47 = load i32*, i32** %10, align 8
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @memcpy(i32 %42, i8* %46, i32 %48)
  %50 = load i8*, i8** %13, align 8
  %51 = load i32, i32* @KM_USER0, align 4
  %52 = call i32 @kunmap_atomic(i8* %50, i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = load i32*, i32** %10, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %58 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @le16_to_cpu(i32 %61)
  %63 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %64 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @le16_to_cpu(i32 %65)
  %67 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i64 %54, i32 %56, i32 %62, i32 %66)
  br label %68

68:                                               ; preds = %30, %27
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PageUptodate(i32) #1

declare dso_local i8* @kmap_atomic(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @mlog(i32, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
