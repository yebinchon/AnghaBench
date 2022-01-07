; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_dir.c_ncp_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_dir.c_ncp_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32*, %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.nameidata = type { i32 }
%struct.ncp_server = type { i32 }
%struct.ncp_entry_info = type { %struct.TYPE_9__, i32, i32, i64 }
%struct.TYPE_9__ = type { i32 }

@NCP_MAXPATHLEN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"ncp_lookup: server lookup for %s/%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"ncp_lookup: looked for %s/%s, res=%d\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@ncp_dentry_operations = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"ncp_lookup: result=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, %struct.nameidata*)* @ncp_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @ncp_lookup(%struct.inode* %0, %struct.dentry* %1, %struct.nameidata* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.nameidata*, align 8
  %7 = alloca %struct.ncp_server*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ncp_entry_info, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.nameidata* %2, %struct.nameidata** %6, align 8
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = call %struct.ncp_server* @NCP_SERVER(%struct.inode* %15)
  store %struct.ncp_server* %16, %struct.ncp_server** %7, align 8
  store %struct.inode* null, %struct.inode** %8, align 8
  %17 = load i32, i32* @NCP_MAXPATHLEN, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %13, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %14, align 8
  %22 = call i32 (...) @lock_kernel()
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %10, align 4
  %25 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %26 = call i32 @ncp_conn_valid(%struct.ncp_server* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  br label %129

29:                                               ; preds = %3
  %30 = load %struct.dentry*, %struct.dentry** %5, align 8
  %31 = getelementptr inbounds %struct.dentry, %struct.dentry* %30, i32 0, i32 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.dentry*, %struct.dentry** %5, align 8
  %37 = getelementptr inbounds %struct.dentry, %struct.dentry* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i8*, i32, ...) @PPRINTK(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %39)
  %41 = mul nuw i64 4, %19
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %12, align 4
  %43 = load %struct.inode*, %struct.inode** %4, align 8
  %44 = call i64 @ncp_is_server_root(%struct.inode* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %29
  %47 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %48 = load %struct.dentry*, %struct.dentry** %5, align 8
  %49 = getelementptr inbounds %struct.dentry, %struct.dentry* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.dentry*, %struct.dentry** %5, align 8
  %53 = getelementptr inbounds %struct.dentry, %struct.dentry* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @ncp_io2vol(%struct.ncp_server* %47, i32* %21, i32* %12, i32 %51, i32 %55, i32 1)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %46
  %60 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %61 = getelementptr inbounds %struct.ncp_entry_info, %struct.ncp_entry_info* %9, i32 0, i32 0
  %62 = call i32 @ncp_lookup_volume(%struct.ncp_server* %60, i32* %21, %struct.TYPE_9__* %61)
  store i32 %62, i32* %11, align 4
  br label %63

63:                                               ; preds = %59, %46
  br label %88

64:                                               ; preds = %29
  %65 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %66 = load %struct.dentry*, %struct.dentry** %5, align 8
  %67 = getelementptr inbounds %struct.dentry, %struct.dentry* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.dentry*, %struct.dentry** %5, align 8
  %71 = getelementptr inbounds %struct.dentry, %struct.dentry* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.inode*, %struct.inode** %4, align 8
  %75 = call i32 @ncp_preserve_case(%struct.inode* %74)
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call i32 @ncp_io2vol(%struct.ncp_server* %65, i32* %21, i32* %12, i32 %69, i32 %73, i32 %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %64
  %83 = load %struct.ncp_server*, %struct.ncp_server** %7, align 8
  %84 = load %struct.inode*, %struct.inode** %4, align 8
  %85 = getelementptr inbounds %struct.ncp_entry_info, %struct.ncp_entry_info* %9, i32 0, i32 0
  %86 = call i32 @ncp_obtain_info(%struct.ncp_server* %83, %struct.inode* %84, i32* %21, %struct.TYPE_9__* %85)
  store i32 %86, i32* %11, align 4
  br label %87

87:                                               ; preds = %82, %64
  br label %88

88:                                               ; preds = %87, %63
  %89 = load %struct.dentry*, %struct.dentry** %5, align 8
  %90 = getelementptr inbounds %struct.dentry, %struct.dentry* %89, i32 0, i32 1
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %11, align 4
  %96 = call i32 (i8*, i32, ...) @PPRINTK(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %94, i32* %21, i32 %95)
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %88
  br label %122

100:                                              ; preds = %88
  %101 = getelementptr inbounds %struct.ncp_entry_info, %struct.ncp_entry_info* %9, i32 0, i32 3
  store i64 0, i64* %101, align 8
  %102 = load %struct.inode*, %struct.inode** %4, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @iunique(i32 %104, i32 2)
  %106 = getelementptr inbounds %struct.ncp_entry_info, %struct.ncp_entry_info* %9, i32 0, i32 2
  store i32 %105, i32* %106, align 8
  %107 = getelementptr inbounds %struct.ncp_entry_info, %struct.ncp_entry_info* %9, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = getelementptr inbounds %struct.ncp_entry_info, %struct.ncp_entry_info* %9, i32 0, i32 1
  store i32 %109, i32* %110, align 4
  %111 = load i32, i32* @EACCES, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %10, align 4
  %113 = load %struct.inode*, %struct.inode** %4, align 8
  %114 = getelementptr inbounds %struct.inode, %struct.inode* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call %struct.inode* @ncp_iget(i32 %115, %struct.ncp_entry_info* %9)
  store %struct.inode* %116, %struct.inode** %8, align 8
  %117 = load %struct.inode*, %struct.inode** %8, align 8
  %118 = icmp ne %struct.inode* %117, null
  br i1 %118, label %119, label %128

119:                                              ; preds = %100
  %120 = load %struct.dentry*, %struct.dentry** %5, align 8
  %121 = call i32 @ncp_new_dentry(%struct.dentry* %120)
  br label %122

122:                                              ; preds = %119, %99
  %123 = load %struct.dentry*, %struct.dentry** %5, align 8
  %124 = getelementptr inbounds %struct.dentry, %struct.dentry* %123, i32 0, i32 0
  store i32* @ncp_dentry_operations, i32** %124, align 8
  %125 = load %struct.dentry*, %struct.dentry** %5, align 8
  %126 = load %struct.inode*, %struct.inode** %8, align 8
  %127 = call i32 @d_add(%struct.dentry* %125, %struct.inode* %126)
  store i32 0, i32* %10, align 4
  br label %128

128:                                              ; preds = %122, %100
  br label %129

129:                                              ; preds = %128, %28
  %130 = load i32, i32* %10, align 4
  %131 = call i32 (i8*, i32, ...) @PPRINTK(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %130)
  %132 = call i32 (...) @unlock_kernel()
  %133 = load i32, i32* %10, align 4
  %134 = call %struct.dentry* @ERR_PTR(i32 %133)
  %135 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %135)
  ret %struct.dentry* %134
}

declare dso_local %struct.ncp_server* @NCP_SERVER(%struct.inode*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @ncp_conn_valid(%struct.ncp_server*) #1

declare dso_local i32 @PPRINTK(i8*, i32, ...) #1

declare dso_local i64 @ncp_is_server_root(%struct.inode*) #1

declare dso_local i32 @ncp_io2vol(%struct.ncp_server*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @ncp_lookup_volume(%struct.ncp_server*, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @ncp_preserve_case(%struct.inode*) #1

declare dso_local i32 @ncp_obtain_info(%struct.ncp_server*, %struct.inode*, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @iunique(i32, i32) #1

declare dso_local %struct.inode* @ncp_iget(i32, %struct.ncp_entry_info*) #1

declare dso_local i32 @ncp_new_dentry(%struct.dentry*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
