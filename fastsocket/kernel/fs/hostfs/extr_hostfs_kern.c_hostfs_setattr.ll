; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hostfs/extr_hostfs_kern.c_hostfs_setattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hostfs/extr_hostfs_kern.c_hostfs_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.iattr = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hostfs_iattr = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@append = common dso_local global i64 0, align 8
@ATTR_SIZE = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@HOSTFS_ATTR_MODE = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@HOSTFS_ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@HOSTFS_ATTR_GID = common dso_local global i32 0, align 4
@HOSTFS_ATTR_SIZE = common dso_local global i32 0, align 4
@ATTR_ATIME = common dso_local global i32 0, align 4
@HOSTFS_ATTR_ATIME = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@HOSTFS_ATTR_MTIME = common dso_local global i32 0, align 4
@ATTR_CTIME = common dso_local global i32 0, align 4
@HOSTFS_ATTR_CTIME = common dso_local global i32 0, align 4
@ATTR_ATIME_SET = common dso_local global i32 0, align 4
@HOSTFS_ATTR_ATIME_SET = common dso_local global i32 0, align 4
@ATTR_MTIME_SET = common dso_local global i32 0, align 4
@HOSTFS_ATTR_MTIME_SET = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostfs_setattr(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca %struct.hostfs_iattr, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %10 = load %struct.dentry*, %struct.dentry** %4, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_2__* @HOSTFS_I(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.dentry*, %struct.dentry** %4, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.iattr*, %struct.iattr** %5, align 8
  %20 = call i32 @inode_change_ok(i32 %18, %struct.iattr* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %196

25:                                               ; preds = %2
  %26 = load i64, i64* @append, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i32, i32* @ATTR_SIZE, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.iattr*, %struct.iattr** %5, align 8
  %32 = getelementptr inbounds %struct.iattr, %struct.iattr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %28, %25
  %36 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %6, i32 0, i32 0
  store i32 0, i32* %36, align 4
  %37 = load %struct.iattr*, %struct.iattr** %5, align 8
  %38 = getelementptr inbounds %struct.iattr, %struct.iattr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ATTR_MODE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %35
  %44 = load i32, i32* @HOSTFS_ATTR_MODE, align 4
  %45 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %6, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %44
  store i32 %47, i32* %45, align 4
  %48 = load %struct.iattr*, %struct.iattr** %5, align 8
  %49 = getelementptr inbounds %struct.iattr, %struct.iattr* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %6, i32 0, i32 7
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %43, %35
  %53 = load %struct.iattr*, %struct.iattr** %5, align 8
  %54 = getelementptr inbounds %struct.iattr, %struct.iattr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ATTR_UID, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %52
  %60 = load i32, i32* @HOSTFS_ATTR_UID, align 4
  %61 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %6, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %60
  store i32 %63, i32* %61, align 4
  %64 = load %struct.iattr*, %struct.iattr** %5, align 8
  %65 = getelementptr inbounds %struct.iattr, %struct.iattr* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %6, i32 0, i32 6
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %59, %52
  %69 = load %struct.iattr*, %struct.iattr** %5, align 8
  %70 = getelementptr inbounds %struct.iattr, %struct.iattr* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @ATTR_GID, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %68
  %76 = load i32, i32* @HOSTFS_ATTR_GID, align 4
  %77 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %6, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %76
  store i32 %79, i32* %77, align 4
  %80 = load %struct.iattr*, %struct.iattr** %5, align 8
  %81 = getelementptr inbounds %struct.iattr, %struct.iattr* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %6, i32 0, i32 5
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %75, %68
  %85 = load %struct.iattr*, %struct.iattr** %5, align 8
  %86 = getelementptr inbounds %struct.iattr, %struct.iattr* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @ATTR_SIZE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %84
  %92 = load i32, i32* @HOSTFS_ATTR_SIZE, align 4
  %93 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %6, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %92
  store i32 %95, i32* %93, align 4
  %96 = load %struct.iattr*, %struct.iattr** %5, align 8
  %97 = getelementptr inbounds %struct.iattr, %struct.iattr* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %6, i32 0, i32 4
  store i32 %98, i32* %99, align 4
  br label %100

100:                                              ; preds = %91, %84
  %101 = load %struct.iattr*, %struct.iattr** %5, align 8
  %102 = getelementptr inbounds %struct.iattr, %struct.iattr* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @ATTR_ATIME, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %100
  %108 = load i32, i32* @HOSTFS_ATTR_ATIME, align 4
  %109 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %6, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %108
  store i32 %111, i32* %109, align 4
  %112 = load %struct.iattr*, %struct.iattr** %5, align 8
  %113 = getelementptr inbounds %struct.iattr, %struct.iattr* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %6, i32 0, i32 3
  store i32 %114, i32* %115, align 4
  br label %116

116:                                              ; preds = %107, %100
  %117 = load %struct.iattr*, %struct.iattr** %5, align 8
  %118 = getelementptr inbounds %struct.iattr, %struct.iattr* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @ATTR_MTIME, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %116
  %124 = load i32, i32* @HOSTFS_ATTR_MTIME, align 4
  %125 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %6, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %124
  store i32 %127, i32* %125, align 4
  %128 = load %struct.iattr*, %struct.iattr** %5, align 8
  %129 = getelementptr inbounds %struct.iattr, %struct.iattr* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %6, i32 0, i32 2
  store i32 %130, i32* %131, align 4
  br label %132

132:                                              ; preds = %123, %116
  %133 = load %struct.iattr*, %struct.iattr** %5, align 8
  %134 = getelementptr inbounds %struct.iattr, %struct.iattr* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @ATTR_CTIME, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %132
  %140 = load i32, i32* @HOSTFS_ATTR_CTIME, align 4
  %141 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %6, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %140
  store i32 %143, i32* %141, align 4
  %144 = load %struct.iattr*, %struct.iattr** %5, align 8
  %145 = getelementptr inbounds %struct.iattr, %struct.iattr* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %6, i32 0, i32 1
  store i32 %146, i32* %147, align 4
  br label %148

148:                                              ; preds = %139, %132
  %149 = load %struct.iattr*, %struct.iattr** %5, align 8
  %150 = getelementptr inbounds %struct.iattr, %struct.iattr* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @ATTR_ATIME_SET, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %148
  %156 = load i32, i32* @HOSTFS_ATTR_ATIME_SET, align 4
  %157 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %6, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %158, %156
  store i32 %159, i32* %157, align 4
  br label %160

160:                                              ; preds = %155, %148
  %161 = load %struct.iattr*, %struct.iattr** %5, align 8
  %162 = getelementptr inbounds %struct.iattr, %struct.iattr* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @ATTR_MTIME_SET, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %160
  %168 = load i32, i32* @HOSTFS_ATTR_MTIME_SET, align 4
  %169 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %6, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %168
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %167, %160
  %173 = load %struct.dentry*, %struct.dentry** %4, align 8
  %174 = call i8* @dentry_name(%struct.dentry* %173, i32 0)
  store i8* %174, i8** %7, align 8
  %175 = load i8*, i8** %7, align 8
  %176 = icmp eq i8* %175, null
  br i1 %176, label %177, label %180

177:                                              ; preds = %172
  %178 = load i32, i32* @ENOMEM, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %3, align 4
  br label %196

180:                                              ; preds = %172
  %181 = load i8*, i8** %7, align 8
  %182 = load i32, i32* %9, align 4
  %183 = call i32 @set_attr(i8* %181, %struct.hostfs_iattr* %6, i32 %182)
  store i32 %183, i32* %8, align 4
  %184 = load i8*, i8** %7, align 8
  %185 = call i32 @kfree(i8* %184)
  %186 = load i32, i32* %8, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %180
  %189 = load i32, i32* %8, align 4
  store i32 %189, i32* %3, align 4
  br label %196

190:                                              ; preds = %180
  %191 = load %struct.dentry*, %struct.dentry** %4, align 8
  %192 = getelementptr inbounds %struct.dentry, %struct.dentry* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.iattr*, %struct.iattr** %5, align 8
  %195 = call i32 @inode_setattr(i32 %193, %struct.iattr* %194)
  store i32 %195, i32* %3, align 4
  br label %196

196:                                              ; preds = %190, %188, %177, %23
  %197 = load i32, i32* %3, align 4
  ret i32 %197
}

declare dso_local %struct.TYPE_2__* @HOSTFS_I(i32) #1

declare dso_local i32 @inode_change_ok(i32, %struct.iattr*) #1

declare dso_local i8* @dentry_name(%struct.dentry*, i32) #1

declare dso_local i32 @set_attr(i8*, %struct.hostfs_iattr*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @inode_setattr(i32, %struct.iattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
