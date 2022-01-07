; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_inode.c_nfs_wcc_update_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_inode.c_nfs_wcc_update_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.nfs_fattr = type { i32, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.nfs_inode = type { i64, i32, i64 }

@NFS_ATTR_FATTR_PRECHANGE = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_CHANGE = common dso_local global i32 0, align 4
@NFS_INO_INVALID_DATA = common dso_local global i32 0, align 4
@NFS_INO_INVALID_ATTR = common dso_local global i64 0, align 8
@NFS_ATTR_FATTR_PRECTIME = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_CTIME = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_PREMTIME = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_MTIME = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_PRESIZE = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.inode*, %struct.nfs_fattr*)* @nfs_wcc_update_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfs_wcc_update_inode(%struct.inode* %0, %struct.nfs_fattr* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.nfs_fattr*, align 8
  %5 = alloca %struct.nfs_inode*, align 8
  %6 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.nfs_fattr* %1, %struct.nfs_fattr** %4, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = call %struct.nfs_inode* @NFS_I(%struct.inode* %7)
  store %struct.nfs_inode* %8, %struct.nfs_inode** %5, align 8
  store i64 0, i64* %6, align 8
  %9 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %10 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @NFS_ATTR_FATTR_PRECHANGE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %51

15:                                               ; preds = %2
  %16 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %17 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @NFS_ATTR_FATTR_CHANGE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %51

22:                                               ; preds = %15
  %23 = load %struct.nfs_inode*, %struct.nfs_inode** %5, align 8
  %24 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %27 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %22
  %31 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %32 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.nfs_inode*, %struct.nfs_inode** %5, align 8
  %35 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.inode*, %struct.inode** %3, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @S_ISDIR(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %30
  %42 = load i32, i32* @NFS_INO_INVALID_DATA, align 4
  %43 = load %struct.nfs_inode*, %struct.nfs_inode** %5, align 8
  %44 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %41, %30
  %48 = load i64, i64* @NFS_INO_INVALID_ATTR, align 8
  %49 = load i64, i64* %6, align 8
  %50 = or i64 %49, %48
  store i64 %50, i64* %6, align 8
  br label %51

51:                                               ; preds = %47, %22, %15, %2
  %52 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %53 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @NFS_ATTR_FATTR_PRECTIME, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %81

58:                                               ; preds = %51
  %59 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %60 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @NFS_ATTR_FATTR_CTIME, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %58
  %66 = load %struct.inode*, %struct.inode** %3, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 2
  %68 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %69 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %68, i32 0, i32 8
  %70 = call i64 @timespec_equal(i32* %67, i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %65
  %73 = load %struct.inode*, %struct.inode** %3, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 2
  %75 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %76 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %75, i32 0, i32 7
  %77 = call i32 @memcpy(i32* %74, i32* %76, i32 4)
  %78 = load i64, i64* @NFS_INO_INVALID_ATTR, align 8
  %79 = load i64, i64* %6, align 8
  %80 = or i64 %79, %78
  store i64 %80, i64* %6, align 8
  br label %81

81:                                               ; preds = %72, %65, %58, %51
  %82 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %83 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @NFS_ATTR_FATTR_PREMTIME, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %123

88:                                               ; preds = %81
  %89 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %90 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @NFS_ATTR_FATTR_MTIME, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %123

95:                                               ; preds = %88
  %96 = load %struct.inode*, %struct.inode** %3, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 1
  %98 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %99 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %98, i32 0, i32 6
  %100 = call i64 @timespec_equal(i32* %97, i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %123

102:                                              ; preds = %95
  %103 = load %struct.inode*, %struct.inode** %3, align 8
  %104 = getelementptr inbounds %struct.inode, %struct.inode* %103, i32 0, i32 1
  %105 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %106 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %105, i32 0, i32 5
  %107 = call i32 @memcpy(i32* %104, i32* %106, i32 4)
  %108 = load %struct.inode*, %struct.inode** %3, align 8
  %109 = getelementptr inbounds %struct.inode, %struct.inode* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @S_ISDIR(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %102
  %114 = load i32, i32* @NFS_INO_INVALID_DATA, align 4
  %115 = load %struct.nfs_inode*, %struct.nfs_inode** %5, align 8
  %116 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %113, %102
  %120 = load i64, i64* @NFS_INO_INVALID_ATTR, align 8
  %121 = load i64, i64* %6, align 8
  %122 = or i64 %121, %120
  store i64 %122, i64* %6, align 8
  br label %123

123:                                              ; preds = %119, %95, %88, %81
  %124 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %125 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @NFS_ATTR_FATTR_PRESIZE, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %160

130:                                              ; preds = %123
  %131 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %132 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @NFS_ATTR_FATTR_SIZE, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %160

137:                                              ; preds = %130
  %138 = load %struct.inode*, %struct.inode** %3, align 8
  %139 = call i64 @i_size_read(%struct.inode* %138)
  %140 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %141 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @nfs_size_to_loff_t(i32 %142)
  %144 = icmp eq i64 %139, %143
  br i1 %144, label %145, label %160

145:                                              ; preds = %137
  %146 = load %struct.nfs_inode*, %struct.nfs_inode** %5, align 8
  %147 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %145
  %151 = load %struct.inode*, %struct.inode** %3, align 8
  %152 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %153 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = call i64 @nfs_size_to_loff_t(i32 %154)
  %156 = call i32 @i_size_write(%struct.inode* %151, i64 %155)
  %157 = load i64, i64* @NFS_INO_INVALID_ATTR, align 8
  %158 = load i64, i64* %6, align 8
  %159 = or i64 %158, %157
  store i64 %159, i64* %6, align 8
  br label %160

160:                                              ; preds = %150, %145, %137, %130, %123
  %161 = load %struct.nfs_inode*, %struct.nfs_inode** %5, align 8
  %162 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @NFS_INO_INVALID_DATA, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %160
  %168 = load %struct.inode*, %struct.inode** %3, align 8
  %169 = call i32 @nfs_fscache_invalidate(%struct.inode* %168)
  br label %170

170:                                              ; preds = %167, %160
  %171 = load i64, i64* %6, align 8
  ret i64 %171
}

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @timespec_equal(i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i64 @nfs_size_to_loff_t(i32) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

declare dso_local i32 @nfs_fscache_invalidate(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
