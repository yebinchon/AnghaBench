; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_acl.c_gfs2_xattr_system_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_acl.c_gfs2_xattr_system_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32 }
%struct.gfs2_sbd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.posix_acl = type { i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@XATTR_CREATE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ACL_TYPE_DEFAULT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@CAP_FOWNER = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@GFS2_EATYPE_SYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i8*, i64, i32)* @gfs2_xattr_system_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_xattr_system_set(%struct.inode* %0, i8* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.gfs2_sbd*, align 8
  %13 = alloca %struct.posix_acl*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.inode*, %struct.inode** %7, align 8
  %18 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %17)
  store %struct.gfs2_sbd* %18, %struct.gfs2_sbd** %12, align 8
  store %struct.posix_acl* null, %struct.posix_acl** %13, align 8
  store i32 0, i32* %14, align 4
  %19 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %12, align 8
  %20 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %174

27:                                               ; preds = %5
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @gfs2_acl_type(i8* %28)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %15, align 4
  store i32 %33, i32* %6, align 4
  br label %174

34:                                               ; preds = %27
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @XATTR_CREATE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %174

42:                                               ; preds = %34
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* @ACL_TYPE_DEFAULT, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %42
  %47 = load %struct.inode*, %struct.inode** %7, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @S_ISDIR(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %46
  %53 = load i8*, i8** %9, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* @EACCES, align 4
  %57 = sub nsw i32 0, %56
  br label %59

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58, %55
  %60 = phi i32 [ %57, %55 ], [ 0, %58 ]
  store i32 %60, i32* %6, align 4
  br label %174

61:                                               ; preds = %46, %42
  %62 = call i64 (...) @current_fsuid()
  %63 = load %struct.inode*, %struct.inode** %7, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %62, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load i32, i32* @CAP_FOWNER, align 4
  %69 = call i32 @capable(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* @EPERM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  br label %174

74:                                               ; preds = %67, %61
  %75 = load %struct.inode*, %struct.inode** %7, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @S_ISLNK(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load i32, i32* @EOPNOTSUPP, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %6, align 4
  br label %174

83:                                               ; preds = %74
  %84 = load i8*, i8** %9, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  br label %146

87:                                               ; preds = %83
  %88 = load i8*, i8** %9, align 8
  %89 = load i64, i64* %10, align 8
  %90 = call %struct.posix_acl* @posix_acl_from_xattr(i8* %88, i64 %89)
  store %struct.posix_acl* %90, %struct.posix_acl** %13, align 8
  %91 = load %struct.posix_acl*, %struct.posix_acl** %13, align 8
  %92 = icmp ne %struct.posix_acl* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %87
  br label %172

94:                                               ; preds = %87
  %95 = load %struct.posix_acl*, %struct.posix_acl** %13, align 8
  %96 = call i64 @IS_ERR(%struct.posix_acl* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load %struct.posix_acl*, %struct.posix_acl** %13, align 8
  %100 = call i32 @PTR_ERR(%struct.posix_acl* %99)
  store i32 %100, i32* %14, align 4
  br label %172

101:                                              ; preds = %94
  %102 = load %struct.posix_acl*, %struct.posix_acl** %13, align 8
  %103 = call i32 @posix_acl_valid(%struct.posix_acl* %102)
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %169

107:                                              ; preds = %101
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %14, align 4
  %110 = load %struct.posix_acl*, %struct.posix_acl** %13, align 8
  %111 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %12, align 8
  %114 = call i64 @GFS2_ACL_MAX_ENTRIES(%struct.gfs2_sbd* %113)
  %115 = icmp sgt i64 %112, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %107
  br label %169

117:                                              ; preds = %107
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %145

121:                                              ; preds = %117
  %122 = load %struct.inode*, %struct.inode** %7, align 8
  %123 = getelementptr inbounds %struct.inode, %struct.inode* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  store i32 %124, i32* %16, align 4
  %125 = load %struct.posix_acl*, %struct.posix_acl** %13, align 8
  %126 = call i32 @posix_acl_equiv_mode(%struct.posix_acl* %125, i32* %16)
  store i32 %126, i32* %14, align 4
  %127 = load i32, i32* %14, align 4
  %128 = icmp sle i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %121
  %130 = load %struct.posix_acl*, %struct.posix_acl** %13, align 8
  %131 = call i32 @posix_acl_release(%struct.posix_acl* %130)
  store %struct.posix_acl* null, %struct.posix_acl** %13, align 8
  %132 = load i32, i32* %14, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = load i32, i32* %14, align 4
  store i32 %135, i32* %6, align 4
  br label %174

136:                                              ; preds = %129
  br label %137

137:                                              ; preds = %136, %121
  %138 = load %struct.inode*, %struct.inode** %7, align 8
  %139 = load i32, i32* %16, align 4
  %140 = call i32 @gfs2_set_mode(%struct.inode* %138, i32 %139)
  store i32 %140, i32* %14, align 4
  %141 = load i32, i32* %14, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  br label %169

144:                                              ; preds = %137
  br label %145

145:                                              ; preds = %144, %117
  br label %146

146:                                              ; preds = %145, %86
  %147 = load %struct.inode*, %struct.inode** %7, align 8
  %148 = load i32, i32* @GFS2_EATYPE_SYS, align 4
  %149 = load i8*, i8** %8, align 8
  %150 = load i8*, i8** %9, align 8
  %151 = load i64, i64* %10, align 8
  %152 = call i32 @gfs2_xattr_set(%struct.inode* %147, i32 %148, i8* %149, i8* %150, i64 %151, i32 0)
  store i32 %152, i32* %14, align 4
  %153 = load i32, i32* %14, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %168, label %155

155:                                              ; preds = %146
  %156 = load %struct.posix_acl*, %struct.posix_acl** %13, align 8
  %157 = icmp ne %struct.posix_acl* %156, null
  br i1 %157, label %158, label %163

158:                                              ; preds = %155
  %159 = load %struct.inode*, %struct.inode** %7, align 8
  %160 = load i32, i32* %15, align 4
  %161 = load %struct.posix_acl*, %struct.posix_acl** %13, align 8
  %162 = call i32 @set_cached_acl(%struct.inode* %159, i32 %160, %struct.posix_acl* %161)
  br label %167

163:                                              ; preds = %155
  %164 = load %struct.inode*, %struct.inode** %7, align 8
  %165 = load i32, i32* %15, align 4
  %166 = call i32 @forget_cached_acl(%struct.inode* %164, i32 %165)
  br label %167

167:                                              ; preds = %163, %158
  br label %168

168:                                              ; preds = %167, %146
  br label %169

169:                                              ; preds = %168, %143, %116, %106
  %170 = load %struct.posix_acl*, %struct.posix_acl** %13, align 8
  %171 = call i32 @posix_acl_release(%struct.posix_acl* %170)
  br label %172

172:                                              ; preds = %169, %98, %93
  %173 = load i32, i32* %14, align 4
  store i32 %173, i32* %6, align 4
  br label %174

174:                                              ; preds = %172, %134, %80, %71, %59, %39, %32, %24
  %175 = load i32, i32* %6, align 4
  ret i32 %175
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i32 @gfs2_acl_type(i8*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i64 @current_fsuid(...) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local %struct.posix_acl* @posix_acl_from_xattr(i8*, i64) #1

declare dso_local i64 @IS_ERR(%struct.posix_acl*) #1

declare dso_local i32 @PTR_ERR(%struct.posix_acl*) #1

declare dso_local i32 @posix_acl_valid(%struct.posix_acl*) #1

declare dso_local i64 @GFS2_ACL_MAX_ENTRIES(%struct.gfs2_sbd*) #1

declare dso_local i32 @posix_acl_equiv_mode(%struct.posix_acl*, i32*) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

declare dso_local i32 @gfs2_set_mode(%struct.inode*, i32) #1

declare dso_local i32 @gfs2_xattr_set(%struct.inode*, i32, i8*, i8*, i64, i32) #1

declare dso_local i32 @set_cached_acl(%struct.inode*, i32, %struct.posix_acl*) #1

declare dso_local i32 @forget_cached_acl(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
