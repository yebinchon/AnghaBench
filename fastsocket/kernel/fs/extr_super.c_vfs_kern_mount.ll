; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_super.c_vfs_kern_mount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_super.c_vfs_kern_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { %struct.TYPE_3__*, i32, %struct.vfsmount*, i32 }
%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.file_system_type = type { i32, i32 (%struct.file_system_type*, i32, i8*, i8*, %struct.vfsmount*)*, i32 }

@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FS_BINARY_MOUNTDATA = common dso_local global i32 0, align 4
@MS_BORN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"%s set sb->s_maxbytes to negative value (%lld)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vfsmount* @vfs_kern_mount(%struct.file_system_type* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.vfsmount*, align 8
  %6 = alloca %struct.file_system_type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.vfsmount*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.file_system_type* %0, %struct.file_system_type** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* null, i8** %11, align 8
  %13 = load %struct.file_system_type*, %struct.file_system_type** %6, align 8
  %14 = icmp ne %struct.file_system_type* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.vfsmount* @ERR_PTR(i32 %17)
  store %struct.vfsmount* %18, %struct.vfsmount** %5, align 8
  br label %138

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %12, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = call %struct.vfsmount* @alloc_vfsmnt(i8* %22)
  store %struct.vfsmount* %23, %struct.vfsmount** %10, align 8
  %24 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  %25 = icmp ne %struct.vfsmount* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %135

27:                                               ; preds = %19
  %28 = load i8*, i8** %9, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %50

30:                                               ; preds = %27
  %31 = load %struct.file_system_type*, %struct.file_system_type** %6, align 8
  %32 = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @FS_BINARY_MOUNTDATA, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %30
  %38 = call i8* (...) @alloc_secdata()
  store i8* %38, i8** %11, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  br label %132

42:                                               ; preds = %37
  %43 = load i8*, i8** %9, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = call i32 @security_sb_copy_data(i8* %43, i8* %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %129

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %30, %27
  %51 = load %struct.file_system_type*, %struct.file_system_type** %6, align 8
  %52 = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %51, i32 0, i32 1
  %53 = load i32 (%struct.file_system_type*, i32, i8*, i8*, %struct.vfsmount*)*, i32 (%struct.file_system_type*, i32, i8*, i8*, %struct.vfsmount*)** %52, align 8
  %54 = load %struct.file_system_type*, %struct.file_system_type** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  %59 = call i32 %53(%struct.file_system_type* %54, i32 %55, i8* %56, i8* %57, %struct.vfsmount* %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  br label %129

63:                                               ; preds = %50
  %64 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  %65 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = icmp ne %struct.TYPE_3__* %66, null
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i32 @BUG_ON(i32 %69)
  %71 = load i32, i32* @MS_BORN, align 4
  %72 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  %73 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %72, i32 0, i32 0
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %71
  store i32 %77, i32* %75, align 4
  %78 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  %79 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i8*, i8** %11, align 8
  %83 = call i32 @security_sb_kern_mount(%struct.TYPE_3__* %80, i32 %81, i8* %82)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %63
  br label %120

87:                                               ; preds = %63
  %88 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  %89 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %88, i32 0, i32 0
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp slt i64 %92, 0
  %94 = zext i1 %93 to i32
  %95 = load %struct.file_system_type*, %struct.file_system_type** %6, align 8
  %96 = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  %99 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %98, i32 0, i32 0
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @WARN(i32 %94, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %97, i64 %102)
  %104 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  %105 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  %108 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 8
  %109 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  %110 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  %111 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %110, i32 0, i32 2
  store %struct.vfsmount* %109, %struct.vfsmount** %111, align 8
  %112 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  %113 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %112, i32 0, i32 0
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = call i32 @up_write(i32* %115)
  %117 = load i8*, i8** %11, align 8
  %118 = call i32 @free_secdata(i8* %117)
  %119 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  store %struct.vfsmount* %119, %struct.vfsmount** %5, align 8
  br label %138

120:                                              ; preds = %86
  %121 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  %122 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @dput(i32 %123)
  %125 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  %126 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %125, i32 0, i32 0
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = call i32 @deactivate_locked_super(%struct.TYPE_3__* %127)
  br label %129

129:                                              ; preds = %120, %62, %48
  %130 = load i8*, i8** %11, align 8
  %131 = call i32 @free_secdata(i8* %130)
  br label %132

132:                                              ; preds = %129, %41
  %133 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  %134 = call i32 @free_vfsmnt(%struct.vfsmount* %133)
  br label %135

135:                                              ; preds = %132, %26
  %136 = load i32, i32* %12, align 4
  %137 = call %struct.vfsmount* @ERR_PTR(i32 %136)
  store %struct.vfsmount* %137, %struct.vfsmount** %5, align 8
  br label %138

138:                                              ; preds = %135, %87, %15
  %139 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  ret %struct.vfsmount* %139
}

declare dso_local %struct.vfsmount* @ERR_PTR(i32) #1

declare dso_local %struct.vfsmount* @alloc_vfsmnt(i8*) #1

declare dso_local i8* @alloc_secdata(...) #1

declare dso_local i32 @security_sb_copy_data(i8*, i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @security_sb_kern_mount(%struct.TYPE_3__*, i32, i8*) #1

declare dso_local i32 @WARN(i32, i8*, i32, i64) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @free_secdata(i8*) #1

declare dso_local i32 @dput(i32) #1

declare dso_local i32 @deactivate_locked_super(%struct.TYPE_3__*) #1

declare dso_local i32 @free_vfsmnt(%struct.vfsmount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
