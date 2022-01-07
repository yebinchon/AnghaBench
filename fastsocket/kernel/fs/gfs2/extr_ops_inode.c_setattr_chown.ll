; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_inode.c_setattr_chown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_inode.c_setattr_chown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i64 }
%struct.iattr = type { i64, i64, i32 }
%struct.gfs2_inode = type { i32, i32 }
%struct.gfs2_sbd = type { i32 }
%struct.buffer_head = type { i32 }

@ATTR_UID = common dso_local global i32 0, align 4
@NO_QUOTA_CHANGE = common dso_local global i64 0, align 8
@ATTR_GID = common dso_local global i32 0, align 4
@RES_DINODE = common dso_local global i64 0, align 8
@RES_QUOTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.iattr*)* @setattr_chown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setattr_chown(%struct.inode* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca %struct.gfs2_sbd*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %15)
  store %struct.gfs2_inode* %16, %struct.gfs2_inode** %6, align 8
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %17)
  store %struct.gfs2_sbd* %18, %struct.gfs2_sbd** %7, align 8
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %9, align 8
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %10, align 8
  %25 = load %struct.iattr*, %struct.iattr** %5, align 8
  %26 = getelementptr inbounds %struct.iattr, %struct.iattr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %11, align 8
  %28 = load %struct.iattr*, %struct.iattr** %5, align 8
  %29 = getelementptr inbounds %struct.iattr, %struct.iattr* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %12, align 8
  %31 = load %struct.iattr*, %struct.iattr** %5, align 8
  %32 = getelementptr inbounds %struct.iattr, %struct.iattr* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @ATTR_UID, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %2
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %11, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37, %2
  %42 = load i64, i64* @NO_QUOTA_CHANGE, align 8
  store i64 %42, i64* %11, align 8
  store i64 %42, i64* %9, align 8
  br label %43

43:                                               ; preds = %41, %37
  %44 = load %struct.iattr*, %struct.iattr** %5, align 8
  %45 = getelementptr inbounds %struct.iattr, %struct.iattr* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @ATTR_GID, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %12, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50, %43
  %55 = load i64, i64* @NO_QUOTA_CHANGE, align 8
  store i64 %55, i64* %12, align 8
  store i64 %55, i64* %10, align 8
  br label %56

56:                                               ; preds = %54, %50
  %57 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %58 = call i32 @gfs2_rindex_update(%struct.gfs2_sbd* %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %13, align 4
  store i32 %62, i32* %3, align 4
  br label %158

63:                                               ; preds = %56
  %64 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* %12, align 8
  %67 = call i32 @gfs2_quota_lock(%struct.gfs2_inode* %64, i64 %65, i64 %66)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* %13, align 4
  store i32 %71, i32* %3, align 4
  br label %158

72:                                               ; preds = %63
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* @NO_QUOTA_CHANGE, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* @NO_QUOTA_CHANGE, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %76, %72
  %81 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %82 = load i64, i64* %11, align 8
  %83 = load i64, i64* %12, align 8
  %84 = call i32 @gfs2_quota_check(%struct.gfs2_inode* %81, i64 %82, i64 %83)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %154

88:                                               ; preds = %80
  br label %89

89:                                               ; preds = %88, %76
  %90 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %91 = load i64, i64* @RES_DINODE, align 8
  %92 = load i32, i32* @RES_QUOTA, align 4
  %93 = mul nsw i32 2, %92
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %91, %94
  %96 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %90, i64 %95, i32 0)
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %89
  br label %154

100:                                              ; preds = %89
  %101 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %102 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %101, %struct.buffer_head** %8)
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %151

106:                                              ; preds = %100
  %107 = load %struct.inode*, %struct.inode** %4, align 8
  %108 = load %struct.iattr*, %struct.iattr** %5, align 8
  %109 = call i32 @inode_setattr(%struct.inode* %107, %struct.iattr* %108)
  store i32 %109, i32* %13, align 4
  %110 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %111 = load i32, i32* %13, align 4
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = call i32 @gfs2_assert_warn(%struct.gfs2_sbd* %110, i32 %114)
  %116 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %117 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %120 = call i32 @gfs2_trans_add_meta(i32 %118, %struct.buffer_head* %119)
  %121 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %122 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %123 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @gfs2_dinode_out(%struct.gfs2_inode* %121, i32 %124)
  %126 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %127 = call i32 @brelse(%struct.buffer_head* %126)
  %128 = load i64, i64* %9, align 8
  %129 = load i64, i64* @NO_QUOTA_CHANGE, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %135, label %131

131:                                              ; preds = %106
  %132 = load i64, i64* %10, align 8
  %133 = load i64, i64* @NO_QUOTA_CHANGE, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %150

135:                                              ; preds = %131, %106
  %136 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %137 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %136, i32 0, i32 0
  %138 = call i32 @gfs2_get_inode_blocks(i32* %137)
  store i32 %138, i32* %14, align 4
  %139 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %140 = load i32, i32* %14, align 4
  %141 = sub nsw i32 0, %140
  %142 = load i64, i64* %9, align 8
  %143 = load i64, i64* %10, align 8
  %144 = call i32 @gfs2_quota_change(%struct.gfs2_inode* %139, i32 %141, i64 %142, i64 %143)
  %145 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %146 = load i32, i32* %14, align 4
  %147 = load i64, i64* %11, align 8
  %148 = load i64, i64* %12, align 8
  %149 = call i32 @gfs2_quota_change(%struct.gfs2_inode* %145, i32 %146, i64 %147, i64 %148)
  br label %150

150:                                              ; preds = %135, %131
  br label %151

151:                                              ; preds = %150, %105
  %152 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %153 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %152)
  br label %154

154:                                              ; preds = %151, %99, %87
  %155 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %156 = call i32 @gfs2_quota_unlock(%struct.gfs2_inode* %155)
  %157 = load i32, i32* %13, align 4
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %154, %70, %61
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i32 @gfs2_rindex_update(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_quota_lock(%struct.gfs2_inode*, i64, i64) #1

declare dso_local i32 @gfs2_quota_check(%struct.gfs2_inode*, i64, i64) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i64, i32) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i32 @inode_setattr(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @gfs2_assert_warn(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local i32 @gfs2_dinode_out(%struct.gfs2_inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_get_inode_blocks(i32*) #1

declare dso_local i32 @gfs2_quota_change(%struct.gfs2_inode*, i32, i64, i64) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_quota_unlock(%struct.gfs2_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
