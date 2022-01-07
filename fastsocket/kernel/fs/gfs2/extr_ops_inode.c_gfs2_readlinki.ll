; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_inode.c_gfs2_readlinki.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_inode.c_gfs2_readlinki.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, i32 }
%struct.gfs2_holder = type { i32 }
%struct.buffer_head = type { i64 }

@LM_ST_SHARED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, i8**, i32*)* @gfs2_readlinki to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_readlinki(%struct.gfs2_inode* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.gfs2_holder, align 4
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %14 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @LM_ST_SHARED, align 4
  %17 = call i32 @gfs2_holder_init(i32 %15, i32 %16, i32 0, %struct.gfs2_holder* %8)
  %18 = call i32 @gfs2_glock_nq(%struct.gfs2_holder* %8)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = call i32 @gfs2_holder_uninit(%struct.gfs2_holder* %8)
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %4, align 4
  br label %78

24:                                               ; preds = %3
  %25 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %26 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %25, i32 0, i32 0
  %27 = call i64 @i_size_read(i32* %26)
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %33 = call i32 @gfs2_consist_inode(%struct.gfs2_inode* %32)
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %12, align 4
  br label %75

36:                                               ; preds = %24
  %37 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %38 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %37, %struct.buffer_head** %9)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %75

42:                                               ; preds = %36
  %43 = load i32, i32* %11, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp ugt i32 %45, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %42
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @GFP_NOFS, align 4
  %52 = call i8* @kmalloc(i32 %50, i32 %51)
  %53 = load i8**, i8*** %6, align 8
  store i8* %52, i8** %53, align 8
  %54 = load i8**, i8*** %6, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %49
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %12, align 4
  br label %72

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60, %42
  %62 = load i8**, i8*** %6, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %65 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %66, 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @memcpy(i8* %63, i64 %67, i32 %68)
  %70 = load i32, i32* %10, align 4
  %71 = load i32*, i32** %7, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %61, %57
  %73 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %74 = call i32 @brelse(%struct.buffer_head* %73)
  br label %75

75:                                               ; preds = %72, %41, %31
  %76 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %8)
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %75, %21
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @gfs2_holder_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_glock_nq(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_holder_uninit(%struct.gfs2_holder*) #1

declare dso_local i64 @i_size_read(i32*) #1

declare dso_local i32 @gfs2_consist_inode(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
