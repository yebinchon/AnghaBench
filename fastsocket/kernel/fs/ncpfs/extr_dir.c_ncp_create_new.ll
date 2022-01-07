; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_dir.c_ncp_create_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_dir.c_ncp_create_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ncp_server = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.ncp_entry_info = type { i32, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }

@NCP_MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"ncp_create_new: creating %s/%s, mode=%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@NCP_MOUNT_EXTRAS = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@aSYSTEM = common dso_local global i32 0, align 4
@aSHARED = common dso_local global i32 0, align 4
@OC_MODE_CREATE = common dso_local global i32 0, align 4
@OC_MODE_OPEN = common dso_local global i32 0, align 4
@OC_MODE_REPLACE = common dso_local global i32 0, align 4
@AR_READ = common dso_local global i32 0, align 4
@AR_WRITE = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"ncp_create: %s/%s failed\0A\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncp_create_new(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ncp_server*, align 8
  %12 = alloca %struct.ncp_entry_info, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = call %struct.ncp_server* @NCP_SERVER(%struct.inode* %19)
  store %struct.ncp_server* %20, %struct.ncp_server** %11, align 8
  %21 = load i32, i32* @NCP_MAXPATHLEN, align 4
  %22 = add nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %17, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %18, align 8
  %26 = load %struct.dentry*, %struct.dentry** %7, align 8
  %27 = getelementptr inbounds %struct.dentry, %struct.dentry* %26, i32 0, i32 1
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.dentry*, %struct.dentry** %7, align 8
  %33 = getelementptr inbounds %struct.dentry, %struct.dentry* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @PPRINTK(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %35, i32 %36)
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %13, align 4
  %40 = call i32 (...) @lock_kernel()
  %41 = load %struct.ncp_server*, %struct.ncp_server** %11, align 8
  %42 = call i32 @ncp_conn_valid(%struct.ncp_server* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %5
  br label %178

45:                                               ; preds = %5
  %46 = load %struct.ncp_server*, %struct.ncp_server** %11, align 8
  %47 = load %struct.dentry*, %struct.dentry** %7, align 8
  %48 = call i32 @ncp_age_dentry(%struct.ncp_server* %46, %struct.dentry* %47)
  %49 = mul nuw i64 4, %23
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %15, align 4
  %51 = load %struct.ncp_server*, %struct.ncp_server** %11, align 8
  %52 = load %struct.dentry*, %struct.dentry** %7, align 8
  %53 = getelementptr inbounds %struct.dentry, %struct.dentry* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.dentry*, %struct.dentry** %7, align 8
  %57 = getelementptr inbounds %struct.dentry, %struct.dentry* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.inode*, %struct.inode** %6, align 8
  %61 = call i32 @ncp_preserve_case(%struct.inode* %60)
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i32 @ncp_io2vol(%struct.ncp_server* %51, i32* %25, i32* %15, i32 %55, i32 %59, i32 %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %45
  br label %178

69:                                               ; preds = %45
  %70 = load i32, i32* @EACCES, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i64 @S_ISREG(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %94

75:                                               ; preds = %69
  %76 = load %struct.ncp_server*, %struct.ncp_server** %11, align 8
  %77 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @NCP_MOUNT_EXTRAS, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %75
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @S_IXUGO, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load i32, i32* @aSYSTEM, align 4
  %90 = load i32, i32* @aSHARED, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* %10, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %88, %83, %75, %69
  %95 = load %struct.ncp_server*, %struct.ncp_server** %11, align 8
  %96 = load %struct.inode*, %struct.inode** %6, align 8
  %97 = load i32, i32* @OC_MODE_CREATE, align 4
  %98 = load i32, i32* @OC_MODE_OPEN, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @OC_MODE_REPLACE, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @AR_READ, align 4
  %104 = load i32, i32* @AR_WRITE, align 4
  %105 = or i32 %103, %104
  %106 = call i32 @ncp_open_create_file_or_subdir(%struct.ncp_server* %95, %struct.inode* %96, i32* %25, i32 %101, i32 %102, i32 %105, %struct.ncp_entry_info* %12)
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* @O_RDWR, align 4
  store i32 %107, i32* %16, align 4
  %108 = load i32, i32* %14, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %143

110:                                              ; preds = %94
  %111 = load %struct.ncp_server*, %struct.ncp_server** %11, align 8
  %112 = load %struct.inode*, %struct.inode** %6, align 8
  %113 = load i32, i32* @OC_MODE_CREATE, align 4
  %114 = load i32, i32* @OC_MODE_OPEN, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @OC_MODE_REPLACE, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* @AR_WRITE, align 4
  %120 = call i32 @ncp_open_create_file_or_subdir(%struct.ncp_server* %111, %struct.inode* %112, i32* %25, i32 %117, i32 %118, i32 %119, %struct.ncp_entry_info* %12)
  store i32 %120, i32* %14, align 4
  %121 = load i32, i32* %14, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %141

123:                                              ; preds = %110
  %124 = load i32, i32* %14, align 4
  %125 = icmp eq i32 %124, 135
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i32, i32* @ENAMETOOLONG, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %13, align 4
  br label %129

129:                                              ; preds = %126, %123
  %130 = load %struct.dentry*, %struct.dentry** %7, align 8
  %131 = getelementptr inbounds %struct.dentry, %struct.dentry* %130, i32 0, i32 1
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.dentry*, %struct.dentry** %7, align 8
  %137 = getelementptr inbounds %struct.dentry, %struct.dentry* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @DPRINTK(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %135, i32 %139)
  br label %178

141:                                              ; preds = %110
  %142 = load i32, i32* @O_WRONLY, align 4
  store i32 %142, i32* %16, align 4
  br label %143

143:                                              ; preds = %141, %94
  %144 = load i32, i32* %16, align 4
  %145 = getelementptr inbounds %struct.ncp_entry_info, %struct.ncp_entry_info* %12, i32 0, i32 0
  store i32 %144, i32* %145, align 4
  %146 = load %struct.ncp_server*, %struct.ncp_server** %11, align 8
  %147 = getelementptr inbounds %struct.ncp_entry_info, %struct.ncp_entry_info* %12, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = call i64 @ncp_is_nfs_extras(%struct.ncp_server* %146, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %174

151:                                              ; preds = %143
  %152 = load i32, i32* %8, align 4
  %153 = getelementptr inbounds %struct.ncp_entry_info, %struct.ncp_entry_info* %12, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  store i32 %152, i32* %155, align 4
  %156 = load i32, i32* %9, align 4
  %157 = call i32 @new_encode_dev(i32 %156)
  %158 = getelementptr inbounds %struct.ncp_entry_info, %struct.ncp_entry_info* %12, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 1
  store i32 %157, i32* %160, align 4
  %161 = load %struct.ncp_server*, %struct.ncp_server** %11, align 8
  %162 = getelementptr inbounds %struct.ncp_entry_info, %struct.ncp_entry_info* %12, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds %struct.ncp_entry_info, %struct.ncp_entry_info* %12, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* %9, align 4
  %169 = call i32 @new_encode_dev(i32 %168)
  %170 = call i64 @ncp_modify_nfs_info(%struct.ncp_server* %161, i32 %163, i32 %166, i32 %167, i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %151
  br label %178

173:                                              ; preds = %151
  br label %174

174:                                              ; preds = %173, %143
  %175 = load %struct.inode*, %struct.inode** %6, align 8
  %176 = load %struct.dentry*, %struct.dentry** %7, align 8
  %177 = call i32 @ncp_instantiate(%struct.inode* %175, %struct.dentry* %176, %struct.ncp_entry_info* %12)
  store i32 %177, i32* %13, align 4
  br label %178

178:                                              ; preds = %174, %172, %129, %68, %44
  %179 = call i32 (...) @unlock_kernel()
  %180 = load i32, i32* %13, align 4
  %181 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %181)
  ret i32 %180
}

declare dso_local %struct.ncp_server* @NCP_SERVER(%struct.inode*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @PPRINTK(i8*, i32, i32, i32) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @ncp_conn_valid(%struct.ncp_server*) #1

declare dso_local i32 @ncp_age_dentry(%struct.ncp_server*, %struct.dentry*) #1

declare dso_local i32 @ncp_io2vol(%struct.ncp_server*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @ncp_preserve_case(%struct.inode*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @ncp_open_create_file_or_subdir(%struct.ncp_server*, %struct.inode*, i32*, i32, i32, i32, %struct.ncp_entry_info*) #1

declare dso_local i32 @DPRINTK(i8*, i32, i32) #1

declare dso_local i64 @ncp_is_nfs_extras(%struct.ncp_server*, i32) #1

declare dso_local i32 @new_encode_dev(i32) #1

declare dso_local i64 @ncp_modify_nfs_info(%struct.ncp_server*, i32, i32, i32, i32) #1

declare dso_local i32 @ncp_instantiate(%struct.inode*, %struct.dentry*, %struct.ncp_entry_info*) #1

declare dso_local i32 @unlock_kernel(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
