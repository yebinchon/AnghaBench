; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_reflink_xattr_in_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_reflink_xattr_in_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_xattr_reflink = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_xattr_block = type { i32 }

@OCFS2_XATTR_INDEXED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_xattr_reflink*, %struct.buffer_head*)* @ocfs2_reflink_xattr_in_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_reflink_xattr_in_block(%struct.ocfs2_xattr_reflink* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.ocfs2_xattr_reflink*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.ocfs2_xattr_block*, align 8
  store %struct.ocfs2_xattr_reflink* %0, %struct.ocfs2_xattr_reflink** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  store i32 0, i32* %6, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %7, align 8
  %9 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %10 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.ocfs2_xattr_block*
  store %struct.ocfs2_xattr_block* %12, %struct.ocfs2_xattr_block** %8, align 8
  %13 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %8, align 8
  %14 = getelementptr inbounds %struct.ocfs2_xattr_block, %struct.ocfs2_xattr_block* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le16_to_cpu(i32 %15)
  %17 = load i32, i32* @OCFS2_XATTR_INDEXED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %21

21:                                               ; preds = %20, %2
  %22 = load %struct.ocfs2_xattr_reflink*, %struct.ocfs2_xattr_reflink** %3, align 8
  %23 = getelementptr inbounds %struct.ocfs2_xattr_reflink, %struct.ocfs2_xattr_reflink* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ocfs2_xattr_reflink*, %struct.ocfs2_xattr_reflink** %3, align 8
  %26 = getelementptr inbounds %struct.ocfs2_xattr_reflink, %struct.ocfs2_xattr_reflink* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @ocfs2_create_empty_xattr_block(i32 %24, i32 %27, %struct.buffer_head** %7, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @mlog_errno(i32 %33)
  br label %60

35:                                               ; preds = %21
  %36 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %8, align 8
  %37 = getelementptr inbounds %struct.ocfs2_xattr_block, %struct.ocfs2_xattr_block* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le16_to_cpu(i32 %38)
  %40 = load i32, i32* @OCFS2_XATTR_INDEXED, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %35
  %44 = load %struct.ocfs2_xattr_reflink*, %struct.ocfs2_xattr_reflink** %3, align 8
  %45 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %46 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %47 = call i32 @ocfs2_reflink_xattr_block(%struct.ocfs2_xattr_reflink* %44, %struct.buffer_head* %45, %struct.buffer_head* %46)
  store i32 %47, i32* %5, align 4
  br label %53

48:                                               ; preds = %35
  %49 = load %struct.ocfs2_xattr_reflink*, %struct.ocfs2_xattr_reflink** %3, align 8
  %50 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %51 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %52 = call i32 @ocfs2_reflink_xattr_tree(%struct.ocfs2_xattr_reflink* %49, %struct.buffer_head* %50, %struct.buffer_head* %51)
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %48, %43
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @mlog_errno(i32 %57)
  br label %59

59:                                               ; preds = %56, %53
  br label %60

60:                                               ; preds = %59, %32
  %61 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %62 = call i32 @brelse(%struct.buffer_head* %61)
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_create_empty_xattr_block(i32, i32, %struct.buffer_head**, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_reflink_xattr_block(%struct.ocfs2_xattr_reflink*, %struct.buffer_head*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_reflink_xattr_tree(%struct.ocfs2_xattr_reflink*, %struct.buffer_head*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
