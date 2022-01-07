; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_setattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i64, i64, i64, i32, i32 }
%struct.iattr = type { i32, i64, i64, i64 }
%struct.TYPE_2__ = type { i64 }

@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@EDQUOT = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext3_setattr(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %12 = load %struct.dentry*, %struct.dentry** %4, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 0
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %6, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.iattr*, %struct.iattr** %5, align 8
  %16 = getelementptr inbounds %struct.iattr, %struct.iattr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = load %struct.iattr*, %struct.iattr** %5, align 8
  %20 = call i32 @inode_change_ok(%struct.inode* %18, %struct.iattr* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %197

25:                                               ; preds = %2
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @ATTR_UID, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.iattr*, %struct.iattr** %5, align 8
  %32 = getelementptr inbounds %struct.iattr, %struct.iattr* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %51, label %38

38:                                               ; preds = %30, %25
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @ATTR_GID, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %120

43:                                               ; preds = %38
  %44 = load %struct.iattr*, %struct.iattr** %5, align 8
  %45 = getelementptr inbounds %struct.iattr, %struct.iattr* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.inode*, %struct.inode** %6, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %51, label %120

51:                                               ; preds = %43, %30
  %52 = load %struct.inode*, %struct.inode** %6, align 8
  %53 = load %struct.inode*, %struct.inode** %6, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @EXT3_QUOTA_INIT_BLOCKS(i32 %55)
  %57 = load %struct.inode*, %struct.inode** %6, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @EXT3_QUOTA_DEL_BLOCKS(i32 %59)
  %61 = add nsw i32 %56, %60
  %62 = mul nsw i32 2, %61
  %63 = add nsw i32 %62, 3
  %64 = call i32* @ext3_journal_start(%struct.inode* %52, i32 %63)
  store i32* %64, i32** %10, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = call i64 @IS_ERR(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %51
  %69 = load i32*, i32** %10, align 8
  %70 = call i32 @PTR_ERR(i32* %69)
  store i32 %70, i32* %7, align 4
  br label %185

71:                                               ; preds = %51
  %72 = load %struct.inode*, %struct.inode** %6, align 8
  %73 = load %struct.iattr*, %struct.iattr** %5, align 8
  %74 = call i64 @vfs_dq_transfer(%struct.inode* %72, %struct.iattr* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* @EDQUOT, align 4
  %78 = sub nsw i32 0, %77
  br label %80

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79, %76
  %81 = phi i32 [ %78, %76 ], [ 0, %79 ]
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i32*, i32** %10, align 8
  %86 = call i32 @ext3_journal_stop(i32* %85)
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %3, align 4
  br label %197

88:                                               ; preds = %80
  %89 = load %struct.iattr*, %struct.iattr** %5, align 8
  %90 = getelementptr inbounds %struct.iattr, %struct.iattr* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @ATTR_UID, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %88
  %96 = load %struct.iattr*, %struct.iattr** %5, align 8
  %97 = getelementptr inbounds %struct.iattr, %struct.iattr* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.inode*, %struct.inode** %6, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  br label %101

101:                                              ; preds = %95, %88
  %102 = load %struct.iattr*, %struct.iattr** %5, align 8
  %103 = getelementptr inbounds %struct.iattr, %struct.iattr* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @ATTR_GID, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %101
  %109 = load %struct.iattr*, %struct.iattr** %5, align 8
  %110 = getelementptr inbounds %struct.iattr, %struct.iattr* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.inode*, %struct.inode** %6, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 1
  store i64 %111, i64* %113, align 8
  br label %114

114:                                              ; preds = %108, %101
  %115 = load i32*, i32** %10, align 8
  %116 = load %struct.inode*, %struct.inode** %6, align 8
  %117 = call i32 @ext3_mark_inode_dirty(i32* %115, %struct.inode* %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32*, i32** %10, align 8
  %119 = call i32 @ext3_journal_stop(i32* %118)
  br label %120

120:                                              ; preds = %114, %43, %38
  %121 = load %struct.inode*, %struct.inode** %6, align 8
  %122 = getelementptr inbounds %struct.inode, %struct.inode* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @S_ISREG(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %170

126:                                              ; preds = %120
  %127 = load %struct.iattr*, %struct.iattr** %5, align 8
  %128 = getelementptr inbounds %struct.iattr, %struct.iattr* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @ATTR_SIZE, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %170

133:                                              ; preds = %126
  %134 = load %struct.iattr*, %struct.iattr** %5, align 8
  %135 = getelementptr inbounds %struct.iattr, %struct.iattr* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.inode*, %struct.inode** %6, align 8
  %138 = getelementptr inbounds %struct.inode, %struct.inode* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp slt i64 %136, %139
  br i1 %140, label %141, label %170

141:                                              ; preds = %133
  %142 = load %struct.inode*, %struct.inode** %6, align 8
  %143 = call i32* @ext3_journal_start(%struct.inode* %142, i32 3)
  store i32* %143, i32** %11, align 8
  %144 = load i32*, i32** %11, align 8
  %145 = call i64 @IS_ERR(i32* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %141
  %148 = load i32*, i32** %11, align 8
  %149 = call i32 @PTR_ERR(i32* %148)
  store i32 %149, i32* %7, align 4
  br label %185

150:                                              ; preds = %141
  %151 = load i32*, i32** %11, align 8
  %152 = load %struct.inode*, %struct.inode** %6, align 8
  %153 = call i32 @ext3_orphan_add(i32* %151, %struct.inode* %152)
  store i32 %153, i32* %7, align 4
  %154 = load %struct.iattr*, %struct.iattr** %5, align 8
  %155 = getelementptr inbounds %struct.iattr, %struct.iattr* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.inode*, %struct.inode** %6, align 8
  %158 = call %struct.TYPE_2__* @EXT3_I(%struct.inode* %157)
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  store i64 %156, i64* %159, align 8
  %160 = load i32*, i32** %11, align 8
  %161 = load %struct.inode*, %struct.inode** %6, align 8
  %162 = call i32 @ext3_mark_inode_dirty(i32* %160, %struct.inode* %161)
  store i32 %162, i32* %8, align 4
  %163 = load i32, i32* %7, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %167, label %165

165:                                              ; preds = %150
  %166 = load i32, i32* %8, align 4
  store i32 %166, i32* %7, align 4
  br label %167

167:                                              ; preds = %165, %150
  %168 = load i32*, i32** %11, align 8
  %169 = call i32 @ext3_journal_stop(i32* %168)
  br label %170

170:                                              ; preds = %167, %133, %126, %120
  %171 = load %struct.inode*, %struct.inode** %6, align 8
  %172 = load %struct.iattr*, %struct.iattr** %5, align 8
  %173 = call i32 @inode_setattr(%struct.inode* %171, %struct.iattr* %172)
  store i32 %173, i32* %8, align 4
  %174 = load i32, i32* %8, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %184, label %176

176:                                              ; preds = %170
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* @ATTR_MODE, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %176
  %182 = load %struct.inode*, %struct.inode** %6, align 8
  %183 = call i32 @ext3_acl_chmod(%struct.inode* %182)
  store i32 %183, i32* %8, align 4
  br label %184

184:                                              ; preds = %181, %176, %170
  br label %185

185:                                              ; preds = %184, %147, %68
  %186 = load %struct.inode*, %struct.inode** %6, align 8
  %187 = getelementptr inbounds %struct.inode, %struct.inode* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* %7, align 4
  %190 = call i32 @ext3_std_error(i32 %188, i32 %189)
  %191 = load i32, i32* %7, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %195, label %193

193:                                              ; preds = %185
  %194 = load i32, i32* %8, align 4
  store i32 %194, i32* %7, align 4
  br label %195

195:                                              ; preds = %193, %185
  %196 = load i32, i32* %7, align 4
  store i32 %196, i32* %3, align 4
  br label %197

197:                                              ; preds = %195, %84, %23
  %198 = load i32, i32* %3, align 4
  ret i32 %198
}

declare dso_local i32 @inode_change_ok(%struct.inode*, %struct.iattr*) #1

declare dso_local i32* @ext3_journal_start(%struct.inode*, i32) #1

declare dso_local i32 @EXT3_QUOTA_INIT_BLOCKS(i32) #1

declare dso_local i32 @EXT3_QUOTA_DEL_BLOCKS(i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i64 @vfs_dq_transfer(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @ext3_journal_stop(i32*) #1

declare dso_local i32 @ext3_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @ext3_orphan_add(i32*, %struct.inode*) #1

declare dso_local %struct.TYPE_2__* @EXT3_I(%struct.inode*) #1

declare dso_local i32 @inode_setattr(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @ext3_acl_chmod(%struct.inode*) #1

declare dso_local i32 @ext3_std_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
