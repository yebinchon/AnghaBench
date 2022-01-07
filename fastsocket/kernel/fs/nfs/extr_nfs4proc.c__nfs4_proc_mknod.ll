; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c__nfs4_proc_mknod.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c__nfs4_proc_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.iattr = type { i32, i32 }
%struct.nfs4_createdata = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@NF4SOCK = common dso_local global i32 0, align 4
@NF4FIFO = common dso_local global i32 0, align 4
@NF4BLK = common dso_local global i32 0, align 4
@NF4CHR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.iattr*, i32)* @_nfs4_proc_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs4_proc_mknod(%struct.inode* %0, %struct.dentry* %1, %struct.iattr* %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.iattr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfs4_createdata*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.iattr* %2, %struct.iattr** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.iattr*, %struct.iattr** %7, align 8
  %13 = getelementptr inbounds %struct.iattr, %struct.iattr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %11, align 4
  %17 = load %struct.iattr*, %struct.iattr** %7, align 8
  %18 = getelementptr inbounds %struct.iattr, %struct.iattr* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ATTR_MODE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load i32, i32* %10, align 4
  %27 = call i64 @S_ISFIFO(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* %10, align 4
  %31 = call i64 @S_ISBLK(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %10, align 4
  %35 = call i64 @S_ISCHR(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @S_ISSOCK(i32 %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br label %42

42:                                               ; preds = %37, %33, %29, %4
  %43 = phi i1 [ false, %33 ], [ false, %29 ], [ false, %4 ], [ %41, %37 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @BUG_ON(i32 %44)
  %46 = load %struct.inode*, %struct.inode** %5, align 8
  %47 = load %struct.dentry*, %struct.dentry** %6, align 8
  %48 = getelementptr inbounds %struct.dentry, %struct.dentry* %47, i32 0, i32 0
  %49 = load %struct.iattr*, %struct.iattr** %7, align 8
  %50 = load i32, i32* @NF4SOCK, align 4
  %51 = call %struct.nfs4_createdata* @nfs4_alloc_createdata(%struct.inode* %46, i32* %48, %struct.iattr* %49, i32 %50)
  store %struct.nfs4_createdata* %51, %struct.nfs4_createdata** %9, align 8
  %52 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %9, align 8
  %53 = icmp eq %struct.nfs4_createdata* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  br label %119

55:                                               ; preds = %42
  %56 = load i32, i32* %10, align 4
  %57 = call i64 @S_ISFIFO(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i32, i32* @NF4FIFO, align 4
  %61 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %9, align 8
  %62 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 8
  br label %112

64:                                               ; preds = %55
  %65 = load i32, i32* %10, align 4
  %66 = call i64 @S_ISBLK(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %64
  %69 = load i32, i32* @NF4BLK, align 4
  %70 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %9, align 8
  %71 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i8* @MAJOR(i32 %73)
  %75 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %9, align 8
  %76 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  store i8* %74, i8** %79, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i8* @MINOR(i32 %80)
  %82 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %9, align 8
  %83 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i8* %81, i8** %86, align 8
  br label %111

87:                                               ; preds = %64
  %88 = load i32, i32* %10, align 4
  %89 = call i64 @S_ISCHR(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %110

91:                                               ; preds = %87
  %92 = load i32, i32* @NF4CHR, align 4
  %93 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %9, align 8
  %94 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  store i32 %92, i32* %95, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i8* @MAJOR(i32 %96)
  %98 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %9, align 8
  %99 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  store i8* %97, i8** %102, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call i8* @MINOR(i32 %103)
  %105 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %9, align 8
  %106 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  store i8* %104, i8** %109, align 8
  br label %110

110:                                              ; preds = %91, %87
  br label %111

111:                                              ; preds = %110, %68
  br label %112

112:                                              ; preds = %111, %59
  %113 = load %struct.inode*, %struct.inode** %5, align 8
  %114 = load %struct.dentry*, %struct.dentry** %6, align 8
  %115 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %9, align 8
  %116 = call i32 @nfs4_do_create(%struct.inode* %113, %struct.dentry* %114, %struct.nfs4_createdata* %115)
  store i32 %116, i32* %11, align 4
  %117 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %9, align 8
  %118 = call i32 @nfs4_free_createdata(%struct.nfs4_createdata* %117)
  br label %119

119:                                              ; preds = %112, %54
  %120 = load i32, i32* %11, align 4
  ret i32 %120
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @S_ISFIFO(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i32 @S_ISSOCK(i32) #1

declare dso_local %struct.nfs4_createdata* @nfs4_alloc_createdata(%struct.inode*, i32*, %struct.iattr*, i32) #1

declare dso_local i8* @MAJOR(i32) #1

declare dso_local i8* @MINOR(i32) #1

declare dso_local i32 @nfs4_do_create(%struct.inode*, %struct.dentry*, %struct.nfs4_createdata*) #1

declare dso_local i32 @nfs4_free_createdata(%struct.nfs4_createdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
