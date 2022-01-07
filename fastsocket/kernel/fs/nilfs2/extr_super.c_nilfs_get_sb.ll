; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_super.c_nilfs_get_sb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_super.c_nilfs_get_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_system_type = type { i32 }
%struct.vfsmount = type { i32 }
%struct.nilfs_super_data = type { i32, %struct.super_block*, i64, i64 }
%struct.super_block = type { i32, i32, i32, i32 }
%struct.the_nilfs = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MS_RDONLY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@nilfs_test_bdev_super = common dso_local global i32 0, align 4
@nilfs_set_bdev_super = common dso_local global i32 0, align 4
@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@MS_VERBOSE = common dso_local global i32 0, align 4
@MS_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_system_type*, i32, i8*, i8*, %struct.vfsmount*)* @nilfs_get_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_get_sb(%struct.file_system_type* %0, i32 %1, i8* %2, i8* %3, %struct.vfsmount* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.file_system_type*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.vfsmount*, align 8
  %12 = alloca %struct.nilfs_super_data, align 8
  %13 = alloca %struct.super_block*, align 8
  %14 = alloca %struct.the_nilfs*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.file_system_type* %0, %struct.file_system_type** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.vfsmount* %4, %struct.vfsmount** %11, align 8
  store i32 1, i32* %16, align 4
  %20 = load i8*, i8** %9, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.file_system_type*, %struct.file_system_type** %7, align 8
  %23 = call %struct.super_block* @open_bdev_exclusive(i8* %20, i32 %21, %struct.file_system_type* %22)
  %24 = getelementptr inbounds %struct.nilfs_super_data, %struct.nilfs_super_data* %12, i32 0, i32 1
  store %struct.super_block* %23, %struct.super_block** %24, align 8
  %25 = getelementptr inbounds %struct.nilfs_super_data, %struct.nilfs_super_data* %12, i32 0, i32 1
  %26 = load %struct.super_block*, %struct.super_block** %25, align 8
  %27 = call i64 @IS_ERR(%struct.super_block* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %5
  %30 = getelementptr inbounds %struct.nilfs_super_data, %struct.nilfs_super_data* %12, i32 0, i32 1
  %31 = load %struct.super_block*, %struct.super_block** %30, align 8
  %32 = call i32 @PTR_ERR(%struct.super_block* %31)
  store i32 %32, i32* %6, align 4
  br label %206

33:                                               ; preds = %5
  %34 = getelementptr inbounds %struct.nilfs_super_data, %struct.nilfs_super_data* %12, i32 0, i32 3
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* %8, align 4
  %36 = getelementptr inbounds %struct.nilfs_super_data, %struct.nilfs_super_data* %12, i32 0, i32 0
  store i32 %35, i32* %36, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = call i64 @nilfs_identify(i8* %37, %struct.nilfs_super_data* %12)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %15, align 4
  br label %188

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.nilfs_super_data, %struct.nilfs_super_data* %12, i32 0, i32 1
  %45 = load %struct.super_block*, %struct.super_block** %44, align 8
  %46 = call %struct.the_nilfs* @find_or_create_nilfs(%struct.super_block* %45)
  store %struct.the_nilfs* %46, %struct.the_nilfs** %14, align 8
  %47 = load %struct.the_nilfs*, %struct.the_nilfs** %14, align 8
  %48 = icmp ne %struct.the_nilfs* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %15, align 4
  br label %188

52:                                               ; preds = %43
  %53 = load %struct.the_nilfs*, %struct.the_nilfs** %14, align 8
  %54 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %53, i32 0, i32 0
  %55 = call i32 @mutex_lock(i32* %54)
  %56 = getelementptr inbounds %struct.nilfs_super_data, %struct.nilfs_super_data* %12, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %90, label %59

59:                                               ; preds = %52
  %60 = load %struct.the_nilfs*, %struct.the_nilfs** %14, align 8
  %61 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %60, i32 0, i32 1
  %62 = call i32 @down_read(i32* %61)
  %63 = load %struct.the_nilfs*, %struct.the_nilfs** %14, align 8
  %64 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %63, i32 0, i32 2
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = icmp ne %struct.TYPE_4__* %65, null
  br i1 %66, label %67, label %86

67:                                               ; preds = %59
  %68 = load %struct.the_nilfs*, %struct.the_nilfs** %14, align 8
  %69 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %68, i32 0, i32 2
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %8, align 4
  %76 = xor i32 %74, %75
  %77 = load i32, i32* @MS_RDONLY, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %67
  %81 = load %struct.the_nilfs*, %struct.the_nilfs** %14, align 8
  %82 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %81, i32 0, i32 1
  %83 = call i32 @up_read(i32* %82)
  %84 = load i32, i32* @EBUSY, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %15, align 4
  br label %182

86:                                               ; preds = %67, %59
  %87 = load %struct.the_nilfs*, %struct.the_nilfs** %14, align 8
  %88 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %87, i32 0, i32 1
  %89 = call i32 @up_read(i32* %88)
  br label %90

90:                                               ; preds = %86, %52
  %91 = load %struct.the_nilfs*, %struct.the_nilfs** %14, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @MS_RDONLY, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = getelementptr inbounds %struct.nilfs_super_data, %struct.nilfs_super_data* %12, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = call i64 @nilfs_find_sbinfo(%struct.the_nilfs* %91, i32 %97, i64 %99)
  %101 = getelementptr inbounds %struct.nilfs_super_data, %struct.nilfs_super_data* %12, i32 0, i32 2
  store i64 %100, i64* %101, align 8
  %102 = load %struct.file_system_type*, %struct.file_system_type** %7, align 8
  %103 = load i32, i32* @nilfs_test_bdev_super, align 4
  %104 = load i32, i32* @nilfs_set_bdev_super, align 4
  %105 = call %struct.super_block* @sget(%struct.file_system_type* %102, i32 %103, i32 %104, %struct.nilfs_super_data* %12)
  store %struct.super_block* %105, %struct.super_block** %13, align 8
  %106 = getelementptr inbounds %struct.nilfs_super_data, %struct.nilfs_super_data* %12, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %90
  %110 = getelementptr inbounds %struct.nilfs_super_data, %struct.nilfs_super_data* %12, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @nilfs_put_sbinfo(i64 %111)
  br label %113

113:                                              ; preds = %109, %90
  %114 = load %struct.super_block*, %struct.super_block** %13, align 8
  %115 = call i64 @IS_ERR(%struct.super_block* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = load %struct.super_block*, %struct.super_block** %13, align 8
  %119 = call i32 @PTR_ERR(%struct.super_block* %118)
  store i32 %119, i32* %15, align 4
  br label %182

120:                                              ; preds = %113
  %121 = load %struct.super_block*, %struct.super_block** %13, align 8
  %122 = getelementptr inbounds %struct.super_block, %struct.super_block* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %165, label %125

125:                                              ; preds = %120
  %126 = load i32, i32* @BDEVNAME_SIZE, align 4
  %127 = zext i32 %126 to i64
  %128 = call i8* @llvm.stacksave()
  store i8* %128, i8** %17, align 8
  %129 = alloca i8, i64 %127, align 16
  store i64 %127, i64* %18, align 8
  %130 = load i32, i32* %8, align 4
  %131 = load %struct.super_block*, %struct.super_block** %13, align 8
  %132 = getelementptr inbounds %struct.super_block, %struct.super_block* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 4
  %133 = load %struct.super_block*, %struct.super_block** %13, align 8
  %134 = getelementptr inbounds %struct.super_block, %struct.super_block* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds %struct.nilfs_super_data, %struct.nilfs_super_data* %12, i32 0, i32 1
  %137 = load %struct.super_block*, %struct.super_block** %136, align 8
  %138 = call i32 @bdevname(%struct.super_block* %137, i8* %129)
  %139 = call i32 @strlcpy(i32 %135, i32 %138, i32 4)
  %140 = load %struct.super_block*, %struct.super_block** %13, align 8
  %141 = getelementptr inbounds %struct.nilfs_super_data, %struct.nilfs_super_data* %12, i32 0, i32 1
  %142 = load %struct.super_block*, %struct.super_block** %141, align 8
  %143 = call i32 @block_size(%struct.super_block* %142)
  %144 = call i32 @sb_set_blocksize(%struct.super_block* %140, i32 %143)
  %145 = load %struct.super_block*, %struct.super_block** %13, align 8
  %146 = load i8*, i8** %10, align 8
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* @MS_VERBOSE, align 4
  %149 = and i32 %147, %148
  %150 = load %struct.the_nilfs*, %struct.the_nilfs** %14, align 8
  %151 = call i32 @nilfs_fill_super(%struct.super_block* %145, i8* %146, i32 %149, %struct.the_nilfs* %150)
  store i32 %151, i32* %15, align 4
  %152 = load i32, i32* %15, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %125
  store i32 4, i32* %19, align 4
  br label %161

155:                                              ; preds = %125
  %156 = load i32, i32* @MS_ACTIVE, align 4
  %157 = load %struct.super_block*, %struct.super_block** %13, align 8
  %158 = getelementptr inbounds %struct.super_block, %struct.super_block* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %19, align 4
  br label %161

161:                                              ; preds = %154, %155
  %162 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %162)
  %163 = load i32, i32* %19, align 4
  switch i32 %163, label %208 [
    i32 0, label %164
    i32 4, label %194
  ]

164:                                              ; preds = %161
  br label %165

165:                                              ; preds = %164, %120
  %166 = load %struct.the_nilfs*, %struct.the_nilfs** %14, align 8
  %167 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %166, i32 0, i32 0
  %168 = call i32 @mutex_unlock(i32* %167)
  %169 = load %struct.the_nilfs*, %struct.the_nilfs** %14, align 8
  %170 = call i32 @put_nilfs(%struct.the_nilfs* %169)
  %171 = load i32, i32* %16, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %165
  %174 = getelementptr inbounds %struct.nilfs_super_data, %struct.nilfs_super_data* %12, i32 0, i32 1
  %175 = load %struct.super_block*, %struct.super_block** %174, align 8
  %176 = load i32, i32* %8, align 4
  %177 = call i32 @close_bdev_exclusive(%struct.super_block* %175, i32 %176)
  br label %178

178:                                              ; preds = %173, %165
  %179 = load %struct.vfsmount*, %struct.vfsmount** %11, align 8
  %180 = load %struct.super_block*, %struct.super_block** %13, align 8
  %181 = call i32 @simple_set_mnt(%struct.vfsmount* %179, %struct.super_block* %180)
  store i32 0, i32* %6, align 4
  br label %206

182:                                              ; preds = %117, %80
  %183 = load %struct.the_nilfs*, %struct.the_nilfs** %14, align 8
  %184 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %183, i32 0, i32 0
  %185 = call i32 @mutex_unlock(i32* %184)
  %186 = load %struct.the_nilfs*, %struct.the_nilfs** %14, align 8
  %187 = call i32 @put_nilfs(%struct.the_nilfs* %186)
  br label %188

188:                                              ; preds = %182, %49, %40
  %189 = getelementptr inbounds %struct.nilfs_super_data, %struct.nilfs_super_data* %12, i32 0, i32 1
  %190 = load %struct.super_block*, %struct.super_block** %189, align 8
  %191 = load i32, i32* %8, align 4
  %192 = call i32 @close_bdev_exclusive(%struct.super_block* %190, i32 %191)
  %193 = load i32, i32* %15, align 4
  store i32 %193, i32* %6, align 4
  br label %206

194:                                              ; preds = %161
  %195 = load %struct.the_nilfs*, %struct.the_nilfs** %14, align 8
  %196 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %195, i32 0, i32 0
  %197 = call i32 @mutex_unlock(i32* %196)
  %198 = load %struct.the_nilfs*, %struct.the_nilfs** %14, align 8
  %199 = call i32 @put_nilfs(%struct.the_nilfs* %198)
  %200 = load %struct.super_block*, %struct.super_block** %13, align 8
  %201 = getelementptr inbounds %struct.super_block, %struct.super_block* %200, i32 0, i32 1
  %202 = call i32 @up_write(i32* %201)
  %203 = load %struct.super_block*, %struct.super_block** %13, align 8
  %204 = call i32 @deactivate_super(%struct.super_block* %203)
  %205 = load i32, i32* %15, align 4
  store i32 %205, i32* %6, align 4
  br label %206

206:                                              ; preds = %194, %188, %178, %29
  %207 = load i32, i32* %6, align 4
  ret i32 %207

208:                                              ; preds = %161
  unreachable
}

declare dso_local %struct.super_block* @open_bdev_exclusive(i8*, i32, %struct.file_system_type*) #1

declare dso_local i64 @IS_ERR(%struct.super_block*) #1

declare dso_local i32 @PTR_ERR(%struct.super_block*) #1

declare dso_local i64 @nilfs_identify(i8*, %struct.nilfs_super_data*) #1

declare dso_local %struct.the_nilfs* @find_or_create_nilfs(%struct.super_block*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i64 @nilfs_find_sbinfo(%struct.the_nilfs*, i32, i64) #1

declare dso_local %struct.super_block* @sget(%struct.file_system_type*, i32, i32, %struct.nilfs_super_data*) #1

declare dso_local i32 @nilfs_put_sbinfo(i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @bdevname(%struct.super_block*, i8*) #1

declare dso_local i32 @sb_set_blocksize(%struct.super_block*, i32) #1

declare dso_local i32 @block_size(%struct.super_block*) #1

declare dso_local i32 @nilfs_fill_super(%struct.super_block*, i8*, i32, %struct.the_nilfs*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @put_nilfs(%struct.the_nilfs*) #1

declare dso_local i32 @close_bdev_exclusive(%struct.super_block*, i32) #1

declare dso_local i32 @simple_set_mnt(%struct.vfsmount*, %struct.super_block*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @deactivate_super(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
