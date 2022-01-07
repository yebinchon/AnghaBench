; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4namespace.c_try_location.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4namespace.c_try_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type opaque
%struct.nfs_clone_mount = type { i8*, i8*, i32*, i32 }
%struct.nfs4_fs_location = type { i32, %struct.nfs4_string*, i32 }
%struct.nfs4_string = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IPV6_SCOPE_DELIMITER = common dso_local global i32 0, align 4
@NFS_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@nfs4_referral_fs_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vfsmount* (%struct.nfs_clone_mount*, i8*, i8*, %struct.nfs4_fs_location*)* @try_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vfsmount* @try_location(%struct.nfs_clone_mount* %0, i8* %1, i8* %2, %struct.nfs4_fs_location* %3) #0 {
  %5 = alloca %struct.vfsmount*, align 8
  %6 = alloca %struct.nfs_clone_mount*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.nfs4_fs_location*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.vfsmount*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.nfs4_string*, align 8
  store %struct.nfs_clone_mount* %0, %struct.nfs_clone_mount** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.nfs4_fs_location* %3, %struct.nfs4_fs_location** %9, align 8
  store i64 4, i64* %10, align 8
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  %18 = call i8* @ERR_PTR(i32 %17)
  %19 = bitcast i8* %18 to %struct.vfsmount*
  store %struct.vfsmount* %19, %struct.vfsmount** %11, align 8
  %20 = load %struct.nfs4_fs_location*, %struct.nfs4_fs_location** %9, align 8
  %21 = getelementptr inbounds %struct.nfs4_fs_location, %struct.nfs4_fs_location* %20, i32 0, i32 2
  %22 = load i8*, i8** %8, align 8
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = call i8* @nfs4_pathname_string(i32* %21, i8* %22, i32 %23)
  store i8* %24, i8** %12, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = call i64 @IS_ERR(i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load i8*, i8** %12, align 8
  %30 = call i8* @ERR_CAST(i8* %29)
  %31 = bitcast i8* %30 to %struct.vfsmount*
  store %struct.vfsmount* %31, %struct.vfsmount** %5, align 8
  br label %161

32:                                               ; preds = %4
  %33 = load i8*, i8** %12, align 8
  %34 = load %struct.nfs_clone_mount*, %struct.nfs_clone_mount** %6, align 8
  %35 = getelementptr inbounds %struct.nfs_clone_mount, %struct.nfs_clone_mount* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 -1
  %38 = load i8*, i8** %8, align 8
  %39 = ptrtoint i8* %37 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i32* @kmalloc(i64 4, i32 %43)
  %45 = load %struct.nfs_clone_mount*, %struct.nfs_clone_mount** %6, align 8
  %46 = getelementptr inbounds %struct.nfs_clone_mount, %struct.nfs_clone_mount* %45, i32 0, i32 2
  store i32* %44, i32** %46, align 8
  %47 = load %struct.nfs_clone_mount*, %struct.nfs_clone_mount** %6, align 8
  %48 = getelementptr inbounds %struct.nfs_clone_mount, %struct.nfs_clone_mount* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %32
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  %54 = call i8* @ERR_PTR(i32 %53)
  %55 = bitcast i8* %54 to %struct.vfsmount*
  store %struct.vfsmount* %55, %struct.vfsmount** %5, align 8
  br label %161

56:                                               ; preds = %32
  store i32 0, i32* %14, align 4
  br label %57

57:                                               ; preds = %152, %56
  %58 = load i32, i32* %14, align 4
  %59 = load %struct.nfs4_fs_location*, %struct.nfs4_fs_location** %9, align 8
  %60 = getelementptr inbounds %struct.nfs4_fs_location, %struct.nfs4_fs_location* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ult i32 %58, %61
  br i1 %62, label %63, label %155

63:                                               ; preds = %57
  %64 = load %struct.nfs4_fs_location*, %struct.nfs4_fs_location** %9, align 8
  %65 = getelementptr inbounds %struct.nfs4_fs_location, %struct.nfs4_fs_location* %64, i32 0, i32 1
  %66 = load %struct.nfs4_string*, %struct.nfs4_string** %65, align 8
  %67 = load i32, i32* %14, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.nfs4_string, %struct.nfs4_string* %66, i64 %68
  store %struct.nfs4_string* %69, %struct.nfs4_string** %15, align 8
  %70 = load %struct.nfs4_string*, %struct.nfs4_string** %15, align 8
  %71 = getelementptr inbounds %struct.nfs4_string, %struct.nfs4_string* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ule i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %63
  %75 = load %struct.nfs4_string*, %struct.nfs4_string** %15, align 8
  %76 = getelementptr inbounds %struct.nfs4_string, %struct.nfs4_string* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp uge i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74, %63
  br label %152

81:                                               ; preds = %74
  %82 = load %struct.nfs4_string*, %struct.nfs4_string** %15, align 8
  %83 = getelementptr inbounds %struct.nfs4_string, %struct.nfs4_string* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @IPV6_SCOPE_DELIMITER, align 4
  %86 = load %struct.nfs4_string*, %struct.nfs4_string** %15, align 8
  %87 = getelementptr inbounds %struct.nfs4_string, %struct.nfs4_string* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @memchr(i32 %84, i32 %85, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  br label %152

92:                                               ; preds = %81
  %93 = load %struct.nfs4_string*, %struct.nfs4_string** %15, align 8
  %94 = getelementptr inbounds %struct.nfs4_string, %struct.nfs4_string* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.nfs4_string*, %struct.nfs4_string** %15, align 8
  %97 = getelementptr inbounds %struct.nfs4_string, %struct.nfs4_string* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.nfs_clone_mount*, %struct.nfs_clone_mount** %6, align 8
  %100 = getelementptr inbounds %struct.nfs_clone_mount, %struct.nfs_clone_mount* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @nfs_parse_server_name(i32 %95, i32 %98, i32* %101, i64 4)
  %103 = load %struct.nfs_clone_mount*, %struct.nfs_clone_mount** %6, align 8
  %104 = getelementptr inbounds %struct.nfs_clone_mount, %struct.nfs_clone_mount* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 8
  %105 = load %struct.nfs_clone_mount*, %struct.nfs_clone_mount** %6, align 8
  %106 = getelementptr inbounds %struct.nfs_clone_mount, %struct.nfs_clone_mount* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %92
  br label %152

110:                                              ; preds = %92
  %111 = load %struct.nfs_clone_mount*, %struct.nfs_clone_mount** %6, align 8
  %112 = getelementptr inbounds %struct.nfs_clone_mount, %struct.nfs_clone_mount* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* @NFS_PORT, align 4
  %115 = call i32 @rpc_set_port(i32* %113, i32 %114)
  %116 = load i8*, i8** %8, align 8
  %117 = load %struct.nfs4_string*, %struct.nfs4_string** %15, align 8
  %118 = getelementptr inbounds %struct.nfs4_string, %struct.nfs4_string* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.nfs4_string*, %struct.nfs4_string** %15, align 8
  %121 = getelementptr inbounds %struct.nfs4_string, %struct.nfs4_string* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @memcpy(i8* %116, i32 %119, i32 %122)
  %124 = load i8*, i8** %8, align 8
  %125 = load %struct.nfs4_string*, %struct.nfs4_string** %15, align 8
  %126 = getelementptr inbounds %struct.nfs4_string, %struct.nfs4_string* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %124, i64 %128
  store i8 0, i8* %129, align 1
  %130 = load i8*, i8** %8, align 8
  %131 = load %struct.nfs_clone_mount*, %struct.nfs_clone_mount** %6, align 8
  %132 = getelementptr inbounds %struct.nfs_clone_mount, %struct.nfs_clone_mount* %131, i32 0, i32 1
  store i8* %130, i8** %132, align 8
  %133 = load i8*, i8** %7, align 8
  %134 = load i32, i32* @PAGE_SIZE, align 4
  %135 = load %struct.nfs_clone_mount*, %struct.nfs_clone_mount** %6, align 8
  %136 = getelementptr inbounds %struct.nfs_clone_mount, %struct.nfs_clone_mount* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = load %struct.nfs_clone_mount*, %struct.nfs_clone_mount** %6, align 8
  %139 = getelementptr inbounds %struct.nfs_clone_mount, %struct.nfs_clone_mount* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @snprintf(i8* %133, i32 %134, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %137, i8* %140)
  %142 = load i8*, i8** %7, align 8
  %143 = load %struct.nfs_clone_mount*, %struct.nfs_clone_mount** %6, align 8
  %144 = call i8* @vfs_kern_mount(i32* @nfs4_referral_fs_type, i32 0, i8* %142, %struct.nfs_clone_mount* %143)
  %145 = bitcast i8* %144 to %struct.vfsmount*
  store %struct.vfsmount* %145, %struct.vfsmount** %11, align 8
  %146 = load %struct.vfsmount*, %struct.vfsmount** %11, align 8
  %147 = bitcast %struct.vfsmount* %146 to i8*
  %148 = call i64 @IS_ERR(i8* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %110
  br label %155

151:                                              ; preds = %110
  br label %152

152:                                              ; preds = %151, %109, %91, %80
  %153 = load i32, i32* %14, align 4
  %154 = add i32 %153, 1
  store i32 %154, i32* %14, align 4
  br label %57

155:                                              ; preds = %150, %57
  %156 = load %struct.nfs_clone_mount*, %struct.nfs_clone_mount** %6, align 8
  %157 = getelementptr inbounds %struct.nfs_clone_mount, %struct.nfs_clone_mount* %156, i32 0, i32 2
  %158 = load i32*, i32** %157, align 8
  %159 = call i32 @kfree(i32* %158)
  %160 = load %struct.vfsmount*, %struct.vfsmount** %11, align 8
  store %struct.vfsmount* %160, %struct.vfsmount** %5, align 8
  br label %161

161:                                              ; preds = %155, %51, %28
  %162 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  ret %struct.vfsmount* %162
}

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8* @nfs4_pathname_string(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i8* @ERR_CAST(i8*) #1

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i64 @memchr(i32, i32, i32) #1

declare dso_local i32 @nfs_parse_server_name(i32, i32, i32*, i64) #1

declare dso_local i32 @rpc_set_port(i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i8* @vfs_kern_mount(i32*, i32, i8*, %struct.nfs_clone_mount*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
