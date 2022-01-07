; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/smack/extr_smack_lsm.c_smack_inode_getsecurity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/smack/extr_smack_lsm.c_smack_inode_getsecurity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i64 }
%struct.socket_smack = type { i8*, i8* }
%struct.socket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.socket_smack* }

@XATTR_SMACK_SUFFIX = common dso_local global i32 0, align 4
@SOCKFS_MAGIC = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@XATTR_SMACK_IPIN = common dso_local global i32 0, align 4
@XATTR_SMACK_IPOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i8**, i32)* @smack_inode_getsecurity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smack_inode_getsecurity(%struct.inode* %0, i8* %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.socket_smack*, align 8
  %11 = alloca %struct.socket*, align 8
  %12 = alloca %struct.super_block*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  store %struct.inode* %17, %struct.inode** %13, align 8
  store i32 0, i32* %16, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* @XATTR_SMACK_SUFFIX, align 4
  %20 = call i64 @strcmp(i8* %18, i32 %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %4
  %23 = load %struct.inode*, %struct.inode** %6, align 8
  %24 = call i8* @smk_of_inode(%struct.inode* %23)
  store i8* %24, i8** %14, align 8
  %25 = load i8*, i8** %14, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %15, align 4
  %28 = load i8*, i8** %14, align 8
  %29 = load i8**, i8*** %8, align 8
  store i8* %28, i8** %29, align 8
  %30 = load i32, i32* %15, align 4
  store i32 %30, i32* %5, align 4
  br label %95

31:                                               ; preds = %4
  %32 = load %struct.inode*, %struct.inode** %13, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load %struct.super_block*, %struct.super_block** %33, align 8
  store %struct.super_block* %34, %struct.super_block** %12, align 8
  %35 = load %struct.super_block*, %struct.super_block** %12, align 8
  %36 = getelementptr inbounds %struct.super_block, %struct.super_block* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SOCKFS_MAGIC, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* @EOPNOTSUPP, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %95

43:                                               ; preds = %31
  %44 = load %struct.inode*, %struct.inode** %13, align 8
  %45 = call %struct.socket* @SOCKET_I(%struct.inode* %44)
  store %struct.socket* %45, %struct.socket** %11, align 8
  %46 = load %struct.socket*, %struct.socket** %11, align 8
  %47 = icmp eq %struct.socket* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load %struct.socket*, %struct.socket** %11, align 8
  %50 = getelementptr inbounds %struct.socket, %struct.socket* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = icmp eq %struct.TYPE_2__* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %48, %43
  %54 = load i32, i32* @EOPNOTSUPP, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %95

56:                                               ; preds = %48
  %57 = load %struct.socket*, %struct.socket** %11, align 8
  %58 = getelementptr inbounds %struct.socket, %struct.socket* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load %struct.socket_smack*, %struct.socket_smack** %60, align 8
  store %struct.socket_smack* %61, %struct.socket_smack** %10, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* @XATTR_SMACK_IPIN, align 4
  %64 = call i64 @strcmp(i8* %62, i32 %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %56
  %67 = load %struct.socket_smack*, %struct.socket_smack** %10, align 8
  %68 = getelementptr inbounds %struct.socket_smack, %struct.socket_smack* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %14, align 8
  br label %83

70:                                               ; preds = %56
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* @XATTR_SMACK_IPOUT, align 4
  %73 = call i64 @strcmp(i8* %71, i32 %72)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load %struct.socket_smack*, %struct.socket_smack** %10, align 8
  %77 = getelementptr inbounds %struct.socket_smack, %struct.socket_smack* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** %14, align 8
  br label %82

79:                                               ; preds = %70
  %80 = load i32, i32* @EOPNOTSUPP, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %95

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82, %66
  %84 = load i8*, i8** %14, align 8
  %85 = call i32 @strlen(i8* %84)
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %16, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load i8*, i8** %14, align 8
  %91 = load i8**, i8*** %8, align 8
  store i8* %90, i8** %91, align 8
  %92 = load i32, i32* %15, align 4
  store i32 %92, i32* %16, align 4
  br label %93

93:                                               ; preds = %89, %83
  %94 = load i32, i32* %16, align 4
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %93, %79, %53, %40, %22
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i8* @smk_of_inode(%struct.inode*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.socket* @SOCKET_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
