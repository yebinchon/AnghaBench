; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_super.c_nfs_try_mount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_super.c_nfs_try_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_parsed_mount_data = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i32, i32, %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32, i64, i32 }
%struct.nfs_fh = type { i32 }
%struct.nfs_mount_request = type { i32, i32*, i64, i64, %struct.sockaddr*, i32, i32*, %struct.nfs_fh*, i32, i32 }
%struct.sockaddr = type { i32 }

@NFS_MAX_SECFLAVORS = common dso_local global i32 0, align 4
@NFS_MOUNT_NORESVPORT = common dso_local global i32 0, align 4
@NFS_MNT3_VERSION = common dso_local global i64 0, align 8
@NFS_MNT_VERSION = common dso_local global i64 0, align 8
@AF_UNSPEC = common dso_local global i64 0, align 8
@MOUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"NFS: unable to mount server %s, error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_parsed_mount_data*, %struct.nfs_fh*)* @nfs_try_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_try_mount(%struct.nfs_parsed_mount_data* %0, %struct.nfs_fh* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs_parsed_mount_data*, align 8
  %5 = alloca %struct.nfs_fh*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfs_mount_request, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nfs_parsed_mount_data* %0, %struct.nfs_parsed_mount_data** %4, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %5, align 8
  %12 = load i32, i32* @NFS_MAX_SECFLAVORS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = call i32 @ARRAY_SIZE(i32* %15)
  store i32 %16, i32* %8, align 4
  %17 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %9, i32 0, i32 0
  %18 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %4, align 8
  %19 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @NFS_MOUNT_NORESVPORT, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %17, align 8
  %23 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %9, i32 0, i32 1
  store i32* %8, i32** %23, align 8
  %24 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %9, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %9, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %9, i32 0, i32 4
  %27 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %4, align 8
  %28 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 3
  %30 = bitcast %struct.TYPE_4__* %29 to %struct.sockaddr*
  store %struct.sockaddr* %30, %struct.sockaddr** %26, align 8
  %31 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %9, i32 0, i32 5
  store i32 0, i32* %31, align 8
  %32 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %9, i32 0, i32 6
  store i32* %15, i32** %32, align 8
  %33 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %9, i32 0, i32 7
  %34 = load %struct.nfs_fh*, %struct.nfs_fh** %5, align 8
  store %struct.nfs_fh* %34, %struct.nfs_fh** %33, align 8
  %35 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %9, i32 0, i32 8
  %36 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %4, align 8
  %37 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %35, align 8
  %40 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %9, i32 0, i32 9
  %41 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %4, align 8
  %42 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %40, align 4
  %45 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %4, align 8
  %46 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %2
  %51 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %4, align 8
  %52 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %54 [
    i32 2, label %59
  ]

54:                                               ; preds = %50
  %55 = load i64, i64* @NFS_MNT3_VERSION, align 8
  %56 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %4, align 8
  %57 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i64 %55, i64* %58, align 8
  br label %64

59:                                               ; preds = %50
  %60 = load i64, i64* @NFS_MNT_VERSION, align 8
  %61 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %4, align 8
  %62 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i64 %60, i64* %63, align 8
  br label %64

64:                                               ; preds = %59, %54
  br label %65

65:                                               ; preds = %64, %2
  %66 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %4, align 8
  %67 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %9, i32 0, i32 2
  store i64 %69, i64* %70, align 8
  %71 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %4, align 8
  %72 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %65
  %77 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %4, align 8
  %78 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %9, i32 0, i32 3
  store i64 %80, i64* %81, align 8
  br label %88

82:                                               ; preds = %65
  %83 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %4, align 8
  %84 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %9, i32 0, i32 3
  store i64 %86, i64* %87, align 8
  br label %88

88:                                               ; preds = %82, %76
  %89 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %4, align 8
  %90 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @AF_UNSPEC, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %114

96:                                               ; preds = %88
  %97 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %9, i32 0, i32 4
  %98 = load %struct.sockaddr*, %struct.sockaddr** %97, align 8
  %99 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %4, align 8
  %100 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %4, align 8
  %103 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @memcpy(%struct.sockaddr* %98, i32* %101, i32 %105)
  %107 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %4, align 8
  %108 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %4, align 8
  %112 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  store i32 %110, i32* %113, align 4
  br label %114

114:                                              ; preds = %96, %88
  %115 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %4, align 8
  %116 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %9, i32 0, i32 5
  store i32 %118, i32* %119, align 8
  %120 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %9, i32 0, i32 4
  %121 = load %struct.sockaddr*, %struct.sockaddr** %120, align 8
  %122 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %4, align 8
  %123 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = call i32 @nfs_set_port(%struct.sockaddr* %121, i32* %124, i32 0)
  %126 = call i32 @nfs_mount(%struct.nfs_mount_request* %9)
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %114
  %130 = load i32, i32* @MOUNT, align 4
  %131 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %9, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = load i32, i32* %10, align 4
  %134 = call i32 @dfprintk(i32 %130, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %132, i32 %133)
  %135 = load i32, i32* %10, align 4
  store i32 %135, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %147

136:                                              ; preds = %114
  %137 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %4, align 8
  %138 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @NFS_MNT3_VERSION, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %136
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %147

144:                                              ; preds = %136
  %145 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %4, align 8
  %146 = call i32 @nfs_walk_authlist(%struct.nfs_parsed_mount_data* %145, %struct.nfs_mount_request* %9)
  store i32 %146, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %147

147:                                              ; preds = %144, %143, %129
  %148 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %148)
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @memcpy(%struct.sockaddr*, i32*, i32) #2

declare dso_local i32 @nfs_set_port(%struct.sockaddr*, i32*, i32) #2

declare dso_local i32 @nfs_mount(%struct.nfs_mount_request*) #2

declare dso_local i32 @dfprintk(i32, i8*, i64, i32) #2

declare dso_local i32 @nfs_walk_authlist(%struct.nfs_parsed_mount_data*, %struct.nfs_mount_request*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
