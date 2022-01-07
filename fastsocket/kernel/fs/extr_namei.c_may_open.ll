; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_may_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_may_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { %struct.TYPE_2__*, %struct.dentry* }
%struct.TYPE_2__ = type { i32 }
%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@ELOOP = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@MNT_NODEV = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_ACCMODE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@O_NOATIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @may_open(%struct.path* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.path*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  store %struct.path* %0, %struct.path** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.path*, %struct.path** %5, align 8
  %12 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 1
  %13 = load %struct.dentry*, %struct.dentry** %12, align 8
  store %struct.dentry* %13, %struct.dentry** %8, align 8
  %14 = load %struct.dentry*, %struct.dentry** %8, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  %16 = load %struct.inode*, %struct.inode** %15, align 8
  store %struct.inode* %16, %struct.inode** %9, align 8
  %17 = load %struct.inode*, %struct.inode** %9, align 8
  %18 = icmp ne %struct.inode* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %109

22:                                               ; preds = %3
  %23 = load %struct.inode*, %struct.inode** %9, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @S_IFMT, align 4
  %27 = and i32 %25, %26
  switch i32 %27, label %58 [
    i32 129, label %28
    i32 131, label %31
    i32 133, label %40
    i32 132, label %40
    i32 130, label %53
    i32 128, label %53
  ]

28:                                               ; preds = %22
  %29 = load i32, i32* @ELOOP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %109

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @MAY_WRITE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @EISDIR, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %109

39:                                               ; preds = %31
  br label %58

40:                                               ; preds = %22, %22
  %41 = load %struct.path*, %struct.path** %5, align 8
  %42 = getelementptr inbounds %struct.path, %struct.path* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MNT_NODEV, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load i32, i32* @EACCES, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %109

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %22, %22, %52
  %54 = load i32, i32* @O_TRUNC, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %22, %53, %39
  %59 = load %struct.inode*, %struct.inode** %9, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @inode_permission(%struct.inode* %59, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %4, align 4
  br label %109

66:                                               ; preds = %58
  %67 = load %struct.inode*, %struct.inode** %9, align 8
  %68 = call i64 @IS_APPEND(%struct.inode* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %93

70:                                               ; preds = %66
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @O_ACCMODE, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* @O_RDONLY, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %70
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @O_APPEND, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* @EPERM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %109

84:                                               ; preds = %76, %70
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @O_TRUNC, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* @EPERM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %109

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %92, %66
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @O_NOATIME, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = load %struct.inode*, %struct.inode** %9, align 8
  %100 = call i32 @is_owner_or_cap(%struct.inode* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %98
  %103 = load i32, i32* @EPERM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %109

105:                                              ; preds = %98, %93
  %106 = load %struct.inode*, %struct.inode** %9, align 8
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @break_lease(%struct.inode* %106, i32 %107)
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %105, %102, %89, %81, %64, %49, %36, %28, %19
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @inode_permission(%struct.inode*, i32) #1

declare dso_local i64 @IS_APPEND(%struct.inode*) #1

declare dso_local i32 @is_owner_or_cap(%struct.inode*) #1

declare dso_local i32 @break_lease(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
