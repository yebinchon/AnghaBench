; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_xattr.c_do_jffs2_getxattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_xattr.c_do_jffs2_getxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.jffs2_inode_info = type { %struct.jffs2_inode_cache* }
%struct.jffs2_inode_cache = type { %struct.jffs2_xattr_ref* }
%struct.jffs2_xattr_ref = type { %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_datum*, %struct.jffs2_inode_cache* }
%struct.jffs2_xattr_datum = type { i32, i32, i32, i32 }
%struct.jffs2_sb_info = type { i32 }

@ERANGE = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_jffs2_getxattr(%struct.inode* %0, i32 %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.jffs2_inode_info*, align 8
  %13 = alloca %struct.jffs2_sb_info*, align 8
  %14 = alloca %struct.jffs2_inode_cache*, align 8
  %15 = alloca %struct.jffs2_xattr_datum*, align 8
  %16 = alloca %struct.jffs2_xattr_ref*, align 8
  %17 = alloca %struct.jffs2_xattr_ref**, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %20 = load %struct.inode*, %struct.inode** %7, align 8
  %21 = call %struct.jffs2_inode_info* @JFFS2_INODE_INFO(%struct.inode* %20)
  store %struct.jffs2_inode_info* %21, %struct.jffs2_inode_info** %12, align 8
  %22 = load %struct.inode*, %struct.inode** %7, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.jffs2_sb_info* @JFFS2_SB_INFO(i32 %24)
  store %struct.jffs2_sb_info* %25, %struct.jffs2_sb_info** %13, align 8
  %26 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %12, align 8
  %27 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %26, i32 0, i32 0
  %28 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %27, align 8
  store %struct.jffs2_inode_cache* %28, %struct.jffs2_inode_cache** %14, align 8
  store i32 0, i32* %19, align 4
  %29 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %13, align 8
  %30 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %14, align 8
  %31 = call i32 @check_xattr_ref_inode(%struct.jffs2_sb_info* %29, %struct.jffs2_inode_cache* %30)
  store i32 %31, i32* %18, align 4
  %32 = load i32, i32* %18, align 4
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %5
  %36 = load i32, i32* %18, align 4
  store i32 %36, i32* %6, align 4
  br label %162

37:                                               ; preds = %5
  %38 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %13, align 8
  %39 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %38, i32 0, i32 0
  %40 = call i32 @down_read(i32* %39)
  br label %41

41:                                               ; preds = %91, %75, %37
  %42 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %14, align 8
  %43 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %42, i32 0, i32 0
  %44 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %43, align 8
  store %struct.jffs2_xattr_ref* %44, %struct.jffs2_xattr_ref** %16, align 8
  %45 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %14, align 8
  %46 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %45, i32 0, i32 0
  store %struct.jffs2_xattr_ref** %46, %struct.jffs2_xattr_ref*** %17, align 8
  br label %47

47:                                               ; preds = %140, %41
  %48 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %16, align 8
  %49 = icmp ne %struct.jffs2_xattr_ref* %48, null
  br i1 %49, label %50, label %146

50:                                               ; preds = %47
  %51 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %16, align 8
  %52 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %51, i32 0, i32 2
  %53 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %52, align 8
  %54 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %14, align 8
  %55 = icmp ne %struct.jffs2_inode_cache* %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @BUG_ON(i32 %56)
  %58 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %16, align 8
  %59 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %58, i32 0, i32 1
  %60 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %59, align 8
  store %struct.jffs2_xattr_datum* %60, %struct.jffs2_xattr_datum** %15, align 8
  %61 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %15, align 8
  %62 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %50
  br label %140

67:                                               ; preds = %50
  %68 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %15, align 8
  %69 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %109, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* %19, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %72
  store i32 1, i32* %19, align 4
  %76 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %13, align 8
  %77 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %76, i32 0, i32 0
  %78 = call i32 @up_read(i32* %77)
  %79 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %13, align 8
  %80 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %79, i32 0, i32 0
  %81 = call i32 @down_write(i32* %80)
  br label %41

82:                                               ; preds = %72
  %83 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %13, align 8
  %84 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %15, align 8
  %85 = call i32 @load_xattr_datum(%struct.jffs2_sb_info* %83, %struct.jffs2_xattr_datum* %84)
  store i32 %85, i32* %18, align 4
  %86 = load i32, i32* %18, align 4
  %87 = icmp sgt i32 %86, 0
  %88 = zext i1 %87 to i32
  %89 = call i64 @unlikely(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %82
  %92 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %16, align 8
  %93 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %92, i32 0, i32 0
  %94 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %93, align 8
  %95 = load %struct.jffs2_xattr_ref**, %struct.jffs2_xattr_ref*** %17, align 8
  store %struct.jffs2_xattr_ref* %94, %struct.jffs2_xattr_ref** %95, align 8
  %96 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %13, align 8
  %97 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %16, align 8
  %98 = call i32 @delete_xattr_ref(%struct.jffs2_sb_info* %96, %struct.jffs2_xattr_ref* %97)
  br label %41

99:                                               ; preds = %82
  %100 = load i32, i32* %18, align 4
  %101 = icmp slt i32 %100, 0
  %102 = zext i1 %101 to i32
  %103 = call i64 @unlikely(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  br label %149

106:                                              ; preds = %99
  br label %107

107:                                              ; preds = %106
  br label %108

108:                                              ; preds = %107
  br label %109

109:                                              ; preds = %108, %67
  %110 = load i8*, i8** %9, align 8
  %111 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %15, align 8
  %112 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @strcmp(i8* %110, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %139, label %116

116:                                              ; preds = %109
  %117 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %15, align 8
  %118 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %18, align 4
  %120 = load i8*, i8** %10, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %138

122:                                              ; preds = %116
  %123 = load i64, i64* %11, align 8
  %124 = load i32, i32* %18, align 4
  %125 = sext i32 %124 to i64
  %126 = icmp ult i64 %123, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load i32, i32* @ERANGE, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %18, align 4
  br label %137

130:                                              ; preds = %122
  %131 = load i8*, i8** %10, align 8
  %132 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %15, align 8
  %133 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %18, align 4
  %136 = call i32 @memcpy(i8* %131, i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %130, %127
  br label %138

138:                                              ; preds = %137, %116
  br label %149

139:                                              ; preds = %109
  br label %140

140:                                              ; preds = %139, %66
  %141 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %16, align 8
  %142 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %141, i32 0, i32 0
  store %struct.jffs2_xattr_ref** %142, %struct.jffs2_xattr_ref*** %17, align 8
  %143 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %16, align 8
  %144 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %143, i32 0, i32 0
  %145 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %144, align 8
  store %struct.jffs2_xattr_ref* %145, %struct.jffs2_xattr_ref** %16, align 8
  br label %47

146:                                              ; preds = %47
  %147 = load i32, i32* @ENODATA, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %18, align 4
  br label %149

149:                                              ; preds = %146, %138, %105
  %150 = load i32, i32* %19, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %149
  %153 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %13, align 8
  %154 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %153, i32 0, i32 0
  %155 = call i32 @up_read(i32* %154)
  br label %160

156:                                              ; preds = %149
  %157 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %13, align 8
  %158 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %157, i32 0, i32 0
  %159 = call i32 @up_write(i32* %158)
  br label %160

160:                                              ; preds = %156, %152
  %161 = load i32, i32* %18, align 4
  store i32 %161, i32* %6, align 4
  br label %162

162:                                              ; preds = %160, %35
  %163 = load i32, i32* %6, align 4
  ret i32 %163
}

declare dso_local %struct.jffs2_inode_info* @JFFS2_INODE_INFO(%struct.inode*) #1

declare dso_local %struct.jffs2_sb_info* @JFFS2_SB_INFO(i32) #1

declare dso_local i32 @check_xattr_ref_inode(%struct.jffs2_sb_info*, %struct.jffs2_inode_cache*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @load_xattr_datum(%struct.jffs2_sb_info*, %struct.jffs2_xattr_datum*) #1

declare dso_local i32 @delete_xattr_ref(%struct.jffs2_sb_info*, %struct.jffs2_xattr_ref*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
