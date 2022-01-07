; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_symlink.c_ncp_symlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_symlink.c_ncp_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.inode* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"ncp_symlink(dir=%p,dentry=%p,symname=%s)\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@NCP_MAX_SYMLINK_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@aSHARED = common dso_local global i32 0, align 4
@aHIDDEN = common dso_local global i32 0, align 4
@NCP_SYMLINK_MAGIC0 = common dso_local global i32 0, align 4
@NCP_SYMLINK_MAGIC1 = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@NCP_MOUNT_SYMLINKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncp_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8* %2, i8** %7, align 8
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = load %struct.dentry*, %struct.dentry** %6, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @DPRINTK(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.inode* %18, %struct.dentry* %19, i8* %20)
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = call %struct.TYPE_8__* @NCP_SERVER(%struct.inode* %22)
  %24 = load %struct.inode*, %struct.inode** %5, align 8
  %25 = call %struct.TYPE_9__* @NCP_FINFO(%struct.inode* %24)
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @ncp_is_nfs_extras(%struct.TYPE_8__* %23, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store i32 0, i32* %14, align 4
  br label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @EPERM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %134

34:                                               ; preds = %30
  %35 = load i32, i32* @NCP_MAX_SYMLINK_SIZE, align 4
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i8* @kmalloc(i32 %35, i32 %36)
  store i8* %37, i8** %9, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %134

43:                                               ; preds = %34
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  store i32 0, i32* %15, align 4
  %47 = load i32, i32* @aSHARED, align 4
  %48 = load i32, i32* @aHIDDEN, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* @NCP_SYMLINK_MAGIC0, align 4
  %51 = load i8*, i8** %9, align 8
  %52 = bitcast i8* %51 to i32*
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @NCP_SYMLINK_MAGIC1, align 4
  %55 = load i8*, i8** %9, align 8
  %56 = bitcast i8* %55 to i32*
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  store i32 %54, i32* %57, align 4
  store i32 8, i32* %17, align 4
  br label %62

58:                                               ; preds = %43
  %59 = load i32, i32* @S_IFLNK, align 4
  %60 = load i32, i32* @S_IRWXUGO, align 4
  %61 = or i32 %59, %60
  store i32 %61, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %62

62:                                               ; preds = %58, %46
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @strlen(i8* %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* @NCP_MAX_SYMLINK_SIZE, align 4
  %66 = load i32, i32* %17, align 4
  %67 = sub i32 %65, %66
  store i32 %67, i32* %13, align 4
  %68 = load %struct.inode*, %struct.inode** %5, align 8
  %69 = call %struct.TYPE_8__* @NCP_SERVER(%struct.inode* %68)
  %70 = load i8*, i8** %9, align 8
  %71 = load i32, i32* %17, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8*, i8** %7, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @ncp_io2vol(%struct.TYPE_8__* %69, i8* %73, i32* %13, i8* %74, i32 %75, i32 0)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %62
  br label %130

80:                                               ; preds = %62
  %81 = load i32, i32* %17, align 4
  %82 = load i32, i32* %13, align 4
  %83 = add i32 %82, %81
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* @EIO, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %11, align 4
  %86 = load %struct.inode*, %struct.inode** %5, align 8
  %87 = load %struct.dentry*, %struct.dentry** %6, align 8
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %16, align 4
  %90 = call i64 @ncp_create_new(%struct.inode* %86, %struct.dentry* %87, i32 %88, i32 0, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %80
  br label %130

93:                                               ; preds = %80
  %94 = load %struct.dentry*, %struct.dentry** %6, align 8
  %95 = getelementptr inbounds %struct.dentry, %struct.dentry* %94, i32 0, i32 0
  %96 = load %struct.inode*, %struct.inode** %95, align 8
  store %struct.inode* %96, %struct.inode** %8, align 8
  %97 = load %struct.inode*, %struct.inode** %8, align 8
  %98 = load i32, i32* @O_WRONLY, align 4
  %99 = call i64 @ncp_make_open(%struct.inode* %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  br label %130

102:                                              ; preds = %93
  %103 = load %struct.inode*, %struct.inode** %8, align 8
  %104 = call %struct.TYPE_8__* @NCP_SERVER(%struct.inode* %103)
  %105 = load %struct.inode*, %struct.inode** %8, align 8
  %106 = call %struct.TYPE_9__* @NCP_FINFO(%struct.inode* %105)
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %13, align 4
  %110 = load i8*, i8** %9, align 8
  %111 = call i64 @ncp_write_kernel(%struct.TYPE_8__* %104, i32 %108, i32 0, i32 %109, i8* %110, i32* %12)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %102
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %113, %102
  br label %125

118:                                              ; preds = %113
  %119 = load %struct.inode*, %struct.inode** %8, align 8
  %120 = call i32 @ncp_inode_close(%struct.inode* %119)
  %121 = load %struct.inode*, %struct.inode** %8, align 8
  %122 = call i32 @ncp_make_closed(%struct.inode* %121)
  %123 = load i8*, i8** %9, align 8
  %124 = call i32 @kfree(i8* %123)
  store i32 0, i32* %4, align 4
  br label %134

125:                                              ; preds = %117
  %126 = load %struct.inode*, %struct.inode** %8, align 8
  %127 = call i32 @ncp_inode_close(%struct.inode* %126)
  %128 = load %struct.inode*, %struct.inode** %8, align 8
  %129 = call i32 @ncp_make_closed(%struct.inode* %128)
  br label %130

130:                                              ; preds = %125, %101, %92, %79
  %131 = load i8*, i8** %9, align 8
  %132 = call i32 @kfree(i8* %131)
  %133 = load i32, i32* %11, align 4
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %130, %118, %40, %31
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32 @DPRINTK(i8*, %struct.inode*, %struct.dentry*, i8*) #1

declare dso_local i64 @ncp_is_nfs_extras(%struct.TYPE_8__*, i32) #1

declare dso_local %struct.TYPE_8__* @NCP_SERVER(%struct.inode*) #1

declare dso_local %struct.TYPE_9__* @NCP_FINFO(%struct.inode*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ncp_io2vol(%struct.TYPE_8__*, i8*, i32*, i8*, i32, i32) #1

declare dso_local i64 @ncp_create_new(%struct.inode*, %struct.dentry*, i32, i32, i32) #1

declare dso_local i64 @ncp_make_open(%struct.inode*, i32) #1

declare dso_local i64 @ncp_write_kernel(%struct.TYPE_8__*, i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @ncp_inode_close(%struct.inode*) #1

declare dso_local i32 @ncp_make_closed(%struct.inode*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
