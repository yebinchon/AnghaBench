; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_free_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_free_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"get_write_access\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"call ext3_journal_dirty_metadata\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"ext3_free_data\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"circular indirect block detected, inode=%lu, block=%llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.inode*, %struct.buffer_head*, i32*, i32*)* @ext3_free_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext3_free_data(i32* %0, %struct.inode* %1, %struct.buffer_head* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i32* null, i32** %13, align 8
  %17 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %18 = icmp ne %struct.buffer_head* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %5
  %20 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %21 = call i32 @BUFFER_TRACE(%struct.buffer_head* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %22 = load i32*, i32** %6, align 8
  %23 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %24 = call i32 @ext3_journal_get_write_access(i32* %22, %struct.buffer_head* %23)
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %16, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %110

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28, %5
  %30 = load i32*, i32** %9, align 8
  store i32* %30, i32** %15, align 8
  br label %31

31:                                               ; preds = %70, %29
  %32 = load i32*, i32** %15, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = icmp ult i32* %32, %33
  br i1 %34, label %35, label %73

35:                                               ; preds = %31
  %36 = load i32*, i32** %15, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @le32_to_cpu(i32 %37)
  store i64 %38, i64* %14, align 8
  %39 = load i64, i64* %14, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %69

41:                                               ; preds = %35
  %42 = load i64, i64* %12, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i64, i64* %14, align 8
  store i64 %45, i64* %11, align 8
  %46 = load i32*, i32** %15, align 8
  store i32* %46, i32** %13, align 8
  store i64 1, i64* %12, align 8
  br label %68

47:                                               ; preds = %41
  %48 = load i64, i64* %14, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* %12, align 8
  %51 = add i64 %49, %50
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i64, i64* %12, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %12, align 8
  br label %67

56:                                               ; preds = %47
  %57 = load i32*, i32** %6, align 8
  %58 = load %struct.inode*, %struct.inode** %7, align 8
  %59 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load i32*, i32** %13, align 8
  %63 = load i32*, i32** %15, align 8
  %64 = call i32 @ext3_clear_blocks(i32* %57, %struct.inode* %58, %struct.buffer_head* %59, i64 %60, i64 %61, i32* %62, i32* %63)
  %65 = load i64, i64* %14, align 8
  store i64 %65, i64* %11, align 8
  %66 = load i32*, i32** %15, align 8
  store i32* %66, i32** %13, align 8
  store i64 1, i64* %12, align 8
  br label %67

67:                                               ; preds = %56, %53
  br label %68

68:                                               ; preds = %67, %44
  br label %69

69:                                               ; preds = %68, %35
  br label %70

70:                                               ; preds = %69
  %71 = load i32*, i32** %15, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %15, align 8
  br label %31

73:                                               ; preds = %31
  %74 = load i64, i64* %12, align 8
  %75 = icmp ugt i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = load i32*, i32** %6, align 8
  %78 = load %struct.inode*, %struct.inode** %7, align 8
  %79 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %80 = load i64, i64* %11, align 8
  %81 = load i64, i64* %12, align 8
  %82 = load i32*, i32** %13, align 8
  %83 = load i32*, i32** %15, align 8
  %84 = call i32 @ext3_clear_blocks(i32* %77, %struct.inode* %78, %struct.buffer_head* %79, i64 %80, i64 %81, i32* %82, i32* %83)
  br label %85

85:                                               ; preds = %76, %73
  %86 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %87 = icmp ne %struct.buffer_head* %86, null
  br i1 %87, label %88, label %110

88:                                               ; preds = %85
  %89 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %90 = call i32 @BUFFER_TRACE(%struct.buffer_head* %89, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %91 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %92 = call i64 @bh2jh(%struct.buffer_head* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load i32*, i32** %6, align 8
  %96 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %97 = call i32 @ext3_journal_dirty_metadata(i32* %95, %struct.buffer_head* %96)
  br label %109

98:                                               ; preds = %88
  %99 = load %struct.inode*, %struct.inode** %7, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.inode*, %struct.inode** %7, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %106 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @ext3_error(i32 %101, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %104, i64 %107)
  br label %109

109:                                              ; preds = %98, %94
  br label %110

110:                                              ; preds = %27, %109, %85
  ret void
}

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @ext3_journal_get_write_access(i32*, %struct.buffer_head*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ext3_clear_blocks(i32*, %struct.inode*, %struct.buffer_head*, i64, i64, i32*, i32*) #1

declare dso_local i64 @bh2jh(%struct.buffer_head*) #1

declare dso_local i32 @ext3_journal_dirty_metadata(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ext3_error(i32, i8*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
