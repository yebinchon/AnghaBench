; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_dnode.c_map_pos_dirent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_dnode.c_map_pos_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpfs_dirent = type { i64 }
%struct.inode = type { i32 }
%struct.quad_buffer_head = type { i32 }
%struct.dnode = type { i64, i64 }

@.str = private unnamed_addr constant [57 x i8] c"map_pos_dirent: pos crossed dnode boundary; pos = %08llx\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"map_pos_dirent: pos crossed dnode boundary; dnode = %08x\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"map_pos_dirent: pointer to dnode %08x not found in parent dnode %08x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hpfs_dirent* @map_pos_dirent(%struct.inode* %0, i32* %1, %struct.quad_buffer_head* %2) #0 {
  %4 = alloca %struct.hpfs_dirent*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.quad_buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hpfs_dirent*, align 8
  %12 = alloca %struct.hpfs_dirent*, align 8
  %13 = alloca %struct.hpfs_dirent*, align 8
  %14 = alloca %struct.hpfs_dirent*, align 8
  %15 = alloca %struct.dnode*, align 8
  %16 = alloca %struct.dnode*, align 8
  %17 = alloca %struct.quad_buffer_head, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.quad_buffer_head* %2, %struct.quad_buffer_head** %7, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = ashr i32 %20, 6
  %22 = shl i32 %21, 2
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %8, align 4
  %24 = and i32 %23, 63
  store i32 %24, i32* %8, align 4
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %7, align 8
  %31 = call %struct.hpfs_dirent* @map_nth_dirent(i32 %27, i32 %28, i32 %29, %struct.quad_buffer_head* %30, %struct.dnode** %15)
  store %struct.hpfs_dirent* %31, %struct.hpfs_dirent** %11, align 8
  %32 = icmp ne %struct.hpfs_dirent* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %3
  br label %147

34:                                               ; preds = %3
  %35 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %11, align 8
  %36 = call %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent* %35)
  store %struct.hpfs_dirent* %36, %struct.hpfs_dirent** %12, align 8
  %37 = load %struct.dnode*, %struct.dnode** %15, align 8
  %38 = call %struct.hpfs_dirent* @dnode_end_de(%struct.dnode* %37)
  %39 = icmp ult %struct.hpfs_dirent* %36, %38
  br i1 %39, label %40, label %73

