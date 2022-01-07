; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_splice_branch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_splice_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_3__ = type { i32, i64, i32* }

@.str = private unnamed_addr constant [17 x i8] c"get_write_access\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"splicing indirect only\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"call ext4_handle_dirty_metadata\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"splicing direct\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"call jbd2_journal_forget\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, i32, %struct.TYPE_3__*, i32, i32)* @ext4_splice_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_splice_branch(i32* %0, %struct.inode* %1, i32 %2, %struct.TYPE_3__* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %6
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @BUFFER_TRACE(i64 %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %26 = load i32*, i32** %8, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @ext4_journal_get_write_access(i32* %26, i64 %29)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  br label %101

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34, %6
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %73

44:                                               ; preds = %35
  %45 = load i32, i32* %13, align 4
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %73

47:                                               ; preds = %44
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @le32_to_cpu(i32 %50)
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %16, align 8
  store i32 1, i32* %14, align 4
  br label %54

54:                                               ; preds = %69, %47
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %54
  %59 = load i64, i64* %16, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %16, align 8
  %61 = trunc i64 %59 to i32
  %62 = call i32 @cpu_to_le32(i32 %61)
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %62, i32* %68, align 4
  br label %69

69:                                               ; preds = %58
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %14, align 4
  br label %54

72:                                               ; preds = %54
  br label %73

73:                                               ; preds = %72, %44, %35
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %94

78:                                               ; preds = %73
  %79 = call i32 @jbd_debug(i32 5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @BUFFER_TRACE(i64 %82, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i32*, i32** %8, align 8
  %85 = load %struct.inode*, %struct.inode** %9, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @ext4_handle_dirty_metadata(i32* %84, %struct.inode* %85, i64 %88)
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %15, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %78
  br label %101

93:                                               ; preds = %78
  br label %99

94:                                               ; preds = %73
  %95 = load i32*, i32** %8, align 8
  %96 = load %struct.inode*, %struct.inode** %9, align 8
  %97 = call i32 @ext4_mark_inode_dirty(i32* %95, %struct.inode* %96)
  %98 = call i32 @jbd_debug(i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %99

99:                                               ; preds = %94, %93
  %100 = load i32, i32* %15, align 4
  store i32 %100, i32* %7, align 4
  br label %149

101:                                              ; preds = %92, %33
  store i32 1, i32* %14, align 4
  br label %102

102:                                              ; preds = %133, %101
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp sle i32 %103, %104
  br i1 %105, label %106, label %136

106:                                              ; preds = %102
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %108 = load i32, i32* %14, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @BUFFER_TRACE(i64 %112, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %114 = load i32*, i32** %8, align 8
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %116 = load i32, i32* %14, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @ext4_journal_forget(i32* %114, i64 %120)
  %122 = load i32*, i32** %8, align 8
  %123 = load %struct.inode*, %struct.inode** %9, align 8
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %125 = load i32, i32* %14, align 4
  %126 = sub nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @le32_to_cpu(i32 %130)
  %132 = call i32 @ext4_free_blocks(i32* %122, %struct.inode* %123, i32 %131, i32 1, i32 0)
  br label %133

133:                                              ; preds = %106
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %14, align 4
  br label %102

136:                                              ; preds = %102
  %137 = load i32*, i32** %8, align 8
  %138 = load %struct.inode*, %struct.inode** %9, align 8
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @le32_to_cpu(i32 %144)
  %146 = load i32, i32* %13, align 4
  %147 = call i32 @ext4_free_blocks(i32* %137, %struct.inode* %138, i32 %145, i32 %146, i32 0)
  %148 = load i32, i32* %15, align 4
  store i32 %148, i32* %7, align 4
  br label %149

149:                                              ; preds = %136, %99
  %150 = load i32, i32* %7, align 4
  ret i32 %150
}

declare dso_local i32 @BUFFER_TRACE(i64, i8*) #1

declare dso_local i32 @ext4_journal_get_write_access(i32*, i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @jbd_debug(i32, i8*) #1

declare dso_local i32 @ext4_handle_dirty_metadata(i32*, %struct.inode*, i64) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_journal_forget(i32*, i64) #1

declare dso_local i32 @ext4_free_blocks(i32*, %struct.inode*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
