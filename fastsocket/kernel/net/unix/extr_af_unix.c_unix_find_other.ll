; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/unix/extr_af_unix.c_unix_find_other.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/unix/extr_af_unix.c_unix_find_other.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.net = type { i32 }
%struct.sockaddr_un = type { i64* }
%struct.path = type { %struct.dentry*, i32 }
%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32, %struct.dentry* }

@LOOKUP_FOLLOW = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@EPROTOTYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock* (%struct.net*, %struct.sockaddr_un*, i32, i32, i32, i32*)* @unix_find_other to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock* @unix_find_other(%struct.net* %0, %struct.sockaddr_un* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sockaddr_un*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.sock*, align 8
  %15 = alloca %struct.path, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.inode*, align 8
  %18 = alloca %struct.dentry*, align 8
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sockaddr_un* %1, %struct.sockaddr_un** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %16, align 4
  %19 = load %struct.sockaddr_un*, %struct.sockaddr_un** %9, align 8
  %20 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %85

25:                                               ; preds = %6
  %26 = load %struct.sockaddr_un*, %struct.sockaddr_un** %9, align 8
  %27 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* @LOOKUP_FOLLOW, align 4
  %30 = call i32 @kern_path(i64* %28, i32 %29, %struct.path* %15)
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* %16, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %117

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.path, %struct.path* %15, i32 0, i32 0
  %36 = load %struct.dentry*, %struct.dentry** %35, align 8
  %37 = getelementptr inbounds %struct.dentry, %struct.dentry* %36, i32 0, i32 0
  %38 = load %struct.inode*, %struct.inode** %37, align 8
  store %struct.inode* %38, %struct.inode** %17, align 8
  %39 = load %struct.inode*, %struct.inode** %17, align 8
  %40 = load i32, i32* @MAY_WRITE, align 4
  %41 = call i32 @inode_permission(%struct.inode* %39, i32 %40)
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %16, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %115

45:                                               ; preds = %34
  %46 = load i32, i32* @ECONNREFUSED, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %16, align 4
  %48 = load %struct.inode*, %struct.inode** %17, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @S_ISSOCK(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %45
  br label %115

54:                                               ; preds = %45
  %55 = load %struct.inode*, %struct.inode** %17, align 8
  %56 = call %struct.sock* @unix_find_socket_byinode(%struct.inode* %55)
  store %struct.sock* %56, %struct.sock** %14, align 8
  %57 = load %struct.sock*, %struct.sock** %14, align 8
  %58 = icmp ne %struct.sock* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  br label %115

60:                                               ; preds = %54
  %61 = load %struct.sock*, %struct.sock** %14, align 8
  %62 = getelementptr inbounds %struct.sock, %struct.sock* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.path, %struct.path* %15, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds %struct.path, %struct.path* %15, i32 0, i32 0
  %70 = load %struct.dentry*, %struct.dentry** %69, align 8
  %71 = call i32 @touch_atime(i32 %68, %struct.dentry* %70)
  br label %72

72:                                               ; preds = %66, %60
  %73 = call i32 @path_put(%struct.path* %15)
  %74 = load i32, i32* @EPROTOTYPE, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %16, align 4
  %76 = load %struct.sock*, %struct.sock** %14, align 8
  %77 = getelementptr inbounds %struct.sock, %struct.sock* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %72
  %82 = load %struct.sock*, %struct.sock** %14, align 8
  %83 = call i32 @sock_put(%struct.sock* %82)
  br label %117

84:                                               ; preds = %72
  br label %113

85:                                               ; preds = %6
  %86 = load i32, i32* @ECONNREFUSED, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %16, align 4
  %88 = load %struct.net*, %struct.net** %8, align 8
  %89 = load %struct.sockaddr_un*, %struct.sockaddr_un** %9, align 8
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %12, align 4
  %93 = call %struct.sock* @unix_find_socket_byname(%struct.net* %88, %struct.sockaddr_un* %89, i32 %90, i32 %91, i32 %92)
  store %struct.sock* %93, %struct.sock** %14, align 8
  %94 = load %struct.sock*, %struct.sock** %14, align 8
  %95 = icmp ne %struct.sock* %94, null
  br i1 %95, label %96, label %111

96:                                               ; preds = %85
  %97 = load %struct.sock*, %struct.sock** %14, align 8
  %98 = call %struct.TYPE_2__* @unix_sk(%struct.sock* %97)
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load %struct.dentry*, %struct.dentry** %99, align 8
  store %struct.dentry* %100, %struct.dentry** %18, align 8
  %101 = load %struct.dentry*, %struct.dentry** %18, align 8
  %102 = icmp ne %struct.dentry* %101, null
  br i1 %102, label %103, label %110

103:                                              ; preds = %96
  %104 = load %struct.sock*, %struct.sock** %14, align 8
  %105 = call %struct.TYPE_2__* @unix_sk(%struct.sock* %104)
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.dentry*, %struct.dentry** %18, align 8
  %109 = call i32 @touch_atime(i32 %107, %struct.dentry* %108)
  br label %110

110:                                              ; preds = %103, %96
  br label %112

111:                                              ; preds = %85
  br label %117

112:                                              ; preds = %110
  br label %113

113:                                              ; preds = %112, %84
  %114 = load %struct.sock*, %struct.sock** %14, align 8
  store %struct.sock* %114, %struct.sock** %7, align 8
  br label %120

115:                                              ; preds = %59, %53, %44
  %116 = call i32 @path_put(%struct.path* %15)
  br label %117

117:                                              ; preds = %115, %111, %81, %33
  %118 = load i32, i32* %16, align 4
  %119 = load i32*, i32** %13, align 8
  store i32 %118, i32* %119, align 4
  store %struct.sock* null, %struct.sock** %7, align 8
  br label %120

120:                                              ; preds = %117, %113
  %121 = load %struct.sock*, %struct.sock** %7, align 8
  ret %struct.sock* %121
}

declare dso_local i32 @kern_path(i64*, i32, %struct.path*) #1

declare dso_local i32 @inode_permission(%struct.inode*, i32) #1

declare dso_local i32 @S_ISSOCK(i32) #1

declare dso_local %struct.sock* @unix_find_socket_byinode(%struct.inode*) #1

declare dso_local i32 @touch_atime(i32, %struct.dentry*) #1

declare dso_local i32 @path_put(%struct.path*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local %struct.sock* @unix_find_socket_byname(%struct.net*, %struct.sockaddr_un*, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @unix_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