40:                                               ; preds = %34
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = and i32 %43, 63
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %40
  %47 = load %struct.inode*, %struct.inode** %5, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = trunc i64 %52 to i32
  %54 = call i32 (i32, i8*, i32, ...) @hpfs_error(i32 %49, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %147

55:                                               ; preds = %40
  %56 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %57 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %55
  %61 = load %struct.inode*, %struct.inode** %5, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %65 = call i32 @de_down_pointer(%struct.hpfs_dirent* %64)
  %66 = call i64 @hpfs_de_as_down_as_possible(i32 %63, i32 %65)
  %67 = trunc i64 %66 to i32
  %68 = shl i32 %67, 4
  %69 = add nsw i32 %68, 1
  %70 = load i32*, i32** %6, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %60, %55
  %72 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %11, align 8
  store %struct.hpfs_dirent* %72, %struct.hpfs_dirent** %4, align 8
  br label %150

73:                                               ; preds = %34
  %74 = load %struct.dnode*, %struct.dnode** %15, align 8
  %75 = getelementptr inbounds %struct.dnode, %struct.dnode* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %147

79:                                               ; preds = %73
  %80 = load %struct.inode*, %struct.inode** %5, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.dnode*, %struct.dnode** %15, align 8
  %84 = getelementptr inbounds %struct.dnode, %struct.dnode* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call %struct.dnode* @hpfs_map_dnode(i32 %82, i64 %85, %struct.quad_buffer_head* %17)
  store %struct.dnode* %86, %struct.dnode** %16, align 8
  %87 = icmp ne %struct.dnode* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %79
  br label %147

89:                                               ; preds = %79
  %90 = load %struct.dnode*, %struct.dnode** %16, align 8
  %91 = call %struct.hpfs_dirent* @dnode_end_de(%struct.dnode* %90)
  store %struct.hpfs_dirent* %91, %struct.hpfs_dirent** %14, align 8
  store i32 0, i32* %9, align 4
  %92 = load %struct.dnode*, %struct.dnode** %16, align 8
  %93 = call %struct.hpfs_dirent* @dnode_first_de(%struct.dnode* %92)
  store %struct.hpfs_dirent* %93, %struct.hpfs_dirent** %13, align 8
  br label %94

94:                                               ; preds = %134, %89
  %95 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %96 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %14, align 8
  %97 = icmp ult %struct.hpfs_dirent* %95, %96
  br i1 %97, label %98, label %137

98:                                               ; preds = %94
  %99 = load i32, i32* %9, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %9, align 4
  %101 = and i32 %100, 63
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %112, label %103

103:                                              ; preds = %98
  %104 = load %struct.inode*, %struct.inode** %5, align 8
  %105 = getelementptr inbounds %struct.inode, %struct.inode* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.dnode*, %struct.dnode** %15, align 8
  %108 = getelementptr inbounds %struct.dnode, %struct.dnode* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = call i32 (i32, i8*, i32, ...) @hpfs_error(i32 %106, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %103, %98
  %113 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %114 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %133

117:                                              ; preds = %112
  %118 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %119 = call i32 @de_down_pointer(%struct.hpfs_dirent* %118)
  %120 = load i32, i32* %10, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %133

122:                                              ; preds = %117
  %123 = load %struct.dnode*, %struct.dnode** %15, align 8
  %124 = getelementptr inbounds %struct.dnode, %struct.dnode* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = trunc i64 %125 to i32
  %127 = shl i32 %126, 4
  %128 = load i32, i32* %9, align 4
  %129 = add i32 %127, %128
  %130 = load i32*, i32** %6, align 8
  store i32 %129, i32* %130, align 4
  %131 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %17)
  %132 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %11, align 8
  store %struct.hpfs_dirent* %132, %struct.hpfs_dirent** %4, align 8
  br label %150

133:                                              ; preds = %117, %112
  br label %134

134:                                              ; preds = %133
  %135 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %136 = call %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent* %135)
  store %struct.hpfs_dirent* %136, %struct.hpfs_dirent** %13, align 8
  br label %94

137:                                              ; preds = %94
  %138 = load %struct.inode*, %struct.inode** %5, align 8
  %139 = getelementptr inbounds %struct.inode, %struct.inode* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %10, align 4
  %142 = load %struct.dnode*, %struct.dnode** %15, align 8
  %143 = getelementptr inbounds %struct.dnode, %struct.dnode* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = call i32 (i32, i8*, i32, ...) @hpfs_error(i32 %140, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i32 %141, i64 %144)
  %146 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %17)
  br label %147

147:                                              ; preds = %137, %88, %78, %46, %33
  %148 = load i32*, i32** %6, align 8
  store i32 12, i32* %148, align 4
  %149 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %11, align 8
  store %struct.hpfs_dirent* %149, %struct.hpfs_dirent** %4, align 8
  br label %150

150:                                              ; preds = %147, %122, %71
  %151 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %4, align 8
  ret %struct.hpfs_dirent* %151
}

declare dso_local %struct.hpfs_dirent* @map_nth_dirent(i32, i32, i32, %struct.quad_buffer_head*, %struct.dnode**) #1

declare dso_local %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent*) #1

declare dso_local %struct.hpfs_dirent* @dnode_end_de(%struct.dnode*) #1

declare dso_local i32 @hpfs_error(i32, i8*, i32, ...) #1

declare dso_local i64 @hpfs_de_as_down_as_possible(i32, i32) #1

declare dso_local i32 @de_down_pointer(%struct.hpfs_dirent*) #1

declare dso_local %struct.dnode* @hpfs_map_dnode(i32, i64, %struct.quad_buffer_head*) #1

declare dso_local %struct.hpfs_dirent* @dnode_first_de(%struct.dnode*) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
